--W3x2lni Data: 2022-06-08 12:50:34.827

--globals from FrameLibrary:
LIBRARY_FrameLibrary = true
--endglobals from FrameLibrary
--globals from MaxSpeed:
LIBRARY_MaxSpeed = true
MaxSpeed___USE_TABLE = true
MaxSpeed___NEW_TABLE = true
-- Vexorian's Table or Bribe's (NEW)
MaxSpeed___TEST_MODE = false
MaxSpeed___PERIOD = 0.03125
--  private constant real MAX_SPEED = 2088.0
MaxSpeed___MAX_SPEED = 1400.0
-- 最大速度限定，超出视为传送。
MaxSpeed___MIN_SPEED = 500.0
-- 判定的最小距离，此项过小或速度过大会使原地打转几率增加，超出则没有加速效果。
-- 测试最大为500刚出头，与522还有些差距
--endglobals from MaxSpeed
--globals from UniMissileSystem3D:
LIBRARY_UniMissileSystem3D = true
UniMissileSystem3D__SP = _array_(0.0)
UniMissileSystem3D__RA = _array_(0.0)
UniMissileSystem3D__DM = _array_(0.0)
UniMissileSystem3D__DI = _array_(0.0)
UniMissileSystem3D__AN = _array_(0.0)
UniMissileSystem3D__ANZ = _array_(0.0)
UniMissileSystem3D__HE = _array_(0.0)
UniMissileSystem3D__HEMax = _array_(0.0)
UniMissileSystem3D__SH = _array_(0.0)
UniMissileSystem3D__US = _array_(0.0)
UniMissileSystem3D__MX = _array_(0.0)
UniMissileSystem3D__MY = _array_(0.0)
UniMissileSystem3D__MZ = _array_(0.0)
UniMissileSystem3D__ARC = _array_(0.0)
UniMissileSystem3D__HP = _array_(0.0)
UniMissileSystem3D__OF = _array_(0.0)
UniMissileSystem3D__OS = _array_(0.0)
UniMissileSystem3D__TIM = _array_(0.0)
UniMissileSystem3D__LT = _array_(0.0)
UniMissileSystem3D__SZ = _array_(0.0)
UniMissileSystem3D__RI = _array_(0.0)
UniMissileSystem3D__R01 = _array_(0.0)
UniMissileSystem3D__R02 = _array_(0.0)
UniMissileSystem3D__MGra = _array_(0.0)
UniMissileSystem3D__LOC = _array_(0.0)
UniMissileSystem3D__OH = _array_(0.0)
UniMissileSystem3D__Gravity = 0.4
UniMissileSystem3D__MU = _array_()
UniMissileSystem3D__MT = _array_()
UniMissileSystem3D__DamageUnit = nil
UniMissileSystem3D__EF = _array_()
UniMissileSystem3D__EFL = _array_()
UniMissileSystem3D__ACC = _array_(0.0)
UniMissileSystem3D__MaxS = _array_(0.0)
UniMissileSystem3D__SPX = _array_(0.0)
UniMissileSystem3D__SPY = _array_(0.0)
UniMissileSystem3D__LastX = _array_(0.0)
UniMissileSystem3D__LastY = _array_(0.0)
UniMissileSystem3D__MKs = _array_(0.0)
UniMissileSystem3D__IN = _array_(0)
UniMissileSystem3D__Top = -1
UniMissileSystem3D__TIMOut = 0.03
UniMissileSystem3D__DamageGroup = nil
UniMissileSystem3D__TIMr = nil
UniMissileSystem3D__HeroLoc = nil
UniMissileSystem3D__MLoc = _array_()
UniMissileSystem3D__LastOwner = _array_()
MissileTimerPause = false
UniMissileSystem3D__map_max_X = nil
UniMissileSystem3D__map_max_Y = nil
UniMissileSystem3D__map_min_X = nil
UniMissileSystem3D__map_min_Y = nil
--endglobals from UniMissileSystem3D
--globals from YDTriggerSaveLoadSystem:
LIBRARY_YDTriggerSaveLoadSystem = true
YDHT = nil
YDLOC = nil
--endglobals from YDTriggerSaveLoadSystem
--globals from YDWEAbilityState:
LIBRARY_YDWEAbilityState = true
YDWEAbilityState__ABILITY_STATE_COOLDOWN = 1
YDWEAbilityState__ABILITY_DATA_TARGS = 100
YDWEAbilityState__ABILITY_DATA_CAST = 101
YDWEAbilityState__ABILITY_DATA_DUR = 102
YDWEAbilityState__ABILITY_DATA_HERODUR = 103
YDWEAbilityState__ABILITY_DATA_COST = 104
YDWEAbilityState__ABILITY_DATA_COOL = 105
YDWEAbilityState__ABILITY_DATA_AREA = 106
YDWEAbilityState__ABILITY_DATA_RNG = 107
YDWEAbilityState__ABILITY_DATA_DATA_A = 108
YDWEAbilityState__ABILITY_DATA_DATA_B = 109
YDWEAbilityState__ABILITY_DATA_DATA_C = 110
YDWEAbilityState__ABILITY_DATA_DATA_D = 111
YDWEAbilityState__ABILITY_DATA_DATA_E = 112
YDWEAbilityState__ABILITY_DATA_DATA_F = 113
YDWEAbilityState__ABILITY_DATA_DATA_G = 114
YDWEAbilityState__ABILITY_DATA_DATA_H = 115
YDWEAbilityState__ABILITY_DATA_DATA_I = 116
YDWEAbilityState__ABILITY_DATA_UNITID = 117

YDWEAbilityState__ABILITY_DATA_HOTKET = 200
YDWEAbilityState__ABILITY_DATA_UNHOTKET = 201
YDWEAbilityState__ABILITY_DATA_RESEARCH_HOTKEY = 202
YDWEAbilityState__ABILITY_DATA_NAME = 203
YDWEAbilityState__ABILITY_DATA_ART = 204
YDWEAbilityState__ABILITY_DATA_TARGET_ART = 205
YDWEAbilityState__ABILITY_DATA_CASTER_ART = 206
YDWEAbilityState__ABILITY_DATA_EFFECT_ART = 207
YDWEAbilityState__ABILITY_DATA_AREAEFFECT_ART = 208
YDWEAbilityState__ABILITY_DATA_MISSILE_ART = 209
YDWEAbilityState__ABILITY_DATA_SPECIAL_ART = 210
YDWEAbilityState__ABILITY_DATA_LIGHTNING_EFFECT = 211
YDWEAbilityState__ABILITY_DATA_BUFF_TIP = 212
YDWEAbilityState__ABILITY_DATA_BUFF_UBERTIP = 213
YDWEAbilityState__ABILITY_DATA_RESEARCH_TIP = 214
YDWEAbilityState__ABILITY_DATA_TIP = 215
YDWEAbilityState__ABILITY_DATA_UNTIP = 216
YDWEAbilityState__ABILITY_DATA_RESEARCH_UBERTIP = 217
YDWEAbilityState__ABILITY_DATA_UBERTIP = 218
YDWEAbilityState__ABILITY_DATA_UNUBERTIP = 219
YDWEAbilityState__ABILITY_DATA_UNART = 220
--endglobals from YDWEAbilityState
--globals from YDWEBase:
LIBRARY_YDWEBase = true
--ȫ�ֹ�ϣ�� 
bj_AllString = ".................................!.#$%&'()*+,-./0123456789:;<=>.@ABCDEFGHIJKLMNOPQRSTUVWXYZ[.]^_`abcdefghijklmnopqrstuvwxyz{|}~................................................................................................................................"
--全局系统变量
bj_lastAbilityCastingUnit = nil
bj_lastAbilityTargetUnit = nil
bj_lastPoolAbstractedUnit = nil
bj_lastCreatedUnitPool = nil
bj_lastPoolAbstractedItem = nil
bj_lastCreatedItemPool = nil
bj_lastSetAttackType = ATTACK_TYPE_NORMAL
bj_lastSetDamageType = DAMAGE_TYPE_NORMAL
bj_lastSetWeaponType = WEAPON_TYPE_WHOKNOWS
yd_MapMaxX = 0
yd_MapMinX = 0
yd_MapMaxY = 0
yd_MapMinY = 0
YDWEBase__yd_PlayerColor = _array_()
YDWEBase__AbilityCastingOverEventQueue = _array_()
YDWEBase__AbilityCastingOverEventType = _array_(0)
YDWEBase__AbilityCastingOverEventNumber = 0
--endglobals from YDWEBase
--globals from YDWEBitwise:
LIBRARY_YDWEBitwise = true
YDWEBitwise__C2 = _array_(0)
YDWEBitwise__hexstr = "0123456789ABCDEF"
--endglobals from YDWEBitwise
--globals from YDWEGeneralBounsSystem:
LIBRARY_YDWEGeneralBounsSystem = true
YDWEGeneralBounsSystem__ABILITY_COUNT = _array_(0)
YDWEGeneralBounsSystem__ABILITY_NUM = _array_(0)
YDWEGeneralBounsSystem__BonusAbilitys = _array_(0)
YDWEGeneralBounsSystem__PowersOf2 = _array_(0)
YDWEGeneralBounsSystem__PRELOAD_DUMMY_UNIT = 1752196449
YDWEGeneralBounsSystem__YDWEBONUS_MyChar = _array_(0)
YDWEGeneralBounsSystem__PRELOAD_ABILITYS = true
YDWEGeneralBounsSystem__BONUS_TYPES = 4
YDWEGeneralBounsSystem__MaxBonus = _array_(0)
YDWEGeneralBounsSystem__MinBonus = _array_(0)
YDWEGeneralBounsSystem__Units = _array_()
YDWEGeneralBounsSystem__UnitCount = 0
--endglobals from YDWEGeneralBounsSystem
--globals from YDWEGetUnitsInRangeOfLocMatchingNull:
LIBRARY_YDWEGetUnitsInRangeOfLocMatchingNull = true
yd_NullTempGroup = nil
--endglobals from YDWEGetUnitsInRangeOfLocMatchingNull
--globals from YDWELogarithm:
LIBRARY_YDWELogarithm = true
YDWELogarithm__base = _array_(0.0)
--endglobals from YDWELogarithm

--globals from YDWEStringHash:
LIBRARY_YDWEStringHash = true
--endglobals from YDWEStringHash
--globals from YDWESync:
LIBRARY_YDWESync = true
YDWESync__m_gc = nil
YDWESync__m_mutex_state = false
--endglobals from YDWESync
--globals from YDWETriggerEvent:
LIBRARY_YDWETriggerEvent = true
yd_DamageEventTrigger = nil
YDWETriggerEvent__DamageEventQueue = _array_()
YDWETriggerEvent__DamageEventNumber = 0

bj_lastMovedItemInItemSlot = nil

YDWETriggerEvent__MoveItemEventTrigger = nil
YDWETriggerEvent__MoveItemEventQueue = _array_()
YDWETriggerEvent__MoveItemEventNumber = 0
--endglobals from YDWETriggerEvent
--globals from YDWETriggerRegisterLeaveRectSimpleNull:
LIBRARY_YDWETriggerRegisterLeaveRectSimpleNull = true
yd_NullTempRegion = nil
--endglobals from YDWETriggerRegisterLeaveRectSimpleNull
--globals from YDWEUnitHasItemOfTypeBJNull:
LIBRARY_YDWEUnitHasItemOfTypeBJNull = true
--endglobals from YDWEUnitHasItemOfTypeBJNull
--globals from Deputy:
LIBRARY_Deputy = true
--endglobals from Deputy
--globals from YDWECreateEwsp:
LIBRARY_YDWECreateEwsp = true
--endglobals from YDWECreateEwsp
--globals from YDWEJumpTimer:
LIBRARY_YDWEJumpTimer = true
--��Ծϵͳ���ȼ�
MoveMoreLevel_JumpTimer = 3
--endglobals from YDWEJumpTimer
--globals from YDWELocalVariable:
LIBRARY_YDWELocalVariable = true
--endglobals from YDWELocalVariable
--globals from YDWEPreloadSL:
LIBRARY_YDWEPreloadSL = true
--/
--/ ÿ�����ռ�õĿռ�[500*id, 500*(id-1))
--/ �±�Խ��û�н��м�飬�ƺ�û�����Ҫ��˭Ҫ���ó���500...��ȥ����- -
--/ 
YDWEPreloadSL__Code = _array_(0)
YDWEPreloadSL__CodeHI = _array_(0)
YDWEPreloadSL__CodeLO = _array_(0)
bj_lastLoadPreloadSLResult = nil

--endglobals from YDWEPreloadSL
--globals from YDWEStringFormula:
LIBRARY_YDWEStringFormula = true
bj_lastCombinedItem = nil
YDWEStringFormula__ItemCombineEventQueue = _array_()
YDWEStringFormula__ItemCombineEventNumber = 0
YDWEStringFormula__MAX_INSTANCES = 8100
YDWEStringFormula__SEGMENT_LENGTH = 4
YDWEStringFormula__FormulaData = 0
--endglobals from YDWEStringFormula
--globals from YDWETimerPattern:
LIBRARY_YDWETimerPattern = true
YDWETimerPattern__Bexpr = nil
YDWETimerPattern__Area = nil
YDWETimerPattern__tmp_data = nil
YDWETimerPattern__yd_loc = Location(0.0, 0.0)
--endglobals from YDWETimerPattern
--globals from YDWETimerSystem:
LIBRARY_YDWETimerSystem = true
YDWETimerSystem__CurrentTime = nil
YDWETimerSystem__CurrentIndex = nil
YDWETimerSystem__TaskListHead = nil
YDWETimerSystem__TaskListIdleHead = nil
YDWETimerSystem__TaskListIdleMax = nil
YDWETimerSystem__TaskListIdle = _array_(0)
YDWETimerSystem__TaskListNext = _array_(0)
YDWETimerSystem__TaskListTime = _array_(0)
YDWETimerSystem__TaskListProc = _array_()
YDWETimerSystem__fnRemoveUnit = nil
YDWETimerSystem__fnDestroyTimer = nil
YDWETimerSystem__fnRemoveItem = nil
YDWETimerSystem__fnDestroyEffect = nil
YDWETimerSystem__fnDestroyLightning = nil
YDWETimerSystem__fnRunTrigger = nil
YDWETimerSystem__Timer = nil
YDWETimerSystem__TimerHandle = nil
YDWETimerSystem__TimerSystem_RunIndex = 0
--endglobals from YDWETimerSystem
--globals from WuQiQiHeSystem:
LIBRARY_WuQiQiHeSystem = true
--endglobals from WuQiQiHeSystem
-- User-defined
udg_UG_ResidualImage = nil
udg_A_Unit = nil
udg_A_Unit2 = nil
udg_A_PlayerHero = _array_()
udg_Player_Hero = _array_()
udg_Unit_B = _array_()
udg_A_UG = nil
udg_A_Piont = nil
udg_A_Piont2 = nil
udg_A_Angle = 0
udg_A_Ang = 0
udg_A_Ang_2 = 0
udg_A_hurt = 0
udg_A_num = 0
udg_x = 0
udg_y = 0
udg_Player = _array_()
udg_A_Int = 0
udg_Number_player = 0
udg_MeiJuJiFen = _array_(0)
udg_kurongsharen = _array_(0)
udg_HuanZhuangCD = _array_(false)
udg_youLingChuan = nil
-- Generated
gg_trg_ShiJiaZhiXiang = nil
gg_trg_YuJiaMiCheng = nil
gg_trg_japi______u = nil
gg_trg_firstOccur = nil
gg_trg____________________007 = nil
gg_trg____________________004 = nil
gg_trg____________________006 = nil
gg_trg____________________005 = nil
gg_trg____________________002 = nil
gg_trg____________________003 = nil
gg_trg_ChangeClothes = nil
gg_trg_QinLongKongHe = nil
gg_trg_YaoWangShenPian = nil
gg_trg_KuRongShenGong = nil
gg_trg_KuRongShenGong_2 = nil
gg_trg_KuRongShenGong_3 = nil
gg_trg_ShuiShangPiao = nil
gg_trg_SH = nil
gg_trg_AM_1 = nil
gg_trg_AM_2 = nil
gg_unit_N008_0054 = nil
gg_unit_N007_0055 = nil
gg_unit_n00M_0131 = nil
gg_unit_N00U_0092 = nil
gg_unit_o00K_0126 = nil
gg_unit_o02D_0069 = nil
gg_unit_nvl2_0005 = nil
gg_unit_N00I_0116 = nil
gg_unit_N00B_0086 = nil
gg_unit_n00E_0066 = nil
gg_unit_n00N_0132 = nil
gg_unit_N00F_0085 = nil
gg_unit_N00P_0084 = nil
gg_unit_N012_0095 = nil
FRAME_ID = -29734415
GUI = nil

MAX_WU_GONG_NUM = 56
MAX_BAN_LV_NUM = 14
LIAN_DAN = 1
DUAN_ZAO = 2
BING_QI = 3
JIAN_DING = 4
LIAN_QI = 5
XUN_BAO = 6
YA_HUAN = 7
JING_WU = 8
MAX_DEPUTY = 8

QIAN_ZHU_SHOU = 1093681740
WU_DU_ZHOU = 1093682261
YU_SHE_SHU = 1093682260
BU_TIAN_JING = 1093682259
WAN_CHU_SHI_XIN = 1093682258

LUO_YING_ZHANG = 1093682501
LUO_YING_JIAN = 1093682503
XUAN_FENG_TUI = 1093682505
BI_BO_XIN_JING = 1093682507
QI_MEN_SHU_SHU = 1093682508

ZAO_LEI_PI = 1093682512
BA_MIAN_LING_LONG = 1093682513
FAN_SHOU_QIAN_ZHU = 1093682515
QIAN_KUN_YI_ZHI = 1093682516
DA_GONG_GAO_CHENG = 1093682514

SHUANG_SHOU = 1093678933
KUI_HUA = 1093678932
HUA_GU = 1093678668
XI_XING = 1093678930
HUA_GONG = 1093678930
TAN_ZHI = 1093678664
BI_HAI = 1093677368
JIU_YIN = 1093678931
JIU_ZHAO = 1093678926

DA_GOU = 1093678924

LONG_XIANG = 1395666994
XIAO_WU_XIANG = 1093679155

MIAO_SHOU_KONG_KONG = 1093677903
GUI_XI_GONG = 1093681989
SHEN_XING_BAI_BIAN = 1093677902

POISONED_BUFF = 1111847784
DEEP_POISONED_BUFF = 1110454602

ITEM_SHE_ZHANG = 1227897154
ITEM_YU_XIAO = 1227897156
ITEM_HAN_SHA = 1227899205
ITEM_YE_LUO = 1227900245

priKey = nil
tiezhang_flag = _array_(0)
tangmen_flag = _array_(0)
talent_flag = _array_(0)
wudu_flag = _array_(0)
taohua_flag = _array_(0)
mall_addition = _array_(0)
level_award = _array_(0)
wukong_flag = _array_(0)
panda_flag = _array_(0)
-- A 永久性道具 B 计时性道具
PROPERTY_TALENT = "AR98FE7J3P"
PROPERTY_TIEZHANG = "A198FYU9ME"
PROPERTY_TANGMEN = "AR87S95C34"
PROPERTY_WUDU = "AWUDU12345"
PROPERTY_TAOHUA = "ATAOHUA123"
PROPERTY_WUKONG = "ARWUKONG59"
PROPERTY_PANDA = "ARPANDA072"

PROPERTY_DOUBLE_POINT = "BC98FNY5L9"
PROPERTY_LEVEL_AWARD = "BYOUARES13"
DENOMINATION_NUMBER = 24

firstTime = true
moshiFlag = false
nanduFlag = 0
tiaoZhanFlag = false
tiaoZhanIndex = 0
is_victory = false
VERSION = "1.6.43"
shiWanTimer = nil
shiWanTimerDialog = nil
wuhun = DialogCreate()
chuansong = DialogCreate()
wuhun1 = _array_()
chuansong1 = _array_()
duanZao_level = _array_(0)
udg_JTX = _array_()
ceshi = false
ceshizongshanghai = nil
curMaxDamage = 0
damage_jf = 0
jiuyangTimer1 = nil
jiuyangTimer2 = nil
jiuyangTimer3 = nil
jiuyangTimerDialog1 = nil
jiuyangTimerDialog2 = nil
jiuyangTimerDialog3 = nil
defeatStealer = nil
defeatSeeker = nil
xunwu = _array_(0)
yangshou = _array_(0)
udg_yangshou = _array_(0)
bigTalent = _array_(0)
yitianflag = _array_(0)
quanZhenFlag = _array_(0)
muRongOnlyFlag = _array_(0)
hengShanOnlyFlag = _array_(0)
huaShanOnlyFlag = _array_(0)
hengshan2OnlyFlag = _array_(0)
taiShanOnlyFlag = _array_(0)
shenLongOnlyFlag = _array_(0)
readyToClear = _array_(false)
udg_talent = _array_(0)
MAX_TALENT_NUM = 7
showHint = _array_(false)
passed_time = 0
next_endless_time = 3600
endless_count = 0
endless_timer = nil
pickingUnit = nil
zwidget = _array_(0)
zbutton = _array_(0)
avatar = nil
avatarBack = nil
closeBtn = nil
heroDiscription = nil
bibo_image = 0
bibo_text = 0

qimen_widget = nil
qimen_button = nil
qimen_text = nil
attrStr = _array_()
-- UI设置对齐锚点的常量 DzFrameSetPoint achor定义，从0开始
TOPLEFT = 0
TOP = 1
TOPRIGHT = 2
LEFT = 3
CENTER = 4
RIGHT = 5
BOTTOMLEFT = 6
BOTTOM = 7
BOTTOMRIGHT = 8

--DzFrameSetScript  注册ui事件的事件ID
NONE = 0
FRAME_EVENT_PRESSED = 1
FRAME_MOUSE_ENTER = 2
FRAME_MOUSE_LEAVE = 3
FRAME_MOUSE_UP = 4
FRAME_MOUSE_DOWN = 5
FRAME_MOUSE_WHEEL = 6
FRAME_FOCUS_ENTER = FRAME_MOUSE_ENTER
FRAME_FOCUS_LEAVE = FRAME_MOUSE_LEAVE
FRAME_CHECKBOX_CHECKED = 7
FRAME_CHECKBOX_UNCHECKED = 8
FRAME_EDITBOX_TEXT_CHANGED = 9
FRAME_POPUPMENU_ITEM_CHANGE_START = 10
FRAME_POPUPMENU_ITEM_CHANGED = 11
FRAME_MOUSE_DOUBLECLICK = 12
FRAME_SPRITE_ANIM_UPDATE = 13
NormalSeconds = 31536000
LeapSeconds = 31622400

BJTIME = 28800
BASE2015_SEC = 1451606400
BASE2015_WEEKDAY = 4

NORMALMON = _array_(0)
activityPointAddition = 0

udg_bIsInit = false
udg_ServerTime = 0
WEEKSTR = _array_()
udg_Year = 0
udg_Mon = 0
udg_Day = 0
udg_Hour = 0
udg_Min = 0
udg_Sec = 0
udg_Week = 0
--===============najitest===============
unitnumber_lh = 0
createdunitnumber_lh = 0
StringList_naji = nil
Sdummy_naji = _array_()
Ttest_naji = _array_()
Ptest_naji = nil
Ihandle_naji = nil
Ibm_naji = nil
Itrigger_naji = nil
Iquest_naji = nil
Iweather_naji = nil
Bfog_naji = nil
Bpause_naji = nil
Bxy_naji = nil
Bid_naji = nil
Bir_naji = nil
Bcamera_naji = _array_(false)
Bpn_naji = nil
Bddm_naji = nil
Dnaji_naji = _array_()
Button_naji = _array_()
Rhandle_naji = nil
Rdummy_naji = nil
Rcamera_naji = _array_(0.0)
Rworld_naji = nil
Gcd_naji = _array_()
Guw_naji = nil
Gms_naji = nil
Q_naji = _array_()
Tcamera_naji = nil
Tbm_naji = _array_()
Weather_naji = _array_()
--===============najitest===============
tiebucishu = _array_(0)
isproducing = _array_(false)
gg_trg_Number14_0 = nil
gg_trg_Number14_1 = nil
udg_zhemeieff = nil
beiMingShaGuai = _array_(0)
shenghuoling_1 = nil
shenghuoling_2 = nil
shenghuoling_3 = nil
ling1zhuan = nil
ling2zhuan = nil
ling3zhuan = nil
udg_xiantiandanwei = nil
biYuAddition = _array_(0.0)
liuHeFlag = _array_(0)
selected_attr = _array_(0)
BI_BO_POINT = 65244

bibo_kill = _array_(0)
tide_rising = _array_(false)
tiaozhanduixiang = _array_(0)
menpaiwuqi = _array_(0)

tiaozhanwho = DialogCreate()
b_dugu = nil
b_xuedaozu = nil
b_ronglianlaozu = nil
b_zhucong = nil
b_damozushi = nil
b_sanfeng = nil
b_cancel = nil
udg_tiaozhanguai = nil
zizhiwugong = _array_(0)
lh_texiao = _array_()
wuxuedian = _array_(0)
dapei = _array_(0)
zizhibool = _array_(false)
jiawuxue = _array_(false)
udg_shenxingpoyin = _array_(0.0)
udg_shenxingfuzhu = _array_()
udg_miaoshoufuzhu = _array_()
guixihuixie = _array_(0.0)
shopweapon = _array_(0)

vipbanlv = _array_()
yd_NullTempItem = nil
w = nil
z = nil
A = nil
B = nil
C = nil
D = nil
H = 0
I = 0
l = 0
J = 0

udg_sixiangdanwei = nil
udg_xuezhandanwei = nil
udg_fanweidanwei = nil
udg_fomiedanwei = nil
udg_yechadanwei = nil
udg_miejuedanwei = nil
wugongshu = _array_(0)
udg_zhemei = _array_(0)

chief = _array_(0)
title0 = _array_(0)
title1 = _array_(0)
deputy = _array_(0)
master = _array_(0)
qimen_status = _array_(0)

ateDenom = _array_(0)
qiankunCd = _array_(false)

-- 多通速17门派数组，每位玩家的通关门派
manySuccess = _array_()
-- 单通速17门派数组，每位玩家的通关门派
singleSuccess = _array_()
initMpSaveStr = "0000000000000000000000000"
fullMpSaveStr = "1111111111111111111111111"

-- 是否第一次难度为最高
topDegreeFlag = false
-- 多通难7奖励额外双倍积分，和商城的叠加
extraDoubleJf = _array_(0)
-- 多通奖励移速100
extraSpeed = _array_(0)

jfQiWu = _array_(0)
jfQiWuLimit = _array_(0)

-- 战斗力数组，每位玩家的战斗力
udg_zdl = _array_(0)
-- 积分数组
udg_jf = _array_(0)
-- 每局可用积分80分
jf_max = 80
-- 每局已用积分
jf_useMax = _array_(0)
-- 通关次数数组
udg_success = _array_(0)
-- 当前局获取到的战斗力
get_zdl = 0
-- 存档是否已保存
saveFlag = _array_(false)
-- 在线玩家数量
udg_wanjiashu = 0
-- 是否是测试版
testVersion = false
-- 奖励的武功伤害
bonus_wugong = _array_(0.0)
-- 奖励的爆伤
bonus_baoshang = _array_(0.0)
-- 最高伤害，打测试桩
max_damage = _array_(0.0)
-- 卖技能书的少林高僧
udg_sellSkillBook = _array_()

udg_tiebushancengshu = 0
udg_nandu = 0

udg_shifoufomie = false
udg_teshushijian = false
udg_yanglao = false
-- 返璞归真模式
udg_fpgz = false
udg_yunyangxianshen = false
udg_sutong = false
taohuakai = false
udg_index = nil
udg_index0 = nil
udg_index1 = nil
udg_index2 = nil
udg_index3 = nil
udg_index4 = nil
udg_nan = nil
udg_nan0 = nil
udg_nan1 = nil
udg_nan2 = nil
udg_nan3 = nil
udg_nan4 = nil
udg_nan5 = nil
udg_nan7 = nil
-- 挑战模式dialog
udg_tiaoZhan = nil
udg_tiaoZhan0 = nil
udg_tiaoZhan1 = nil
udg_tiaoZhan2 = nil
udg_tiaoZhan3 = nil

udg_gudongA = 0
udg_gudongB = 0
udg_gudongC = 0
udg_gudongD = 0
udg_xinggeA = _array_(0)
udg_xinggeB = _array_(0)
udg_vip = _array_(0)
udg_changevip = _array_(0)
udg_elevenvip = _array_(0)
-- 是否是测试人员
udg_isTest = _array_(false)
-- 是否开启测试码开关，全局存档，后台可以控制
admin = "0"
-- 通知内容，后台控制开局对用户输出内容
info = ""
-- 积分倍数，全局存档
jfBeishu = "1"
udg_jianghu = _array_(0)
udg_juexue = _array_(0)
udg_juenei = _array_(0)
udg_canzhang = _array_(0)
udg_diershi = _array_(0)
udg_qiwu = _array_(0)
udg_dan = _array_(0)
udg_weapon = _array_(0)
aidacishu = _array_(0)
udg_wuqishu = _array_(0)
udg_yifushu = _array_(0)
K = _array_()
L = _array_(0)
M = 0
O = 16
P = _array_(0)
Q = _array_(0)
S = _array_(0)
T = _array_(0)
U = 1752196449
V = _array_(0)
W = true
X = _array_(0)
Y = _array_(0)
udg_shuxing = _array_(0)
Z = nil
d4 = nil
e4 = nil
udg_shanghaidanweizu = nil
f4 = nil
g4 = _array_()
h4 = 0
i4 = nil
k4 = _array_()
m4 = 0
nn4 = nil
o4 = CreateTimer()
p4 = nil
q4 = nil
r4 = nil
s4 = nil
t4 = nil
u4 = _array_(0)
v4 = _array_(0)
w4 = _array_(0)
x4 = _array_()
qiuhun = _array_(0)
xidujuexue = _array_(0)
zhaoyangguo = _array_(0)
linganran = _array_(0)
touxiao = _array_(0)
bihai = _array_(0)
y4 = nil
z4 = nil
A4 = nil
a4 = nil
B4 = nil
b4 = nil
C4 = nil
c4 = nil
D4 = 0
juexuelingwu = _array_(0)
udg_baojishanghai = _array_(0.0)
udg_baojilv = _array_(0.0)
shanghaihuifu = _array_(0.0)
shaguaihufui = _array_(0.0)
shengminghuifu = _array_(0.0)
falihuifu = _array_(0.0)
udg_lilianxishu = _array_(0.0)
udg_loc1 = nil
K4 = _array_()
L4 = _array_()
udg_hashero = _array_(false)
udg_baoji = _array_(false)
udg_yiwang = _array_(false)
udg_hero = _array_()
O4 = 0
P4 = _array_()
Q4 = nil
R4 = _array_()
S4 = _array_()
T4 = _array_()
U4 = _array_()
V4 = _array_()
W4 = _array_()
X4 = _array_()
Y4 = _array_(0)
wuxing = _array_(0)
jingmai = _array_(0)
gengu = _array_(0)
fuyuan = _array_(0)
danpo = _array_(0)
yishu = _array_(0)
special_attack = _array_(0)
i7 = nil
udg_runamen = _array_(0)
k7 = 0
m7 = _array_()
nn7 = 0
o7 = 0
udg_counter1 = 0
q7 = _array_(0)
r7 = _array_()
s7 = 0
udg_boshu = 0
u7 = _array_(0)
v7 = _array_()
w7 = nil
x7 = 0
y7 = _array_(0)
z7 = _array_()
A7 = _array_()
ShiFouShuaGuai = false
B7 = 0
b7 = _array_()
C7 = _array_()
c7 = 0
D7 = _array_(0.0)
E7 = _array_()
F7 = _array_(0)
G7 = _array_(0)
H7 = 0
I7 = _array_(0)
l7 = _array_()
J7 = _array_()
J78 = _array_()
J79 = _array_()
J710 = _array_()
J711 = _array_()
K7 = _array_()
udg_menpaineigong = nil
L7 = _array_(0)
MM7 = 0
N7 = 0
O7 = _array_(0)
P7 = _array_(0)
wolfSkinCount = _array_(0)
wolfSkinFlag = _array_(0)
udg_revivetimer = _array_()
R7 = _array_()
S7 = _array_(0)
T7 = 0
U7 = 0
udg_MaxDamage = _array_(0.0)
udg_menpainame = _array_()
X7 = _array_(0)
Y7 = _array_(0)
Z7 = _array_(0)
d8 = _array_(0)
e8 = _array_(0)
shengwang = _array_(0)
g8 = _array_(0)
h8 = _array_(0)
i8 = _array_(0)
j8 = _array_(0)
k8 = _array_()
udg_boss = _array_()
m8 = _array_(false)
o8 = _array_(false)
p8 = _array_()
q8 = _array_(0)
r8 = _array_()
s8 = nil
t8 = false
yongdanshu = _array_(0)
v8 = _array_()
w8 = _array_()
x8 = _array_()
y8 = _array_()
z8 = _array_()
A8 = _array_()
a8 = _array_()
B8 = _array_()
b8 = _array_(false)
C8 = _array_(false)
c8 = _array_(false)
D8 = _array_()
E8 = 0
F8 = _array_(false)
XNKL = _array_(false)
daxia = _array_(false)
G8 = _array_(false)
H8 = _array_(false)
I8 = _array_(false)
l8 = _array_(false)
J8 = _array_(0)
K8 = _array_(0)
xiuxing = _array_(0)
MM8 = _array_(0)
N8 = _array_(0)
O8 = _array_(0)
P8 = _array_(0)
Q8 = _array_(0)
R8 = _array_(0)
S8 = _array_(0)
udg_blgg = _array_(0)
udg_blwx = _array_(0)
udg_bljm = _array_(0)
udg_blfy = _array_(0)
udg_bldp = _array_(0)
udg_blys = _array_(0)
udg_jdds = _array_(0)
udg_ldds = _array_(0)
udg_xbds = _array_(0)
udg_bqds = _array_(0)
udg_dzds = _array_(0)
udg_jwjs = _array_(0)
Z8 = _array_(false)
d9 = _array_(false)
e9 = _array_(false)
f9 = _array_()
g9 = _array_()
h9 = _array_(false)
i9 = _array_(0)
j9 = nil
k9 = nil
m9 = 0
n9 = 0
o9 = _array_()
p9 = 0
q9 = _array_()
r9 = nil
s9 = nil
t9 = _array_()
u9 = 0
v9 = _array_(false)
w9 = _array_(false)
x9 = _array_(false)
y9 = _array_(false)
z9 = _array_(0)
A9 = _array_(0)
a9 = _array_()
B9 = _array_()
b9 = _array_()
C9 = nil
c9 = nil
D9 = nil
E9 = _array_()
F9 = 0
G9 = _array_(0)
H9 = _array_(0)
I9 = _array_(0)
l9 = _array_(0)
udg_baolv = _array_(0)
J9 = _array_()
qiankun2hao = _array_()
qiankun3hao = _array_()
udg_shanghaijiacheng = _array_(0.0)
udg_shanghaixishou = _array_(0.0)
MM9 = _array_(0)
udg_jueneishxs = _array_(0.0)
udg_jueneishjc = _array_(0.0)
udg_jueneiminjie = _array_(0)
udg_jueneijxlw = _array_(0)
udg_jueneibaojilv = _array_(0.0)
S9 = 0
T9 = _array_(false)
LLguaiA = _array_(0)
LLguaiE = _array_(0)
LLguaiB = _array_(0)
LLguaiC = _array_(0)
LLguaiD = _array_(0)
LLguaiF = _array_(0)
LLguaiG = _array_(0)
Z9 = _array_()
dd = _array_()
ed = _array_(false)
fd = _array_()
gd = _array_()
hd = false
jd = _array_(0)
kd = _array_(0)
gudong = _array_(0)
nd = _array_(0)
od = _array_(0)
pd = _array_(0)
qd = _array_(0)
rd = _array_(0)
ud = _array_(0)
vd = _array_()
wugongxiuwei = _array_(0)
xd = _array_(0)
yd = _array_(0)
zd = 0
Ad = _array_(false)
ad = 0
Bd = _array_(false)
bd = _array_()
Cd = _array_(0)
cd = _array_(false)
Dd = _array_(0)
Ed = _array_(0)
Fd = _array_()
Gd = _array_(0.0)
Hd = _array_()
Id = _array_(0)
ld = _array_(0)
Jd = _array_(0)
JYd = _array_(0)
Kd = _array_(0)
Ld = _array_(0)
Md = _array_(0)
Nd = _array_(0)
Od = _array_(0)
Pd = _array_(0)
Qd = _array_(0)
Rd = _array_(false)
Sd = _array_(0)
Td = _array_(0)
Ud = _array_(0)
Vd = _array_(0)
Wd = _array_(0)
jiuazi = _array_(0)
Xd = 0
Yd = 0
Zd = 0
de = false
ee = _array_()
shoujiajf = _array_(0)
ge = _array_(false)
he = _array_(false)
ie = 0
je = _array_()
ke = _array_()
me = _array_()
ne = _array_()
oe = _array_()
pe = _array_()
qe = _array_()
re = _array_()
rre = _array_()
re9 = _array_()
re10 = _array_()
re11 = _array_()
se = _array_()
te = _array_(0)
ue = 5
ve = _array_(0)
xe = _array_(0)
ye = _array_(0)
ze = _array_(0)
Ae = _array_(0)
ae = 0
YaoCao = _array_(0)
ShiPin = _array_(0)
ZhuangBei = _array_(0)
mapLevelReward = _array_(0)
ce = _array_(0)
De = _array_(false)
Ee = _array_(false)
Fe = nil
udg_jail = nil
udg_yizhan = nil
udg_xuanmenpai = nil
udg_tiaozhanqu = nil
Ge = nil
He = nil
Ie = nil
le = nil
Je = nil
Ke = nil
Le = nil
Me = nil
Ne = nil
Oe = nil
Pe = nil
botong = nil
Qe = nil
Re = nil
Se = nil
Te = nil
Ue = nil
Ve = nil
We = nil
Xe = nil
Ye = nil
Ze = nil
df = nil
lh_r = nil
ef = nil
ff = nil
gf = nil
hf = nil
jf = nil
kf = nil
mf = nil
nf = nil
of = nil
pf = nil
qf = nil
rf = nil
sf = nil
tf = nil
uf = nil
vf = nil
wf = nil
xf = nil
yf = nil
zf = nil
Af = nil
af = nil
Bf = nil
bf = nil
Cf = nil
cf = nil
Df = nil
Ef = nil
Ff = nil
Gf = nil
Hf = nil
If = nil
lf = nil
Jf = nil
Kf = nil
Lf = nil
Mf = nil
Nf = nil
Of = nil
Pf = nil
Qf = nil
Rf = nil
Sf = nil
Tf = nil
Uf = nil
Vf = nil
Wf = nil
Xf = nil
Yf = nil
Zf = nil
dg = nil
eg = nil
fg = nil
gg = nil
hg = nil
ig = nil
jg = nil
kg = nil
mg = nil
ng = nil
og = nil
pg = nil
qg = nil
rg = nil
sg = nil
tg = nil
ug = nil
vg = nil
wg = nil
xg = nil
yg = nil
zg = nil
Ag = nil
ag = nil
Bg = nil
bg = nil
Cg = nil
cg = nil
Dg = nil
Eg = nil
Fg = nil
Gg = nil
Hg = nil
Ig = nil
lg = nil
Jg = nil
Kg = nil
Lg = nil
Mg = nil
Ng = nil
Og = nil
Pg = nil
Qg = nil
Rg = nil
Sg = nil
Ug = nil
Vg = nil
Wg = nil
Xg = nil
Yg = nil
Zg = nil
dh = nil
eh = nil
fh = nil
gh = nil
hh = nil
udg_liuqiu = nil
jh = nil
kh = nil
mh = nil
nh = nil
oh = nil
ph = nil
qh = nil
rh = nil
sh = nil
th = nil
uh = nil
vh = nil
wh = nil
xh = "war3mapImported\\yanmenguanqian4.mp3"
yh = "war3mapImported\\wulindahui3.mp3"
zh = "Sound\\Music\\mp3Music\\War2IntroMusic.mp3"
Ah = nil
ah = nil
Bh = nil
bh = nil
Ch = nil
Dh = nil
Eh = nil
Fh = nil
Gh = nil
Hh = nil
Ih = nil
Jh = nil
Kh = nil
Mh = nil
Nh = nil
Oh = nil
Ph = nil
Qh = nil
Rh = nil
Uh = nil
Vh = nil
Wh = nil
Xh = nil
Yh = nil
Zh = nil
di = nil
ei = nil
fi = nil
gi = nil
hi = nil
ii = nil
ji = nil
ki = nil

ni = nil
oi = nil
pi = nil
ri = nil
si = nil
ti = nil
ui = nil
vi = nil
wi = nil
xi = nil
yi = nil
zi = nil
Ai = nil
ai = nil
Bi = nil
bi = nil
Ci = nil
ci = nil
Di = nil
Ei = nil
Fi = nil
Gi = nil
Hi = nil
Ii = nil
li = nil
Ji = nil
Ki = nil
Li = nil
Mi = nil
Ni = nil
Oi = nil
Pi = nil
Qi = nil
Ri = nil
Si = nil
Ti = nil
Ui = nil
Vi = nil
Wi = nil
Xi = nil
Yi = nil
Zi = nil
dj = nil
ej = nil
fj = nil
gj = nil
hj = nil
ij = nil
jj = nil

mj = nil

oj = nil
pj = nil
qj = nil
rj = nil
sj = nil

uj = nil
vj = nil
wj = nil

yj = nil
zj = nil
Aj = nil
aj = nil
Bj = nil
bj = nil
Cj = nil
cj = nil
Dj = nil
Ej = nil
Fj = nil
Gj = nil
Hj = nil
Ij = nil
lj = nil
Jj = nil
Kj = nil
Lj = nil
Mj = nil
Nj = nil
Oj = nil
Pj = nil
Qj = nil
Rj = nil
Sj = nil
Tj = nil
Uj = nil
Vj = nil
Wj = nil
Xj = nil
Yj = nil
Zj = nil
dk = nil
ek = nil
fk = nil
gk = nil
hk = nil
ik = nil
jk = nil
kk = nil
mk = nil
nk = nil
ok = nil
pk = nil
qk = nil
sk = nil
tk = nil
uk = nil
vk = nil
wk = nil
xk = nil
yk = nil
zk = nil
Ak = nil
ak = nil
Bk = nil
bk = nil
Ck = nil
ck = nil
Dk = nil
Ek = nil
Fk = nil
Gk = nil
Hk = nil
Ik = nil
lk = nil
Jk = nil
Kk = nil
Lk = nil
Mk = nil
Nk = nil
Ok = nil
Pk = nil
Qk = nil
Rk = nil
Sk = nil
Tk = nil
Uk = nil
Vk = nil
Wk = nil
Xk = nil
Yk = nil
Zk = nil
dm = nil
em = nil
fm = nil
gm = nil
hm = nil
im = nil
jm = nil
km = nil
mm = nil
nm = nil
om = nil
pm = nil
qm = nil
rm = nil
sm = nil
um = nil
vm = nil
wm = nil
xm = nil
ym = nil
zm = nil
Am = nil
am = nil
Bm = nil
bm = nil
Cm = nil
cm = nil
Dm = nil
Em = nil
Fm = nil
Gm = nil
Hm = nil
Im = nil
lm = nil
Jm = nil
Km = nil
Lm = nil
Mm = nil
Nm = nil
Om = nil
Pm = nil
Qm = nil
Rm = nil
Sm = nil
Tm = nil
Um = nil
Vm = nil
Wm = nil
Xm = nil
Ym = nil
Zm = nil
dn = nil
en = nil
fn = nil
gn = nil
hn = nil
in_ = nil
jn = nil
kn = nil
mn = nil
nn = nil
on = nil
pn = nil
qn = nil
sn = nil
tn = nil
un = nil
vn = nil
wn = nil
xn = nil
yn = nil
zn = nil
An = nil
an = nil
Bn = nil
bn = nil
Cn = nil
cn = nil
Dn = nil
En = nil
Fn = nil
Gn = nil
Hn = nil
In = nil
Jn = nil
Kn = nil
Ln = nil
Mn = nil
Nn = nil
On = nil
Pn = nil
Qn = nil
Rn = nil
Sn = nil
Tn = nil
Un = nil
Vn = nil
Wn = nil
Xn = nil
Yn = nil
Zn = nil
do_ = nil
eo = nil
fo = nil
go = nil
ho = nil
ioo = nil
jo = nil
ko = nil
mo = nil
no = nil

po = nil
qo = nil
ro = nil
so = nil
to = nil
uo = nil
vo = nil
wo = nil
xo = nil
yo = nil
zo = nil
Ao = nil
ao = nil
Bo = nil
bo = nil
Co = nil
co = nil
Do = nil
Eo = nil
Fo = nil
Go = nil
Ho = nil
Io = nil
lo = nil
Jo = nil
Ko = nil
Lo = nil
Mo = nil
No = nil
Oo = nil
Po = nil
Qo = nil
Ro = nil
So = nil
To = nil
Uo = nil
Vo = nil
Wo = nil
Yo = nil
Zo = nil
dp = nil
ep = nil
fp = nil
gp = nil
hp = nil
jp = nil
kp = nil
mp = nil
np = nil
op = nil
pp = nil
qp = nil
sp = nil
tp = nil
vp = nil
wp = nil
xp = nil
yp = nil
zp = nil
Ap = nil
ap = nil
Bp = nil
bp = nil
Cp = nil
cp = nil
Dp = nil
Ep = nil
Fp = nil
Gp = nil
Hp = nil
Ip = nil
lp = nil
Jp = nil
Kp = nil
Lp = nil
Mp = nil
Np = nil
Op = nil
Pp = nil
Qp = nil
Rp = nil
Sp = nil
Tp = nil
Up = nil
Vp = nil
Wp = nil
Xp = nil
Yp = nil
Zp = nil
dq = nil
eq = nil
fq = nil
gq = nil
hq = nil
iq = nil
jq = nil
kq = nil
mq = nil
nq = nil
oq = nil
pq = nil
qq = nil
rq = nil
sq = nil
tq = nil
uq = nil
vq = nil

cq = nil
Dq = nil
Eq = nil
Fq = nil
Gq = nil
Hq = nil
Iq = nil
lq = nil
Jq = nil
Kq = nil
Lq = nil
Mq = nil
Nq = nil
Oq = nil
Pq = nil
Qq = nil
Rq = nil
Sq = nil
Tq = nil
Uq = nil

Xq = nil
Yq = nil
Zq = nil
dr = nil
er = nil
fr = nil
gr = nil
hr = nil
ir = nil
jr = nil
kr = nil
mr = nil
nr = nil
pr = nil
qr = nil
rr = nil
sr = nil
tr = nil
ur = nil
vr = nil
wr = nil
xr = nil
yr = nil
zr = nil
Ar = nil
ar = nil
Br = nil
br = nil
Cr = nil
cr = nil
Dr = nil
Er = nil
Fr = nil
Gr = nil
Hr = nil
Ir = nil
lr = nil
Jr = nil
Kr = nil
Lr = nil
Mr = nil
Nr = nil
Pr = nil
Qr = nil
Rr = nil
Sr = nil
Tr = nil
Ur = nil
Vr = nil
Wr = nil
Xr = nil
Yr = nil
Zr = nil
ds = nil
es = nil
fs = nil
gs = nil
hs = nil
is = nil
js = nil
ks = nil
ms = nil
ns = nil
oos = nil
ps = nil
qs = nil
rs = nil
ts = nil
us = nil
vs = nil
ws = nil
xs = nil
ys = nil
zs = nil
As = nil
as = nil
Bs = nil
Cs = nil
cs = nil
Ds = nil
Es = nil
Fs = nil
Gs = nil
Hs = nil
Is = nil
ls = nil
Js = nil
Ks = nil
Ls = nil
udg_ZhengPaiWL = nil
GU_DONG_SHANG_REN = nil
BAO_SHI_SHANG_REN = nil
PING_YI_ZHI = nil
SHI_PO_TIAN = nil
Ns = nil
Os = nil
Ps = nil
Qs = nil
Rs = nil
LanXin = nil
XuanJin = nil
Ss = nil
Ts = nil
Us = nil
Vs = nil
Ws = nil
Xs = nil
Ys = nil
Zs = nil
ft = nil
gt = nil
ht = nil
jt = nil
kt = nil
nt = nil
ot = nil
ut = nil
vt = nil
xt = nil
yt = nil
zt = nil
At = nil
Bt = nil
Ct = nil
ct = nil
Dt = nil
Et = nil
Ft = nil
Gt = nil
Ht = nil
It = nil
Jt = nil
Kt = 0
Lt = 0
Mt = _array_(0)
Nt = _array_(0)
Ot = 0
Pt = _array_()
Qt = _array_()
Rt = _array_(0.0)
St = _array_(0.0)
Tt = _array_(0.0)
Ut = _array_(0.0)
Vt = _array_(0.0)
Wt = _array_(0.0)
Xt = _array_(0.0)
Yt = _array_(0.0)
Zt = _array_(0.0)
fu = 0.0
gu = 0.0
ju = nil

l__library_init = nil

--JASSHelper struct globals:
si__Frame = 1
si__Frame_F = 0
si__Frame_I = 0
si__Frame_V = _array_(0)
s__Frame_HT = InitHashtable()
s__Frame_num = 0
s__Frame_id = _array_(0)
s__Frame_isShow = _array_(false)
s__Frame_isEnable = _array_(false)
s__Frame_hover = _array_(false)
si__ModSpeed = 2
s__ModSpeed_tm = CreateTimer()
s__ModSpeed_instanceMaxCount = 0
s__ModSpeed_prev = _array_(0)
s__ModSpeed_next = _array_(0)
s__ModSpeed_u = _array_()
s__ModSpeed_lastX = _array_(0.0)
s__ModSpeed_lastY = _array_(0.0)
s__ModSpeed_speed = _array_(0.0)
s__ModSpeed_lead = _array_(false)
s__ModSpeed_x = nil
s__ModSpeed_y = nil
s__ModSpeed_dx = nil
s__ModSpeed_dy = nil
s__ModSpeed_dist = nil
s__ModSpeed_rate = nil
si__YDWEStringFormula__Inventory = 3
si__YDWEStringFormula__Inventory_F = 0
si__YDWEStringFormula__Inventory_I = 0
si__YDWEStringFormula__Inventory_V = _array_(0)
si__YDWEStringFormula__StringTable = 4
si__YDWEStringFormula__ItemIdMatrix = 5
s__YDWEStringFormula__ItemIdMatrix_Data = nil
s__YDWEStringFormula__ItemIdMatrix_Total = 1
s__YDWEStringFormula__ItemIdMatrix_itemId = _array_(0)
s__YDWEStringFormula__ItemIdMatrix_keyStr = _array_()
s__YDWEStringFormula__ItemIdMatrix_keyLen = _array_(0)
si__YDWEStringFormula__FormulaMatrix = 6
s__YDWEStringFormula__FormulaMatrix_Data = nil
s__YDWEStringFormula__FormulaMatrix_Total = 1
s__YDWEStringFormula__FormulaMatrix_formula = _array_()
s__YDWEStringFormula__FormulaMatrix_segmLen = _array_(0)
s__YDWEStringFormula__FormulaMatrix_model = _array_()
s__YDWEStringFormula__FormulaMatrix_message = _array_()
s__YDWEStringFormula__FormulaMatrix_chance = _array_(0)
s__YDWEStringFormula__FormulaMatrix_delete = _array_(false)
si__YDWEStringFormula__Sorting = 7
si__YDWEStringFormula__Sorting_F = 0
si__YDWEStringFormula__Sorting_I = 0
si__YDWEStringFormula__Sorting_V = _array_(0)
s___YDWEStringFormula__Sorting_stack = _array_(0)
s___YDWEStringFormula__Sorting_stack_size = 8
s__YDWEStringFormula__Sorting_stack = _array_(0)
s___YDWEStringFormula__Sorting_count = _array_(0)
s___YDWEStringFormula__Sorting_count_size = 8
s__YDWEStringFormula__Sorting_count = _array_(0)
s__YDWEStringFormula__Sorting_total = _array_(0)
s__YDWEStringFormula__Sorting_char = _array_()
si__YDWETimerPattern__YDVector3 = 10
si__YDWETimerPattern__YDVector3_F = 0
si__YDWETimerPattern__YDVector3_I = 0
si__YDWETimerPattern__YDVector3_V = _array_(0)
s__YDWETimerPattern__YDVector3_x = _array_(0.0)
s__YDWETimerPattern__YDVector3_y = _array_(0.0)
s__YDWETimerPattern__YDVector3_z = _array_(0.0)
si__YDWETimerPattern__Thread = 11
si__YDWETimerPattern__Thread_F = 0
si__YDWETimerPattern__Thread_I = 0
si__YDWETimerPattern__Thread_V = _array_(0)
s__YDWETimerPattern__Thread_des = _array_(0)
s__YDWETimerPattern__Thread_pos = _array_(0)
s__YDWETimerPattern__Thread_vel = _array_(0)
s__YDWETimerPattern__Thread_caster = _array_()
s__YDWETimerPattern__Thread_source = _array_()
s__YDWETimerPattern__Thread_target = _array_()
s__YDWETimerPattern__Thread_obj = _array_()
s__YDWETimerPattern__Thread_ac = _array_(0.0)
s__YDWETimerPattern__Thread_bc = _array_(0.0)
s__YDWETimerPattern__Thread_dist = _array_(0.0)
s__YDWETimerPattern__Thread_step = _array_(0.0)
s__YDWETimerPattern__Thread_amount = _array_(0.0)
s__YDWETimerPattern__Thread_switch = _array_(0)
s__YDWETimerPattern__Thread_follow = _array_(0)
s__YDWETimerPattern__Thread_unitid = _array_(0)
s__YDWETimerPattern__Thread_skills = _array_(0)
s__YDWETimerPattern__Thread_order = _array_(0)
s__YDWETimerPattern__Thread_level = _array_(0)
s__YDWETimerPattern__Thread_dsfx = _array_()
s__YDWETimerPattern__Thread_gsfx = _array_()
s__YDWETimerPattern__Thread_wsfx = _array_()
s__YDWETimerPattern__Thread_part = _array_()
s__YDWETimerPattern__Thread_recycle = _array_(false)
s__YDWETimerPattern__Thread_killdest = _array_(false)
s__YDWETimerPattern__Thread_volume = _array_(false)
s__YDWETimerPattern__Thread_g = _array_()
s__YDWETimerPattern__Thread_t = _array_()
si__YDWETimerPattern__Parabola = 12
si__YDWETimerPattern__Linear = 13
si__YDWETimerPattern__Deceleration = 14
si__DaPei = 15
si__DaPei_F = 0
si__DaPei_I = 0
si__DaPei_V = _array_(0)
s__DaPei_wugongid = _array_(0)
s__DaPei_dapeixiaoguo = _array_(0)
s__DaPei_shxishu = _array_(0.0)
s__DaPei_r = _array_(0.0)
si__ZiZhiWuGong = 16
si__ZiZhiWuGong_F = 0
si__ZiZhiWuGong_I = 0
si__ZiZhiWuGong_V = _array_(0)
s__ZiZhiWuGong_xishu = _array_(0)
s__ZiZhiWuGong_range = _array_(0)
s__ZiZhiWuGong_texiao = _array_(0)
s__ZiZhiWuGong_dapeishu = _array_(0)
s__ZiZhiWuGong_scrate = _array_(0)
s__ZiZhiWuGong_name = _array_()
si__ShopWeapon = 17
si__ShopWeapon_F = 0
si__ShopWeapon_I = 0
si__ShopWeapon_V = _array_(0)
s__ShopWeapon_min_xiuxing = _array_(0)
s__ShopWeapon_id = _array_(0)
s__ShopWeapon_zhuanshu = _array_(false)
si__YDWEStringFormula__Inventory_type = _array_(0)
st__YDWEStringFormula__Inventory_onDestroy = _array_()
si__YDWETimerPattern__Thread_type = _array_(0)
st__YDWETimerPattern__Thread_onDestroy = _array_()
st__Frame_onDestroy = nil
st__YDWEStringFormula__Sorting_onDestroy = nil
st__DaPei_onDestroy = nil
st__DaPei_XiaoGuoShuoMing = nil
st__ZiZhiWuGong_create = nil
st__ZiZhiWuGong_onDestroy = nil
st__ShopWeapon_onDestroy = nil
st__ShopWeapon_PickUpWeapon = nil
st___prototype4 = _array_()
f__arg_integer1 = nil
f__arg_integer2 = nil
f__arg_integer3 = nil
f__arg_integer4 = nil
f__arg_integer5 = nil
f__arg_unit1 = nil
f__arg_item1 = nil
f__arg_real1 = nil
f__arg_this = nil
f__result_string = nil
f__result_integer = nil

EXGetUnitAbility = _native_ 'EXGetUnitAbility'
EXGetUnitAbilityByIndex = _native_ 'EXGetUnitAbilityByIndex'
EXGetAbilityId = _native_ 'EXGetAbilityId'
EXGetAbilityState = _native_ 'EXGetAbilityState'
EXSetAbilityState = _native_ 'EXSetAbilityState'
EXGetAbilityDataReal = _native_ 'EXGetAbilityDataReal'
EXSetAbilityDataReal = _native_ 'EXSetAbilityDataReal'
EXGetAbilityDataInteger = _native_ 'EXGetAbilityDataInteger'
EXSetAbilityDataInteger = _native_ 'EXSetAbilityDataInteger'
EXGetAbilityDataString = _native_ 'EXGetAbilityDataString'
EXSetAbilityDataString = _native_ 'EXSetAbilityDataString'
EXSetAbilityAEmeDataA = _native_ 'EXSetAbilityAEmeDataA'
EXGetItemDataString = _native_ 'EXGetItemDataString'
EXSetItemDataString = _native_ 'EXSetItemDataString'
DzGetMouseTerrainX = _native_ 'DzGetMouseTerrainX'
DzGetMouseTerrainY = _native_ 'DzGetMouseTerrainY'
DzGetMouseTerrainZ = _native_ 'DzGetMouseTerrainZ'
DzIsMouseOverUI = _native_ 'DzIsMouseOverUI'
DzGetMouseX = _native_ 'DzGetMouseX'
DzGetMouseY = _native_ 'DzGetMouseY'
DzGetMouseXRelative = _native_ 'DzGetMouseXRelative'
DzGetMouseYRelative = _native_ 'DzGetMouseYRelative'
DzSetMousePos = _native_ 'DzSetMousePos'
DzTriggerRegisterMouseEvent = _native_ 'DzTriggerRegisterMouseEvent'
DzTriggerRegisterMouseEventByCode = _native_ 'DzTriggerRegisterMouseEventByCode'
DzTriggerRegisterKeyEvent = _native_ 'DzTriggerRegisterKeyEvent'
DzTriggerRegisterKeyEventByCode = _native_ 'DzTriggerRegisterKeyEventByCode'
DzTriggerRegisterMouseWheelEvent = _native_ 'DzTriggerRegisterMouseWheelEvent'
DzTriggerRegisterMouseWheelEventByCode = _native_ 'DzTriggerRegisterMouseWheelEventByCode'
DzTriggerRegisterMouseMoveEvent = _native_ 'DzTriggerRegisterMouseMoveEvent'
DzTriggerRegisterMouseMoveEventByCode = _native_ 'DzTriggerRegisterMouseMoveEventByCode'
DzGetTriggerKey = _native_ 'DzGetTriggerKey'
DzGetWheelDelta = _native_ 'DzGetWheelDelta'
DzIsKeyDown = _native_ 'DzIsKeyDown'
DzGetTriggerKeyPlayer = _native_ 'DzGetTriggerKeyPlayer'
DzGetWindowWidth = _native_ 'DzGetWindowWidth'
DzGetWindowHeight = _native_ 'DzGetWindowHeight'
DzGetWindowX = _native_ 'DzGetWindowX'
DzGetWindowY = _native_ 'DzGetWindowY'
DzTriggerRegisterWindowResizeEvent = _native_ 'DzTriggerRegisterWindowResizeEvent'
DzTriggerRegisterWindowResizeEventByCode = _native_ 'DzTriggerRegisterWindowResizeEventByCode'
DzIsWindowActive = _native_ 'DzIsWindowActive'
DzDestructablePosition = _native_ 'DzDestructablePosition'
DzSetUnitPosition = _native_ 'DzSetUnitPosition'
DzExecuteFunc = _native_ 'DzExecuteFunc'
DzGetUnitUnderMouse = _native_ 'DzGetUnitUnderMouse'
DzSetUnitTexture = _native_ 'DzSetUnitTexture'
DzSetMemory = _native_ 'DzSetMemory'
DzSetUnitID = _native_ 'DzSetUnitID'
DzSetUnitModel = _native_ 'DzSetUnitModel'
DzSetWar3MapMap = _native_ 'DzSetWar3MapMap'
DzTriggerRegisterSyncData = _native_ 'DzTriggerRegisterSyncData'
DzSyncData = _native_ 'DzSyncData'
DzGetTriggerSyncData = _native_ 'DzGetTriggerSyncData'
DzGetTriggerSyncPlayer = _native_ 'DzGetTriggerSyncPlayer'
DzFrameHideInterface = _native_ 'DzFrameHideInterface'
DzFrameEditBlackBorders = _native_ 'DzFrameEditBlackBorders'
DzFrameGetPortrait = _native_ 'DzFrameGetPortrait'
DzFrameGetMinimap = _native_ 'DzFrameGetMinimap'
DzFrameGetCommandBarButton = _native_ 'DzFrameGetCommandBarButton'
DzFrameGetHeroBarButton = _native_ 'DzFrameGetHeroBarButton'
DzFrameGetHeroHPBar = _native_ 'DzFrameGetHeroHPBar'
DzFrameGetHeroManaBar = _native_ 'DzFrameGetHeroManaBar'
DzFrameGetItemBarButton = _native_ 'DzFrameGetItemBarButton'
DzFrameGetMinimapButton = _native_ 'DzFrameGetMinimapButton'
DzFrameGetUpperButtonBarButton = _native_ 'DzFrameGetUpperButtonBarButton'
DzFrameGetTooltip = _native_ 'DzFrameGetTooltip'
DzFrameGetChatMessage = _native_ 'DzFrameGetChatMessage'
DzFrameGetUnitMessage = _native_ 'DzFrameGetUnitMessage'
DzFrameGetTopMessage = _native_ 'DzFrameGetTopMessage'
DzGetColor = _native_ 'DzGetColor'
DzFrameSetUpdateCallback = _native_ 'DzFrameSetUpdateCallback'
DzFrameSetUpdateCallbackByCode = _native_ 'DzFrameSetUpdateCallbackByCode'
DzFrameShow = _native_ 'DzFrameShow'
DzCreateFrame = _native_ 'DzCreateFrame'
DzCreateSimpleFrame = _native_ 'DzCreateSimpleFrame'
DzDestroyFrame = _native_ 'DzDestroyFrame'
DzLoadToc = _native_ 'DzLoadToc'
DzFrameSetPoint = _native_ 'DzFrameSetPoint'
DzFrameSetAbsolutePoint = _native_ 'DzFrameSetAbsolutePoint'
DzFrameClearAllPoints = _native_ 'DzFrameClearAllPoints'
DzFrameSetEnable = _native_ 'DzFrameSetEnable'
DzFrameSetScript = _native_ 'DzFrameSetScript'
DzFrameSetScriptByCode = _native_ 'DzFrameSetScriptByCode'
DzGetTriggerUIEventPlayer = _native_ 'DzGetTriggerUIEventPlayer'
DzGetTriggerUIEventFrame = _native_ 'DzGetTriggerUIEventFrame'
DzFrameFindByName = _native_ 'DzFrameFindByName'
DzSimpleFrameFindByName = _native_ 'DzSimpleFrameFindByName'
DzSimpleFontStringFindByName = _native_ 'DzSimpleFontStringFindByName'
DzSimpleTextureFindByName = _native_ 'DzSimpleTextureFindByName'
DzGetGameUI = _native_ 'DzGetGameUI'
DzClickFrame = _native_ 'DzClickFrame'
DzSetCustomFovFix = _native_ 'DzSetCustomFovFix'
DzEnableWideScreen = _native_ 'DzEnableWideScreen'
DzFrameSetText = _native_ 'DzFrameSetText'
DzFrameGetText = _native_ 'DzFrameGetText'
DzFrameSetTextSizeLimit = _native_ 'DzFrameSetTextSizeLimit'
DzFrameGetTextSizeLimit = _native_ 'DzFrameGetTextSizeLimit'
DzFrameSetTextColor = _native_ 'DzFrameSetTextColor'
DzGetMouseFocus = _native_ 'DzGetMouseFocus'
DzFrameSetAllPoints = _native_ 'DzFrameSetAllPoints'
DzFrameSetFocus = _native_ 'DzFrameSetFocus'
DzFrameSetModel = _native_ 'DzFrameSetModel'
DzFrameGetEnable = _native_ 'DzFrameGetEnable'
DzFrameSetAlpha = _native_ 'DzFrameSetAlpha'
DzFrameGetAlpha = _native_ 'DzFrameGetAlpha'
DzFrameSetAnimate = _native_ 'DzFrameSetAnimate'
DzFrameSetAnimateOffset = _native_ 'DzFrameSetAnimateOffset'
DzFrameSetTexture = _native_ 'DzFrameSetTexture'
DzFrameSetScale = _native_ 'DzFrameSetScale'
DzFrameSetTooltip = _native_ 'DzFrameSetTooltip'
DzFrameCageMouse = _native_ 'DzFrameCageMouse'
DzFrameGetValue = _native_ 'DzFrameGetValue'
DzFrameSetMinMaxValue = _native_ 'DzFrameSetMinMaxValue'
DzFrameSetStepValue = _native_ 'DzFrameSetStepValue'
DzFrameSetValue = _native_ 'DzFrameSetValue'
DzFrameSetSize = _native_ 'DzFrameSetSize'
DzCreateFrameByTagName = _native_ 'DzCreateFrameByTagName'
DzFrameSetVertexColor = _native_ 'DzFrameSetVertexColor'
EXGetEventDamageData = _native_ 'EXGetEventDamageData'
EXSetEventDamage = _native_ 'EXSetEventDamage'
DzAPI_Map_SaveServerValue = _native_ 'DzAPI_Map_SaveServerValue'
DzAPI_Map_GetServerValue = _native_ 'DzAPI_Map_GetServerValue'
DzAPI_Map_Ladder_SetStat = _native_ 'DzAPI_Map_Ladder_SetStat'
DzAPI_Map_IsRPGLadder = _native_ 'DzAPI_Map_IsRPGLadder'
DzAPI_Map_GetGameStartTime = _native_ 'DzAPI_Map_GetGameStartTime'
DzAPI_Map_Stat_SetStat = _native_ 'DzAPI_Map_Stat_SetStat'
DzAPI_Map_GetMatchType = _native_ 'DzAPI_Map_GetMatchType'
DzAPI_Map_Ladder_SetPlayerStat = _native_ 'DzAPI_Map_Ladder_SetPlayerStat'
DzAPI_Map_GetServerValueErrorCode = _native_ 'DzAPI_Map_GetServerValueErrorCode'
DzAPI_Map_GetLadderLevel = _native_ 'DzAPI_Map_GetLadderLevel'
DzAPI_Map_IsRedVIP = _native_ 'DzAPI_Map_IsRedVIP'
DzAPI_Map_IsBlueVIP = _native_ 'DzAPI_Map_IsBlueVIP'
DzAPI_Map_GetLadderRank = _native_ 'DzAPI_Map_GetLadderRank'
DzAPI_Map_GetMapLevelRank = _native_ 'DzAPI_Map_GetMapLevelRank'
DzAPI_Map_GetGuildName = _native_ 'DzAPI_Map_GetGuildName'
DzAPI_Map_GetGuildRole = _native_ 'DzAPI_Map_GetGuildRole'
DzAPI_Map_IsRPGLobby = _native_ 'DzAPI_Map_IsRPGLobby'
DzAPI_Map_GetMapLevel = _native_ 'DzAPI_Map_GetMapLevel'
DzAPI_Map_MissionComplete = _native_ 'DzAPI_Map_MissionComplete'
DzAPI_Map_GetActivityData = _native_ 'DzAPI_Map_GetActivityData'
DzAPI_Map_GetMapConfig = _native_ 'DzAPI_Map_GetMapConfig'
DzAPI_Map_HasMallItem = _native_ 'DzAPI_Map_HasMallItem'
EXGetEffectX = _native_ 'EXGetEffectX'
EXGetEffectY = _native_ 'EXGetEffectY'
EXGetEffectZ = _native_ 'EXGetEffectZ'
EXSetEffectXY = _native_ 'EXSetEffectXY'
EXSetEffectZ = _native_ 'EXSetEffectZ'
EXGetEffectSize = _native_ 'EXGetEffectSize'
EXSetEffectSize = _native_ 'EXSetEffectSize'
EXEffectMatRotateX = _native_ 'EXEffectMatRotateX'
EXEffectMatRotateY = _native_ 'EXEffectMatRotateY'
EXEffectMatRotateZ = _native_ 'EXEffectMatRotateZ'
EXEffectMatScale = _native_ 'EXEffectMatScale'
EXEffectMatReset = _native_ 'EXEffectMatReset'
EXSetEffectSpeed = _native_ 'EXSetEffectSpeed'
EXExecuteScript = _native_ 'EXExecuteScript'


--Generated method caller for Frame.onDestroy
function sc__Frame_onDestroy(this)
    if s__Frame_id[this] ~= 0 then
        DzDestroyFrame(s__Frame_id[this])
    end
    s__Frame_id[this] = 0
end

--Generated allocator of Frame
function s__Frame__allocate()
    local this = si__Frame_F
    if this ~= 0 then
        si__Frame_F = si__Frame_V[this]
    else
        si__Frame_I = si__Frame_I + 1
        this = si__Frame_I
    end
    if this > 8190 then
        return 0
    end

    s__Frame_id[this] = 0
    s__Frame_isShow[this] = true
    s__Frame_isEnable[this] = true
    s__Frame_hover[this] = false
    si__Frame_V[this] = -1
    return this
end

--Generated destructor of Frame
function sc__Frame_deallocate(this)
    if this == nil then
        return
    elseif si__Frame_V[this] ~= -1 then
        return
    end
    f__arg_this = this
    TriggerEvaluate(st__Frame_onDestroy)
    si__Frame_V[this] = si__Frame_F
    si__Frame_F = this
end

--Generated method caller for ZiZhiWuGong.create
function sc__ZiZhiWuGong_create(xishu, range, texiao, dapeishu, scrate)
    f__arg_integer1 = xishu
    f__arg_integer2 = range
    f__arg_integer3 = texiao
    f__arg_integer4 = dapeishu
    f__arg_integer5 = scrate
    TriggerEvaluate(st__ZiZhiWuGong_create)
    return f__result_integer
end

--Generated method caller for ZiZhiWuGong.onDestroy
function sc__ZiZhiWuGong_onDestroy(this)
    s__ZiZhiWuGong_xishu[this] = 0
    s__ZiZhiWuGong_range[this] = 0
    s__ZiZhiWuGong_texiao[this] = 0
    s__ZiZhiWuGong_dapeishu[this] = 0
    s__ZiZhiWuGong_scrate[this] = 0
end

--Generated allocator of ZiZhiWuGong
function s__ZiZhiWuGong__allocate()
    local this = si__ZiZhiWuGong_F
    if this ~= 0 then
        si__ZiZhiWuGong_F = si__ZiZhiWuGong_V[this]
    else
        si__ZiZhiWuGong_I = si__ZiZhiWuGong_I + 1
        this = si__ZiZhiWuGong_I
    end
    if this > 8190 then
        return 0
    end

    s__ZiZhiWuGong_name[this] = "自创武功"
    si__ZiZhiWuGong_V[this] = -1
    return this
end

--Generated destructor of ZiZhiWuGong
function sc__ZiZhiWuGong_deallocate(this)
    if this == nil then
        return
    elseif si__ZiZhiWuGong_V[this] ~= -1 then
        return
    end
    f__arg_this = this
    TriggerEvaluate(st__ZiZhiWuGong_onDestroy)
    si__ZiZhiWuGong_V[this] = si__ZiZhiWuGong_F
    si__ZiZhiWuGong_F = this
end

--Generated method caller for DaPei.onDestroy
function sc__DaPei_onDestroy(this)
    s__DaPei_wugongid[this] = 0
    s__DaPei_dapeixiaoguo[this] = 0
    s__DaPei_shxishu[this] = 0
end

--Generated method caller for DaPei.XiaoGuoShuoMing
function sc__DaPei_XiaoGuoShuoMing(this)
    local s = ""
    s = (s or "") .. "+" .. (GetAbilityName(s__DaPei_wugongid[this]) or "") .. "："
    if s__DaPei_dapeixiaoguo[this] ~= 2 then
        s = (s or "") .. "伤害+" .. (I2S(R2I(s__DaPei_r[this] * 100)) or "") .. "%"
    else
        if R2I(s__DaPei_r[this]) == 1 then
            s = (s or "") .. "几率造成内伤"
        elseif R2I(s__DaPei_r[this]) == 2 then
            s = (s or "") .. "几率造成走火入魔"
        elseif R2I(s__DaPei_r[this]) == 3 then
            s = (s or "") .. "几率造成流血"
        elseif R2I(s__DaPei_r[this]) == 4 then
            s = (s or "") .. "几率造成混乱"
        elseif R2I(s__DaPei_r[this]) == 5 then
            s = (s or "") .. "几率造成昏迷"
        elseif R2I(s__DaPei_r[this]) == 6 then
            s = (s or "") .. "几率造成重伤"
        elseif R2I(s__DaPei_r[this]) == 7 then
            s = (s or "") .. "几率造成血流不止"
        elseif R2I(s__DaPei_r[this]) == 8 then
            s = (s or "") .. "几率造成麻痹"
        elseif R2I(s__DaPei_r[this]) == 9 then
            s = (s or "") .. "几率造成破防"
        elseif R2I(s__DaPei_r[this]) == 10 then
            s = (s or "") .. "几率造成神经错乱"
        elseif R2I(s__DaPei_r[this]) == 11 then
            s = (s or "") .. "几率造成封穴"
        elseif R2I(s__DaPei_r[this]) == 12 then
            s = (s or "") .. "几率造成穴位全封"
        elseif R2I(s__DaPei_r[this]) == 13 then
            s = (s or "") .. "几率造成中毒"
        end
    end
    return s
end

--Generated allocator of DaPei
function s__DaPei__allocate()
    local this = si__DaPei_F
    if this ~= 0 then
        si__DaPei_F = si__DaPei_V[this]
    else
        si__DaPei_I = si__DaPei_I + 1
        this = si__DaPei_I
    end
    if this > 8190 then
        return 0
    end

    s__DaPei_shxishu[this] = 0.0
    si__DaPei_V[this] = -1
    return this
end

--Generated destructor of DaPei
function sc__DaPei_deallocate(this)
    if this == nil then
        return
    elseif si__DaPei_V[this] ~= -1 then
        return
    end
    f__arg_this = this
    TriggerEvaluate(st__DaPei_onDestroy)
    si__DaPei_V[this] = si__DaPei_F
    si__DaPei_F = this
end

--Generated method caller for YDWEStringFormula__Inventory.onDestroy
function sc__YDWEStringFormula__Inventory_onDestroy(this)
    f__arg_this = this
    TriggerEvaluate(st__YDWEStringFormula__Inventory_onDestroy[3])
end

--Generated allocator of YDWEStringFormula__Inventory
function s__YDWEStringFormula__Inventory__allocate()
    local this = si__YDWEStringFormula__Inventory_F
    if this ~= 0 then
        si__YDWEStringFormula__Inventory_F = si__YDWEStringFormula__Inventory_V[this]
    else
        si__YDWEStringFormula__Inventory_I = si__YDWEStringFormula__Inventory_I + 1
        this = si__YDWEStringFormula__Inventory_I
    end
    if this > 8190 then
        return 0
    end

    si__YDWEStringFormula__Inventory_type[this] = 3
    si__YDWEStringFormula__Inventory_V[this] = -1
    return this
end

--Generated destructor of YDWEStringFormula__Inventory
function sc__YDWEStringFormula__Inventory_deallocate(this)
    if this == nil then
        return
    elseif si__YDWEStringFormula__Inventory_V[this] ~= -1 then
        return
    end
    f__arg_this = this
    TriggerEvaluate(st__YDWEStringFormula__Inventory_onDestroy[si__YDWEStringFormula__Inventory_type[this]])
    si__YDWEStringFormula__Inventory_V[this] = si__YDWEStringFormula__Inventory_F
    si__YDWEStringFormula__Inventory_F = this
end

--Generated allocator of YDWEStringFormula__StringTable
function s__YDWEStringFormula__StringTable__allocate()
    local this = s__YDWEStringFormula__Inventory__allocate()
    local kthis
    if this == 0 then
        return 0
    end
    si__YDWEStringFormula__Inventory_type[this] = 4
    kthis = this

    return this
end


--Generated method caller for YDWETimerPattern__Thread.onDestroy
function sc__YDWETimerPattern__Thread_onDestroy(this)
    f__arg_this = this
    TriggerEvaluate(st__YDWETimerPattern__Thread_onDestroy[11])
end

--Generated allocator of YDWETimerPattern__Thread
function s__YDWETimerPattern__Thread__allocate()
    local this = si__YDWETimerPattern__Thread_F
    if this ~= 0 then
        si__YDWETimerPattern__Thread_F = si__YDWETimerPattern__Thread_V[this]
    else
        si__YDWETimerPattern__Thread_I = si__YDWETimerPattern__Thread_I + 1
        this = si__YDWETimerPattern__Thread_I
    end
    if this > 8190 then
        return 0
    end

    si__YDWETimerPattern__Thread_type[this] = 11
    si__YDWETimerPattern__Thread_V[this] = -1
    return this
end

--Generated destructor of YDWETimerPattern__Thread
function sc__YDWETimerPattern__Thread_deallocate(this)
    if this == nil then
        return
    elseif si__YDWETimerPattern__Thread_V[this] ~= -1 then
        return
    end
    f__arg_this = this
    TriggerEvaluate(st__YDWETimerPattern__Thread_onDestroy[si__YDWETimerPattern__Thread_type[this]])
    si__YDWETimerPattern__Thread_V[this] = si__YDWETimerPattern__Thread_F
    si__YDWETimerPattern__Thread_F = this
end

--Generated allocator of YDWETimerPattern__YDVector3
function s__YDWETimerPattern__YDVector3__allocate()
    local this = si__YDWETimerPattern__YDVector3_F
    if this ~= 0 then
        si__YDWETimerPattern__YDVector3_F = si__YDWETimerPattern__YDVector3_V[this]
    else
        si__YDWETimerPattern__YDVector3_I = si__YDWETimerPattern__YDVector3_I + 1
        this = si__YDWETimerPattern__YDVector3_I
    end
    if this > 8190 then
        return 0
    end

    si__YDWETimerPattern__YDVector3_V[this] = -1
    return this
end

--Generated destructor of YDWETimerPattern__YDVector3
function s__YDWETimerPattern__YDVector3_deallocate(this)
    if this == nil then
        return
    elseif si__YDWETimerPattern__YDVector3_V[this] ~= -1 then
        return
    end
    si__YDWETimerPattern__YDVector3_V[this] = si__YDWETimerPattern__YDVector3_F
    si__YDWETimerPattern__YDVector3_F = this
end

--Generated method caller for YDWEStringFormula__Sorting.onDestroy
function sc__YDWEStringFormula__Sorting_onDestroy(this)
    local i = 0
    for _ in _loop_() do
        if i == s___YDWEStringFormula__Sorting_stack_size then
            break
        end
        s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + i] = 0
        s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + i] = 0
        i = i + 1
    end
    s__YDWEStringFormula__Sorting_char[this] = ""
end

--Generated allocator of YDWEStringFormula__Sorting
function s__YDWEStringFormula__Sorting__allocate()
    local this = si__YDWEStringFormula__Sorting_F
    if this ~= 0 then
        si__YDWEStringFormula__Sorting_F = si__YDWEStringFormula__Sorting_V[this]
    else
        si__YDWEStringFormula__Sorting_I = si__YDWEStringFormula__Sorting_I + 1
        this = si__YDWEStringFormula__Sorting_I
    end
    if this > 1022 then
        return 0
    end
    s__YDWEStringFormula__Sorting_stack[this] = (this - 1) * 8
    s__YDWEStringFormula__Sorting_count[this] = (this - 1) * 8
    s__YDWEStringFormula__Sorting_total[this] = 7
    si__YDWEStringFormula__Sorting_V[this] = -1
    return this
end

--Generated destructor of YDWEStringFormula__Sorting
function sc__YDWEStringFormula__Sorting_deallocate(this)
    if this == nil then
        return
    elseif si__YDWEStringFormula__Sorting_V[this] ~= -1 then
        return
    end
    f__arg_this = this
    TriggerEvaluate(st__YDWEStringFormula__Sorting_onDestroy)
    si__YDWEStringFormula__Sorting_V[this] = si__YDWEStringFormula__Sorting_F
    si__YDWEStringFormula__Sorting_F = this
end

--Generated allocator of YDWETimerPattern__Deceleration
function s__YDWETimerPattern__Deceleration__allocate()
    local this = s__YDWETimerPattern__Thread__allocate()
    local kthis
    if this == 0 then
        return 0
    end
    si__YDWETimerPattern__Thread_type[this] = 14
    kthis = this

    return this
end


--Generated allocator of YDWETimerPattern__Parabola
function s__YDWETimerPattern__Parabola__allocate()
    local this = s__YDWETimerPattern__Thread__allocate()
    local kthis
    if this == 0 then
        return 0
    end
    si__YDWETimerPattern__Thread_type[this] = 12
    kthis = this

    return this
end


--Generated allocator of YDWETimerPattern__Linear
function s__YDWETimerPattern__Linear__allocate()
    local this = s__YDWETimerPattern__Thread__allocate()
    local kthis
    if this == 0 then
        return 0
    end
    si__YDWETimerPattern__Thread_type[this] = 13
    kthis = this

    return this
end

function sc___prototype4_execute(i, a1, a2)
    f__arg_unit1 = a1
    f__arg_real1 = a2

    TriggerExecute(st___prototype4[i])
end
function sc___prototype4_evaluate(i, a1, a2)
    f__arg_unit1 = a1
    f__arg_real1 = a2

    TriggerEvaluate(st___prototype4[i])

end
function h__SetUnitMoveSpeed(a0, a1)
    --hook: SetUnitMoveSpeedEx
    sc___prototype4_evaluate(1, a0, a1)
    SetUnitMoveSpeed(a0, a1)
end

--library FrameLibrary:
function s__Frame_numadd(this)
    s__Frame_num = s__Frame_num + 1
end
function s__Frame_getFrame(id)
    local f = LoadInteger(s__Frame_HT, FRAME_ID, id)
    if f == 0 then
        f = s__Frame__allocate()
        s__Frame_id[f] = id
        SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    end
    return f
end
function s__Frame_new(name, parent)
    local f = s__Frame__allocate()
    s__Frame_id[f] = DzCreateFrame(name, s__Frame_id[parent], 0)
    SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
end
function s__Frame_newImage0(parent)
    local f = s__Frame__allocate()
    s__Frame_numadd(f)
    s__Frame_id[f] = DzCreateFrameByTagName("BACKDROP", "Frame_Image" .. (I2S(s__Frame_num) or ""), s__Frame_id[parent], "ImageTemplate", 0)
    SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
end
function s__Frame_newImage1(parent, path, l__w, h)
    local f = s__Frame__allocate()
    s__Frame_numadd(f)
    s__Frame_id[f] = DzCreateFrameByTagName("BACKDROP", "Frame_Image" .. (I2S(s__Frame_num) or ""), s__Frame_id[parent], "ImageTemplate", 0)
    if path ~= nil then
        DzFrameSetTexture(s__Frame_id[f], path, 0)
    end
    DzFrameSetSize(s__Frame_id[f], l__w, h)
    SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
end
function s__Frame_newSprite(parent, path)
    local f = s__Frame__allocate()
    s__Frame_numadd(f)
    s__Frame_id[f] = DzCreateFrameByTagName("SPRITE", "Frame_Sprite" .. (I2S(s__Frame_num) or ""), s__Frame_id[parent], "sprite", 0)
    DzFrameSetModel(s__Frame_id[f], path, 0, 0)
    SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
end
function s__Frame_newTips(parent, path, l__w, h)
    local f = s__Frame__allocate()
    s__Frame_numadd(f)
    s__Frame_id[f] = DzCreateFrameByTagName("BACKDROP", "Frame_Image" .. (I2S(s__Frame_num) or ""), s__Frame_id[parent], path, 0)
    DzFrameSetSize(s__Frame_id[f], l__w, h)
    SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
end
function s__Frame_newText0(parent, l__ff)
    local f = s__Frame__allocate()
    s__Frame_numadd(f)
    s__Frame_id[f] = DzCreateFrameByTagName("TEXT", "Frame_Text" .. (I2S(s__Frame_num) or ""), s__Frame_id[parent], l__ff, 0)
    SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
end
function s__Frame_newText1(parent, str, l__ff)
    local f = s__Frame__allocate()
    s__Frame_numadd(f)
    s__Frame_id[f] = DzCreateFrameByTagName("TEXT", "Frame_Text" .. (I2S(s__Frame_num) or ""), s__Frame_id[parent], l__ff, 0)
    DzFrameSetText(s__Frame_id[f], str)
    SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
end
function s__Frame_newTextButton(parent)
    local f = s__Frame__allocate()
    s__Frame_numadd(f)
    s__Frame_id[f] = DzCreateFrameByTagName("GLUETEXTBUTTON", "Frame_Button" .. (I2S(s__Frame_num) or ""), s__Frame_id[parent], "template", 0)
    SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
end
function s__Frame_newButton0(parent)
    local f = s__Frame__allocate()
    s__Frame_numadd(f)
    s__Frame_id[f] = DzCreateFrameByTagName("BUTTON", "Frame_Button" .. (I2S(s__Frame_num) or ""), s__Frame_id[parent], "ButtonTemplate", 0)
    SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
end
function s__Frame_newButton1(parent, l__w, h)
    local f = s__Frame__allocate()
    s__Frame_numadd(f)
    s__Frame_id[f] = DzCreateFrameByTagName("BUTTON", "Frame_Button" .. (I2S(s__Frame_num) or ""), s__Frame_id[parent], "ButtonTemplate", 0)
    DzFrameSetSize(s__Frame_id[f], l__w, h)
    SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
end
function s__Frame_newButtonEmpty0(parent)
    local f = s__Frame__allocate()
    s__Frame_numadd(f)
    s__Frame_id[f] = DzCreateFrameByTagName("BUTTON", "Frame_ButtonEmpty" .. (I2S(s__Frame_num) or ""), s__Frame_id[parent], "ButtonTemplateEmpty", 0)
    SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
end
function s__Frame_newButtonEmpty1(parent, l__w, h)
    local f = s__Frame__allocate()
    s__Frame_numadd(f)
    s__Frame_id[f] = DzCreateFrameByTagName("BUTTON", "Frame_ButtonEmpty" .. (I2S(s__Frame_num) or ""), s__Frame_id[parent], "ButtonTemplateEmpty", 0)
    DzFrameSetSize(s__Frame_id[f], l__w, h)
    SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
end
function s__Frame_newCloseButton(parent)
    local f = s__Frame__allocate()
    s__Frame_numadd(f)
    s__Frame_id[f] = DzCreateFrameByTagName("BUTTON", "Frame_ButtonEmpty" .. (I2S(s__Frame_num) or ""), s__Frame_id[parent], "icon1", 0)
    SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
end
function s__Frame_setScale(this, r)
    DzFrameSetScale(s__Frame_id[this], r)
end
function s__Frame_setColor(this, c)
    DzFrameSetTextColor(s__Frame_id[this], c)
end
function s__Frame_setSize(this, l__w, h)
    DzFrameSetSize(s__Frame_id[this], l__w, h)
end
function s__Frame_setTexture(this, path)
    DzFrameSetTexture(s__Frame_id[this], path, 0)
end
function s__Frame_setText(this, str)
    DzFrameSetText(s__Frame_id[this], str)
end
function s__Frame_setPoint(this, a, tar, b, x, y)
    DzFrameSetPoint(s__Frame_id[this], a, s__Frame_id[tar], b, x, y)
end
function s__Frame_setColor255(this, r, g, b)
    DzFrameSetTextColor(s__Frame_id[this], DzGetColor(255, r, g, b))
end
function s__Frame_setAllPoints(this, tar)
    DzFrameSetAllPoints(s__Frame_id[this], s__Frame_id[tar])
end
function s__Frame_clearAllPoints(this)
    DzFrameClearAllPoints(s__Frame_id[this])
end
function s__Frame_regEvent(this, i, func)
    DzFrameSetScriptByCode(s__Frame_id[this], i, func, false)
end
function s__Frame_regWheelEvent(this, func)
    DzFrameSetScriptByCode(s__Frame_id[this], 6, func, false)
end
function s__Frame_regClickEvent(this, func)
    DzFrameSetScriptByCode(s__Frame_id[this], 1, func, false)
end
function s__Frame_hide(this)
    DzFrameShow(s__Frame_id[this], false)
    s__Frame_isShow[this] = false
end
function s__Frame_show(this)
    DzFrameShow(s__Frame_id[this], true)
    s__Frame_isShow[this] = true
end
function s__Frame_toggle(this)
    if s__Frame_isShow[this] then
        DzFrameShow(s__Frame_id[this], false)
        s__Frame_isShow[this] = false
    else
        DzFrameShow(s__Frame_id[this], true)
        s__Frame_isShow[this] = true
    end
end
function s__Frame_toggerHover(this, path0, path1)
    if s__Frame_hover[this] then
        s__Frame_hover[this] = false
        DzFrameSetTexture(s__Frame_id[this], path0, 0)
    else
        s__Frame_hover[this] = true
        DzFrameSetTexture(s__Frame_id[this], path1, 0)
    end
end
function s__Frame_enable(this)
    DzFrameSetEnable(s__Frame_id[this], true)
    s__Frame_isEnable[this] = true
end
function s__Frame_disable(this)
    DzFrameSetEnable(s__Frame_id[this], false)
    s__Frame_isEnable[this] = false
end
function s__Frame_setAlpha(this, a)
    DzFrameSetAlpha(s__Frame_id[this], a)
end
function s__Frame_onDestroy(this)
    if s__Frame_id[this] ~= 0 then
        DzDestroyFrame(s__Frame_id[this])
    end
    s__Frame_id[this] = 0
end

--Generated destructor of Frame
function s__Frame_deallocate(this)
    if this == nil then
        return
    elseif si__Frame_V[this] ~= -1 then
        return
    end
    s__Frame_onDestroy(this)
    si__Frame_V[this] = si__Frame_F
    si__Frame_F = this
end
function FrameLibrary__init()
    local f = DzFrameGetTooltip()
    local size = 0.75
    GUI = s__Frame_getFrame(DzGetGameUI())
    --call openBoardButton.setText("任务")
    --call DzFrameClearAllPoints(f)
    --call DzFrameSetPoint(f, 7, DzGetGameUI(), 7, 0, .14)
end

--library FrameLibrary ends
--library MaxSpeed:
--private:
--temp variables


--Implemented from module Init:


function s__ModSpeed_destroy(this)
    s__ModSpeed_speed[this] = 0.0
    if s__ModSpeed_next[this] ~= 0 then
        s__ModSpeed_prev[s__ModSpeed_next[this]] = s__ModSpeed_prev[this]
    end
    s__ModSpeed_next[s__ModSpeed_prev[this]] = s__ModSpeed_next[this]
    s__ModSpeed_prev[this] = s__ModSpeed_prev[0]
    s__ModSpeed_prev[0] = this
    if s__ModSpeed_next[0] == 0 then
        PauseTimer(s__ModSpeed_tm)
    end
end
function s__ModSpeed__get_moveFilter(this)
    return GetUnitAbilityLevel(s__ModSpeed_u[this], 1112757326) < 1 and GetUnitAbilityLevel(s__ModSpeed_u[this], 1112560453) < 1 and GetUnitMoveSpeed(s__ModSpeed_u[this]) > 521.0 and not IsUnitPaused(s__ModSpeed_u[this]) and not s__ModSpeed_lead[this]
end
function s__ModSpeed_move(this)
    if not s__ModSpeed__get_moveFilter(this) then
        return
    end
    s__ModSpeed_x = GetUnitX(s__ModSpeed_u[this])
    s__ModSpeed_y = GetUnitY(s__ModSpeed_u[this])
    s__ModSpeed_dx = s__ModSpeed_x - s__ModSpeed_lastX[this]
    s__ModSpeed_dy = s__ModSpeed_y - s__ModSpeed_lastY[this]
    s__ModSpeed_lastX[this] = s__ModSpeed_x
    s__ModSpeed_lastY[this] = s__ModSpeed_y
    s__ModSpeed_dist = SquareRoot(s__ModSpeed_dx * s__ModSpeed_dx + s__ModSpeed_dy * s__ModSpeed_dy) / MaxSpeed___PERIOD
    if s__ModSpeed_dist >= MaxSpeed___MIN_SPEED and s__ModSpeed_dist <= MaxSpeed___MAX_SPEED then
        s__ModSpeed_rate = (s__ModSpeed_speed[this] - 522.0) / s__ModSpeed_dist
        s__ModSpeed_lastX[this] = s__ModSpeed_x + s__ModSpeed_dx * s__ModSpeed_rate
        s__ModSpeed_lastY[this] = s__ModSpeed_y + s__ModSpeed_dy * s__ModSpeed_rate
        SetUnitX(s__ModSpeed_u[this], s__ModSpeed_lastX[this])
        SetUnitY(s__ModSpeed_u[this], s__ModSpeed_lastY[this])


    end
end
function s__ModSpeed_iterate()
    local this = 0
    for _ in _loop_() do
        this = s__ModSpeed_next[this]
        if this == 0 then
            break
        end
        if GetWidgetLife(s__ModSpeed_u[this]) < 0.405 then
            s__ModSpeed_destroy(this)
        else
            s__ModSpeed_move(this)
        end
    end
end
--public:
function s__ModSpeed_getInstance(u)
    local this = 0

    for _ in _loop_() do
        this = s__ModSpeed_next[this]
        if this == 0 then
            break
        end
        if s__ModSpeed_u[this] == u then
            return this
        end
    end

    return 0
end
function s__ModSpeed_setUnitLed(u, b)
    local this = s__ModSpeed_getInstance(u)
    if this > 0 then
        s__ModSpeed_lead[this] = b
    end
end
function s__ModSpeed_getSpeed(u)
    local this = s__ModSpeed_getInstance(u)
    if this > 0 and GetUnitMoveSpeed(u) > 521.0 then
        return s__ModSpeed_speed[this]
    end
    return GetUnitMoveSpeed(u)
end
function s__ModSpeed_setSpeed(u, amount)
    local this
    if u == nil or GetWidgetLife(u) < 0.405 then
        return
    end
    this = s__ModSpeed_getInstance(u)
    if amount < 523.0 then
        if this > 0 then
            s__ModSpeed_destroy(this)
        end
        return
    elseif this == 0 then
        if s__ModSpeed_prev[0] == 0 then
            s__ModSpeed_instanceMaxCount = s__ModSpeed_instanceMaxCount + 1
            this = s__ModSpeed_instanceMaxCount
        else
            this = s__ModSpeed_prev[0]
            s__ModSpeed_prev[0] = s__ModSpeed_prev[s__ModSpeed_prev[0]]
        end
        if s__ModSpeed_next[0] == 0 then
            TimerStart(s__ModSpeed_tm, MaxSpeed___PERIOD, true, s__ModSpeed_iterate)


        else
            s__ModSpeed_prev[s__ModSpeed_next[0]] = this
        end
        s__ModSpeed_next[this] = s__ModSpeed_next[0]
        s__ModSpeed_next[0] = this
        s__ModSpeed_prev[this] = 0
        s__ModSpeed_u[this] = u


    end
    amount = RMinBJ(amount, MaxSpeed___MAX_SPEED)
    s__ModSpeed_lastX[this] = GetUnitX(u)
    s__ModSpeed_lastY[this] = GetUnitY(u)
    s__ModSpeed_speed[this] = amount
end
--interface:
function SetUnitLed(u, b)
    s__ModSpeed_setUnitLed(u, b)
end
function GetUnitMoveSpeedEx(u)
    return s__ModSpeed_getSpeed(u)
end
function SetUnitMoveSpeedEx(u, speed)
    s__ModSpeed_setSpeed(u, speed)
end
--processed hook:      hook SetUnitMoveSpeed SetUnitMoveSpeedEx

--library MaxSpeed ends



--===========================================================================
--
-- 决战江湖1.6.43正式版
--
--   Warcraft III map script
--   Generated by the Warcraft III World Editor
--   Date: Wed Jun 08 10:11:35 2022
--   Map Author: 云杨 zei_kale
--
--===========================================================================
--***************************************************************************
--*
--*  Global Variables
--*
--***************************************************************************
function InitGlobals()
    local i = 0
    udg_UG_ResidualImage = CreateGroup()
    udg_A_UG = CreateGroup()
    udg_A_Ang = 0
    udg_A_Ang_2 = 0
    udg_A_hurt = 0
    udg_A_num = 0
    udg_x = 0
    udg_y = 0
    udg_A_Int = 0
    udg_Number_player = 0
    i = 0
    for _ in _loop_() do
        if i > 7 then
            break
        end
        udg_MeiJuJiFen[i] = 0
        i = i + 1
    end
    i = 0
    for _ in _loop_() do
        if i > 5 then
            break
        end
        udg_kurongsharen[i] = 0
        i = i + 1
    end
    i = 0
    for _ in _loop_() do
        if i > 5 then
            break
        end
        udg_HuanZhuangCD[i] = false
        i = i + 1
    end
end
--***************************************************************************
--*
--*  Unit Creation
--*
--***************************************************************************
--===========================================================================
function CreateUnitsForPlayer0()
    local p = Player(0)
    local u
    local unitID
    local t
    local life
    u = CreateUnit(p, 1865429594, 1870.8, -4104.3, 256.627)
end
--===========================================================================
function CreateBuildingsForPlayer5()
    local p = Player(5)
    local u
    local unitID
    local t
    local life
    u = CreateUnit(p, 1851945829, -13024.0, -15264.0, 270.0)
    u = CreateUnit(p, 1851945829, 1440.0, -6432.0, 270.0)
    u = CreateUnit(p, 1848651848, -8960.0, -14016.0, 270.0)
    u = CreateUnit(p, 1851945829, -288.0, -13088.0, 270.0)
    u = CreateUnit(p, 1851945829, 544.0, -13024.0, 270.0)
end
--===========================================================================
function CreateUnitsForPlayer5()
    local p = Player(5)
    local u
    local unitID
    local t
    local life
    gg_unit_o02D_0069 = CreateUnit(p, 1865429572, -101.7, -1403.0, 105.88)
    u = CreateUnit(p, 1865429321, 430.0, 206.6, 180.0)
    u = CreateUnit(p, 1865429557, 434.5, 41.8, 180.0)
    gg_unit_N00I_0116 = CreateUnit(p, 1311780937, 1315.2, -13118.7, 343.22)
    gg_unit_o00K_0126 = CreateUnit(p, 1865429067, -1309.2, -1901.3, 303.52)
end
--===========================================================================
function CreateUnitsForPlayer6()
    local p = Player(6)
    local u
    local unitID
    local t
    local life
    gg_unit_N008_0054 = CreateUnit(p, 1311780920, -44.7, -132.0, 210.0)
    u = CreateUnit(p, 1311780921, 600.9, 716.3, 270.0)
end
--===========================================================================
function CreateNeutralHostile()
    local p = Player(PLAYER_NEUTRAL_AGGRESSIVE)
    local u
    local unitID
    local t
    local life
    u = CreateUnit(p, 1853253996, 9481.5, 2020.6, 153.11)
    u = CreateUnit(p, 1853253996, 11946.6, 1409.1, 153.11)
    u = CreateUnit(p, 1853253996, 12790.4, -318.2, 358.11)
    u = CreateUnit(p, 1752328550, 12079.0, 8383.5, 94.211)
    u = CreateUnit(p, 1752328550, 12335.5, 8511.9, 240.795)
    u = CreateUnit(p, 1752328550, 12570.7, 8503.7, 296.64)
    u = CreateUnit(p, 1752328550, 12861.9, 8465.7, 235.587)
    u = CreateUnit(p, 1752328550, 12475.3, 8890.0, 139.454)
    u = CreateUnit(p, 1752328550, 12093.4, 8917.0, 343.234)
    u = CreateUnit(p, 1752328550, 12054.8, 8075.7, 247.892)
    u = CreateUnit(p, 1752328550, 11377.5, 7797.7, 310.505)
    u = CreateUnit(p, 1752328550, 11017.6, 7781.0, 204.451)
    u = CreateUnit(p, 1752328550, 11104.1, 8067.7, 215.416)
    u = CreateUnit(p, 1752328550, 11202.7, 8446.2, 52.648)
    u = CreateUnit(p, 1752328550, 12905.5, 9070.1, 1.956)
    u = CreateUnit(p, 1752328550, 13889.7, 9209.3, 246.541)
    u = CreateUnit(p, 1752328550, 13320.3, 9412.1, 170.48)
    u = CreateUnit(p, 1215130471, 12555.2, 9450.8, 0.04)
    IssueImmediateOrder(u, "")
    u = CreateUnit(p, 1752328550, 13040.2, 9945.3, 320.393)
    u = CreateUnit(p, 1752328550, 12964.0, 10367.6, 268.042)
    u = CreateUnit(p, 1853253996, 10161.2, 3604.7, 103.35)
    u = CreateUnit(p, 1853253996, 11325.7, 3482.4, 172.07)
    u = CreateUnit(p, 1853253996, 11322.3, 743.0, 84.356)
    u = CreateUnit(p, 1853253996, 10865.2, -59.7, 238.96)
    u = CreateUnit(p, 1853253996, 12972.2, -1286.4, 322.47)
    u = CreateUnit(p, 1853253996, 13438.4, -1039.8, 151.045)
    u = CreateUnit(p, 1853253996, 13883.7, -1122.0, 87.959)
    u = CreateUnit(p, 1853253996, 14335.6, -246.5, 7.174)
    u = CreateUnit(p, 1853253996, 12558.5, -1512.8, 224.183)
    u = CreateUnit(p, 1853253996, 11989.6, -691.0, 48.506)
    u = CreateUnit(p, 1853253996, 10697.4, 1028.4, 2.142)
    u = CreateUnit(p, 1853253996, 9993.2, 838.7, 130.62)
    u = CreateUnit(p, 1853253996, 9880.9, -312.0, 83.993)
    u = CreateUnit(p, 1848652087, 4497.0, 2420.3, 244.74)
    u = CreateUnit(p, 1848652087, 4682.4, 2389.7, 244.74)
    u = CreateUnit(p, 1848652087, 4884.2, 2374.0, 244.74)
    u = CreateUnit(p, 1848652087, 5075.1, 2343.2, 244.74)
    u = CreateUnit(p, 1848652087, 4355.3, 3842.3, 244.74)
    u = CreateUnit(p, 1848652087, 4570.0, 3791.6, 244.74)
    u = CreateUnit(p, 1848652087, 4758.0, 3782.1, 244.74)
    u = CreateUnit(p, 1848652087, 4953.4, 3701.1, 244.74)
    u = CreateUnit(p, 1848652087, 6003.5, 3880.6, 59.74)
    u = CreateUnit(p, 1848652087, 6170.3, 3810.9, 64.74)
    u = CreateUnit(p, 1848652087, 6350.6, 3791.0, 64.74)
    u = CreateUnit(p, 1848652087, 6518.1, 3711.4, 64.74)
    u = CreateUnit(p, 1848652087, 5453.7, 2684.7, 244.74)
    u = CreateUnit(p, 1848652087, 5626.1, 2698.0, 244.74)
    u = CreateUnit(p, 1848652087, 5796.1, 2646.3, 244.74)
    u = CreateUnit(p, 1848652087, 5959.2, 2640.0, 244.74)
    u = CreateUnit(p, 1848652085, 6342.4, 2740.4, 202.673)
    gg_unit_n00M_0131 = CreateUnit(p, 1848651853, -3348.2, -15208.4, 56.22)
    gg_unit_n00N_0132 = CreateUnit(p, 1848651854, -3272.5, -15268.8, 90.0)
    u = CreateUnit(p, 1848652086, 6495.4, 4149.1, 244.967)
    u = CreateUnit(p, 1851941230, 5273.9, 4705.8, 335.06)
    u = CreateUnit(p, 1848652084, 6035.3, 1654.1, 142.916)
end
--===========================================================================
function CreateNeutralPassive()
    local p = Player(PLAYER_NEUTRAL_PASSIVE)
    local u
    local unitID
    local t
    local life
    gg_unit_nvl2_0005 = CreateUnit(p, 1853254706, -12666.8, -12668.0, 270.0)
    u = CreateUnit(p, 1865429571, -11675.7, -12657.2, 270.0)
    u = CreateUnit(p, 1751543663, 13113.9, -12953.1, 180.0)
    u = CreateUnit(p, 1751543663, 13098.9, -12608.4, 180.0)
    u = CreateUnit(p, 1751543663, 13106.8, -12266.3, 180.0)
    u = CreateUnit(p, 1751543663, 13125.6, -11941.2, 180.0)
    u = CreateUnit(p, 1751543663, 13110.6, -11596.5, 180.0)
    u = CreateUnit(p, 1751543663, 13118.5, -11254.4, 180.0)
    u = CreateUnit(p, 1751543663, 10471.2, -12877.6, 0.0)
    u = CreateUnit(p, 1751543663, 10456.2, -12532.9, 0.0)
    u = CreateUnit(p, 1751543663, 10464.1, -12190.8, 0.0)
    u = CreateUnit(p, 1751543663, 10482.9, -11865.7, 0.0)
    u = CreateUnit(p, 1751543663, 10467.9, -11521.0, 0.0)
    u = CreateUnit(p, 1751543663, 10475.8, -11178.9, 0.0)
    u = CreateUnit(p, 1751543663, 10788.2, -13132.6, 90.0)
    u = CreateUnit(p, 1751543663, 11123.4, -13127.2, 90.0)
    u = CreateUnit(p, 1751543663, 11476.5, -13127.2, 90.0)
    u = CreateUnit(p, 1751543663, 11789.3, -13119.0, 90.0)
    u = CreateUnit(p, 1751543663, 12117.5, -13126.3, 90.0)
    u = CreateUnit(p, 1751543663, 12752.7, -13125.3, 90.0)
    u = CreateUnit(p, 1751543663, 12439.1, -13131.0, 90.0)
    u = CreateUnit(p, 1751543663, 10865.3, -11041.6, 270.0)
    u = CreateUnit(p, 1751543663, 11200.6, -11052.2, 270.0)
    u = CreateUnit(p, 1751543663, 11553.7, -11052.2, 270.0)
    u = CreateUnit(p, 1751543663, 11866.5, -11044.1, 270.0)
    u = CreateUnit(p, 1751543663, 12194.7, -11051.3, 270.0)
    u = CreateUnit(p, 1751543663, 12829.8, -11050.3, 270.0)
    u = CreateUnit(p, 1751543663, 12516.3, -11048.0, 270.0)
    u = CreateUnit(p, 1751282536, 8756.7, 2231.1, 159.134)
    u = CreateUnit(p, 1751410035, 8725.7, 1444.5, 148.343)
    u = CreateUnit(p, 1869050475, 10149.5, 2965.0, 12.49)
    gg_unit_N007_0055 = CreateUnit(p, 1311780919, 407.6, -602.6, 180.0)
    u = CreateUnit(p, 1853058150, 10997.8, 3200.4, 270.0)
    u = CreateUnit(p, 1853320818, 10992.4, 2448.7, 90.0)
    gg_unit_n00E_0066 = CreateUnit(p, 1848651845, 14666.0, 1079.2, 89.34)
    u = CreateUnit(p, 1865429554, 10129.1, 2787.2, 0.0)
    u = CreateUnit(p, 1848651841, 10780.4, 3209.3, 270.0)
    u = CreateUnit(p, 1865429336, 12561.4, 1703.5, 225.0)
    gg_unit_N00P_0084 = CreateUnit(p, 1311780944, -1438.3, -1387.7, 60.0)
    gg_unit_N00F_0085 = CreateUnit(p, 1311780934, -1396.8, -161.8, 300.0)
    gg_unit_N00B_0086 = CreateUnit(p, 1311780930, -1463.4, -512.7, 352.62)
    IssueImmediateOrder(gg_unit_N00B_0086, "")
    IssueImmediateOrder(gg_unit_N00B_0086, "")
    u = CreateUnit(p, 1865429049, -2214.0, 469.5, 315.03)
    u = CreateUnit(p, 1865429337, -2283.0, 311.9, 0.0)
    u = CreateUnit(p, 1865429338, -2063.7, 512.1, 270.04)
    u = CreateUnit(p, 1865429553, 10788.7, 2432.2, 90.18)
    u = CreateUnit(p, 1311780945, 653.0, -10821.9, 0.0)
    gg_unit_N00U_0092 = CreateUnit(p, 1311780949, -1149.0, -1379.7, 135.0)
    u = CreateUnit(p, 1311781169, -358.9, -1403.1, 90.0)
    gg_unit_N012_0095 = CreateUnit(p, 1311781170, 412.4, -811.2, 180.0)
    u = CreateUnit(p, 1848652083, 3886.2, 3121.5, 196.19)
    u = CreateUnit(p, 1848652083, 3865.2, 3027.9, 52.51)
    u = CreateUnit(p, 1865429559, -8391.7, -13686.5, 180.0)
    u = CreateUnit(p, 1865429560, -9565.3, -13673.1, 0.0)
    u = CreateUnit(p, 1865429569, -9010.1, -13208.2, 270.0)
    u = CreateUnit(p, 1865429561, -9519.1, -14831.5, 0.0)
    u = CreateUnit(p, 1865429570, -8490.7, -14848.6, 180.0)
    u = CreateUnit(p, 1751871081, -11717.6, -13939.5, 180.0)
    u = CreateUnit(p, 1751871081, -12586.0, -13906.9, 0.0)
    u = CreateUnit(p, 1865429580, 1773.6, -4106.0, 270.0)
    u = CreateUnit(p, 1752327272, 3711.9, 2968.2, 166.77)
    u = CreateUnit(p, 1752327272, 3730.5, 3099.0, 263.06)
    u = CreateUnit(p, 1848652083, 3797.6, 3002.8, 196.19)
    u = CreateUnit(p, 1848652083, 3885.1, 2937.0, 116.19)
    u = CreateUnit(p, 1751671916, 3781.0, 3397.1, 350.628)
    u = CreateUnit(p, 1751671916, 3920.5, 3422.0, 179.146)
    u = CreateUnit(p, 1848652083, 6794.2, 2438.8, 196.19)
    u = CreateUnit(p, 1848652083, 6773.2, 2345.2, 52.51)
    u = CreateUnit(p, 1752327272, 6638.5, 2416.3, 263.06)
    u = CreateUnit(p, 1848652083, 6705.6, 2320.1, 196.19)
    u = CreateUnit(p, 1848652083, 6793.1, 2254.3, 116.19)
    u = CreateUnit(p, 1848652083, 7092.3, 2369.2, 37.179)
    u = CreateUnit(p, 1848652083, 7071.3, 2275.5, 49.911)
    u = CreateUnit(p, 1752327272, 6936.6, 2346.6, 263.06)
    u = CreateUnit(p, 1848652083, 7003.7, 2250.5, 196.19)
    u = CreateUnit(p, 1848652083, 7091.2, 2184.7, 62.22)
    u = CreateUnit(p, 1751671916, 7272.2, 2494.2, 203.308)
    u = CreateUnit(p, 1751671916, 7361.4, 2393.4, 70.172)
    u = CreateUnit(p, 1751671916, 7493.5, 2335.2, 106.351)
    u = CreateUnit(p, 1751671916, 7294.0, 2268.6, 209.944)
    u = CreateUnit(p, 1751671916, 7344.0, 2637.7, 292.322)
end
--===========================================================================
function CreatePlayerBuildings()
    CreateBuildingsForPlayer5()
end
--===========================================================================
function CreatePlayerUnits()
    CreateUnitsForPlayer0()
    CreateUnitsForPlayer5()
    CreateUnitsForPlayer6()
end
--===========================================================================
function CreateAllUnits()
    CreateBuildingsForPlayer5() -- INLINED!!
    CreateNeutralHostile()
    CreateNeutralPassive()
    CreatePlayerUnits()
end

--===========================================================
--被动技能范围伤害
--attacker = 攻击者
--attacker = 被攻击者
--spell_id = 技能ID
--range    = 技能范围
--damage   = 伤害值
--effects  = 特效
--possibility = 概率
--mana_cost = 蓝耗
--===========================================================
function UnitAttack_Conditions()
    local u = GetAttacker()
    local l__ut = GetTriggerUnit()
    local p = GetOwningPlayer(u)
    local i = 1 + GetPlayerId(p)
    local loc = GetUnitLoc(u)
    local loc2 = GetUnitLoc(l__ut)
    local temp_loc = nil
    local g = nil
    local j = 0
    local k = 0
    local x = 0
    local y = 0
    local dummy = nil
    -- 嵩山剑法
    if PassiveWuGongCondition(u, l__ut, 1093681734) then
        -- INLINED!!
        songShanJianFa(u, l__ut)
    end
    -- 千蛛手
    if PassiveWuGongCondition(u, l__ut, QIAN_ZHU_SHOU) then
        qianZhuShou()
    end
    -- 千蛛手的蜘蛛攻击
    if GetUnitTypeId(u) == 1848651865 then
        qianZhuZhu()
    end
    -- 驭蛇奇术
    if PassiveWuGongCondition(u, l__ut, YU_SHE_SHU) then
        yuSheShu()
    end

    -- 落英剑法
    if PassiveWuGongCondition(u, l__ut, LUO_YING_JIAN) and GetRandomReal(1, 100) <= 18 + fuyuan[i] * 0.2 then
        luoYingJian(u, l__ut)
    end

    -- 旋风扫叶腿
    if PassiveWuGongCondition(u, l__ut, XUAN_FENG_TUI) and GetRandomReal(1, 100) <= 18 + fuyuan[i] * 0.2 then
        xuanFengTui(u, l__ut)
    end
    -- 遭雷劈
    if PassiveWuGongCondition(u, l__ut, ZAO_LEI_PI) and GetRandomReal(1, 100) <= 16 + fuyuan[i] * 0.2 then
        zaoLeiPi(u, l__ut)
    end
    RemoveLocation(loc)
    RemoveLocation(loc2)
    u = nil
    l__ut = nil
    loc = nil
    loc2 = nil
    p = nil
    dummy = nil
    return false
end
function UnitAttack()
    local t = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
    TriggerAddCondition(t, Condition(UnitAttack_Conditions))
    t = nil
end
--使用技能系统
function UseAbility_Conditions()
    local id = GetSpellAbilityId()
    local u = GetTriggerUnit()
    local l__ut = GetSpellTargetUnit()
    local last = nil
    local p = GetOwningPlayer(u)
    local i = GetPlayerId(p)
    local t = nil
    local r = 0
    local j = 0
    local range = 500
    local rand = 0
    local randInt = 0
    local g = nil
    local life = 0

    -- 五毒教：五毒笛咒
    if id == WU_DU_ZHOU then
        wuDuZhou()
    end

    -- 五毒教：补天心经
    if id == BU_TIAN_JING then
        buTianJing()
    end

    -- 五毒教：万蜍噬心
    if id == WAN_CHU_SHI_XIN then
        wanChuShiXin()
    end

    -- 桃花岛：落英神剑掌
    if id == LUO_YING_ZHANG then
        luoYingZhang(u)
    end
    -- 桃花岛：碧波心经
    if id == BI_BO_XIN_JING then
        biBoXinJing(u)
    end

    -- 桃花岛：奇门术数
    if id == QI_MEN_SHU_SHU then
        qiMenShuShu(u)
    end
    -- 野螺派：反手牵猪
    if id == FAN_SHOU_QIAN_ZHU then
        fanShouQianZhu(u, l__ut)
    end
    -- 野螺派：乾坤一掷
    if id == QIAN_KUN_YI_ZHI then
        qianKunYiZhi(u)
    end

    u = nil
    l__ut = nil
    p = nil
    g = nil
    last = nil
    return false
end
--单位使用技能系统
function UseAbility()
    local t = CreateTrigger()

    TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    TriggerAddCondition(t, Condition(UseAbility_Conditions))
    t = nil
end
function UnitDamage_Conditions()
    local u = GetEventDamageSource()
    local uc = nil
    local l__ut = GetTriggerUnit()
    local p = GetOwningPlayer(u)
    local i = 1 + GetPlayerId(p)
    local loc = GetUnitLoc(u)
    local loc2 = GetUnitLoc(l__ut)
    local damage = GetEventDamage()
    local t = nil

    if damage == 5.93 then
        wanChuEffect()
    end

    if damage == 5.41 then
        wuDuZhouDamage()
    end

    -- 落英神剑掌
    if damage == 6.01 then
        luoYingZhangDamage(udg_hero[i], l__ut)
    end

    -- 落英剑法
    if damage == 6.02 then
        luoYingJianDamage(udg_hero[i], l__ut)
    end

    -- 旋风扫叶腿
    if damage == 6.03 then
        xuanFengTuiDamage(udg_hero[i], l__ut)
    end
    -- 奇门术数
    if damage == 6.04 then
        qiMenShuShuDamage(udg_hero[i], l__ut)
    end

    -- 遭雷劈
    if damage == 6.05 then
        zaoLeiPiDamage(udg_hero[i], l__ut)
    end
    -- 大功告成
    if damage > GetWidgetLife(l__ut) and GetUnitAbilityLevel(l__ut, DA_GONG_GAO_CHENG) >= 1 then
        daGongGaoCheng(l__ut)
    end

    t = nil
    u = nil
    l__ut = nil
    uc = nil
    loc = nil
    loc2 = nil
    p = nil
    return false
end
--任意单位伤害事件系统
function UnitDamage()
    local t = CreateTrigger()

    YDWESyStemAnyUnitDamagedRegistTrigger(t)
    TriggerAddCondition(t, Condition(UnitDamage_Conditions))
    t = nil
end
-- 任意单位死亡事件
function UnitDeath_Conditions()
    local u = GetKillingUnit()
    local l__ut = GetTriggerUnit()
    local i = 1 + GetPlayerId(GetOwningPlayer(u))
    local count = IMaxBJ(LoadInteger(YDHT, GetHandleId(u), BI_BO_POINT), 10)
    local j = 1
    if IsUnitEnemy(l__ut, GetOwningPlayer(u)) and GetUnitAbilityLevel(u, BI_BO_XIN_JING) >= 1 then
        bibo_kill[i] = bibo_kill[i] + 1
        if bibo_kill[i] > count then
            bibo_kill[i] = bibo_kill[i] - count
            if GetUnitAbilityLevel(u, QI_MEN_SHU_SHU) >= 1 then
                j = 2
            end
            SaveInteger(YDHT, GetHandleId(u), BI_BO_POINT, LoadInteger(YDHT, GetHandleId(u), BI_BO_POINT) + j)
            DisplayTextToPlayer(Player(i - 1), 0, 0, "碧波心经点数+" .. (I2S(j) or ""))
        end
    end

    u = nil
    l__ut = nil
    return false
end
--任意单位死亡事件系统
function UnitDeath()
    local t = CreateTrigger()

    TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
    TriggerAddCondition(t, Condition(UnitDeath_Conditions))
    t = nil
end
-- 购买物品
function BuyItem_Conditions()
    local u = GetBuyingUnit()
    local l__ut = GetSellingUnit()
    local it = GetSoldItem()
    local i = 1 + GetPlayerId(GetOwningPlayer(u))

    -- 八面玲珑
    if GetUnitAbilityLevel(udg_hero[i], BA_MIAN_LING_LONG) >= 1 then
        baMianLingLong(udg_hero[i], it)
    end

    u = nil
    l__ut = nil
    return false
end
function UseItem_Conditions()
    local u = GetTriggerUnit()
    local it = GetManipulatedItem()
    local i = 1 + GetPlayerId(GetOwningPlayer(u))

    if GetItemTypeId(it) == ITEM_YE_LUO then
        addAllAttrs(i, 2)
        DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFFDDFF00有玩家食用了野螺，获得全属性+2")
    end

    u = nil
    it = nil
    return false
end
function PickupItem_Conditions()
    local u = GetTriggerUnit()
    local it = GetManipulatedItem()
    local itt
    local i = 1 + GetPlayerId(GetOwningPlayer(u))
    local point = GetItemCharges(it)
    local j = 0

    -- 多个野螺合并次数
    if GetItemTypeId(it) == ITEM_YE_LUO then
        for _ in _loop_() do
            if j > 5 then
                break
            end
            itt = UnitItemInSlot(u, j)
            if itt ~= it and GetItemTypeId(itt) == ITEM_YE_LUO then
                RemoveItem(it)
                SetItemCharges(itt, GetItemCharges(itt) + point)
                if true then
                    break
                end
            end
        end
    end

    u = nil
    it = nil
    itt = nil
    return false
end
--任意单位购买物品系统
function ItemEvent()
    local t = CreateTrigger()

    TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SELL_ITEM)
    TriggerAddCondition(t, Condition(BuyItem_Conditions))

    t = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
    TriggerAddCondition(t, Condition(UseItem_Conditions))
    t = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    TriggerAddCondition(t, Condition(PickupItem_Conditions))
    t = nil
end

--刚进入地图
function Zw()
    FogEnableOff()
    FogMaskEnableOff()
    SetCreepCampFilterState(false)
    jw(false)
    SetPlayerAllianceStateBJ(Player(12), Player(6), 3)
    SetPlayerHandicapXP(Player(0), 0.43)
    SetPlayerHandicapXP(Player(1), 0.43)
    SetPlayerHandicapXP(Player(2), 0.43)
    SetPlayerHandicapXP(Player(3), 0.43)
    SetPlayerHandicapXP(Player(4), 0.43)
    SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, 1800.0, 0.0)
    PlayMusicBJ(xh)
    K4[1] = Ls
    K4[2] = Qs
    K4[3] = Os
    K4[4] = Ns
    K4[5] = Ps
    K4[6] = LanXin
    K4[7] = XuanJin
    GroupAddUnit(i7, Ls)
    GroupAddUnit(i7, Ns)
    GroupAddUnit(i7, Qs)
    GroupAddUnit(i7, Os)
    GroupAddUnit(i7, Ps)
    GroupAddUnit(i7, LanXin)
    GroupAddUnit(i7, XuanJin)
    y7[1] = 1969711215
    y7[2] = 1970498413
    y7[3] = 1852798821
    y7[4] = 1851879023
    y7[5] = 1852008562
    y7[6] = 1852273524
    y7[7] = 1969381742
    y7[8] = 1852466993
    y7[9] = 1869898354
    y7[10] = 1853320292
    y7[11] = 1852208244
    y7[12] = 1701077869
    y7[13] = 1751410807
    y7[14] = 1852076648
    y7[15] = 1970107511
    y7[16] = 1852990571
    y7[17] = 1852207714
    y7[18] = 1869898347
    y7[19] = 1853517677
    y7[20] = 1869311844
    y7[21] = 1852076404
    y7[22] = 1852076662
    y7[23] = 1852204908
    y7[24] = 1701013613
    y7[25] = 1853125236
    y7[26] = 1852601452
    y7[27] = 1702064246
    y7[28] = 1852403302
    y7[29] = 1851941995
    y7[30] = 1852340580
    u7[1] = 1852007794
    u7[2] = 1852335457
    u7[3] = 1852599148
    u7[4] = 1852140645
    u7[5] = 1852141168
    u7[6] = 1851941985
    u7[7] = 1848651826
    u7[8] = 1851942003
    --call SetHeroLevel(gg_unit_N008_0054,99,true)
    SetUnitLifePercentBJ(gg_unit_N007_0055, 5)
    SetUnitLifePercentBJ(gg_unit_N012_0095, 5)
    --call UnitAddAbility(gg_unit_N00F_0112,'A02Z')
    --call IssueTargetOrderById(gg_unit_N00F_0112, 852063, gg_unit_N007_0055)
    AddSpecialEffectTargetUnitBJ("overhead", Ts, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
    AddSpecialEffectTargetUnitBJ("overhead", Ft, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
    AddSpecialEffectTargetUnitBJ("overhead", Ss, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
    AddSpecialEffectTargetUnitBJ("overhead", vt, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
    AddSpecialEffectTargetUnitBJ("overhead", ot, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
    AddSpecialEffectTargetUnitBJ("overhead", nt, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
    AddSpecialEffectTargetUnitBJ("overhead", Et, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
    AddSpecialEffectTargetUnitBJ("overhead", ct, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
    AddSpecialEffectTargetUnitBJ("overhead", zt, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
    AddSpecialEffectTargetUnitBJ("overhead", Ct, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
    AddSpecialEffectTargetUnitBJ("overhead", ut, "Objects\\RandomObject\\RandomObject.mdl")
    AddSpecialEffectTargetUnitBJ("overhead", xt, "Objects\\RandomObject\\RandomObject.mdl")
    AddSpecialEffectTargetUnitBJ("overhead", yt, "Objects\\RandomObject\\RandomObject.mdl")
    AddSpecialEffectTargetUnitBJ("overhead", Dt, "Objects\\RandomObject\\RandomObject.mdl")
    AddSpecialEffectTargetUnitBJ("overhead", At, "Objects\\RandomObject\\RandomObject.mdl")
    AddSpecialEffectTargetUnitBJ("overhead", Bt, "Objects\\RandomObject\\RandomObject.mdl")
    AddSpecialEffectTargetUnitBJ("overhead", gg_unit_N007_0055, "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl")
    CreateTextTagUnitBJ("双击选人再选门派", Rs, 0.0, 15.0, 100.0, 100.0, 0.0, 50.0)
    -- call CreateTextTagUnitBJ("新手教官",SuiFeng,.0,15.,100.,100.,.0,50.)
    -- call CreateTextTagLocBJ("新手教官",Location(420,-597),100.0,15.,100.,100.,.0,50.)
    -- call CreateTextTagLocBJ("地图等级福利",Location(-1500,-113),100.0,15.,100.,100.,.0,50.)
    -- call CreateTextTagLocBJ("积分商店",Location(-1500,-1344),120.0,15.,100.,100.,.0,50.)
    CreateTextTagLocBJ("决战江湖名人榜", GetRectCenter(uh), 100.0, 10, 100, 100, 0.0, 50.0)
    v7[1] = GetRectCenter(Ie)
    v7[2] = GetRectCenter(le)
    v7[3] = GetRectCenter(Je)
    v7[4] = GetRectCenter(Ke)
    v7[5] = GetRectCenter(Le)
    v7[6] = GetRectCenter(Me)
    v7[7] = GetRectCenter(Ne)
    v7[8] = GetRectCenter(Oe)
    v7[9] = GetRectCenter(Ge)
    v7[10] = GetRectCenter(Re)
    v7[11] = GetRectCenter(ff)
    C7[1] = ft
    C7[2] = gt
    C7[3] = ht
    C7[4] = jt
    C7[5] = kt
    b7[1] = Us
    b7[2] = Zs
    b7[3] = Ys
    b7[4] = Xs
    b7[5] = Ws
    AdjustPlayerStateBJ(10, Player(0), PLAYER_STATE_RESOURCE_LUMBER)
    AdjustPlayerStateBJ(10, Player(1), PLAYER_STATE_RESOURCE_LUMBER)
    AdjustPlayerStateBJ(10, Player(2), PLAYER_STATE_RESOURCE_LUMBER)
    AdjustPlayerStateBJ(10, Player(3), PLAYER_STATE_RESOURCE_LUMBER)
    AdjustPlayerStateBJ(10, Player(4), PLAYER_STATE_RESOURCE_LUMBER)
    ChooseMoShi()
    TaoHuaDaoKaiFang()
    bj_forLoopAIndex = 0
    for _ in _loop_() do
        if bj_forLoopAIndex >= 5 then
            break
        end
        if GetPlayerController(Player(bj_forLoopAIndex)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(bj_forLoopAIndex)) == PLAYER_SLOT_STATE_PLAYING then
            SaveStr(YDHT, GetHandleId(Player(bj_forLoopAIndex)), GetHandleId(Player(bj_forLoopAIndex)), GetPlayerName(Player(bj_forLoopAIndex)))
            SaveStr(YDHT, GetHandleId(Player(bj_forLoopAIndex)), GetHandleId(Player(bj_forLoopAIndex)) * 2, GetPlayerName(Player(bj_forLoopAIndex)))
        end
        bj_forLoopAIndex = bj_forLoopAIndex + 1
    end
    et.wait(40 * 1000, function()
        StartTimerBJ(A7[3], false, 90.0)
        CreateTimerDialogBJ(bj_lastStartedTimer, "邪教进攻倒计时：")
        TimerDialogDisplay(bj_lastCreatedTimerDialog, true)
        z7[3] = bj_lastCreatedTimerDialog
    end)

    et.wait(160 * 1000, function()
        hd = true
    end)
end
function InitFamouses()
    ve[1] = 1328558411
    xe[1] = 400
    ye[1] = 20
    ze[1] = 600
    ve[2] = 1429221424
    xe[2] = 350
    ye[2] = 15
    ze[2] = 730
    ve[3] = 1160786002
    xe[3] = 260
    ye[3] = 12
    ze[3] = 540
    ve[4] = 1211117633
    xe[4] = 250
    ye[4] = 18
    ze[4] = 500
    ve[5] = 1328558412
    xe[5] = 310
    ye[5] = 16
    ze[5] = 750
    ve[6] = 1328558413
    xe[6] = 220
    ye[6] = 19
    ze[6] = 700
    ve[7] = 1328558414
    xe[7] = 340
    ye[7] = 17
    ze[7] = 640
    ve[8] = 1160786003
    xe[8] = 320
    ye[8] = 10
    ze[8] = 780
    ve[9] = 1160786004
    xe[9] = 200
    ye[9] = 12
    ze[9] = 550
    ve[10] = 1311780913
    xe[10] = 380
    ye[10] = 11
    ze[10] = 580
    ve[11] = 1328558415
    xe[11] = 280
    ye[11] = 14
    ze[11] = 800
end
function InitBosses()
    Ae[1] = 1227896898
    Ae[2] = 1227896665
    Ae[3] = 1227896666
    Ae[4] = 1227896880
    Ae[5] = 1227896881
    Ae[6] = 1227896882
    Ae[7] = 1227896883
    Ae[8] = 1227896884
    Ae[9] = 1227896885
    Ae[10] = 1227896886
    Ae[11] = 1227896887
    Ae[12] = 1227896888
    Ae[13] = 1227896889
    Ae[14] = 1227896897
    Ae[15] = 1227896911
    Ae[16] = 1227896899
    Ae[17] = 1227896900
    Ae[18] = 1227896901
    Ae[19] = 1227896902
    Ae[20] = 1227896903
    Ae[21] = 1227896904
    Ae[22] = 1227896905
    Ae[23] = 1227896906
    Ae[24] = 1227896907
    Ae[25] = 1227896908
    Ae[26] = 1227896909
    Ae[27] = 1227896910
    Ae[28] = 1227896912
end
function InitHerbs()
    YaoCao[1] = 1227896646
    YaoCao[2] = 1227896647
    YaoCao[3] = 1227896645
    YaoCao[4] = 1227896630
    YaoCao[5] = 1227896631
    YaoCao[6] = 1227896632
    YaoCao[7] = 1227896633
    YaoCao[8] = 1227896642
    YaoCao[9] = 1227896641
    YaoCao[10] = 1227896643
    YaoCao[11] = 1227896644
    YaoCao[12] = 1227896648
end
function InitEquipments()
    --衣服清单
    ZhuangBei[1] = 1227895346 -- 布衣
    ZhuangBei[2] = 1227895124 -- 彩衣
    ZhuangBei[3] = 1227895112 -- 虎皮衣
    ZhuangBei[4] = 1227895111 -- 蛇皮裘
    ZhuangBei[5] = 1227895095 -- 开阳衣
    ZhuangBei[6] = 1227895092 -- 烈火衣
    ZhuangBei[7] = 1227895119
    ZhuangBei[8] = 1227895877
    ZhuangBei[9] = 1227897178
    ZhuangBei[10] = 1227894863
    ZhuangBei[11] = 1227894854
    ZhuangBei[12] = 1227894855
    ZhuangBei[13] = 1227899212
    ZhuangBei[14] = 1227897136
    --饰品清单
    --白字
    ShiPin[1] = 1227895347
    ShiPin[2] = 1227895347
    ShiPin[3] = 1227895125
    ShiPin[4] = 1227895126
    ShiPin[5] = 1227895127
    ShiPin[6] = 1227895128
    ShiPin[7] = 1227895129
    ShiPin[8] = 1227895130
    ShiPin[9] = 1227895113
    ShiPin[10] = 1227895114
    ShiPin[11] = 1227895115
    ShiPin[12] = 1227895093
    ShiPin[13] = 1227895096
    ShiPin[14] = 1227895097
    ShiPin[15] = 1227895105
    ShiPin[16] = 1227895106
    ShiPin[17] = 1227895107
    ShiPin[18] = 1227895108
    --蓝字
    ShiPin[19] = 1227895117
    ShiPin[20] = 1227895089
    ShiPin[21] = 1227895090
    ShiPin[22] = 1227895121
    ShiPin[23] = 1227895122
    ShiPin[24] = 1227895119
    ShiPin[25] = 1227895120
    ShiPin[26] = 1227894873
    ShiPin[27] = 1227894874
    ShiPin[28] = 1227894866
    ShiPin[29] = 1227894867
    ShiPin[30] = 1227894868
    ShiPin[31] = 1227894869
    ShiPin[32] = 1227894870
    ShiPin[33] = 1227894871
    --紫字
    ShiPin[34] = 1227894856
    ShiPin[35] = 1227894857
    ShiPin[36] = 1227894858
    ShiPin[37] = 1227894859
    ShiPin[38] = 1227894860
    ShiPin[39] = 1227894861
    ShiPin[40] = 1227894862
    --红字
    ShiPin[41] = 1227896919
    ShiPin[42] = 1227896920
    ShiPin[43] = 1227896921
    ShiPin[44] = 1227896922


    -- 地图等级奖励物品id
    -- 3级奖励
    mapLevelReward[1] = 1227896392
    mapLevelReward[2] = 1227895128
    mapLevelReward[3] = 1227895125
    -- 5级奖励
    mapLevelReward[4] = 1227895380
    mapLevelReward[5] = 1227895120
    mapLevelReward[6] = 1227895111
    mapLevelReward[7] = 1227895117
    -- 8级奖励
    mapLevelReward[8] = 1227895105
    mapLevelReward[9] = 1227895107
    mapLevelReward[10] = 1227895106
    -- 10级奖励
    mapLevelReward[11] = 1227895097
    mapLevelReward[12] = 1227894874
    mapLevelReward[13] = 1227895088
    mapLevelReward[14] = 1227894872
    mapLevelReward[15] = 1227894873
    -- 11级奖励
    mapLevelReward[16] = 1227896410
    mapLevelReward[17] = 1227896625
    mapLevelReward[18] = 1227895371
    mapLevelReward[19] = 1227896624
    -- 12级奖励
    mapLevelReward[20] = 1227899213
    mapLevelReward[21] = 1227895108
    mapLevelReward[22] = 1227895114
    -- 14级奖励
    mapLevelReward[23] = 1227900217

end
--门派武功
function InitDenominationSkills()
    udg_menpainame[1] = "少林派"
    X7[1] = 1093678407
    Z7[1] = 1093677104
    Y7[1] = 1093678411
    Q8[1] = 1093678415
    P8[1] = 1395666992
    udg_menpainame[2] = "古墓派"
    X7[2] = 1093679429
    Z7[2] = 1093679434
    Y7[2] = 1093679437
    Q8[2] = 1093679444
    P8[2] = 1093679445
    udg_menpainame[3] = "丐帮"
    X7[3] = 1093681977
    Z7[3] = 1093681986
    Y7[3] = 1093681976
    Q8[3] = 1093681985
    P8[3] = 1093682249
    udg_menpainame[4] = "华山派"
    X7[4] = 1093679193
    Z7[4] = 1093679191
    Y7[4] = 1093679192
    Q8[4] = 1093677879
    P8[4] = 1093679409
    udg_menpainame[5] = "全真教"
    X7[5] = 1093681990
    Z7[5] = 1093682241
    Y7[5] = 1093681997
    Q8[5] = 1093681992
    P8[5] = 1093682245
    udg_menpainame[6] = "血刀门"
    X7[6] = 1093681993
    Z7[6] = 1093681994
    Y7[6] = 1093681998
    Q8[6] = 1093681995
    P8[6] = 1093682248
    udg_menpainame[7] = "恒山派"
    X7[7] = 1093677617
    Z7[7] = 1093677402
    Y7[7] = 1093681988
    Q8[7] = 1093677619
    P8[7] = 1093677620
    udg_menpainame[8] = "峨眉派"
    X7[8] = 1093681975
    Z7[8] = 1093681970
    Y7[8] = 1093681973
    Q8[8] = 1093681972
    P8[8] = 1093681974
    udg_menpainame[9] = "武当派"
    X7[9] = 1093678148
    Z7[9] = 1093679187
    Y7[9] = 1093679186
    Q8[9] = 1093679185
    P8[9] = 1093679190
    udg_menpainame[10] = "星宿派"
    X7[10] = 1093681744
    Z7[10] = 1093681747
    Y7[10] = 1093681745
    Q8[10] = 1093681748
    P8[10] = 1093681750
    udg_menpainame[11] = "自由门派"
    X7[11] = 1095067243
    Z7[11] = 1095067243
    Y7[11] = 1095067243
    Q8[11] = 1095067243
    P8[11] = 1095067243
    udg_menpainame[12] = "灵鹫宫"
    X7[12] = 1093677634
    Z7[12] = 1093677635
    Y7[12] = 1093677638
    Q8[12] = 1093677639
    P8[12] = 1093677640
    udg_menpainame[13] = "姑苏慕容"
    X7[13] = 1093677643
    Z7[13] = 1093681987
    Y7[13] = 1093677645
    Q8[13] = 1093677654
    P8[13] = 1093677650
    udg_menpainame[14] = "明教"
    X7[14] = 1093677872
    Z7[14] = 1093677874
    Y7[14] = 1093678674
    Q8[14] = 1093677876
    P8[14] = 1093678935
    udg_menpainame[15] = "衡山派"
    X7[15] = 1093678157
    Z7[15] = 1093678158
    Y7[15] = 1093678160
    Q8[15] = 1093677622
    P8[15] = 1093678162
    udg_menpainame[16] = "神龙教"
    X7[16] = 1093678167
    Z7[16] = 1093678170
    Y7[16] = 1093678385
    Q8[16] = 1093678391
    P8[16] = 1093678393
    udg_menpainame[17] = "神龙教"
    X7[17] = 1093678390
    Z7[17] = 1093678388
    Y7[17] = 1093678168
    Q8[17] = 1093678391
    P8[17] = 1093678393
    udg_menpainame[18] = "泰山派"
    X7[18] = 1093679169
    Z7[18] = 1093679170
    Y7[18] = 1093679173
    Q8[18] = 1093679175
    -- set P8[18]='A08H' // 快活三剑太卡，不用
    P8[18] = 1093679175
    udg_menpainame[19] = "铁掌帮"
    X7[19] = 1093678681
    Z7[19] = 1093678682
    Y7[19] = 1093678937
    Q8[19] = 1093678896
    P8[19] = 1093682256
    udg_menpainame[20] = "唐门"
    X7[20] = 1093679416
    Z7[20] = 1093679425
    Y7[20] = 1093681712
    Q8[20] = 1093681718
    P8[20] = 1093681713
    udg_menpainame[21] = "五毒教"
    X7[21] = 1093681740
    Z7[21] = 1093682261
    Y7[21] = 1093682260
    Q8[21] = 1093682259
    P8[21] = 1093682258
    udg_menpainame[22] = "桃花岛"
    X7[22] = 1093682501
    Z7[22] = 1093682503
    Y7[22] = 1093682505
    Q8[22] = 1093682507
    P8[22] = 1093682508
    udg_menpainame[23] = "野螺派"
    X7[23] = ZAO_LEI_PI
    Z7[23] = BA_MIAN_LING_LONG
    Y7[23] = FAN_SHOU_QIAN_ZHU
    Q8[23] = QIAN_KUN_YI_ZHI
    P8[23] = DA_GONG_GAO_CHENG
    udg_menpainame[24] = "雪山派"
    X7[24] = 1093682520
    Z7[24] = 1093682521
    Y7[24] = 1093682522
    Q8[24] = 1093682736
    P8[24] = 1093682737
end
function InitSkillBooks()
    udg_jianghu[1] = 1227895626
    udg_jianghu[2] = 1227895624
    udg_jianghu[3] = 1227895382
    udg_jianghu[4] = 1227895381
    udg_jianghu[5] = 1227895623
    udg_jianghu[6] = 1227895386
    udg_jianghu[7] = 1227895625
    udg_jianghu[8] = 1227895384
    udg_jianghu[9] = 1227895385
    udg_jianghu[10] = 1227895627
    udg_jianghu[11] = 1227895620
    udg_jianghu[12] = 1227895628
    udg_jianghu[13] = 1227895600
    udg_jianghu[14] = 1227895601
    udg_jianghu[15] = 1227895621
    udg_jianghu[16] = 1227895603
    udg_jianghu[17] = 1227895383
    udg_jianghu[18] = 1227895622

    udg_juexue[1] = 1227895609
    udg_juexue[2] = 1227895604
    udg_juexue[3] = 1227895608
    udg_juexue[4] = 1227895607
    udg_juexue[5] = 1227895618
    udg_juexue[6] = 1227895602
    udg_juexue[7] = 1227895605
    udg_juexue[8] = 1227895606
    udg_juexue[9] = 1227895619
    udg_juexue[10] = 1227895617
    udg_juenei[1] = 1227895635
    udg_juenei[2] = 1227895631
    udg_juenei[3] = 1227895636
    udg_juenei[4] = 1227895633
    udg_juenei[5] = 1227895629
    udg_juenei[6] = 1227895632
    udg_juenei[7] = 1227895637
    udg_juenei[8] = 1227895634

    udg_canzhang[1] = 1227896373
    udg_canzhang[2] = 1227896369
    udg_canzhang[3] = 1227896374
    udg_canzhang[4] = 1227896372
    udg_canzhang[5] = 1227896375
    udg_canzhang[6] = 1227896370
    udg_canzhang[7] = 1227896377
    udg_canzhang[8] = 1227896368
    udg_canzhang[9] = 1227896376
    udg_canzhang[10] = 1227896371
    udg_canzhang[11] = 1227899735

    udg_diershi[1] = 1227897157
    udg_diershi[2] = 1227897158
    udg_diershi[3] = 1227897159
    udg_diershi[4] = 1227897160
    udg_diershi[5] = 1227897161
    udg_diershi[6] = 1227897162
    udg_diershi[7] = 1227897163
    udg_diershi[8] = 1227897164
    udg_diershi[9] = 1227897165
    udg_diershi[10] = 1227897166

    udg_qiwu[1] = 1227899698
    udg_qiwu[2] = 1227899699
    udg_qiwu[3] = 1227899700
    udg_qiwu[4] = 1227899701
    udg_qiwu[5] = 1227899702
    udg_qiwu[6] = 1227899704
    udg_qiwu[7] = 1227899705
    udg_qiwu[8] = 1227899713
    udg_qiwu[9] = 1227899714
    udg_qiwu[10] = 1227899715
    udg_qiwu[11] = 1227899716
    udg_qiwu[12] = 1227899722
    udg_qiwu[13] = 1227899732
    udg_qiwu[14] = 1227899733
    udg_qiwu[15] = 1227899734

    udg_dan[1] = 1227896409
    udg_dan[2] = 1227896625
    udg_dan[3] = 1227896407
    udg_dan[4] = 1227896628
    udg_dan[5] = 1227896406
    udg_dan[6] = 1227896629
    udg_dan[7] = 1227896627
    udg_dan[8] = 1227896626
    udg_dan[9] = 1227896624
    udg_dan[10] = 1227896408
    udg_dan[11] = 1227896410
    udg_weapon[1] = 1227895878
    udg_weapon[2] = 1227894864
    udg_weapon[3] = 1227894865
    udg_weapon[4] = 1227895116
    udg_weapon[5] = 1227895118
    udg_weapon[6] = 1227894872
    udg_weapon[7] = 1227894851
    udg_weapon[8] = 1227894852
    udg_weapon[9] = 1227894850
    udg_weapon[10] = 1227895110
    udg_weapon[11] = 1227895123
    udg_weapon[12] = 1227895344
    udg_weapon[13] = 1227895109
    udg_weapon[14] = 1227895345
    udg_weapon[15] = 1227895094
    udg_weapon[16] = 1227895091
    udg_weapon[17] = 1227896918
    udg_weapon[18] = 1227897143
    udg_weapon[19] = 1227897144
    udg_weapon[20] = 1227897145
    udg_weapon[21] = 1227897153
    udg_weapon[22] = 1227897154
    udg_weapon[23] = 1227897155
    udg_weapon[24] = 1227897156
    udg_weapon[25] = 1227899979
    udg_weapon[26] = 1227899989
    udg_weapon[27] = 1227899993
    udg_weapon[28] = 1227899994
    udg_weapon[29] = 1227900208
    udg_weapon[30] = 1227900210
end
function InitKillingTaskCreatures()
    --阳寿已尽任务怪
    udg_yangshou[1] = 1868853091
    udg_yangshou[2] = 1869767017
    udg_yangshou[3] = 1752395634
    udg_yangshou[4] = 1851942007
    udg_yangshou[5] = 1852076663
    udg_yangshou[6] = 1852076403
    udg_yangshou[7] = 1853059439
    udg_yangshou[8] = 1852338802
    udg_yangshou[9] = 1852796263
    udg_yangshou[10] = 1853186679
    udg_yangshou[11] = 1852996194
    udg_yangshou[12] = 1852207221
    udg_yangshou[13] = 1852270642
    udg_yangshou[14] = 1852207984
    udg_yangshou[15] = 1852663652
    udg_yangshou[16] = 1969976430
    udg_yangshou[17] = 1853059688
    udg_yangshou[18] = 1752395892
    udg_yangshou[19] = 1848651844
    udg_yangshou[20] = 1215130471
    udg_yangshou[21] = 1852207203
end
-- 单多通门派存档校正位数
function replenishSaveStr(oldSaveStr)
    if StringLength(oldSaveStr) < 18 then
        for _ in _loop_() do
            if StringLength(oldSaveStr) == 18 then
                break
            end
            -- body
            oldSaveStr = (oldSaveStr or "") .. "0"
        end
    end
    if StringLength(oldSaveStr) > 18 then
        oldSaveStr = SubString(oldSaveStr, 0, 18)
    end
    return oldSaveStr
end
-- 计算通关门派数量
function calMpCount(i)
    local j = 0
    local msCount = 0
    local ssCount = 0
    local parentId = 1 + GetPlayerId(Player(i))
    -- 截取存档，相加
    for _ in _loop_() do
        if j > 17 then
            break
        end
        -- body
        msCount = msCount + S2I(SubString(manySuccess[i], j, j + 1))
        j = j + 1
    end
    j = 0
    for _ in _loop_() do
        if j > 17 then
            break
        end
        -- body
        ssCount = ssCount + S2I(SubString(singleSuccess[i], j, j + 1))
        j = j + 1
    end


    -- 单通奖励
    if ssCount >= 1 then
        -- 双倍积分
        extraDoubleJf[i] = 2
        SetPlayerTechResearched(Player(i), 1378889783, 1)
    end
    if ssCount >= 5 then
        SetPlayerTechResearched(Player(i), 1378889784, 1)
    end
    if ssCount >= 8 then
        SetPlayerTechResearched(Player(i), 1378889785, 1)
    end
    if ssCount >= 11 then
        -- 积分兑换奇武次数加1
        jfQiWuLimit[i] = 4 -- 角标0开始
        SetPlayerTechResearched(Player(i), 1378889793, 1)
    end
    if ssCount >= 18 then
        SetPlayerTechResearched(Player(i), 1378889794, 1)
    end

    -- 多通奖励
    if msCount >= 2 then
        -- 1w金币
        AdjustPlayerStateBJ(10000, Player(i), PLAYER_STATE_RESOURCE_GOLD)
        SetPlayerTechResearched(Player(i), 1378889795, 1)
    end
    if msCount >= 5 then
        -- 25木头
        AdjustPlayerStateBJ(25, Player(i), PLAYER_STATE_RESOURCE_LUMBER)
        SetPlayerTechResearched(Player(i), 1378889796, 1)
    end
    if msCount >= 8 then
        -- 额外100移速
        extraSpeed[i] = 100
        SetPlayerTechResearched(Player(i), 1378889797, 1)
    end
    if msCount >= 11 then
        -- 特攻加20
        special_attack[i + 1] = special_attack[i + 1] + 20
        SetPlayerTechResearched(Player(i), 1378889798, 1)
    end
    if msCount >= 18 then
        -- 江湖声望加300
        shengwang[i + 1] = shengwang[i + 1] + 300
        SetPlayerTechResearched(Player(i), 1378889799, 1)
    end
    -- 通关门派存到哈希表，parentId从1开始
    SaveInteger(YDHT, parentId, StringHash("多通门派数量"), msCount)
    SaveInteger(YDHT, parentId, StringHash("单通门派数量"), ssCount)


end
-- 初始化服务器存档
function InitGlobalSave()
    local i = 0
    local j = 0
    local a = 0

    if DzAPI_Map_GetMapConfig then
        -- 获取全局存档
        admin = DzAPI_Map_GetMapConfig("admin") -- 测试码开关
        if admin == "" then
            admin = "0"
        end
        -- 积分倍数全局存档
        jfBeishu = DzAPI_Map_GetMapConfig("jfBeishu")

        priKey = DzAPI_Map_GetMapConfig("priKey")
    else
        admin = "0"
        jfBeishu = "1"
        priKey = "0"
    end

    for _ in _loop_() do
        if i > 4 then
            break
        end
        extraDoubleJf[i] = 1 -- 无额外双倍积分
        -- set extraSpeed[i] = 0 // 无额外移速

        manySuccess[i] = DzAPI_MAP_GetServerValue and DzAPI_Map_GetServerValue(Player(i), "SmanySuccess") or "000000000000000000"-- 获取多通门派存档 // INLINED!!
        singleSuccess[i] = DzAPI_MAP_GetServerValue and DzAPI_Map_GetServerValue(Player(i), "SsingleSuccess") or "000000000000000000" -- 获取单通门派存档 // INLINED!!
        -- 出bug补档
        singleSuccess[i] = replenishSaveStr(singleSuccess[i])
        manySuccess[i] = replenishSaveStr(manySuccess[i])
        udg_zdl[i] = DzAPI_Map_GetStoredInteger(Player(i), "zdl") -- 获取战斗力存档
        udg_jf[i] = DzAPI_Map_GetStoredInteger(Player(i), "jf") -- 获取积分
        udg_success[i] = DzAPI_Map_GetStoredInteger(Player(i), "success") -- 获取通关次数
        max_damage[i] = DzAPI_Map_GetStoredReal(Player(i), "maxDamage") -- 获取最高伤害
        bonus_wugong[i] = DzAPI_Map_GetStoredReal(Player(i), "wugong") -- 获取武功伤害加成
        bonus_baoshang[i] = DzAPI_Map_GetStoredReal(Player(i), "baoshang") -- 获取爆伤加成
        -- 积分购买武功加成和爆伤上限30%，超过视为作弊，不加伤害
        if bonus_wugong[i] > 0.3 then
            bonus_wugong[i] = 0
            BJDebugMsg("伤害加成超过30%")
        end
        if bonus_baoshang[i] > 0.3 then
            bonus_baoshang[i] = 0
            BJDebugMsg("伤害加成超过30%")
        end
        -- 伤害加成加到武功伤害和暴击上
        udg_shanghaijiacheng[i + 1] = udg_shanghaijiacheng[i + 1] + bonus_wugong[i]
        udg_baojishanghai[i + 1] = udg_baojishanghai[i + 1] + bonus_baoshang[i]
        -- 测试版本开局1000积分
        if testVersion then
            udg_jf[i] = udg_jf[i] + 1000
        end
        jf_useMax[i] = 0 -- 每局已用积分

        -- 计算通关门派及奖励
        calMpCount(i)

        i = i + 1
    end

end
-- 初始化测试人员的权限
function InitPriv()
    local i = 0
    for _ in _loop_() do
        if i > 4 then
            break
        end
        if GetPlayerName(Player(i)) == "WorldEdit" or GetPlayerName(Player(i)) == "zeikale" or GetPlayerName(Player(i)) == "zeikala" or GetPlayerName(Player(i)) == "非我莫属xq" or GetPlayerName(Player(i)) == "苍穹而降" or GetPlayerName(Player(i)) == "晓窗临风" or GetPlayerName(Player(i)) == "沫Mu" or GetPlayerName(Player(i)) == "虞姬" then
            if admin == "0" or testVersion then
                udg_isTest[i] = true
                talent_flag[i + 1] = 1
                tiezhang_flag[i + 1] = 1
                tangmen_flag[i + 1] = 1
                mall_addition[i + 1] = 1
                level_award[i + 1] = 1
                -- set extraDoubleJf[i] = 2 // 额外双倍积分
                DisplayTextToPlayer(Player(i), 0, 0, "|Cff008C00开|r|Cff088f00启|r|Cff119300了|r|Cff1a9700天|r|Cff239b00赋|r|Cff2b9f00、|r|Cff34a300铁|r|Cff3da700掌|r|Cff46ab00帮|r|Cff4faf00和|r|Cff57b300唐|r|Cff60b700门|r|Cff69bb00的|r|Cff72bf00权|r|Cff7bc300限|r|Cff83c700，|r|Cff8ccb00开|r|Cff95cf00启|r|Cff9ed300双|r|Cffa7d700倍|r|Cffafdb00积|r|Cffb8df00分|r|Cffc1e300和|r|Cffcae700萌|r|Cffd3eb00新|r|Cffdbef00礼|r|Cffe4f300包|r|Cffedf700权|r|Cfff6fb00限|r")
            end
        end
        i = i + 1
    end
end
-- 初始化玩家数量
function initPlayerCount()
    local i = 1
    for _ in _loop_() do
        if i > 12 then
            break
        end
        -- body
        if GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER and GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING then
            udg_wanjiashu = udg_wanjiashu + 1
        end
        i = i + 1
    end
    BJDebugMsg("|CffFF0000玩家数量|r：" .. (I2S(udg_wanjiashu) or ""))
end
function InitGlobalVariables()
    InitFamouses() --初始化名门
    InitBosses() --初始化BOSS
    InitHerbs() --初始化草药
    InitEquipments() --初始化装备
    InitDenominationSkills() --初始化门派武功
    InitSkillBooks() --初始化武功书
    InitKillingTaskCreatures() --初始化阳寿已尽任务怪
    InitGlobalSave() -- 初始化服务器存档
    InitPriv() -- 初始化测试权限
    initPlayerCount() -- 初始化玩家数量
end


--地图初始化
function main1()
    local t
    local i
    local cu
    local Du
    local v
    local wu
    MapStartCreateUnitsAndInitEnvironments() -- 创建单位并初始化环境
    ConfigureNeutralVictim()
    ju = Filter(bu)
    filterIssueHauntOrderAtLocBJ = Filter(IssueHauntOrderAtLocBJFilter)
    filterEnumDestructablesInCircleBJ = Filter(tu)
    filterGetUnitsInRectOfPlayer = Filter(GetUnitsInRectOfPlayerFilter)
    filterGetUnitsOfTypeIdAll = Filter(GetUnitsOfTypeIdAllFilter)
    filterGetUnitsOfPlayerAndTypeId = Filter(GetUnitsOfPlayerAndTypeIdFilter)
    filterMeleeTrainedUnitIsHeroBJ = Filter(MeleeTrainedUnitIsHeroBJFilter)
    filterLivingPlayerUnitsOfTypeId = Filter(LivingPlayerUnitsOfTypeIdFilter)

    udg_baolv[1] = 20
    udg_baolv[2] = 25
    udg_baolv[3] = 25
    udg_baolv[4] = 25
    udg_baolv[5] = 25
    udg_baolv[6] = 33
    udg_baolv[7] = 33
    udg_baolv[8] = 34
    udg_baolv[9] = 25
    udg_baolv[10] = 25
    udg_baolv[11] = 25
    udg_baolv[12] = 25
    udg_baolv[13] = 33
    udg_baolv[14] = 33
    udg_baolv[15] = 34
    udg_baolv[16] = 50
    udg_baolv[17] = 50
    udg_baolv[18] = 50
    udg_baolv[19] = 50
    udg_baolv[20] = 50
    udg_baolv[21] = 50
    udg_baolv[22] = 33
    udg_baolv[23] = 33
    udg_baolv[24] = 34

    i = 1
    for _ in _loop_() do
        if i >= 6 then
            break
        end
        udg_shuxing[i] = 10
        qiuhun[i] = 0
        zhaoyangguo[i] = 0
        linganran[i] = 0
        touxiao[i] = 0
        bihai[i] = 0
        bibo_kill[i] = 0
        aidacishu[i] = 0
        udg_wuqishu[i] = 0
        udg_yifushu[i] = 0
        i = i + 1
    end
    cu = 0
    -- FIXME
    for _ in _loop_() do
        if cu == 16 then
            break
        end
        bj_FORCE_PLAYER[cu] = CreateForce()
        ForceAddPlayer(bj_FORCE_PLAYER[cu], Player(cu))
        cu = cu + 1
    end
    bj_FORCE_ALL_PLAYERS = CreateForce()
    ForceEnumPlayers(bj_FORCE_ALL_PLAYERS, nil)
    bj_cineModePriorSpeed = GetGameSpeed()
    bj_cineModePriorFogSetting = IsFogEnabled()
    bj_cineModePriorMaskSetting = IsFogMaskEnabled()
    cu = 0
    -- FIXME
    for _ in _loop_() do
        if cu >= bj_MAX_QUEUED_TRIGGERS then
            break
        end
        bj_queuedExecTriggers[cu] = nil
        bj_queuedExecUseConds[cu] = false
        cu = cu + 1
    end
    bj_isSinglePlayer = false
    Du = 0
    cu = 0
    for _ in _loop_() do
        if cu >= 12 then
            break
        end
        if GetPlayerController(Player(cu)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(cu)) == PLAYER_SLOT_STATE_PLAYING then
            Du = Du + 1
        end
        cu = cu + 1
    end
    bj_isSinglePlayer = Du == 1
    bj_rescueSound = CreateSoundFromLabel("Rescue", false, false, false, 10000, 10000)
    bj_questDiscoveredSound = CreateSoundFromLabel("QuestNew", false, false, false, 10000, 10000)
    bj_questUpdatedSound = CreateSoundFromLabel("QuestUpdate", false, false, false, 10000, 10000)
    bj_questCompletedSound = CreateSoundFromLabel("QuestCompleted", false, false, false, 10000, 10000)
    bj_questFailedSound = CreateSoundFromLabel("QuestFailed", false, false, false, 10000, 10000)
    bj_questHintSound = CreateSoundFromLabel("Hint", false, false, false, 10000, 10000)
    bj_questSecretSound = CreateSoundFromLabel("SecretFound", false, false, false, 10000, 10000)
    bj_questItemAcquiredSound = CreateSoundFromLabel("ItemReward", false, false, false, 10000, 10000)
    bj_questWarningSound = CreateSoundFromLabel("Warning", false, false, false, 10000, 10000)
    bj_victoryDialogSound = CreateSoundFromLabel("QuestCompleted", false, false, false, 10000, 10000)
    bj_defeatDialogSound = CreateSoundFromLabel("QuestFailed", false, false, false, 10000, 10000)
    v = VersionGet()
    if v == VERSION_REIGN_OF_CHAOS then
        bj_MELEE_MAX_TWINKED_HEROES = bj_MELEE_MAX_TWINKED_HEROES_V0
    else
        bj_MELEE_MAX_TWINKED_HEROES = bj_MELEE_MAX_TWINKED_HEROES_V1
    end
    InitQueuedTriggers()
    YDWEInitRescuableBehaviorBJNull()
    InitDNCSounds()
    InitMapRects()
    InitSummonableCaps()
    wu = 0
    for _ in _loop_() do
        bj_stockAllowedPermanent[wu] = false
        bj_stockAllowedCharged[wu] = false
        bj_stockAllowedArtifact[wu] = false
        wu = wu + 1
        if wu > 10 then
            break
        end
    end
    SetAllItemTypeSlots(11)
    SetAllUnitTypeSlots(11)
    bj_stockUpdateTimer = CreateTimer()
    TimerStart(bj_stockUpdateTimer, bj_STOCK_RESTOCK_INITIAL_DELAY, false, au)
    bj_stockItemPurchased = CreateTrigger()
    TriggerRegisterPlayerUnitEvent(bj_stockItemPurchased, Player(15), EVENT_PLAYER_UNIT_SELL_ITEM, nil)
    TriggerAddAction(bj_stockItemPurchased, RemovePurchasedItem)
    DetectGameStarted()
    ExecuteFunc("Hu")
    ExecuteFunc("SetCamera")
    ExecuteFunc("mv")
    ExecuteFunc("Pw")
    i = 0
    i = 0
    for _ in _loop_() do
        if i > 16 then
            break
        end
        udg_jdds[i] = 0
        udg_ldds[i] = 0
        udg_xbds[i] = 0
        udg_bqds[i] = 0
        udg_dzds[i] = 0
        udg_jwjs[i] = 0
        juexuelingwu[i] = 1
        udg_baojishanghai[i] = 1.5
        udg_baojilv[i] = 0.03
        shanghaihuifu[i] = 100.0
        shaguaihufui[i] = 200.0
        shengminghuifu[i] = 0
        falihuifu[i] = 0
        udg_lilianxishu[i] = 1.0
        udg_hashero[i] = false
        udg_baoji[i] = false
        udg_yiwang[i] = false

        tide_rising[i] = false
        R4[i] = DialogCreate()
        Y4[i] = 1
        udg_xinggeA[i] = 0
        udg_xinggeB[i] = 0
        -- 赞助相关
        udg_vip[i] = 2
        udg_changevip[i] = 1
        udg_elevenvip[i] = 1
        -- 是否是测试人员
        udg_isTest[i] = false

        saveFlag[i] = false -- 默认未保存存档
        -- 初始奖励
        bonus_wugong[i] = 0
        bonus_baoshang[i] = 0
        -- 初始化最高伤害
        max_damage[i] = 0
        wugongshu[i] = 11 -- 11格
        udg_zhemei[i] = 0

        jfQiWuLimit[i] = 3 -- 积分奇武限定兑换3次

        chief[i] = 0 -- 掌门称号
        title0[i] = 0 -- 称号1 1-30
        title1[i] = 0 -- 称号2 31-60
        deputy[i] = 0 -- 副职
        master[i] = 0 -- 大师

        qimen_status[i] = 0 -- 奇门术数标识
        ateDenom[i] = 0 -- 是否吞了专属
        qiankunCd[i] = false -- 乾坤是否处理CD中

        wuxing[i] = 9
        jingmai[i] = 9
        gengu[i] = 9
        fuyuan[i] = 9
        danpo[i] = 9
        yishu[i] = 9
        if i >= 1 and i <= 5 then
            -- 特攻暂时改成:20 + 地图等级/3
            if DzAPI_Map_GetMapLevel then
                special_attack[i] = 20 + DzAPI_Map_GetMapLevel(Player(i - 1)) // 3
            else
                special_attack[i] = 20
            end
        end
        udg_runamen[i] = 0
        D7[i] = 0
        F7[i] = 0
        G7[i] = 0
        K7[i] = DialogCreate()
        L7[i] = 0
        O7[i] = 0
        P7[i] = 0
        wolfSkinCount[i] = 0
        wolfSkinFlag[i] = 1
        udg_revivetimer[i] = CreateTimer()
        S7[i] = 0
        udg_MaxDamage[i] = 0
        d8[i] = 0
        e8[i] = 0
        shengwang[i] = 0
        g8[i] = 0
        h8[i] = 0
        i8[i] = 0
        j8[i] = 0
        o8[i] = false
        v8[i] = DialogCreate()
        b8[i] = false
        C8[i] = false
        c8[i] = false
        D8[i] = DialogCreate()
        F8[i] = false
        XNKL[i] = false
        daxia[i] = false
        G8[i] = false
        H8[i] = false
        I8[i] = false
        l8[i] = false
        J8[i] = 0
        xiuxing[i] = 0
        MM8[i] = 0
        N8[i] = 0
        O8[i] = 0
        Z8[i] = false
        d9[i] = false
        e9[i] = false
        f9[i] = CreateTimer()
        h9[i] = false
        i9[i] = 0
        v9[i] = false
        w9[i] = false
        x9[i] = false
        y9[i] = false
        z9[i] = 0
        A9[i] = 0
        G9[i] = 0
        H9[i] = 0
        I9[i] = 0
        l9[i] = 0
        udg_shanghaijiacheng[i] = 0.0
        udg_shanghaixishou[i] = 0
        T9[i] = false
        LLguaiA[i] = 0
        LLguaiE[i] = 0
        LLguaiB[i] = 0
        LLguaiC[i] = 0
        LLguaiD[i] = 0
        LLguaiF[i] = 0
        LLguaiG[i] = 0
        Z9[i] = CreateTimer()
        ed[i] = false
        fd[i] = CreateTimer()
        jd[i] = 0
        kd[i] = 0
        qd[i] = 0
        rd[i] = 0
        ud[i] = 0
        wugongxiuwei[i] = 0
        xd[i] = 0
        yd[i] = 0
        Ad[i] = false
        Bd[i] = false
        Cd[i] = 0
        cd[i] = false
        Dd[i] = 0
        Ed[i] = 0
        Fd[i] = CreateGroup()
        Gd[i] = 0
        Id[i] = 0
        ld[i] = 0
        Jd[i] = 0
        Kd[i] = 0
        Ld[i] = 0
        Md[i] = 0
        Nd[i] = 0
        Od[i] = 0
        Pd[i] = 0
        Qd[i] = 0
        Rd[i] = false
        Sd[i] = 0
        Td[i] = 0
        Ud[i] = 0
        Vd[i] = 0
        Wd[i] = 0
        jiuazi[i] = 0
        shoujiajf[i] = 0
        ge[i] = false
        he[i] = false
        je[i] = DialogCreate()
        te[i] = 0
        ce[i] = 0
        De[i] = false
        Ee[i] = false
        i = i + 1
    end
    --set udg_menpaineigong=DialogCreate()
    udg_index = DialogCreate()
    udg_nan = DialogCreate()
    -- 初始化挑战模式弹窗
    udg_tiaoZhan = DialogCreate()
    i7 = CreateGroup()
    udg_shanghaidanweizu = CreateGroup()
    udg_boshu = 1
    w7 = CreateGroup()
    i = 0
    for _ in _loop_() do
        if i > 5 then
            break
        end
        A7[i] = CreateTimer()
        i = i + 1
    end
    ShiFouShuaGuai = true
    i = 0
    for _ in _loop_() do
        if i > 100 then
            break
        end
        I7[i] = 1095067243
        i = i + 1
    end
    i = 0
    for _ in _loop_() do
        if i > 20 then
            break
        end
        udg_menpainame[i] = "未加入"
        X7[i] = 1095067243
        Y7[i] = 1095067243
        Z7[i] = 1095067243
        P8[i] = 1095067243
        Q8[i] = 1095067243
        nd[i] = 0
        od[i] = 0
        i = i + 1
    end
    pd[1] = 2000
    pd[2] = 2000
    pd[3] = 2000
    pd[4] = 5000
    pd[5] = 5000
    pd[6] = 5000
    pd[7] = 15000
    pd[8] = 15000
    pd[9] = 15000
    pd[10] = 500000

    i = 0
    for _ in _loop_() do
        if i > 10 then
            break
        end
        m8[i] = false
        q8[i] = 1668446579
        yongdanshu[i] = 0
        i = i + 1
    end
    i = 0
    for _ in _loop_() do
        if i > 13 then
            break
        end
        udg_blgg[i] = 0
        udg_blwx[i] = 0
        udg_bljm[i] = 0
        udg_blfy[i] = 0
        udg_bldp[i] = 0
        udg_blys[i] = 0
        i = i + 1
    end
    j9 = CreateGroup()
    k9 = CreateGroup()
    r9 = CreateGroup()
    s9 = CreateGroup()
    i = 0
    for _ in _loop_() do
        if i > 20 then
            break
        end
        udg_jueneishxs[i] = 0
        udg_jueneishjc[i] = 0
        udg_jueneiminjie[i] = 0
        udg_jueneijxlw[i] = 0
        udg_jueneibaojilv[i] = 0
        i = i + 1
    end
    i = 0
    for _ in _loop_() do
        if i > 7 then
            break
        end
        Hd[i] = CreateTimer()
        i = i + 1
    end
    i = 0
    for _ in _loop_() do
        if i > 15 then
            break
        end
        xe[i] = 0
        ye[i] = 0
        ze[i] = 0
        i = i + 1
    end
    Fe = CreateGroup()
    --刚进入地图
    et.wait(100, Zw)

    InitGlobalVariables() --初始化全局变量

    SmeltingWeaponSystem() --决战江湖1.4之大辽金匠
    CreateDestructables() --创建可破坏物
    Cuns() --存储装备属性
    CunWuGongS() --存储武功
    najitest() --纳吉的测试代码

    t = nil
    v = nil
end
function main2()
    mallInit() -- 商城逻辑初始化
    GameLogic_Trigger() -- 游戏逻辑触发器
    GameDetail_Trigger() -- 游戏细节处理
    -- call VIP_Trigger() // VIP系统

    Equipment_Trigger() --装备属性触发器
    MenPai_Trigger() --门派触发器
    ZiZhi_Trigger() --自制武器触发器
    ZhenFa_Trigger() --阵法触发器
    TiaoZhan_Trigger() --挑战场触发器
    QiWu_Trigger() --奇武触发器
    TaoHuaDao_Trigger() --桃花岛触发器
    Instances_Trigger() --副本和任务系统
    Experiences_Trigger() --历练系统
    ElixirSystem_Trigger() --丹药系统
    Tasks_Trigger() --任务系统
    checkActivityAddition() -- 判断是否在活动期间

    npcHint() -- NPC提示
    showHealthPoint() --展示单位血量
    talent() --天赋系统

    local es = require 'logic.every_second'
    es.every_second() -- 记录游戏时间

    initPetSkill() -- 宠物技能

    require 'logic.globals'
    require 'ui.init'
    initUI() -- 初始化UI

    UnitAttack() -- 注册单位攻击事件
    UseAbility() -- 注册使用技能事件
    UnitDamage() -- 注册任意单位伤害事件
    UnitDeath() -- 注册任意单位死亡事件
    ItemEvent() -- 注册物品相关事件

end
--#include "./denomination/XueDao.j"
--***************************************************************************
--*
--*  Triggers
--*
--***************************************************************************
--===========================================================================
-- Trigger: ShiJiaZhiXiang
--===========================================================================
--TESH.scrollpos=117
--TESH.alwaysfold=0
function Trig_youLingChuanConditions()
    return GetSpellAbilityId() == 1093744451
end
function Trig_youLingChuanFunc014Func001Func021003003()
    return IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true and (IsUnitAliveBJ(GetFilterUnit()) == true and (IsUnitInGroup(GetFilterUnit(), LoadGroupHandle(YDLOC, GetHandleId(GetExpiredTimer()), -203786025)) == false and IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1184922996))) == false))
end
function Trig_youLingChuanFunc014Func001Func022Func005Conditions()
    if UnitHasBuffBJ(GetTriggerUnit(), 1110454835) == true then
        SetUnitLifeBJ(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), -266878733), GetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), -266878733), UNIT_STATE_LIFE) + GetEventDamage() * 0.5)
        SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), -266878733)), -1230894398, LoadReal(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()), -266878733)), -1230894398) + GetEventDamage() * 0.5)
    else
        FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()))
        DestroyTrigger(GetTriggeringTrigger())
    end
end
function Trig_youLingChuanFunc014Func001Func022Func006T()
    UnitRemoveAbility(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -266878733), 1093744454)
    UnitRemoveAbility(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -266878733), 1093744453)
    UnitRemoveAbility(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -266878733), 1110454835)
    if GetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -266878733), UNIT_STATE_LIFE) + 2.0 <= LoadReal(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -266878733)), -1230894398) then
        SetUnitLifeBJ(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -266878733), 2.0)
    else
        SetUnitLifeBJ(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -266878733), GetUnitState(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -266878733), UNIT_STATE_LIFE) - LoadReal(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -266878733)), -1230894398))
    end
    SaveReal(YDHT, GetHandleId(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -266878733)), -1230894398, 0.0)
    FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
    DestroyTimer(GetExpiredTimer())
end
function Trig_youLingChuanFunc014Func001Func022A()
    local ydl_trigger
    local ydl_timer
    GroupAddUnit(LoadGroupHandle(YDLOC, GetHandleId(GetExpiredTimer()), -203786025), GetEnumUnit())
    UnitAddAbility(GetEnumUnit(), 1093744453)
    SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -266878733, GetEnumUnit())
    SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()), 1093744453, false)
    ydl_trigger = CreateTrigger()
    SaveUnitHandle(YDLOC, GetHandleId(ydl_trigger), -266878733, LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -266878733))
    TriggerRegisterUnitEvent(ydl_trigger, LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -266878733), EVENT_UNIT_DAMAGED)
    TriggerRegisterTimerEventSingle(ydl_trigger, 10.0)
    TriggerAddCondition(ydl_trigger, Condition(Trig_youLingChuanFunc014Func001Func022Func005Conditions))
    ydl_timer = CreateTimer()
    SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), -266878733, LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -266878733))
    TimerStart(ydl_timer, 10.0, false, Trig_youLingChuanFunc014Func001Func022Func006T)
    ydl_trigger = nil
    ydl_timer = nil
end
function Trig_youLingChuanFunc014T()
    local ydl_group
    local ydl_unit
    local ydl_trigger
    local ydl_timer
    if IsUnitAliveBJ(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1866753984)) == true then
        SetUnitX(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1866753984), RMinBJ(RMaxBJ((GetLocationX(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 612156901)) + 20.0 * LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), -643454093) * CosBJ(AngleBetweenPoints(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 612156901), LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), -188433097)))) * 1.0, yd_MapMinX), yd_MapMaxX)) -- INLINED!!
        SetUnitY(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1866753984), RMinBJ(RMaxBJ((GetLocationY(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 612156901)) + 20.0 * LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), -643454093) * SinBJ(AngleBetweenPoints(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 612156901), LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), -188433097)))) * 1.0, yd_MapMinY), yd_MapMaxY)) -- INLINED!!
        SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), -643454093, LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), -643454093) + 1)
        SaveLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 2006475586, GetUnitLoc(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1866753984)))
        SaveGroupHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1812055963, YDWEGetUnitsInRangeOfLocMatchingNull(525.0, LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 2006475586), Condition(Trig_youLingChuanFunc014Func001Func021003003)))
        ForGroupBJ(LoadGroupHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1812055963), Trig_youLingChuanFunc014Func001Func022A)
    else
        CreateNUnitsAtLoc(1, 1697722437, LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1399470138), LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), -188433097), AngleBetweenPoints(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1925439584), LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), -860413970)))
        SaveUnitHandle(YDHT, GetHandleId(GetLastCreatedUnit()), -734935561, LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1184922996))
        SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 949217876, GetLastCreatedUnit())
        UnitAddAbility(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 949217876), 1093744452)
        SetUnitAbilityLevelSwapped(1093744452, LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 949217876), GetUnitAbilityLevel(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1184922996), 1093744451))
        IssueImmediateOrder(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 949217876), "stomp")
        YDWETimerRemoveUnit(2, LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 949217876))
        RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1925439584))
        RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), -860413970))
        RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 612156901))
        RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), -188433097))
        RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 2006475586))
        DestroyGroup(LoadGroupHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1812055963))
        DestroyGroup(LoadGroupHandle(YDLOC, GetHandleId(GetExpiredTimer()), -203786025))
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    end
    ydl_group = nil
    ydl_unit = nil
    ydl_trigger = nil
    ydl_timer = nil
end
function Trig_youLingChuanActions()
    local ydl_timer
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), -807506826)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), -807506826, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), -320330265, ydl_localvar_step)
    SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1184922996, GetTriggerUnit())
    SaveLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1925439584, GetUnitLoc(GetTriggerUnit()))
    SaveLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -860413970, GetSpellTargetLoc())
    SaveLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 612156901, PolarProjectionBJ(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1925439584), 1000.0, AngleBetweenPoints(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -860413970), LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1925439584))))
    SaveLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -188433097, PolarProjectionBJ(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1925439584), 1000.0, AngleBetweenPoints(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1925439584), LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -860413970))))
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -643454093, 1.0)
    SaveGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -203786025, CreateGroup())
    DestroyEffect(AddSpecialEffectLoc("war3mapImported\\whirlpool.mdx", LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -188433097)))
    if GetUnitAbilityLevel(GetTriggerUnit(), GetSpellAbilityId()) == 1 then
        CreateNUnitsAtLoc(1, 1702130291, GetOwningPlayer(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1184922996)), LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 612156901), AngleBetweenPoints(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1925439584), LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -860413970)))
    else
        if GetUnitAbilityLevel(GetTriggerUnit(), GetSpellAbilityId()) == 2 then
            CreateNUnitsAtLoc(1, 1969513843, GetOwningPlayer(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1184922996)), LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 612156901), AngleBetweenPoints(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1925439584), LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -860413970)))
        else
            if GetUnitAbilityLevel(GetTriggerUnit(), GetSpellAbilityId()) == 3 then
                CreateNUnitsAtLoc(1, 1970627187, GetOwningPlayer(LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1184922996)), LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 612156901), AngleBetweenPoints(LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1925439584), LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -860413970)))
            else
            end
        end
    end
    SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1866753984, GetLastCreatedUnit())
    AddSpecialEffectTargetUnitBJ("origin", GetLastCreatedUnit(), "Abilities\\Spells\\Items\\ClarityPotion\\ClarityTarget.mdl")
    YDWETimerDestroyEffect(3.0, bj_lastCreatedEffect)
    UnitApplyTimedLife(GetLastCreatedUnit(), 1112045413, 3.0)
    ydl_timer = CreateTimer()
    SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), -1399470138, GetTriggerPlayer())
    SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), -1184922996, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1184922996))
    SaveReal(YDLOC, GetHandleId(ydl_timer), -643454093, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -643454093))
    SaveGroupHandle(YDLOC, GetHandleId(ydl_timer), -1812055963, LoadGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1812055963))
    SaveGroupHandle(YDLOC, GetHandleId(ydl_timer), -203786025, LoadGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -203786025))
    SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), -1866753984, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1866753984))
    SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 949217876, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 949217876))
    SaveLocationHandle(YDLOC, GetHandleId(ydl_timer), -1925439584, LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1925439584))
    SaveLocationHandle(YDLOC, GetHandleId(ydl_timer), -860413970, LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -860413970))
    SaveLocationHandle(YDLOC, GetHandleId(ydl_timer), 612156901, LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 612156901))
    SaveLocationHandle(YDLOC, GetHandleId(ydl_timer), -188433097, LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -188433097))
    SaveLocationHandle(YDLOC, GetHandleId(ydl_timer), 2006475586, LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 2006475586))
    SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), -266878733, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -266878733))
    TimerStart(ydl_timer, 0.03, true, Trig_youLingChuanFunc014T)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_timer = nil
end
--===========================================================================
function InitTrig_youLingChuan()
    udg_youLingChuan = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(udg_youLingChuan, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    TriggerAddCondition(udg_youLingChuan, Condition(Trig_youLingChuanConditions))
    TriggerAddAction(udg_youLingChuan, Trig_youLingChuanActions)
end
--===========================================================================
-- Trigger: YuJiaMiCheng
--===========================================================================
function Trig_YuJiaMiChengConditions()
    return GetSpellAbilityId() == 1898983787
end
function Trig_YuJiaMiChengFunc008Func008Func006Func007003003()
    return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1023211619))) == true
end
function Trig_YuJiaMiChengFunc008Func008Func006Func008A()
    if IsUnitType(GetEnumUnit(), UNIT_TYPE_STRUCTURE) == false and IsUnitType(GetEnumUnit(), UNIT_TYPE_DEAD) == false and IsUnitType(GetEnumUnit(), UNIT_TYPE_MAGIC_IMMUNE) == false and IsUnitInGroup(GetEnumUnit(), LoadGroupHandle(YDLOC, GetHandleId(GetExpiredTimer()), -433219874)) == false then
        SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 722102341, GetEnumUnit())
        GroupAddUnitSimple(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 722102341), LoadGroupHandle(YDLOC, GetHandleId(GetExpiredTimer()), -433219874))
        SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), -1062474422, ShangHaiGongShi(GetTriggerUnit(), GetEnumUnit(), 5, 5, 1, 1898983787))
        UnitDamageTargetBJ(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1023211619), LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 722102341), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), -1062474422), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
        SaveEffectHandle(YDLOC, GetHandleId(GetExpiredTimer()), 2076689831, AddSpecialEffectTarget("Abilities\\Weapons\\ZigguratFrostMissile\\ZigguratFrostMissile.mdl", LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 722102341), "chest"))
        SaveEffectHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1896311405, AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl", LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 722102341), "chest"))
        DestroyEffect(LoadEffectHandle(YDLOC, GetHandleId(GetExpiredTimer()), 2076689831))
        DestroyEffect(LoadEffectHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1896311405))
        SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 722102341, nil)
    else
        DoNothing()
    end
end
function Trig_YuJiaMiChengFunc008Func008Func006T()
    local ydl_group
    local ydl_unit
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 1231311908, LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 1231311908) + 0.03)
    SaveLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 849994952, GetUnitLoc(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 695269389)))
    SaveGroupHandle(YDLOC, GetHandleId(GetExpiredTimer()), 558654156, YDWEGetUnitsInRangeOfLocMatchingNull(150.0, LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 849994952), Condition(Trig_YuJiaMiChengFunc008Func008Func006Func007003003)))
    ForGroupBJ(LoadGroupHandle(YDLOC, GetHandleId(GetExpiredTimer()), 558654156), Trig_YuJiaMiChengFunc008Func008Func006Func008A)
    DestroyGroup(LoadGroupHandle(YDLOC, GetHandleId(GetExpiredTimer()), 558654156))
    RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 849994952))
    if LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 1231311908) >= 0.5 then
        RemoveUnit(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 695269389))
        DestroyGroup(LoadGroupHandle(YDLOC, GetHandleId(GetExpiredTimer()), -433219874))
        SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 695269389, nil)
        RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), -784714656))
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
        DoNothing()
    end
    ydl_group = nil
    ydl_unit = nil
end
function Trig_YuJiaMiChengFunc008T()
    local ydl_timer
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), 824983937, 0.25 + LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 824983937))
    SaveLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 849344742, GetUnitLoc(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1023211619)))
    SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), -1613012308, GetUnitFacing(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1023211619)))
    SaveEffectHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1559655710, AddSpecialEffectTarget("war3mapImported\\IceNova.mdx", LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1023211619), "origin"))
    DestroyEffect(LoadEffectHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1559655710))
    bj_forLoopAIndex = 1
    bj_forLoopAIndexEnd = 6
    for _ in _loop_() do
        if bj_forLoopAIndex > bj_forLoopAIndexEnd then
            break
        end
        SaveReal(YDLOC, GetHandleId(GetExpiredTimer()), -970391369, LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), -1613012308) - 40.0 + 16.0 * (I2R(bj_forLoopAIndex) - 1.0))
        SaveLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), -784714656, PolarProjectionBJ(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 849344742), 1000.0, LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), -970391369)))
        SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 695269389, CreateUnitAtLoc(GetOwningPlayer(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1023211619)), 1898983795, LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 849344742), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), -970391369)))
        PauseUnitBJ(true, LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 695269389))
        YDWETimerPatternRushSlide(LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 695269389), LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), -970391369), 850.0, 0.5, 0.03, 0, false, false, false, "origin", "", "")
        ydl_timer = CreateTimer()
        SaveReal(YDLOC, GetHandleId(ydl_timer), 1231311908, 0.0)
        SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), -1023211619, LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1023211619))
        SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 695269389, LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 695269389))
        SaveGroupHandle(YDLOC, GetHandleId(ydl_timer), -433219874, CreateGroup())
        SaveEffectHandle(YDLOC, GetHandleId(ydl_timer), 2076689831, LoadEffectHandle(YDLOC, GetHandleId(GetExpiredTimer()), 2076689831))
        SaveEffectHandle(YDLOC, GetHandleId(ydl_timer), -1896311405, LoadEffectHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1896311405))
        SaveReal(YDLOC, GetHandleId(ydl_timer), -1062474422, LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), -1062474422))
        SaveGroupHandle(YDLOC, GetHandleId(ydl_timer), 558654156, LoadGroupHandle(YDLOC, GetHandleId(GetExpiredTimer()), 558654156))
        SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 722102341, LoadUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), 722102341))
        SaveLocationHandle(YDLOC, GetHandleId(ydl_timer), 849994952, LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 849994952))
        SaveLocationHandle(YDLOC, GetHandleId(ydl_timer), -784714656, LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), -784714656))
        TimerStart(ydl_timer, 0.03, true, Trig_YuJiaMiChengFunc008Func008Func006T)
        bj_forLoopAIndex = bj_forLoopAIndex + 1
    end
    RemoveLocation(LoadLocationHandle(YDLOC, GetHandleId(GetExpiredTimer()), 849344742))
    if LoadReal(YDLOC, GetHandleId(GetExpiredTimer()), 824983937) > 3.0 then
        SaveUnitHandle(YDLOC, GetHandleId(GetExpiredTimer()), -1023211619, nil)
        FlushChildHashtable(YDLOC, GetHandleId(GetExpiredTimer()))
        DestroyTimer(GetExpiredTimer())
    else
        DoNothing()
    end
    ydl_timer = nil
end
function Trig_YuJiaMiChengActions()
    local ydl_timer
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), -807506826)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), -807506826, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), -320330265, ydl_localvar_step)
    -- 伤害设置
    SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1230574678, GetTriggerUnit())
    SaveUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1023211619, GetTriggerUnit())
    SaveReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1062474422, 1.0)
    -- 伤害设置
    ydl_timer = CreateTimer()
    SaveReal(YDLOC, GetHandleId(ydl_timer), 824983937, 0.0)
    SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), -1023211619, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1023211619))
    SaveEffectHandle(YDLOC, GetHandleId(ydl_timer), -1559655710, LoadEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1559655710))
    SaveEffectHandle(YDLOC, GetHandleId(ydl_timer), 2076689831, LoadEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 2076689831))
    SaveEffectHandle(YDLOC, GetHandleId(ydl_timer), -1896311405, LoadEffectHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1896311405))
    SaveReal(YDLOC, GetHandleId(ydl_timer), -1062474422, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1062474422))
    SaveGroupHandle(YDLOC, GetHandleId(ydl_timer), 558654156, LoadGroupHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 558654156))
    SaveReal(YDLOC, GetHandleId(ydl_timer), -1613012308, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -1613012308))
    SaveReal(YDLOC, GetHandleId(ydl_timer), -970391369, LoadReal(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -970391369))
    SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 722102341, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 722102341))
    SaveUnitHandle(YDLOC, GetHandleId(ydl_timer), 695269389, LoadUnitHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 695269389))
    SaveLocationHandle(YDLOC, GetHandleId(ydl_timer), 849994952, LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 849994952))
    SaveLocationHandle(YDLOC, GetHandleId(ydl_timer), -784714656, LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, -784714656))
    SaveLocationHandle(YDLOC, GetHandleId(ydl_timer), 849344742, LoadLocationHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 849344742))
    TimerStart(ydl_timer, 0.25, true, Trig_YuJiaMiChengFunc008T)
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    ydl_timer = nil
end
--===========================================================================
function InitTrig_YuJiaMiCheng()
    gg_trg_YuJiaMiCheng = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_YuJiaMiCheng, EVENT_PLAYER_UNIT_SPELL_CAST)
    TriggerAddCondition(gg_trg_YuJiaMiCheng, Condition(Trig_YuJiaMiChengConditions))
    TriggerAddAction(gg_trg_YuJiaMiCheng, Trig_YuJiaMiChengActions)
end
--===========================================================================
-- Trigger: japi变身
--===========================================================================
function Trig_japi______uActions()
    YDWEUnitTransform(GetSellingUnit(), 1095069029, 1752196449)
end
--===========================================================================
function InitTrig_japi______u()
    gg_trg_japi______u = CreateTrigger()
    TriggerAddAction(gg_trg_japi______u, Trig_japi______uActions)
end
--===========================================================================
-- Trigger: firstOccur
--===========================================================================
function Trig_firstOccurActions()
    YDWESetUnitAbilityDataString(GetTriggerUnit(), 1093678146, 1, 215, "")
    YDWECreateEwsp(GetTriggerUnit(), 1751543663, 1, 300, 20, 0.01, 1)
    ShowUnit(gg_unit_N007_0055, true)
    ShowUnit(gg_unit_N012_0095, true)
    ShowUnit(gg_unit_N00F_0085, true)
    ShowUnit(gg_unit_N008_0054, true)
    ShowUnit(gg_unit_N00P_0084, true)
    ShowUnit(gg_unit_N00U_0092, true)
    ShowUnit(gg_unit_o02D_0069, true)
    ShowUnit(gg_unit_o00K_0126, true)
    ShowUnit(gg_unit_N00B_0086, true)
    ShowUnit(gg_unit_n00E_0066, true)
end
--===========================================================================
function InitTrig_firstOccur()
    gg_trg_firstOccur = CreateTrigger()
    TriggerAddAction(gg_trg_firstOccur, Trig_firstOccurActions)
end
--===========================================================================
-- Trigger: 未命名触发器 007
--===========================================================================
function Trig____________________007Actions()
    YDWETimerPatternRushSlide(GetTriggerUnit(), 0, 800, 1, 0.03, 0, false, false, false, "origin", "Abilities\\Spells\\Human\\ManaShield\\ManaShieldCaster.mdl", "hellscream.mdx")
end
--===========================================================================
function InitTrig____________________007()
    gg_trg____________________007 = CreateTrigger()
    TriggerAddAction(gg_trg____________________007, Trig____________________007Actions)
end

--===========================================================================
-- Trigger: ChangeClothes
--===========================================================================
--TESH.scrollpos=26
--TESH.alwaysfold=0
function Trig_ChangeClothesConditions()
    return udg_vip[1 + GetPlayerId(GetTriggerPlayer())] >= 1 and (GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558664 or GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558643 or GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558665)
end
function Trig_ChangeClothesActions()
    --if udg_HuanZhuangCD[1+GetPlayerId(GetTriggerPlayer())]==false then
    --set udg_HuanZhuangCD[1+GetPlayerId(GetTriggerPlayer())]=true
    --黑变绿或粉
    if GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558664 then
        if GetRandomInt(1, 2) == 1 then
            UnitAddAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678132)
            UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678132)
            UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1098282348)
        else
            UnitAddAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678135)
            UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678135)
            UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1098282348)
        end
        --call BJDebugMsg(GetUnitName(udg_hero[1+GetPlayerId(GetTriggerPlayer())]))
        --绿变粉或黑
    elseif GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558665 then
        if GetRandomInt(1, 2) == 1 then
            UnitAddAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678133)
            UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678133)
            UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1098282348)
        else
            UnitAddAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678136)
            UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678136)
            UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1098282348)
        end
        --call BJDebugMsg(GetUnitName(udg_hero[1+GetPlayerId(GetTriggerPlayer())]))
        --粉变黑或绿
    elseif GetUnitTypeId(udg_hero[1 + GetPlayerId(GetTriggerPlayer())]) == 1328558643 then
        if GetRandomInt(1, 2) == 1 then
            UnitAddAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678131)
            UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678131)
            UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1098282348)
        else
            UnitAddAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678134)
            UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1093678134)
            UnitRemoveAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], 1098282348)
        end
        --call BJDebugMsg(GetUnitName(udg_hero[1+GetPlayerId(GetTriggerPlayer())]))
    end
    bj_forLoopAIndex = 1
    bj_forLoopAIndexEnd = 11
    for _ in _loop_() do
        if bj_forLoopAIndex > bj_forLoopAIndexEnd then
            break
        end
        if I7[GetPlayerId(GetTriggerPlayer()) * 20 + bj_forLoopAIndex] ~= 1095067243 then
            UnitAddAbility(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], I7[GetPlayerId(GetTriggerPlayer()) * 20 + bj_forLoopAIndex])
            SetUnitAbilityLevel(udg_hero[1 + GetPlayerId(GetTriggerPlayer())], I7[GetPlayerId(GetTriggerPlayer()) * 20 + bj_forLoopAIndex], LoadInteger(YDHT, GetHandleId(GetTriggerPlayer()), I7[GetPlayerId(GetTriggerPlayer()) * 20 + bj_forLoopAIndex] * 5))
        end
        bj_forLoopAIndex = bj_forLoopAIndex + 1
    end

end
--===========================================================================
function InitTrig_ChangeClothes()
    gg_trg_ChangeClothes = CreateTrigger()
    TriggerRegisterPlayerChatEvent(gg_trg_ChangeClothes, Player(0), "换装", true)
    TriggerRegisterPlayerChatEvent(gg_trg_ChangeClothes, Player(1), "换装", true)
    TriggerRegisterPlayerChatEvent(gg_trg_ChangeClothes, Player(2), "换装", true)
    TriggerRegisterPlayerChatEvent(gg_trg_ChangeClothes, Player(3), "换装", true)
    TriggerRegisterPlayerChatEvent(gg_trg_ChangeClothes, Player(4), "换装", true)
    TriggerAddCondition(gg_trg_ChangeClothes, Condition(Trig_ChangeClothesConditions))
    TriggerAddAction(gg_trg_ChangeClothes, Trig_ChangeClothesActions)
end
--===========================================================================
-- Trigger: QinLongKongHe
--===========================================================================
function Trig_QinLongKongHeConditions()
    return GetSpellAbilityId() == 1093677910 and GetSpellTargetUnit() ~= gg_unit_N008_0054
end
function Trig_QinLongKongHeActions()
    if GetSpellTargetUnit() == GetTriggerUnit() then
        YDWETimerPatternRushSlide(GetSpellTargetUnit(), GetUnitFacing(GetTriggerUnit()), 1200.0, 1.2, 0.01, 0, false, false, true, "origin", "Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl", "Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl")
    else
        if YDWEDistanceBetweenUnits(GetTriggerUnit(), GetSpellTargetUnit()) >= 1000.0 then
            YDWETimerPatternRushSlide(GetSpellTargetUnit(), YDWEAngleBetweenUnits(GetSpellTargetUnit(), GetTriggerUnit()), RMinBJ(1200.0, YDWEDistanceBetweenUnits(GetTriggerUnit(), GetLastCreatedUnit())), RMinBJ(1.2, YDWEDistanceBetweenUnits(GetTriggerUnit(), GetSpellTargetUnit()) / 1000.0), 0.01, 0, false, false, true, "origin", "Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl", "Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl")
        else
            YDWETimerPatternRushSlide(GetSpellTargetUnit(), YDWEAngleBetweenUnits(GetTriggerUnit(), GetSpellTargetUnit()), 1200.0, 1.2, 0.01, 0, false, false, true, "origin", "Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl", "Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl")
        end
    end
    if GetUnitAbilityLevel(GetTriggerUnit(), 1093678668) ~= 0 and IsUnitAlly(GetSpellTargetUnit(), GetOwningPlayer(GetTriggerUnit())) == true then
        SetUnitLifePercentBJ(GetSpellTargetUnit(), 100)
    else
    end
    if GetUnitAbilityLevel(GetTriggerUnit(), 1093681989) ~= 0 and IsUnitAlly(GetSpellTargetUnit(), GetOwningPlayer(GetTriggerUnit())) == false then
        base.general_buff(GetTriggerUnit(), GetSpellTargetUnit(), 11)
    else
    end
end
--===========================================================================
function InitTrig_QinLongKongHe()
    gg_trg_QinLongKongHe = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_QinLongKongHe, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    TriggerAddCondition(gg_trg_QinLongKongHe, Condition(Trig_QinLongKongHeConditions))
    TriggerAddAction(gg_trg_QinLongKongHe, Trig_QinLongKongHeActions)
end
--===========================================================================
-- Trigger: YaoWangShenPian
--===========================================================================
--TESH.scrollpos=2
--TESH.alwaysfold=0
function Trig_YaoWangShenPianConditions()
    return GetSpellAbilityId() == 1093677911
end
function Trig_YaoWangShenPianFunc003001003()
    return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) == true
end
function Trig_YaoWangShenPianFunc003Func006T()
    local u = LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0)
    if GetUnitLifePercent(u) > 1.0 and UnitHasBuffBJ(u, 1112896364) == true then
        SetUnitLifePercentBJ(u, GetUnitLifePercent(u) - 0.5)
    else
        DestroyTimer(GetExpiredTimer())
    end
end
function Trig_YaoWangShenPianFunc003A()
    local ydl_timer
    CreateNUnitsAtLoc(1, 1697656880, GetOwningPlayer(GetTriggerUnit()), GetUnitLoc(GetEnumUnit()), bj_UNIT_FACING)
    UnitAddAbility(GetLastCreatedUnit(), 1093677912)
    ShowUnitHide(GetLastCreatedUnit())
    UnitApplyTimedLife(GetLastCreatedUnit(), 1112045413, 3.0)
    IssueTargetOrderById(GetLastCreatedUnit(), 852227, GetEnumUnit())
    ydl_timer = CreateTimer()
    SaveUnitHandle(YDHT, GetHandleId(ydl_timer), 0, GetEnumUnit())
    TimerStart(ydl_timer, 1.0, true, Trig_YaoWangShenPianFunc003Func006T)
    ydl_timer = nil
end
function Trig_YaoWangShenPianActions()
    local range = 900
    if GetUnitAbilityLevel(GetTriggerUnit(), 1093678913) ~= 0 then
        range = 1300
    end
    ForGroupBJ(YDWEGetUnitsInRangeOfLocMatchingNull(range, GetUnitLoc(GetTriggerUnit()), Condition(Trig_YaoWangShenPianFunc003001003)), Trig_YaoWangShenPianFunc003A)

end
--===========================================================================
function InitTrig_YaoWangShenPian()
    gg_trg_YaoWangShenPian = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_YaoWangShenPian, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    TriggerAddCondition(gg_trg_YaoWangShenPian, Condition(Trig_YaoWangShenPianConditions))
    TriggerAddAction(gg_trg_YaoWangShenPian, Trig_YaoWangShenPianActions)
end
--===========================================================================
-- Trigger: KuRongShenGong
--===========================================================================
function Trig_KuRongShenGongConditions()
    return GetSpellAbilityId() == 1093677914
end
function Trig_KuRongShenGongActions()
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), -807506826)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), -807506826, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), -320330265, ydl_localvar_step)
    SetUnitLifePercentBJ(GetTriggerUnit(), GetUnitLifePercent(GetTriggerUnit()) / 2.0)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976, 150 + 150 * xiuxing[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
    if GetUnitAbilityLevel(GetKillingUnitBJ(), 1093678928) ~= 0 then
        SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976, 500 + 500 * xiuxing[1 + GetPlayerId(GetOwningPlayer(GetTriggerUnit()))])
    else
    end
    ModifyHeroStat(bj_HEROSTAT_STR, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976))
    ModifyHeroStat(bj_HEROSTAT_AGI, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976))
    ModifyHeroStat(bj_HEROSTAT_INT, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976))
    local u = GetTriggerUnit()
    local t = GetTriggeringTrigger()
    et.wait(15 * 1000, function()
        SaveInteger(YDLOC, GetHandleId(t), -320330265, ydl_localvar_step)
        ModifyHeroStat(bj_HEROSTAT_STR, u, bj_MODIFYMETHOD_SUB, LoadInteger(YDLOC, GetHandleId(t) * ydl_localvar_step, 635090976))
        ModifyHeroStat(bj_HEROSTAT_AGI, u, bj_MODIFYMETHOD_SUB, LoadInteger(YDLOC, GetHandleId(t) * ydl_localvar_step, 635090976))
        ModifyHeroStat(bj_HEROSTAT_INT, u, bj_MODIFYMETHOD_SUB, LoadInteger(YDLOC, GetHandleId(t) * ydl_localvar_step, 635090976))
        FlushChildHashtable(YDLOC, GetHandleId(t) * ydl_localvar_step)
    end)
end
--===========================================================================
function InitTrig_KuRongShenGong()
    gg_trg_KuRongShenGong = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_KuRongShenGong, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    TriggerAddCondition(gg_trg_KuRongShenGong, Condition(Trig_KuRongShenGongConditions))
    TriggerAddAction(gg_trg_KuRongShenGong, Trig_KuRongShenGongActions)
end
--===========================================================================
-- Trigger: KuRongShenGong_2
--===========================================================================
function Trig_KuRongShenGong_2Conditions()
    return GetUnitAbilityLevel(GetKillingUnitBJ(), 1093677914) ~= 0
end
function Trig_KuRongShenGong_2Actions()
    local ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), -807506826)
    ydl_localvar_step = ydl_localvar_step + 3
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), -807506826, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), -320330265, ydl_localvar_step)
    SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976, GetConvertedPlayerId(GetTriggerPlayer()))
    udg_kurongsharen[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976)] = udg_kurongsharen[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976)] + 1
    if udg_kurongsharen[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976)] >= 300 then
        udg_kurongsharen[LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, 635090976)] = 0
        if GetUnitState(GetKillingUnitBJ(), UNIT_STATE_LIFE) > 2000.0 then
            YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(), 2, 1, 10)
            ModifyHeroStat(bj_HEROSTAT_STR, GetKillingUnitBJ(), bj_MODIFYMETHOD_ADD, 20)
            ModifyHeroStat(bj_HEROSTAT_AGI, GetKillingUnitBJ(), bj_MODIFYMETHOD_ADD, 30)
            ModifyHeroStat(bj_HEROSTAT_INT, GetKillingUnitBJ(), bj_MODIFYMETHOD_ADD, 10)
            if GetUnitAbilityLevel(GetKillingUnitBJ(), 1093678935) ~= 0 then
                ModifyHeroStat(bj_HEROSTAT_AGI, GetKillingUnitBJ(), bj_MODIFYMETHOD_ADD, 30)
            else
            end
        else
        end
    else
    end
    FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
end
--===========================================================================
function InitTrig_KuRongShenGong_2()
    gg_trg_KuRongShenGong_2 = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_KuRongShenGong_2, EVENT_PLAYER_UNIT_DEATH)
    TriggerAddCondition(gg_trg_KuRongShenGong_2, Condition(Trig_KuRongShenGong_2Conditions))
    TriggerAddAction(gg_trg_KuRongShenGong_2, Trig_KuRongShenGong_2Actions)
end
--===========================================================================
-- Trigger: KuRongShenGong_3
--===========================================================================
function Trig_KuRongShenGong_3Conditions()
    return GetUnitAbilityLevel(GetAttacker(), 1093677914) ~= 0 and GetUnitAbilityLevel(GetAttacker(), 1093679156) ~= 0 and GetRandomReal(0.0, 100.0) <= 15.0
end
function Trig_KuRongShenGong_3Actions()
    SetUnitLifePercentBJ(GetTriggerUnit(), GetUnitLifePercent(GetTriggerUnit()) * 0.9)
end
--===========================================================================
function InitTrig_KuRongShenGong_3()
    gg_trg_KuRongShenGong_3 = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_KuRongShenGong_3, EVENT_PLAYER_UNIT_ATTACKED)
    TriggerAddCondition(gg_trg_KuRongShenGong_3, Condition(Trig_KuRongShenGong_3Conditions))
    TriggerAddAction(gg_trg_KuRongShenGong_3, Trig_KuRongShenGong_3Actions)
end
--===========================================================================
-- Trigger: ShuiShangPiao
--===========================================================================
function Trig_ShuiShangPiaoActions()
end
--===========================================================================
function InitTrig_ShuiShangPiao()
    gg_trg_ShuiShangPiao = CreateTrigger()
    TriggerAddAction(gg_trg_ShuiShangPiao, Trig_ShuiShangPiaoActions)
end
--===========================================================================
-- Trigger: SH
--===========================================================================
function Trig_SHConditions()
    return GetIssuedOrderIdBJ() == String2OrderIdBJ("stoneform") or GetIssuedOrderIdBJ() == String2OrderIdBJ("hex")
end
function Trig_SHActions()
    if GetIssuedOrderIdBJ() == String2OrderIdBJ("stoneform") then
        IssueImmediateOrder(GetTriggerUnit(), "stop")
    else
    end
    if GetIssuedOrderIdBJ() == String2OrderIdBJ("hex") then
        IssueImmediateOrder(GetTriggerUnit(), "holdposition")
    else
    end
end
--===========================================================================
function InitTrig_SH()
    gg_trg_SH = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_SH, EVENT_PLAYER_UNIT_ISSUED_ORDER)
    TriggerAddCondition(gg_trg_SH, Condition(Trig_SHConditions))
    TriggerAddAction(gg_trg_SH, Trig_SHActions)
end
--===========================================================================
-- Trigger: AM_1
--===========================================================================
function Trig_AM_1Conditions()
    return GetIssuedOrderIdBJ() == String2OrderIdBJ("autoharvestgold") or GetIssuedOrderIdBJ() == String2OrderIdBJ("mount")
end
function Trig_AM_1Actions()
    if GetIssuedOrderIdBJ() == String2OrderIdBJ("mount") then
        IssuePointOrderByIdLoc(GetTriggerUnit(), 851986, GetOrderPointLoc())
    else
    end
    if GetIssuedOrderIdBJ() == String2OrderIdBJ("autoharvestgold") then
        IssuePointOrderByIdLoc(GetTriggerUnit(), 851983, GetOrderPointLoc())
    else
    end
end
--===========================================================================
function InitTrig_AM_1()
    gg_trg_AM_1 = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_AM_1, EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
    TriggerAddCondition(gg_trg_AM_1, Condition(Trig_AM_1Conditions))
    TriggerAddAction(gg_trg_AM_1, Trig_AM_1Actions)
end
--===========================================================================
-- Trigger: AM_2
--===========================================================================
function Trig_AM_2Conditions()
    return GetIssuedOrderIdBJ() == String2OrderIdBJ("autoharvestgold") or GetIssuedOrderIdBJ() == String2OrderIdBJ("mount")
end
function Trig_AM_2Actions()
    if GetIssuedOrderIdBJ() == String2OrderIdBJ("mount") then
        IssueTargetOrderById(GetTriggerUnit(), 851986, GetOrderTargetUnit())
    else
    end
    if GetIssuedOrderIdBJ() == String2OrderIdBJ("autoharvestgold") then
        IssueTargetOrderById(GetTriggerUnit(), 851983, GetOrderTargetUnit())
    else
    end
end
--===========================================================================
function InitTrig_AM_2()
    gg_trg_AM_2 = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(gg_trg_AM_2, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    TriggerAddCondition(gg_trg_AM_2, Condition(Trig_AM_2Conditions))
    TriggerAddAction(gg_trg_AM_2, Trig_AM_2Actions)
end


--***************************************************************************
--*
--*  Players
--*
--***************************************************************************
function InitCustomPlayerSlots()
    -- Player 0
    SetPlayerStartLocation(Player(0), 0)
    ForcePlayerStartLocation(Player(0), 0)
    SetPlayerColor(Player(0), ConvertPlayerColor(0))
    SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(0), false)
    SetPlayerController(Player(0), MAP_CONTROL_USER)
    -- Player 1
    SetPlayerStartLocation(Player(1), 1)
    ForcePlayerStartLocation(Player(1), 1)
    SetPlayerColor(Player(1), ConvertPlayerColor(1))
    SetPlayerRacePreference(Player(1), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(1), false)
    SetPlayerController(Player(1), MAP_CONTROL_USER)
    -- Player 2
    SetPlayerStartLocation(Player(2), 2)
    ForcePlayerStartLocation(Player(2), 2)
    SetPlayerColor(Player(2), ConvertPlayerColor(2))
    SetPlayerRacePreference(Player(2), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(2), false)
    SetPlayerController(Player(2), MAP_CONTROL_USER)
    -- Player 3
    SetPlayerStartLocation(Player(3), 3)
    ForcePlayerStartLocation(Player(3), 3)
    SetPlayerColor(Player(3), ConvertPlayerColor(3))
    SetPlayerRacePreference(Player(3), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(3), false)
    SetPlayerController(Player(3), MAP_CONTROL_USER)
    -- Player 4
    SetPlayerStartLocation(Player(4), 4)
    ForcePlayerStartLocation(Player(4), 4)
    SetPlayerColor(Player(4), ConvertPlayerColor(4))
    SetPlayerRacePreference(Player(4), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(4), false)
    SetPlayerController(Player(4), MAP_CONTROL_USER)
    -- Player 5
    SetPlayerStartLocation(Player(5), 5)
    ForcePlayerStartLocation(Player(5), 5)
    SetPlayerColor(Player(5), ConvertPlayerColor(5))
    SetPlayerRacePreference(Player(5), RACE_PREF_ORC)
    SetPlayerRaceSelectable(Player(5), false)
    SetPlayerController(Player(5), MAP_CONTROL_COMPUTER)
    -- Player 6
    SetPlayerStartLocation(Player(6), 6)
    ForcePlayerStartLocation(Player(6), 6)
    SetPlayerColor(Player(6), ConvertPlayerColor(6))
    SetPlayerRacePreference(Player(6), RACE_PREF_UNDEAD)
    SetPlayerRaceSelectable(Player(6), false)
    SetPlayerController(Player(6), MAP_CONTROL_COMPUTER)
    -- Player 7
    SetPlayerStartLocation(Player(7), 7)
    ForcePlayerStartLocation(Player(7), 7)
    SetPlayerColor(Player(7), ConvertPlayerColor(7))
    SetPlayerRacePreference(Player(7), RACE_PREF_NIGHTELF)
    SetPlayerRaceSelectable(Player(7), false)
    SetPlayerController(Player(7), MAP_CONTROL_COMPUTER)
    -- Player 8
    SetPlayerStartLocation(Player(8), 8)
    ForcePlayerStartLocation(Player(8), 8)
    SetPlayerColor(Player(8), ConvertPlayerColor(8))
    SetPlayerRacePreference(Player(8), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(8), false)
    SetPlayerController(Player(8), MAP_CONTROL_COMPUTER)
end
function InitCustomTeams()
    -- Force: TRIGSTR_010
    SetPlayerTeam(Player(0), 0)
    SetPlayerState(Player(0), PLAYER_STATE_ALLIED_VICTORY, 1)
    SetPlayerTeam(Player(1), 0)
    SetPlayerState(Player(1), PLAYER_STATE_ALLIED_VICTORY, 1)
    SetPlayerTeam(Player(2), 0)
    SetPlayerState(Player(2), PLAYER_STATE_ALLIED_VICTORY, 1)
    SetPlayerTeam(Player(3), 0)
    SetPlayerState(Player(3), PLAYER_STATE_ALLIED_VICTORY, 1)
    SetPlayerTeam(Player(4), 0)
    SetPlayerState(Player(4), PLAYER_STATE_ALLIED_VICTORY, 1)
    SetPlayerTeam(Player(5), 0)
    SetPlayerState(Player(5), PLAYER_STATE_ALLIED_VICTORY, 1)
    --   Allied
    SetPlayerAllianceStateAllyBJ(Player(0), Player(1), true)
    SetPlayerAllianceStateAllyBJ(Player(0), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(0), Player(3), true)
    SetPlayerAllianceStateAllyBJ(Player(0), Player(4), true)
    SetPlayerAllianceStateAllyBJ(Player(0), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(3), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(4), true)
    SetPlayerAllianceStateAllyBJ(Player(1), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(1), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(3), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(4), true)
    SetPlayerAllianceStateAllyBJ(Player(2), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(1), true)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(4), true)
    SetPlayerAllianceStateAllyBJ(Player(3), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(4), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(4), Player(1), true)
    SetPlayerAllianceStateAllyBJ(Player(4), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(4), Player(3), true)
    SetPlayerAllianceStateAllyBJ(Player(4), Player(5), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(0), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(1), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(2), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(3), true)
    SetPlayerAllianceStateAllyBJ(Player(5), Player(4), true)
    --   Shared Vision
    SetPlayerAllianceStateVisionBJ(Player(0), Player(1), true)
    SetPlayerAllianceStateVisionBJ(Player(0), Player(2), true)
    SetPlayerAllianceStateVisionBJ(Player(0), Player(3), true)
    SetPlayerAllianceStateVisionBJ(Player(0), Player(4), true)
    SetPlayerAllianceStateVisionBJ(Player(0), Player(5), true)
    SetPlayerAllianceStateVisionBJ(Player(1), Player(0), true)
    SetPlayerAllianceStateVisionBJ(Player(1), Player(2), true)
    SetPlayerAllianceStateVisionBJ(Player(1), Player(3), true)
    SetPlayerAllianceStateVisionBJ(Player(1), Player(4), true)
    SetPlayerAllianceStateVisionBJ(Player(1), Player(5), true)
    SetPlayerAllianceStateVisionBJ(Player(2), Player(0), true)
    SetPlayerAllianceStateVisionBJ(Player(2), Player(1), true)
    SetPlayerAllianceStateVisionBJ(Player(2), Player(3), true)
    SetPlayerAllianceStateVisionBJ(Player(2), Player(4), true)
    SetPlayerAllianceStateVisionBJ(Player(2), Player(5), true)
    SetPlayerAllianceStateVisionBJ(Player(3), Player(0), true)
    SetPlayerAllianceStateVisionBJ(Player(3), Player(1), true)
    SetPlayerAllianceStateVisionBJ(Player(3), Player(2), true)
    SetPlayerAllianceStateVisionBJ(Player(3), Player(4), true)
    SetPlayerAllianceStateVisionBJ(Player(3), Player(5), true)
    SetPlayerAllianceStateVisionBJ(Player(4), Player(0), true)
    SetPlayerAllianceStateVisionBJ(Player(4), Player(1), true)
    SetPlayerAllianceStateVisionBJ(Player(4), Player(2), true)
    SetPlayerAllianceStateVisionBJ(Player(4), Player(3), true)
    SetPlayerAllianceStateVisionBJ(Player(4), Player(5), true)
    SetPlayerAllianceStateVisionBJ(Player(5), Player(0), true)
    SetPlayerAllianceStateVisionBJ(Player(5), Player(1), true)
    SetPlayerAllianceStateVisionBJ(Player(5), Player(2), true)
    SetPlayerAllianceStateVisionBJ(Player(5), Player(3), true)
    SetPlayerAllianceStateVisionBJ(Player(5), Player(4), true)
    -- Force: TRIGSTR_011
    SetPlayerTeam(Player(6), 1)
    SetPlayerState(Player(6), PLAYER_STATE_ALLIED_VICTORY, 1)
    SetPlayerTeam(Player(7), 1)
    SetPlayerState(Player(7), PLAYER_STATE_ALLIED_VICTORY, 1)
    SetPlayerTeam(Player(8), 1)
    SetPlayerState(Player(8), PLAYER_STATE_ALLIED_VICTORY, 1)
    --   Allied
    SetPlayerAllianceStateAllyBJ(Player(6), Player(7), true)
    SetPlayerAllianceStateAllyBJ(Player(6), Player(8), true)
    SetPlayerAllianceStateAllyBJ(Player(7), Player(6), true)
    SetPlayerAllianceStateAllyBJ(Player(7), Player(8), true)
    SetPlayerAllianceStateAllyBJ(Player(8), Player(6), true)
    SetPlayerAllianceStateAllyBJ(Player(8), Player(7), true)
    --   Shared Vision
    SetPlayerAllianceStateVisionBJ(Player(6), Player(7), true)
    SetPlayerAllianceStateVisionBJ(Player(6), Player(8), true)
    SetPlayerAllianceStateVisionBJ(Player(7), Player(6), true)
    SetPlayerAllianceStateVisionBJ(Player(7), Player(8), true)
    SetPlayerAllianceStateVisionBJ(Player(8), Player(6), true)
    SetPlayerAllianceStateVisionBJ(Player(8), Player(7), true)
end
function InitAllyPriorities()
    SetStartLocPrioCount(0, 4)
    SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(0, 1, 2, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(0, 2, 3, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(0, 3, 4, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(1, 4)
    SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(1, 1, 2, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(1, 2, 3, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(1, 3, 4, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(2, 4)
    SetStartLocPrio(2, 0, 0, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(2, 1, 1, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(2, 2, 3, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(2, 3, 4, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(3, 4)
    SetStartLocPrio(3, 0, 0, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(3, 1, 1, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(3, 2, 2, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(3, 3, 4, MAP_LOC_PRIO_HIGH)
    SetStartLocPrioCount(4, 4)
    SetStartLocPrio(4, 0, 0, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(4, 1, 1, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(4, 2, 2, MAP_LOC_PRIO_HIGH)
    SetStartLocPrio(4, 3, 3, MAP_LOC_PRIO_HIGH)
end
--***************************************************************************
--*
--*  Main Initialization
--*
--***************************************************************************
--===========================================================================
function main()
    SetCameraBounds(-15616.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -15872.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 15616.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 15360.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -15616.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 15360.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 15616.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -15872.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    NewSoundEnvironment("Default")
    SetAmbientDaySound("VillageDay")
    SetAmbientNightSound("VillageNight")
    SetMapMusic("Music", true, 0)
    CreateAllUnits()
    InitBlizzard()

    ExecuteFunc("jasshelper__initstructs1114733203")
    ExecuteFunc("FrameLibrary__init")
    ExecuteFunc("UniMissileSystem3D__Init")
    ExecuteFunc("YDTriggerSaveLoadSystem__Init")
    ExecuteFunc("InitializeYD")
    ExecuteFunc("YDWEBitwise__onInit")
    ExecuteFunc("YDWEGeneralBounsSystem__Initialize")
    ExecuteFunc("YDWELogarithm__onInit")
    ExecuteFunc("YDWESync__onInit")
    ExecuteFunc("YDWEPreloadSL__Init")
    ExecuteFunc("YDWEStringFormula__Init")
    ExecuteFunc("YDWETimerPattern__Init")
    ExecuteFunc("YDWETimerSystem__Init")
    ExecuteFunc("init_common_func")

    InitGlobals()
    InitTrig_YuJiaMiCheng()
    InitTrig_japi______u()
    InitTrig_firstOccur()
    InitTrig____________________007()
    InitTrig_youLingChuan()
    SetPlayerStateBJ(Player(0), PLAYER_STATE_RESOURCE_FOOD_CAP, 50)
    SetPlayerStateBJ(Player(1), PLAYER_STATE_RESOURCE_FOOD_CAP, 50)
    SetPlayerStateBJ(Player(2), PLAYER_STATE_RESOURCE_FOOD_CAP, 50)
    SetPlayerStateBJ(Player(3), PLAYER_STATE_RESOURCE_FOOD_CAP, 50)
    SetPlayerStateBJ(Player(4), PLAYER_STATE_RESOURCE_FOOD_CAP, 50)
    SetPlayerStateBJ(Player(5), PLAYER_STATE_RESOURCE_FOOD_CAP, 50)
    ShowUnit(gg_unit_nvl2_0005, false)
    ShowUnit(gg_unit_n00M_0131, false)
    ShowUnit(gg_unit_n00N_0132, false)
    ShowUnit(gg_unit_N00I_0116, true)
    ShowUnit(gg_unit_N007_0055, true)
    main1()
    et.wait(50, main2)
    InitTrig_ChangeClothes()
    InitTrig_QinLongKongHe()
    InitTrig_YaoWangShenPian()
    InitTrig_KuRongShenGong()
    InitTrig_KuRongShenGong_2()
    InitTrig_KuRongShenGong_3()
    InitTrig_ShuiShangPiao()
    InitTrig_SH()
    InitTrig_AM_1()
    InitTrig_AM_2()
end
--***************************************************************************
--*
--*  Map Configuration
--*
--***************************************************************************
function config()
    SetMapName("决战江湖1.6.43正式版")
    SetMapDescription("|cFFFF00FF当你打开这个游戏的时候，你的江湖已经开始了.....|r")
    SetPlayers(9)
    SetTeams(9)
    SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
    DefineStartLocation(0, 1728.0, -4160.0)
    DefineStartLocation(1, 1728.0, -4160.0)
    DefineStartLocation(2, 1728.0, -4160.0)
    DefineStartLocation(3, 1728.0, -4160.0)
    DefineStartLocation(4, 1728.0, -4160.0)
    DefineStartLocation(5, -3328.0, -15616.0)
    DefineStartLocation(6, 1728.0, -4160.0)
    DefineStartLocation(7, 1728.0, -4160.0)
    DefineStartLocation(8, 1728.0, -4160.0)
    -- Player setup
    InitCustomPlayerSlots()
    InitCustomTeams()
    InitAllyPriorities()
end

--===========================================================================
--===========================================================================
--修改生命
--===========================================================================
--===========================================================================
--ϵͳ-TimerSystem


--Struct method generated initializers/callers:
function sa__Frame_onDestroy()
    local this = f__arg_this
    if s__Frame_id[this] ~= 0 then
        DzDestroyFrame(s__Frame_id[this])
    end
    s__Frame_id[this] = 0
    return true
end
function sa__ShopWeapon_onDestroy()
    local this = f__arg_this
    s__ShopWeapon_min_xiuxing[this] = 0
    s__ShopWeapon_id[this] = 0
    return true
end
function sa__ShopWeapon_PickUpWeapon()
    s__ShopWeapon_PickUpWeapon(f__arg_this, f__arg_unit1, f__arg_item1)
    return true
end
function sa__ZiZhiWuGong_create()
    local xishu = f__arg_integer1
    local range = f__arg_integer2
    local texiao = f__arg_integer3
    local dapeishu = f__arg_integer4
    local scrate = f__arg_integer5
    local zz
    zz = s__ZiZhiWuGong__allocate()
    s__ZiZhiWuGong_xishu[zz] = xishu
    s__ZiZhiWuGong_range[zz] = range
    s__ZiZhiWuGong_texiao[zz] = texiao
    s__ZiZhiWuGong_dapeishu[zz] = dapeishu
    s__ZiZhiWuGong_scrate[zz] = scrate
    f__result_integer = zz
    return true
end
function sa__ZiZhiWuGong_onDestroy()
    local this = f__arg_this
    s__ZiZhiWuGong_xishu[this] = 0
    s__ZiZhiWuGong_range[this] = 0
    s__ZiZhiWuGong_texiao[this] = 0
    s__ZiZhiWuGong_dapeishu[this] = 0
    s__ZiZhiWuGong_scrate[this] = 0
    return true
end
function sa__DaPei_onDestroy()
    local this = f__arg_this
    s__DaPei_wugongid[this] = 0
    s__DaPei_dapeixiaoguo[this] = 0
    s__DaPei_shxishu[this] = 0
    return true
end
function sa__DaPei_XiaoGuoShuoMing()
    local this = f__arg_this
    local s = ""
    s = (s or "") .. "+" .. (GetAbilityName(s__DaPei_wugongid[this]) or "") .. "："
    if s__DaPei_dapeixiaoguo[this] ~= 2 then
        s = (s or "") .. "伤害+" .. (I2S(R2I(s__DaPei_r[this] * 100)) or "") .. "%"
    else
        if R2I(s__DaPei_r[this]) == 1 then
            s = (s or "") .. "几率造成内伤"
        elseif R2I(s__DaPei_r[this]) == 2 then
            s = (s or "") .. "几率造成走火入魔"
        elseif R2I(s__DaPei_r[this]) == 3 then
            s = (s or "") .. "几率造成流血"
        elseif R2I(s__DaPei_r[this]) == 4 then
            s = (s or "") .. "几率造成混乱"
        elseif R2I(s__DaPei_r[this]) == 5 then
            s = (s or "") .. "几率造成昏迷"
        elseif R2I(s__DaPei_r[this]) == 6 then
            s = (s or "") .. "几率造成重伤"
        elseif R2I(s__DaPei_r[this]) == 7 then
            s = (s or "") .. "几率造成血流不止"
        elseif R2I(s__DaPei_r[this]) == 8 then
            s = (s or "") .. "几率造成麻痹"
        elseif R2I(s__DaPei_r[this]) == 9 then
            s = (s or "") .. "几率造成破防"
        elseif R2I(s__DaPei_r[this]) == 10 then
            s = (s or "") .. "几率造成神经错乱"
        elseif R2I(s__DaPei_r[this]) == 11 then
            s = (s or "") .. "几率造成封穴"
        elseif R2I(s__DaPei_r[this]) == 12 then
            s = (s or "") .. "几率造成穴位全封"
        elseif R2I(s__DaPei_r[this]) == 13 then
            s = (s or "") .. "几率造成中毒"
        end
    end
    f__result_string = s
    return true
end
function sa__YDWEStringFormula__Inventory_onDestroy()
    local this = f__arg_this
    FlushChildHashtable(YDHT, StringHash("YDWEStringFormula." .. (I2S(this) or ""))) -- INLINED!!
    return true
end
function sa__YDWETimerPattern__Thread_onDestroy()
    local this = f__arg_this
    RemoveSavedInteger(YDHT, StringHash("YDWETimerPattern."), StringHash(I2S(GetHandleId(s__YDWETimerPattern__Thread_obj[this])))) -- INLINED!!
    RemoveSavedInteger(YDHT, StringHash("YDWETimerPattern."), StringHash(I2S(GetHandleId(s__YDWETimerPattern__Thread_t[this])))) -- INLINED!!
    GroupClear(s__YDWETimerPattern__Thread_g[this])
    DestroyGroup(s__YDWETimerPattern__Thread_g[this])
    PauseTimer(s__YDWETimerPattern__Thread_t[this])
    DestroyTimer(s__YDWETimerPattern__Thread_t[this])
    s__YDWETimerPattern__YDVector3_deallocate(s__YDWETimerPattern__Thread_des[this])
    s__YDWETimerPattern__YDVector3_deallocate(s__YDWETimerPattern__Thread_pos[this])
    s__YDWETimerPattern__YDVector3_deallocate(s__YDWETimerPattern__Thread_vel[this])
    s__YDWETimerPattern__Thread_caster[this] = nil
    s__YDWETimerPattern__Thread_target[this] = nil
    s__YDWETimerPattern__Thread_obj[this] = nil
    s__YDWETimerPattern__Thread_g[this] = nil
    s__YDWETimerPattern__Thread_t[this] = nil
    s__YDWETimerPattern__Thread_amount[this] = 0
    s__YDWETimerPattern__Thread_skills[this] = 0
    s__YDWETimerPattern__Thread_order[this] = 0
    s__YDWETimerPattern__Thread_dsfx[this] = ""
    s__YDWETimerPattern__Thread_gsfx[this] = ""
    s__YDWETimerPattern__Thread_wsfx[this] = ""
    s__YDWETimerPattern__Thread_part[this] = ""
    return true
end
function sa__YDWEStringFormula__Sorting_onDestroy()
    local this = f__arg_this
    local i = 0
    for _ in _loop_() do
        if i == s___YDWEStringFormula__Sorting_stack_size then
            break
        end
        s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this] + i] = 0
        s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this] + i] = 0
        i = i + 1
    end
    s__YDWEStringFormula__Sorting_char[this] = ""
    return true
end
function sa___prototype4_SetUnitMoveSpeedEx()
    s__ModSpeed_setSpeed(f__arg_unit1, f__arg_real1 * 1.0) -- INLINED!!
    return true
end

function jasshelper__initstructs1114733203()
    st__Frame_onDestroy = CreateTrigger()
    TriggerAddCondition(st__Frame_onDestroy, Condition(sa__Frame_onDestroy))
    st__ShopWeapon_onDestroy = CreateTrigger()
    TriggerAddCondition(st__ShopWeapon_onDestroy, Condition(sa__ShopWeapon_onDestroy))
    st__ShopWeapon_PickUpWeapon = CreateTrigger()
    TriggerAddCondition(st__ShopWeapon_PickUpWeapon, Condition(sa__ShopWeapon_PickUpWeapon))
    st__ZiZhiWuGong_create = CreateTrigger()
    TriggerAddCondition(st__ZiZhiWuGong_create, Condition(sa__ZiZhiWuGong_create))
    st__ZiZhiWuGong_onDestroy = CreateTrigger()
    TriggerAddCondition(st__ZiZhiWuGong_onDestroy, Condition(sa__ZiZhiWuGong_onDestroy))
    st__DaPei_onDestroy = CreateTrigger()
    TriggerAddCondition(st__DaPei_onDestroy, Condition(sa__DaPei_onDestroy))
    st__DaPei_XiaoGuoShuoMing = CreateTrigger()
    TriggerAddCondition(st__DaPei_XiaoGuoShuoMing, Condition(sa__DaPei_XiaoGuoShuoMing))
    st__YDWEStringFormula__Inventory_onDestroy[3] = CreateTrigger()
    st__YDWEStringFormula__Inventory_onDestroy[4] = st__YDWEStringFormula__Inventory_onDestroy[3]
    TriggerAddCondition(st__YDWEStringFormula__Inventory_onDestroy[3], Condition(sa__YDWEStringFormula__Inventory_onDestroy))
    st__YDWETimerPattern__Thread_onDestroy[11] = CreateTrigger()
    st__YDWETimerPattern__Thread_onDestroy[12] = st__YDWETimerPattern__Thread_onDestroy[11]
    st__YDWETimerPattern__Thread_onDestroy[13] = st__YDWETimerPattern__Thread_onDestroy[11]
    st__YDWETimerPattern__Thread_onDestroy[14] = st__YDWETimerPattern__Thread_onDestroy[11]
    TriggerAddCondition(st__YDWETimerPattern__Thread_onDestroy[11], Condition(sa__YDWETimerPattern__Thread_onDestroy))
    st__YDWEStringFormula__Sorting_onDestroy = CreateTrigger()
    TriggerAddCondition(st__YDWEStringFormula__Sorting_onDestroy, Condition(sa__YDWEStringFormula__Sorting_onDestroy))
    st___prototype4[1] = CreateTrigger()
    TriggerAddAction(st___prototype4[1], sa___prototype4_SetUnitMoveSpeedEx)
    TriggerAddCondition(st___prototype4[1], Condition(sa___prototype4_SetUnitMoveSpeedEx))


    --ExecuteFunc("s__ModSpeed_Init__onInit")
    ExecuteFunc("s__YDWEStringFormula__ItemIdMatrix_onInit")
    ExecuteFunc("s__YDWEStringFormula__FormulaMatrix_onInit")
end
