from dagster import Definitions, ScheduleDefinition, job
from dagster_meltano import meltano_resource, meltano_run_op


@job(resource_defs={"meltano": meltano_resource})
def run_elt_job():
   tap_done = meltano_run_op("tap-github target-bigquery")()

# Addition: a ScheduleDefinition the job it should run and a cron schedule of how frequently to run it
elt_schedule = ScheduleDefinition(
    job=run_elt_job,
    cron_schedule="0 0 * * *",  # every day at midnight
)

defs = Definitions(
    schedules=[elt_schedule],
)