///drawTouchControls
if (paused) {
    posX = 0;
    posY = 0;
} else {
    if (global.html5Build) {
        posX = view_xview[0];
        posY = view_yview[0];
    } else {
        posX = 0;
        posY = 0;
    }
}

if (global.touchControlsVisibility == 1) {
    draw_sprite(TouchArrowsSemiTr, -1, posX, posY + global.display_h - (3*vkey_size));
    draw_sprite(TouchButtons1SemiTr, -1, posX + global.display_w - (2.5*vkey_size), posY + global.display_h - (2.5*vkey_size));
    if ((instance_exists(oGame)) and (!oGame.paused)) {
        draw_sprite(TouchButtons2SemiTr0, -1, posX + global.display_w - vkey_size, posY);
    } else {
        draw_sprite(TouchButtons2SemiTr1, -1, posX + global.display_w - vkey_size, posY);
    }
} else if (global.touchControlsVisibility == 2) {
    draw_sprite(TouchArrowsOp, -1, posX, posY + global.display_h - (3*vkey_size));
    draw_sprite(TouchButtons1Op, -1, posX + global.display_w - (2.5*vkey_size), posY + global.display_h - (2.5*vkey_size));
    if ((instance_exists(oGame)) and (!oGame.paused)) {
        draw_sprite(TouchButtons2Op0, -1, posX + global.display_w - vkey_size, posY);
    } else {
        draw_sprite(TouchButtons2Op1, -1, posX + global.display_w - vkey_size, posY);
    }
}
