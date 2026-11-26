function hc = room_grid(tau, a, Fa)
% ROOM_GRID Impulse response on the fine grid: gain a(i) at index round(tau(i)*Fa) + 1.
    hc = accumarray(round(tau(:) * Fa) + 1, a(:));
end
