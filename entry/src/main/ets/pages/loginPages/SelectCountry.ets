@Builder
export function SelectCountryBuilder() {
  SelectCountry()
}

interface CountryType {
  id: number
  name: string
  code: string
  areaCode: string
  group: string
}

// @formatter:off
const countryDate: CountryType[] = [
  {id:1, name: '阿尔巴尼亚', code: 'AL', areaCode: '+355', group: 'A' },
  {id:2, name: '阿尔及利亚', code: 'DZ', areaCode: '+213', group: 'A' },
  {id:3, name: '阿富汗', code: 'AF', areaCode: '+93', group: 'A' },
  {id:4, name: '阿根廷', code: 'AR', areaCode: '+54', group: 'A' },
  {id:5, name: '爱尔兰', code: 'IE', areaCode: '+353', group: 'A' },
  {id:6, name: '埃及', code: 'EG', areaCode: '+20', group: 'A' },
  {id:7, name: '埃塞俄比亚', code: 'ET', areaCode: '+251', group: 'A' },
  {id:8, name: '爱沙尼亚', code: 'EE', areaCode: '+372', group: 'A' },
  {id:9, name: '阿联酋', code: 'AE', areaCode: '+971', group: 'A' },
  {id:10, name: '阿曼', code: 'OM', areaCode: '+968', group: 'A' },
  {id:11, name: '安道尔', code: 'AD', areaCode: '+376', group: 'A' },
  {id:12, name: '安哥拉', code: 'AO', areaCode: '+244', group: 'A' },
  {id:13, name: '安圭拉', code: 'AI', areaCode: '+1264', group: 'A' },
  {id:14, name: '安提瓜和巴布达', code: 'AG', areaCode: '+1268', group: 'A' },
  {id:15, name: '澳大利亚', code: 'AU', areaCode: '+61', group: 'A' },
  {id:16, name: '奥地利', code: 'AT', areaCode: '+43', group: 'A' },
  {id:17, name: '奥兰群岛', code: 'AX', areaCode: '+358', group: 'A' },
  {id:18, name: '阿鲁巴', code: 'AW', areaCode: '+297', group: 'A' },
  {id:19, name: '阿塞拜疆', code: 'AZ', areaCode: '+994', group: 'A' },
  {id:20, name: '巴哈马', code: 'BS', areaCode: '+1242', group: 'B' },
  {id:21, name: '巴林', code: 'BH', areaCode: '+973', group: 'B' },
  {id:22, name: '孟加拉国', code: 'BD', areaCode: '+880', group: 'B' },
  {id:23, name: '巴巴多斯', code: 'BB', areaCode: '+1246', group: 'B' },
  {id:24, name: '白俄罗斯', code: 'BY', areaCode: '+375', group: 'B' },
  {id:25, name: '比利时', code: 'BE', areaCode: '+32', group: 'B' },
  {id:26, name: '伯利兹', code: 'BZ', areaCode: '+501', group: 'B' },
  {id:27, name: '贝宁', code: 'BJ', areaCode: '+229', group: 'B' },
  {id:28, name: '百慕大', code: 'BM', areaCode: '+1441', group: 'B' },
  {id:29, name: '不丹', code: 'BT', areaCode: '+975', group: 'B' },
  {id:30, name: '玻利维亚', code: 'BO', areaCode: '+591', group: 'B' },
  {id:31, name: '波黑', code: 'BA', areaCode: '+387', group: 'B' },
  {id:32, name: '博茨瓦纳', code: 'BW', areaCode: '+267', group: 'B' },
  {id:33, name: '巴西', code: 'BR', areaCode: '+55', group: 'B' },
  {id:34, name: '文莱', code: 'BN', areaCode: '+673', group: 'B' },
  {id:35, name: '保加利亚', code: 'BG', areaCode: '+359', group: 'B' },
  {id:36, name: '布基纳法索', code: 'BF', areaCode: '+226', group: 'B' },
  {id:37, name: '布隆迪', code: 'BI', areaCode: '+257', group: 'B' },
  {id:38, name: '柬埔寨', code: 'KH', areaCode: '+855', group: 'C' },
  {id:39, name: '喀麦隆', code: 'CM', areaCode: '+237', group: 'C' },
  {id:40, name: '加拿大', code: 'CA', areaCode: '+1', group: 'C' },
  {id:41, name: '佛得角', code: 'CV', areaCode: '+238', group: 'C' },
  {id:42, name: '开曼群岛', code: 'KY', areaCode: '+1345', group: 'C' },
  {id:43, name: '中非共和国', code: 'CF', areaCode: '+236', group: 'C' },
  {id:44, name: '乍得', code: 'TD', areaCode: '+235', group: 'C' },
  {id:45, name: '智利', code: 'CL', areaCode: '+56', group: 'C' },
  {id:46, name: '中国', code: 'CN', areaCode: '+86', group: 'C' },
  {id:47, name: '哥伦比亚', code: 'CO', areaCode: '+57', group: 'C' },
  {id:48, name: '科摩罗', code: 'KM', areaCode: '+269', group: 'C' },
  {id:49, name: '刚果（金）', code: 'CD', areaCode: '+243', group: 'C' },
  {id:50, name: '刚果（布）', code: 'CG', areaCode: '+242', group: 'C' },
  {id:51, name: '库克群岛', code: 'CK', areaCode: '+682', group: 'C' },
  {id:52, name: '哥斯达黎加', code: 'CR', areaCode: '+506', group: 'C' },
  {id:53, name: '克罗地亚', code: 'HR', areaCode: '+385', group: 'C' },
  {id:54, name: '古巴', code: 'CU', areaCode: '+53', group: 'C' },
  {id:55, name: '塞浦路斯', code: 'CY', areaCode: '+357', group: 'C' },
  {id:56, name: '捷克', code: 'CZ', areaCode: '+420', group: 'C' },
  {id:57, name: '丹麦', code: 'DK', areaCode: '+45', group: 'D' },
  {id:58, name: '吉布提', code: 'DJ', areaCode: '+253', group: 'D' },
  {id:59, name: '多米尼加', code: 'DO', areaCode: '+1-809', group: 'D' },
  {id:60, name: '多米尼克', code: 'DM', areaCode: '+1767', group: 'D' },
  {id:61, name: '厄瓜多尔', code: 'EC', areaCode: '+593', group: 'E' },
  {id:62, name: '埃及', code: 'EG', areaCode: '+20', group: 'E' },
  {id:63, name: '萨尔瓦多', code: 'SV', areaCode: '+503', group: 'E' }, // 按拼音E开头
  {id:64, name: '赤道几内亚', code: 'GQ', areaCode: '+240', group: 'E' },
  {id:65, name: '厄立特里亚', code: 'ER', areaCode: '+291', group: 'E' },
  {id:66, name: '爱沙尼亚', code: 'EE', areaCode: '+372', group: 'E' },
  {id:67, name: '埃塞俄比亚', code: 'ET', areaCode: '+251', group: 'E' },
  {id:68, name: '法罗群岛', code: 'FO', areaCode: '+298', group: 'F' },
  {id:69, name: '斐济', code: 'FJ', areaCode: '+679', group: 'F' },
  {id:70, name: '芬兰', code: 'FI', areaCode: '+358', group: 'F' },
  {id:71, name: '法国', code: 'FR', areaCode: '+33', group: 'F' },
  {id:72, name: '法属圭亚那', code: 'GF', areaCode: '+594', group: 'F' },
  {id:73, name: '法属波利尼西亚', code: 'PF', areaCode: '+689', group: 'F' },
  {id:74, name: '法属南部领地', code: 'TF', areaCode: '+262', group: 'F' },
  {id:75, name: '加蓬', code: 'GA', areaCode: '+241', group: 'G' },
  {id:76, name: '冈比亚', code: 'GM', areaCode: '+220', group: 'G' },
  {id:77, name: '格鲁吉亚', code: 'GE', areaCode: '+995', group: 'G' },
  {id:78, name: '德国', code: 'DE', areaCode: '+49', group: 'G' },
  {id:79, name: '加纳', code: 'GH', areaCode: '+233', group: 'G' },
  {id:80, name: '直布罗陀', code: 'GI', areaCode: '+350', group: 'G' },
  {id:81, name: '希腊', code: 'GR', areaCode: '+30', group: 'G' },
  {id:82, name: '格陵兰', code: 'GL', areaCode: '+299', group: 'G' },
  {id:83, name: '格林纳达', code: 'GD', areaCode: '+1473', group: 'G' },
  {id:84, name: '瓜德罗普', code: 'GP', areaCode: '+590', group: 'G' },
  {id:85, name: '关岛', code: 'GU', areaCode: '+1671', group: 'G' },
  {id:86, name: '危地马拉', code: 'GT', areaCode: '+502', group: 'G' },
  {id:87, name: '根西岛', code: 'GG', areaCode: '+44', group: 'G' },
  {id:88, name: '几内亚', code: 'GN', areaCode: '+224', group: 'G' },
  {id:89, name: '几内亚比绍', code: 'GW', areaCode: '+245', group: 'G' },
  {id:90, name: '圭亚那', code: 'GY', areaCode: '+592', group: 'G' },
  {id:91, name: '海地', code: 'HT', areaCode: '+509', group: 'H' },
  {id:92, name: '洪都拉斯', code: 'HN', areaCode: '+504', group: 'H' },
  {id:93, name: '匈牙利', code: 'HU', areaCode: '+36', group: 'H' },
  {id:94, name: '冰岛', code: 'IS', areaCode: '+354', group: 'I' },
  {id:95, name: '印度', code: 'IN', areaCode: '+91', group: 'I' },
  {id:96, name: '印度尼西亚', code: 'ID', areaCode: '+62', group: 'I' },
  {id:97, name: '伊朗', code: 'IR', areaCode: '+98', group: 'I' },
  {id:98, name: '伊拉克', code: 'IQ', areaCode: '+964', group: 'I' },
  {id:99, name: '爱尔兰', code: 'IE', areaCode: '+353', group: 'I' },
  {id:100, name: '马恩岛', code: 'IM', areaCode: '+44', group: 'I' },
  {id:101, name: '以色列', code: 'IL', areaCode: '+972', group: 'I' },
  {id:102, name: '意大利', code: 'IT', areaCode: '+39', group: 'I' },
  {id:103, name: '牙买加', code: 'JM', areaCode: '+1876', group: 'J' },
  {id:104, name: '日本', code: 'JP', areaCode: '+81', group: 'J' },
  {id:105, name: '泽西岛', code: 'JE', areaCode: '+44', group: 'J' },
  {id:106, name: '约旦', code: 'JO', areaCode: '+962', group: 'J' },
  {id:107, name: '哈萨克斯坦', code: 'KZ', areaCode: '+7', group: 'K' },
  {id:108, name: '肯尼亚', code: 'KE', areaCode: '+254', group: 'K' },
  {id:109, name: '基里巴斯', code: 'KI', areaCode: '+686', group: 'K' },
  {id:110, name: '韩国', code: 'KR', areaCode: '+82', group: 'K' },
  {id:111, name: '科威特', code: 'KW', areaCode: '+965', group: 'K' },
  {id:112, name: '吉尔吉斯斯坦', code: 'KG', areaCode: '+996', group: 'K' },
  {id:113, name: '老挝', code: 'LA', areaCode: '+856', group: 'L' },
  {id:114, name: '拉脱维亚', code: 'LV', areaCode: '+371', group: 'L' },
  {id:115, name: '黎巴嫩', code: 'LB', areaCode: '+961', group: 'L' },
  {id:116, name: '莱索托', code: 'LS', areaCode: '+266', group: 'L' },
  {id:117, name: '利比里亚', code: 'LR', areaCode: '+231', group: 'L' },
  {id:118, name: '利比亚', code: 'LY', areaCode: '+218', group: 'L' },
  {id:119, name: '列支敦士登', code: 'LI', areaCode: '+423', group: 'L' },
  {id:120, name: '立陶宛', code: 'LT', areaCode: '+370', group: 'L' },
  {id:121, name: '卢森堡', code: 'LU', areaCode: '+352', group: 'L' },
  {id:122, name: '澳门', code: 'MO', areaCode: '+853', group: 'M' },
  {id:123, name: '马其顿', code: 'MK', areaCode: '+389', group: 'M' },
  {id:124, name: '马达加斯加', code: 'MG', areaCode: '+261', group: 'M' },
  {id:125, name: '马拉维', code: 'MW', areaCode: '+265', group: 'M' },
  {id:126, name: '马来西亚', code: 'MY', areaCode: '+60', group: 'M' },
  {id:127, name: '马尔代夫', code: 'MV', areaCode: '+960', group: 'M' },
  {id:128, name: '马里', code: 'ML', areaCode: '+223', group: 'M' },
  {id:129, name: '马耳他', code: 'MT', areaCode: '+356', group: 'M' },
  {id:130, name: '马绍尔群岛', code: 'MH', areaCode: '+692', group: 'M' },
  {id:131, name: '马提尼克', code: 'MQ', areaCode: '+596', group: 'M' },
  {id:132, name: '毛里塔尼亚', code: 'MR', areaCode: '+222', group: 'M' },
  {id:133, name: '毛里求斯', code: 'MU', areaCode: '+230', group: 'M' },
  {id:134, name: '马约特', code: 'YT', areaCode: '+262', group: 'M' },
  {id:135, name: '墨西哥', code: 'MX', areaCode: '+52', group: 'M' },
  {id:136, name: '密克罗尼西亚联邦', code: 'FM', areaCode: '+691', group: 'M' },
  {id:137, name: '摩尔多瓦', code: 'MD', areaCode: '+373', group: 'M' },
  {id:138, name: '摩纳哥', code: 'MC', areaCode: '+377', group: 'M' },
  {id:139, name: '蒙古', code: 'MN', areaCode: '+976', group: 'M' },
  {id:140, name: '黑山', code: 'ME', areaCode: '+382', group: 'M' },
  {id:141, name: '蒙特塞拉特', code: 'MS', areaCode: '+1664', group: 'M' },
  {id:142, name: '摩洛哥', code: 'MA', areaCode: '+212', group: 'M' },
  {id:143, name: '莫桑比克', code: 'MZ', areaCode: '+258', group: 'M' },
  {id:144, name: '缅甸', code: 'MM', areaCode: '+95', group: 'M' },
  {id:145, name: '纳米比亚', code: 'NA', areaCode: '+264', group: 'N' },
  {id:146, name: '瑙鲁', code: 'NR', areaCode: '+674', group: 'N' },
  {id:147, name: '尼泊尔', code: 'NP', areaCode: '+977', group: 'N' },
  {id:148, name: '荷兰', code: 'NL', areaCode: '+31', group: 'N' },
  {id:149, name: '新喀里多尼亚', code: 'NC', areaCode: '+687', group: 'N' },
  {id:150, name: '新西兰', code: 'NZ', areaCode: '+64', group: 'N' },
  {id:151, name: '尼加拉瓜', code: 'NI', areaCode: '+505', group: 'N' },
  {id:152, name: '尼日尔', code: 'NE', areaCode: '+227', group: 'N' },
  {id:153, name: '尼日利亚', code: 'NG', areaCode: '+234', group: 'N' },
  {id:154, name: '纽埃', code: 'NU', areaCode: '+683', group: 'N' },
  {id:155, name: '诺福克岛', code: 'NF', areaCode: '+672', group: 'N' },
  {id:156, name: '北马其顿', code: 'MK', areaCode: '+389', group: 'N' },
  {id:157, name: '北马里亚纳群岛', code: 'MP', areaCode: '+1670', group: 'N' },
  {id:158, name: '挪威', code: 'NO', areaCode: '+47', group: 'N' },
  {id:159, name: '阿曼', code: 'OM', areaCode: '+968', group: 'O' },
  {id:160, name: '巴基斯坦', code: 'PK', areaCode: '+92', group: 'P' },
  {id:161, name: '帕劳', code: 'PW', areaCode: '+680', group: 'P' },
  {id:162, name: '巴勒斯坦', code: 'PS', areaCode: '+970', group: 'P' },
  {id:163, name: '巴拿马', code: 'PA', areaCode: '+507', group: 'P' },
  {id:164, name: '巴布亚新几内亚', code: 'PG', areaCode: '+675', group: 'P' },
  {id:165, name: '巴拉圭', code: 'PY', areaCode: '+595', group: 'P' },
  {id:166, name: '秘鲁', code: 'PE', areaCode: '+51', group: 'P' },
  {id:167, name: '菲律宾', code: 'PH', areaCode: '+63', group: 'P' },
  {id:168, name: '波兰', code: 'PL', areaCode: '+48', group: 'P' },
  {id:169, name: '葡萄牙', code: 'PT', areaCode: '+351', group: 'P' },
  {id:170, name: '波多黎各', code: 'PR', areaCode: '+1-787', group: 'P' },
  {id:171, name: '卡塔尔', code: 'QA', areaCode: '+974', group: 'Q' },
  {id:172, name: '留尼汪', code: 'RE', areaCode: '+262', group: 'R' },
  {id:173, name: '罗马尼亚', code: 'RO', areaCode: '+40', group: 'R' },
  {id:174, name: '俄罗斯', code: 'RU', areaCode: '+7', group: 'R' },
  {id:175, name: '卢旺达', code: 'RW', areaCode: '+250', group: 'R' },
  {id:176, name: '圣巴泰勒米岛', code: 'BL', areaCode: '+590', group: 'S' },
  {id:177, name: '圣赫勒拿', code: 'SH', areaCode: '+290', group: 'S' },
  {id:178, name: '圣基茨和尼维斯', code: 'KN', areaCode: '+1869', group: 'S' },
  {id:179, name: '圣卢西亚', code: 'LC', areaCode: '+1758', group: 'S' },
  {id:180, name: '圣马丁', code: 'MF', areaCode: '+590', group: 'S' },
  {id:181, name: '圣皮埃尔和密克隆', code: 'PM', areaCode: '+508', group: 'S' },
  {id:182, name: '圣文森特和格林纳丁斯', code: 'VC', areaCode: '+1784', group: 'S' },
  {id:183, name: '萨摩亚', code: 'WS', areaCode: '+685', group: 'S' },
  {id:184, name: '圣马力诺', code: 'SM', areaCode: '+378', group: 'S' },
  {id:185, name: '圣多美和普林西比', code: 'ST', areaCode: '+239', group: 'S' },
  {id:186, name: '沙特阿拉伯', code: 'SA', areaCode: '+966', group: 'S' },
  {id:187, name: '塞内加尔', code: 'SN', areaCode: '+221', group: 'S' },
  {id:188, name: '塞尔维亚', code: 'RS', areaCode: '+381', group: 'S' },
  {id:189, name: '塞舌尔', code: 'SC', areaCode: '+248', group: 'S' },
  {id:190, name: '塞拉利昂', code: 'SL', areaCode: '+232', group: 'S' },
  {id:191, name: '新加坡', code: 'SG', areaCode: '+65', group: 'S' },
  {id:192, name: '斯洛伐克', code: 'SK', areaCode: '+421', group: 'S' },
  {id:193, name: '斯洛文尼亚', code: 'SI', areaCode: '+386', group: 'S' },
  {id:194, name: '所罗门群岛', code: 'SB', areaCode: '+677', group: 'S' },
  {id:195, name: '索马里', code: 'SO', areaCode: '+252', group: 'S' },
  {id:196, name: '南非', code: 'ZA', areaCode: '+27', group: 'S' },
  {id:197, name: '南苏丹', code: 'SS', areaCode: '+211', group: 'S' },
  {id:198, name: '西班牙', code: 'ES', areaCode: '+34', group: 'S' },
  {id:199, name: '斯里兰卡', code: 'LK', areaCode: '+94', group: 'S' },
  {id:200, name: '苏丹', code: 'SD', areaCode: '+249', group: 'S' },
  {id:201, name: '苏里南', code: 'SR', areaCode: '+597', group: 'S' },
  {id:202, name: '斯瓦尔巴和扬马延', code: 'SJ', areaCode: '+47', group: 'S' },
  {id:203, name: '斯威士兰', code: 'SZ', areaCode: '+268', group: 'S' },
  {id:204, name: '瑞典', code: 'SE', areaCode: '+46', group: 'S' },
  {id:205, name: '瑞士', code: 'CH', areaCode: '+41', group: 'S' },
  {id:206, name: '叙利亚', code: 'SY', areaCode: '+963', group: 'S' },
  {id:207, name: '塔吉克斯坦', code: 'TJ', areaCode: '+992', group: 'T' },
  {id:208, name: '坦桑尼亚', code: 'TZ', areaCode: '+255', group: 'T' },
  {id:209, name: '泰国', code: 'TH', areaCode: '+66', group: 'T' },
  {id:210, name: '东帝汶', code: 'TL', areaCode: '+670', group: 'T' },
  {id:211, name: '多哥', code: 'TG', areaCode: '+228', group: 'T' },
  {id:212, name: '托克劳', code: 'TK', areaCode: '+690', group: 'T' },
  {id:213, name: '汤加', code: 'TO', areaCode: '+676', group: 'T' },
  {id:214, name: '特立尼达和多巴哥', code: 'TT', areaCode: '+1868', group: 'T' },
  {id:215, name: '突尼斯', code: 'TN', areaCode: '+216', group: 'T' },
  {id:216, name: '土耳其', code: 'TR', areaCode: '+90', group: 'T' },
  {id:217, name: '土库曼斯坦', code: 'TM', areaCode: '+993', group: 'T' },
  {id:218, name: '图瓦卢', code: 'TV', areaCode: '+688', group: 'T' },
  {id:219, name: '乌干达', code: 'UG', areaCode: '+256', group: 'U' },
  {id:220, name: '乌克兰', code: 'UA', areaCode: '+380', group: 'U' },
  {id:221, name: '阿联酋', code: 'AE', areaCode: '+971', group: 'U' },
  {id:222, name: '英国', code: 'GB', areaCode: '+44', group: 'U' },
  {id:223, name: '美国', code: 'US', areaCode: '+1', group: 'U' },
  {id:224, name: '乌拉圭', code: 'UY', areaCode: '+598', group: 'U' },
  {id:225, name: '乌兹别克斯坦', code: 'UZ', areaCode: '+998', group: 'U' },
  {id:226, name: '瓦努阿图', code: 'VU', areaCode: '+678', group: 'V' },
  {id:227, name: '梵蒂冈', code: 'VA', areaCode: '+379', group: 'V' },
  {id:228, name: '委内瑞拉', code: 'VE', areaCode: '+58', group: 'V' },
  {id:229, name: '越南', code: 'VN', areaCode: '+84', group: 'V' },
  {id:230, name: '英属维尔京群岛', code: 'VG', areaCode: '+1284', group: 'V' },
  {id:231, name: '美属维尔京群岛', code: 'VI', areaCode: '+1340', group: 'V' },
  {id:232, name: '也门', code: 'YE', areaCode: '+967', group: 'Y' },
  {id:233, name: '马约特', code: 'YT', areaCode: '+262', group: 'Y' },
  {id:234, name: '赞比亚', code: 'ZM', areaCode: '+260', group: 'Z' },
  {id:235, name: '津巴布韦', code: 'ZW', areaCode: '+263', group: 'Z' }
]
// @formatter:on
function search(text: string): CountryType[] {
  return text.trim() == '' ? countryDate : countryDate.filter((item: CountryType) => item.name.includes(text.trim()))
}

@Component
struct SelectCountry {
  @Builder
  itemHeader(text: string) {
    Text(text)
      .padding({ left: 15 })
      .fontColor('#737373')
      .width('100%')
      .backgroundColor('#fff')
  }

  @Builder
  ListItem(id: number, name: string, code: string) {
    ListItem() {
      Row() {
        Text(name)
          .padding({ left: 15 })
          .layoutWeight(1)
          .fontSize(18)
          .fontColor('#171717')
        Text(code)
          .fontColor('#8b8b8b')
          .padding({ right: 20 })
      }
    }
    .onClick(() => {
      this.pathStack.pop({ country: name, areaCode: code })
    })
    .backgroundColor(this.currentIndex == id ? '#cfcfcf' :
      '#fff')
    .borderWidth({ bottom: 1 })
    .borderColor('#efefef')
    .height(40)
    .onTouch((event: TouchEvent) => {
      if (event.type == TouchType.Down) {
        this.currentIndex = id
      }
      if (event.type == TouchType.Up) {
        this.currentIndex = -1
      }
    })
  }

  @State y: string = '100%'
  @State selectedIndex: number = 0
  private listScroll: Scroller = new Scroller()
  pathStack: NavPathStack = new NavPathStack()
  @State currentIndex: number = -1
  @State isStackShow: boolean = true
  @State searchContent: string = ''
  groups: string[] =
    ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'Y',
      'Z']

  build() {
    NavDestination() {
      Column() {
        Stack() {
          Text('选择国家和地区')
            .fontSize(18)
            .fontWeight(500)
          Image($r('app.media.closeIcon'))
            .width(24)
            .position({ x: 20, y: 25 })
            .onClick(() => {
              this.pathStack.pop()
            })
        }
        .padding({ bottom: 25 })
        .height(100)
        .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP])
        .backgroundColor('#efefef')
        .width('100%')

        Row() {
          Row() {
            Image($r('app.media.searchIcon'))
              .width(24)
              .fillColor('#bdbdbd')
          }
          .height(40)
          .backgroundColor('#fff')
          .padding({ left: 10 })
          .borderRadius({
            topLeft: 6,
            bottomLeft: 6,
            topRight: 0,
            bottomRight: 0
          })

          TextInput({ placeholder: '搜索' })
            .placeholderColor('#bdbdbd')
            .height(40)
            .backgroundColor('#fff')
            .borderRadius({
              topLeft: 0,
              bottomLeft: 0,
              topRight: 6,
              bottomRight: 6
            })
            .padding({ left: 10 })
            .onChange(value => {
              this.searchContent = value
              this.isStackShow = false
            })
        }
        .margin({ top: -40 })
        .padding({ left: 15, right: 45 })
        .height(60)
        .backgroundColor('#efefef')

        if (this.isStackShow) {
          Stack({ alignContent: Alignment.End }) {
            List({ scroller: this.listScroll }) {
              ForEach(this.groups, (group: string) => {
                ListItemGroup({ header: this.itemHeader(group) }) {
                  ForEach(countryDate.filter(item => item.group == group), (item: CountryType) => {
                    ListItem() {
                      this.ListItem(item.id, item.name, item.areaCode)
                    }
                  })
                }
              })
            }
            .sticky(StickyStyle.Header)
            .scrollBar(BarState.Off)
            .padding(15)
            .height('100%')
            .width('100%')
            .onScrollIndex((firstIndex: number) => {
              this.selectedIndex = firstIndex
            })

            AlphabetIndexer({ arrayValue: this.groups, selected: 0 })
              .selected(this.selectedIndex)
              .onSelect((index: number) => {
                this.listScroll.scrollToIndex(index)
                console.log(index + '')
              })
          }
          .layoutWeight(1)
        } else {
          ForEach(search(this.searchContent), (item: CountryType) => {
            this.ListItem(item.id, item.name, item.areaCode)
          })
        }
      }
      .width('100%')
      .height('100%')
    }
    .hideBackButton(true)
    .translate({ y: this.y })
    .customTransition((op: NavigationOperation, isEnter: boolean): Array<NavDestinationTransition> | undefined => {
      let transition: NavDestinationTransition = {
        duration: 400,
        curve: Curve.Ease,
        event: () => {
          if (op == NavigationOperation.PUSH && isEnter) {
            this.y = '0'
          } else if (op == NavigationOperation.POP && !isEnter) {
            this.y = '100%'
          }
        },
        onTransitionEnd: () => {
        }
      }
      return [transition]
    })
    .onReady((context: NavDestinationContext) => {
      this.pathStack = context.pathStack
    })
  }
}