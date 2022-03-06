export const fetchBodyParts = () => (
    $.ajax({
        url: `/api/body_parts`
    })
)

export const fetchBodyPart = bodyPartId => (
    $.ajax({
        url: `/api/body_parts/${bodyPartId}`
    })
)