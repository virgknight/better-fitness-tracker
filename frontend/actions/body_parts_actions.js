import * as ApiBodyPartsUtil from "../util/body_parts_util"

export const RECEIVE_BODY_PART = "RECEIVE_BODY_PART";
export const RECEIVE_BODY_PARTS = "RECEIVE_BODY_PARTS";

const receiveBodyPart = bodyPart = ({
    type: RECEIVE_BODY_PART,
    bodyPart
});

const receiveBodyParts = bodyParts = ({
    type: RECEIVE_BODY_PARTS,
    bodyParts
});

export const fetchBodyPart = bodyPartId => dispatch => (
    ApiBodyPartsUtil.fetchBodyPart(bodyPartId).then((bodyPart) => dispatch(receiveBodyPart(bodyPart)))
);

export const fetchBodyParts = () => dispatch => (
    ApiBodyPartsUtil.fetchBodyParts().then((bodyParts) => dispatch(receiveBodyParts(bodyParts)))
);