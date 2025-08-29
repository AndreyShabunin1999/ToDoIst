pragma Singleton
import QtQuick 2.15
import Qt.labs.platform 1.1

Item {
    property alias themes: _themes

    // this's just pallete for color schema generator
    // (generator is here https://www.logicui.com/colorgenerator)
    readonly property color __Primary: "#616F7C"
    readonly property color __Secondary: "#373737"
    readonly property color __Tertiary: "#E6EA12"
    readonly property color __Error: "#D31C1C"

    QtObject{
        id: _themes


         property var light: [
            "#FCFAF8",      // 0  primary
            "#FFFFFF",      // 1  onPrimary
            "#D6DEE6",      // 2  primaryContainer
            "#282E33",      // 3  onPrimaryContainer
            "#808080",      // 4  secondary
            "#FFFFFF",      // 5  onSecondary
            "#E6E6E6",      // 6  secondaryContainer
            "#333333",      // 7  onSecondaryContainer
            "#7D800A",      // 8  tertiary
            "#FFFFFF",      // 9  onTertiary
            "#E4E6A3",      // 10 tertiaryContainer
            "#323304",      // 11 onTertiaryContainer
            "#801111",      // 12 error
            "#4C0A0A",      // 13 onError
            "#E6A6A6",      // 14 errorContainer
            "#330707",      // 15 onErrorContainer
            "#fcfcfc",      // 16 background
            "#323333",      // 17 onBackground
            "#fcfcfc",      // 18 surface
            "#323333",      // 19 onSurface
            "#e2e4e6",      // 20 surfaceVariant
            "#626466",      // 21 onSurfaceVariant
            "#929699",      // 22 outline
            // Chart-specific colors
            "green",        //23 color ManualTagging
            "green",        //24 color strobe1
            "#C8646608",    // 25 filled area color ASCAN (_filled_AreaSeries)
            "#500000ff",    // 26 filled envelope area color (_filled_EnvelopeAreaSeries)
            "mediumspringgreen", // 27 envelope line color
            "yellow",       // 28 tgc line color
            "blue",         // 29 envelope filled border
            "#282E33",      // 30 Ascan only Line
            "#282E33",      // 31 Ascan filled border

        ]

         property var dark: [
            "#FCFAF8", // 0  primary
            "#3C454C", // 1  onPrimary
            "#505C66", // 2  primaryContainer
            "#D6DEE6", // 3  onPrimaryContainer
            "#E6E6E6", // 4  secondary
            "#4C4C4C", // 5  onSecondary
            "#666666", // 6  secondaryContainer
            "#E6E6E6", // 7  onSecondaryContainer
            "#E3E687", // 8  tertiary
            "#4B4C06", // 9  onTertiary
            "#646608", // 10 tertiaryContainer
            "#E4E6A3", // 11 onTertiaryContainer
            "#E68C8C", // 12 error
            "#4C0A0A", // 13 onError
            "#660D0D", // 14 errorContainer
            "#E6A6A6", // 15 onErrorContainer
            "#323333", // 16 background
            "#e5e5e6", // 17 onBackground
            "#323333", // 18 surface
            "#e5e5e6", // 19 onSurface
            "#626466", // 20 surfaceVariant
            "#e1e3e6", // 21 onSurfaceVariant
            "#aeb0b3", // 22 outline
            "lime",    //23 color ManualTagging
            "lime",    //24 color strobe1
            "#C8646608",    // 25 filled area color ASCAN (_filled_AreaSeries)
            "#500000ff",    // 26 filled envelope area color (_filled_EnvelopeAreaSeries)
            "mediumspringgreen", // 27 envelope line color
            "yellow",       // 28 tgc line color
            "blue",         // 29 envelope filled border
            "#D6DEE6",      // 30 Ascan only Line
            "#D6DEE6",      // 31 Ascan filled border
        ]


    }

    // Переменная для хранения текущей темы приложения
    //property var currentTheme: APPManager.currentTheme === "light" ? themes.light : themes.dark
    property var currentTheme: themes.light

    readonly property string primaryBG:   currentTheme[0]
    //readonly property string primaryText: currentTheme[1]
    //readonly property string primaryContBG:   currentTheme[2]
    //readonly property string primaryContText: currentTheme[3]
    ////property string primaryContDisabledText: backSettingsPage.currentTheme === "light" ? Qt.lighter(primaryContText, 2.2) : Qt.darker(primaryContText, 1.5)

    //readonly property string secondaryBG:   currentTheme[4]
    //readonly property string secondaryText: currentTheme[5]
    //readonly property string secondaryContBG:   currentTheme[6]
    //readonly property string secondaryContText: currentTheme[7]

    //readonly property string tertiaryBG:   currentTheme[8]
    //readonly property string tertiaryText: currentTheme[9]
    //readonly property string tertiaryContBG:   currentTheme[10]
    //readonly property string tertiaryContText: currentTheme[11]
    ////property string tertiaryContBGDisabled: backSettingsPage.currentTheme === "light" ? Qt.darker(tertiaryContBG, 1.2) : Qt.darker(tertiaryContBG, 1.2)

    //readonly property string errorBG:   currentTheme[12]
    //readonly property string errorText: currentTheme[13]
    //readonly property string errorContBG:   currentTheme[14]
    //readonly property string errorContText: currentTheme[15]

    //readonly property string background: currentTheme[16]
    //readonly property string backgroundText: currentTheme[17]

    //readonly property string surface: currentTheme[18]
    //readonly property string surfaceText: currentTheme[19]

    //readonly property string surfaceVariant: currentTheme[20]
    //readonly property string surfaceVariantText: currentTheme[21]
    //property string surfaceVariantDisabledText: backSettingsPage.currentTheme === "light" ? Qt.lighter(primaryContText, 2.5) : Qt.darker(surfaceVariantText, 1.2)


    //readonly property string outline: currentTheme[22]

    //readonly property string shadowColor: "#000000"
    //readonly property string contentColor: currentTheme[4] // *контейнер первого уровня ->  Очень светло-серый цвет (light) / Серо-синий цвет (dark) для блоков контента

    //readonly property string colorMenuIcon: currentTheme[7] // Белый цвет (light) / Темно-синий цвет (dark) для иконок меню
    //readonly property string hoverBackgroundColorIconMenu: currentTheme[8] // Серо-синий цвет (light) / Светло-серый цвет (dark) для состояния hover на элементах меню
    //readonly property string defaultBackgroundColorIconMenu: currentTheme[9] // Темно-синий цвет (light) / Светло-серый с голубым оттенком (dark) для фона иконок меню по умолчанию

    //readonly property string borderColor: currentTheme[13] // Серый цвет (light) / Светло-серо-голубой цвет (dark) для границ (border)
    //readonly property string activeRadioButtonColor: currentTheme[14] // Бирюзово-зеленый цвет (light и dark) для активного состояния радиокнопки
    //readonly property string defaultRadioButtonColor: currentTheme[15] // Серый цвет (light и dark) для неактивного состояния радиокнопки
    //readonly property string bacgroundToast: currentTheme[16] // Темно-синий цвет (light) / Белый цвет (dark) для фона Toast

    //// Цвета для AScan
    //readonly property string chartLineColor: currentTheme[10] // Ярко-желтый цвет (light и dark) для линии графика
    //readonly property string axisColor: currentTheme[11] // Серо-голубой цвет (light и dark) для осей и сетки графика
    //readonly property string additionalLineColor: currentTheme[12] // Ярко-бирюзовый цвет (light и dark) для дополнительной линии графика

    ////Цвет ManualTagging
    //readonly property string manualTaggingColor: currentTheme[23] // цвет лайма(dark) и зеленый (light) для ручной метки
    //readonly property string strobe1Color: currentTheme[24] // цвет лайма(dark) и зеленый (light) для строба

    //readonly property string aScanFillingColor: currentTheme[25] // Цвет заливки области ASCAN (_filled_AreaSeries)
    //readonly property string filledEnvelopeColor: currentTheme[26] // Цвет заливки области огибания (_filled_EnvelopeAreaSeries)
    //readonly property string envelopeNotFillingColor: currentTheme[27] // Цвет линии огибания
    //readonly property string tgcLineColor: currentTheme[28] // Цвет линии TGC
    //readonly property string envelopeFilledBorder: currentTheme[29] //Обводка залитой огибающей
    //readonly property string aScanNotFillingColor: currentTheme[30] // цвет линии аскана
    //readonly property string ascanFilledBorder: currentTheme[31] //цвет границы заливки аскана


    //function toggleTheme() {
    //    if (currentTheme === themes.light) {
    //        currentTheme = themes.dark
    //    } else {
    //        currentTheme = themes.light
    //    }
    //}

    //function saveToFile() {
    //    APPManager.colorsThemes = JSON.stringify({ "light": _themes.light, "dark": _themes.dark }, null, 4)
    //}

    //function loadFromFile() {
    //    if(APPManager.colorsThemes === "") return
    //    var parsedData = JSON.parse(APPManager.colorsThemes)
    //    _themes.light = parsedData.light
    //    _themes.dark = parsedData.dark
    //}

    //function changeColorTheme(indexColor, color) {
    //    if(currentTheme === themes.light) {
    //        _themes.light[indexColor] = color
    //    } else {
    //        _themes.dark[indexColor] = color
    //    }
    //    APPManager.toggleTheme()
    //    APPManager.toggleTheme()
    //}

    //function rgbaToHex(rgba) {
    //    // Преобразуем r, g, b из диапазона 0-1 в 0-255 и округляем
    //    var r = Math.round(rgba.r * 255);
    //    var g = Math.round(rgba.g * 255);
    //    var b = Math.round(rgba.b * 255);
    //    var a = Math.round(rgba.a * 255); // Альфа тоже приводим к 0-255

    //    // Конвертируем в шестнадцатеричный формат и дополняем нулями
    //    var hex =
    //        "#" +
    //        ("0" + a.toString(16)).slice(-2) +  // Альфа в начало
    //        ("0" + r.toString(16)).slice(-2) +
    //        ("0" + g.toString(16)).slice(-2) +
    //        ("0" + b.toString(16)).slice(-2);

    //    return hex;
    //}

}

