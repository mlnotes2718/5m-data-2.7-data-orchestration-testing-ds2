from dagster import Definitions
from dagster_dbt import DbtCliResource
from .assets import resale_flat_dbt_assets
from .project import resale_flat_project
from .schedules import schedules

defs = Definitions(
    assets=[resale_flat_dbt_assets],
    schedules=schedules,
    resources={
        "dbt": DbtCliResource(project_dir=resale_flat_project),
    },
)