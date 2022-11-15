-- goofy fov circle script i made lmao (maths from devforum)

local MiddleScreenVector = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)

-- Drawing Library (https://docs.synapse.to/reference/drawing_lib.html)

function CreateFov(IsVisible, DrawingThickness, Numsidess, CircleRadius, IsFilled, CircleColor)
    local FovCircle = Drawing.new("Circle")
    FovCircle.Visible = IsVisible
    FovCircle.Thickness = DrawingThickness
    FovCircle.NumSides = Numsidess
    FovCircle.Radius = CircleRadius
    FovCircle.Filled = IsFilled
    FovCircle.Position = MiddleScreenVector
    FovCircle.Color = CircleColor
end
CreateFov(true, 1, 64, 200, false, Color3.fromRGB(255,255,255))
-- CreateFov(visibility, thickness, circlesides, radius, filled, color)
