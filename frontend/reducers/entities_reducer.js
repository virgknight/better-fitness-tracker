import { combineReducers } from "redux";
import bodyPartsReducer from "./body_parts_reducer";

const entitiesReducer = combineReducers({
    body_parts: bodyPartsReducer
});

export default entitiesReducer;