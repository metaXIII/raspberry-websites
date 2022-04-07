<?php

    namespace enums;

    enum Status {
        case NOT_STARTED;
        case IN_PROGRESS;
        case FINISHED;
        case GIVE_UP;
        case INVALID;

        function getStatus(): int {
            return match ($this) {
                Status::NOT_STARTED => 1,
                Status::IN_PROGRESS => 2,
                Status::FINISHED => 3,
                Status::GIVE_UP => 4,
                Status::INVALID => 5
            };
        }
    }
