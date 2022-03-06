import { RECEIVE_BODY_PART, RECEIVE_BODY_PARTS } from "../actions/body_parts_actions";

const defaultState = {};

const bodyPartsReducer = (state = defaultState, action) => {
    Object.freeze(state);
    let newState = Object.assign({}, state);

    switch(action.type) {
        case RECEIVE_BODY_PART:
            return Object.assign(newState, action.bodyPart);
        case RECEIVE_BODY_PARTS:
            return action.bodyParts;
        default:
            return state;
    }
}

export default bodyPartsReducer;
