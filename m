Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6DFDC433FE
	for <webhook@archiver.kernel.org>; Thu, 20 Oct 2022 17:02:37 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.12106.1666285353113626332
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Oct 2022 10:02:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=R8Qh4aDu;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=7292b9a18b=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 29KGv2XF029304;
	Thu, 20 Oct 2022 17:02:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=IrRbxO248JQ+bTZaeg9Bk5ORNapdhylvoQoj+1dC+zM=;
 b=R8Qh4aDu084rRM90+XbEyHJmpm2ZgGYa0bFtnKwK3T3IdP0ZzswKS/BMvURI1gnIQlEV
 Nn/Gdcy5uPbonxBQen0u40GnUixzVj733EYwHCg2MdhaMXlwckuAglKBHCzYaHTheMh/
 irmIAeAkQtBtPdXWMfPzhJYZ57z7rqc1QhVmN7wfv9olWBNopMSy8YQwIKCWnhf4IyQX
 ccTlsZ36peaHDz8tTDDg/i/tUK60YsNNpsrAPlVQa1wMCQyGkt0yNpNg3lCwIWjIKfEm
 sW67CpAWRPrVqT7czNR17DVl83BLiYnPVZSaoWXCTQ1sfwfBzlIXg75sSjHGamuYMGhd DQ== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2107.outbound.protection.outlook.com [104.47.58.107])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3kavuu0r29-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 20 Oct 2022 17:02:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X4GFwnbhm1575pGza5mLfw8tBMLF8LyXy8K39o7HmubQzezEInSUFH5cpgyEOhZxHjGfsSnKHW0ykYwDSvZnPrexIAthrplzoFQMCX7VVeH9/oGA0snj55qnTDTbHWwXwP145jY+n94Fdftl+vRlLboc/mx57t2FPJSgBOftuiyUmDcKMJvrhbDDOXMCtCJ5YLj3FaIiSEX7i1gppZwZRrBfTm5mQVDHyK4TSysugVz2xO7DpIT0iF1s7dFGiObT7lWRhd5PLLpYxfoeVN5WnMkJALzjzgKLpl0dIffJJYUe3pzAY+vAi6NfmtJQ+eYTz3gRuMS04HLoFRjhfV+VHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IrRbxO248JQ+bTZaeg9Bk5ORNapdhylvoQoj+1dC+zM=;
 b=fK72n2o2Zj9IgmhTYUo+bLVtyK/wccfe00998hcz1C6LuwdZQepZbnEfjyFWLm8sPM/RAiF5Zr0b07KOKAMq2Hp6oWoRsJsho4ekKwm684LJiaf6dIW8m7DWZxbi0HbeQ3OVmzEDIaTr3pubd1GGS3VWnbVwNbc/hevqW1w4u9t1UBnsBzdTYtrkuwA5sjNu+vMfLwLJ9DANxI0D9IpRhNjNL7Ka6lLE9JwX5UakJ3uFZegYW0McY8bfHsnBhYKag4zhbII04j7VuiYoNNqiXNmV/oOtVZNpaLygRJDfYr2M6mk5tb394p03+V6KWv2UORhPRlYxIrM/9IAdSF39bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 MN0PR11MB6279.namprd11.prod.outlook.com (2603:10b6:208:3c1::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.35; Thu, 20 Oct
 2022 17:02:08 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::1ce1:924:d5fb:7438]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::1ce1:924:d5fb:7438%3]) with mapi id 15.20.5723.034; Thu, 20 Oct 2022
 17:02:08 +0000
Content-Type: multipart/alternative;
 boundary="------------g1hD8ozFiIXOSz0O0iPMdFdZ"
Message-ID: <18c73bf8-fbbc-d5dd-a225-8ef17102807c@windriver.com>
Date: Thu, 20 Oct 2022 13:02:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 10/18/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, pavel.zhukov@huawei.com,
        "MacLeod, Randy" <Randy.MacLeod@windriver.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        "Wold, Saul" <saul.wold@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        sakib.sajal@windriver.com, akuster808 <akuster808@gmail.com>,
        ross@burtonini.com, Saul Wold <Saul.Wold@windriver.com>,
        michael.opdenacker@bootlin.com, valery.chernous@gmail.com,
        aryaman.gupta@windriver.com, pavel@zhukoff.net
Content-Language: en-US
X-ClientProxiedBy: YT1PR01CA0127.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2f::6) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|MN0PR11MB6279:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c214e09-444e-45bf-b8f4-08dab2bcd26e
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gX4Rov3ZzZFaUqGvlzy+EO1AfUyQ18d7detxut7sisqzzeIY1iBdUnoMXGCCOrDkmF/lNeqgDxFiPkuhpa5qKiDiKhzo/48knSxeD5Yy8brLt5HArdUBSE3qciqycGTqdLGDjr1bMgPAS8g5dFsUt7uhosyF7/9ah0zkot+wPmN6kh5UG99yP0BuzJJkL/bOiClkMlSWNgJ5XLgh9oWD5AlAUsZfQPbMg0mS35ckO1r4A1pFNE+IpG4cEg2csFGlvoXoN0Qzo5Wd0WSGZRi7RIzRuv3TRIr6E2fsYXrP3dyWH6A7X7Zph/jvuXIYVSpY0wT2WkLLi/OeSRcDsIRElbMBxyjSQypo9dfT1E2+7U5YvxEuYG7ZJeu0PHU1JO6F6ZfpdiyDJutjjZDVaCgQjZOCkIHKIYg9meYtijZ1vCz6+aCie2msIQqtZudAkGdX+TDEV+aAhJxAVDotc0+PqA4qun9jSpjO5Dvsq8kHZj4do73Yto7U9MWNLIKbHhazfbKO4gaOsQKrtD+1SxPLdC0dqE3h86kRSHI8dM4aUjgmeddnUcJx6jdMRZQFaXmlmflL9Wkt4P8M65MjzwIz3n/jQ3BaIX/U57SSJ+A6C5r/NynjcQg6YWecfdbR9neE6MHTF2zjKF+iXKa0w+M2jyZHJGRfctid6/v70TL07/S4bij3IenWVg5zxrlJlaXzmSkGSCF2ZBIkC8nT64fzfas90auK6diZLA/CpFviWIJJPd5xMejP2U9lAxB/dTScQoGNAuzRffcaYrHhA3EXGylKtQ3/Nyxb/Q2nn3R2p057Jmc1aXYkZ2lDniwn7auV
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39850400004)(136003)(376002)(396003)(366004)(346002)(451199015)(86362001)(478600001)(31696002)(66556008)(66946007)(8676002)(66476007)(4326008)(8936002)(6486002)(316002)(41300700001)(966005)(6916009)(54906003)(166002)(38100700002)(186003)(6512007)(2616005)(6666004)(26005)(33964004)(6506007)(31686004)(36756003)(44832011)(5660300002)(7416002)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aVVoZDd1ZDJodWdMTmtKOFVIWitvRVJ6TGZwRFNOUjVHeWZuWW9FZEIyNUdK?=
 =?utf-8?B?cjJGWkJtanFHWWhZT1lEZUFSMDF0Ynp4SVpoWTlyMXhraEZtWnNxV1hLQkJ6?=
 =?utf-8?B?M3FSOCttYmtCRG1TM3N1am5LSVZNWFpyU293cVhXRFZSaXBFK3NGTWg2SjBR?=
 =?utf-8?B?THNHUXNnWStqQ3ViTm9XSDFmQWJZenM5TTNxT0pVZHRzWkVVMldwNjFoZER6?=
 =?utf-8?B?SG0rZktJZ3JTLy82K01OT0NMVDVKVThqMjc5dHZlaXBTditqUW9pbWdja2ZD?=
 =?utf-8?B?UTZXK0xhV1grd21MeDdKTTVQclB5bWJaZVVobkpVa05UK3JTR3p1L290cklJ?=
 =?utf-8?B?b20wNWNLMHJNREY4d0krVFgxeWQrRU9kWS9vTXp4dkdmQnVVc1RQRXgzbjlT?=
 =?utf-8?B?QUQ5VWp0bXpqNmwxNGd0SEgrRWxBS3ZJZDBjZFJiU25nS1JGcUVDdExrUU5K?=
 =?utf-8?B?ZDBWVTJJTUdTTEpYZDZpbXY2ODFJRCt1Z2Z3cE40OGRMaXB4K2RGbjJwbWNs?=
 =?utf-8?B?QkhmSXJuRXBGOEtEejhRWlJzQmlDb3RVV3piVW1SeHZ0ejhsQjlWNVFMM2Vv?=
 =?utf-8?B?Q2Vkc3ljWFZVeS9HSklFZ09TMEpQQjhQUU4vVlYzZUdrMzVmZFVHYkVpTXBw?=
 =?utf-8?B?Q2pjOWRPYTdYY1dIR2Y3dnU5TFhFM3dOVE5iZzZsTS9aZzRldUpEeG9DcDdM?=
 =?utf-8?B?b01YWUJiemZDcTJkVkhFRGV5MHoxalJrQ2I0MDMzMjhMbDZZYndtQ2FBYW02?=
 =?utf-8?B?ajZ4NDRrNHVkeXZWaEJ5YU5pRysyR2lXRjZDMnh0dmNuMHF4Z3hpYkNXOUZs?=
 =?utf-8?B?U3A1c0VoT3Y4QkV5R29xRUpLNjRSemt4MmZIbUQxeTFueFF3MFQwRUhhY0U3?=
 =?utf-8?B?VFFtVXBjYThpMklTNGZOQXhVN0dzQXJMeXl4dWFtRE4vSWc3Z2FRN3VaQ0U2?=
 =?utf-8?B?eUFLVmtYZmttSFNaTGU5bmdnRytKQ1daRmRnWW1EZHluYnNCclhFM3dWVzVZ?=
 =?utf-8?B?NzVRcTROcUtXRXBiVTBMd2JlODZWbkhtUzM5aTR4aFliVnhZWGpISERJcXpZ?=
 =?utf-8?B?OEdvOGhmemNxOHNDSWpQY1lFNnlmeTNkWTNvQ2NLTk5uWENaRnJTOEo4ZFdl?=
 =?utf-8?B?cmxyS2RuRyt2aC9mUlUwYVZ6NGtKWUdKTVVuUkhaTjFmVEZDcytCTG9kcHZ4?=
 =?utf-8?B?S28vdjQ0QjdtWGdYN1VNWm1Eb2lJc24yS09XSnE5N0psZTZDUWdEdDN4M1U4?=
 =?utf-8?B?NDZWeEsxRTc0cXlXMStLNDFZb3ppb1FzU0dDY203SkdmT29hN2NYeGlDRXNl?=
 =?utf-8?B?c3FwUXdpZGFUVmFuVnNLWVBpMDk2REc4Z0MrREU0ZkxhNWt4RjlGbmlOZTMv?=
 =?utf-8?B?d2RpY3dmOFNLR0YzaEU1U2NzbzJUV1dXTjlpTmtiSmlJU3gzN2JvWUFNNVkw?=
 =?utf-8?B?bzAwU0hYTnQ2bm51WTZab3NXS2luWEtOZDNENVFTSURITEx6R3g1cHpXbGho?=
 =?utf-8?B?dGpYNnBPZkNGN0wzN3FTQWoyRmc2MDBnVnRVRFpWa3dSVTM4WVlBQklDQWZw?=
 =?utf-8?B?Y2VwTzlDY0Q0dFByNDdSOEl2SWducmo4TXh1b3JCRjNDd2FCZjF5NWxhR2hn?=
 =?utf-8?B?ckl1MEZ1dGNrRnpCN0dQMGZrYmttWWpDME1KdFc4K20yMyt4TURKWXEzTXpp?=
 =?utf-8?B?RXYyVWJrMGsxYUd3a01ySDdMOXFodWdIUU9RSmtDek10SzVMTjFYS0xxZWZz?=
 =?utf-8?B?bm4xb2NEb3hwd1l0OTF4KzhOYzdvejUxdXhjaEUwcUY0KytyM0lOaWI2OWt0?=
 =?utf-8?B?TysvdTltZ2lvM0lqNDJBRFZIY1VsUXhFTnRac09Cdjkxb0s5YkcxSmowNFdN?=
 =?utf-8?B?VWhXWnlPWGhyZlMwb0twZFB6eW9ZZURaU0Y5V014OHIrYlgxVXdDUWdYNEZP?=
 =?utf-8?B?ek5hSkRpRm5BdTlJb29kZ2VsV2tydmNha0FjU3dvaUpTUDdsUEJES1RHOXQv?=
 =?utf-8?B?NTk2NUY1KzNlZ0xDOFZsN29yWGV0VlhLL0tOb2VJdWNvRlB0KzFrVVpzUm4v?=
 =?utf-8?B?elhaTGQwaEN2OHJYNnBxOGUzK0RxQTUyOFBtVFJkeXZna3U3MGp6SVpRa2c1?=
 =?utf-8?B?cGc2a1VRSlNzOVBaVmttK1VMeVRIMk9uODlFVlFVT1F0RnhGK2Ryc3NYOFoy?=
 =?utf-8?B?cGc9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c214e09-444e-45bf-b8f4-08dab2bcd26e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2022 17:02:08.2445
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6gUUCs+8yOO84d6gNWM4bSCQ+3o7ADWJ7lxv66qdqRZGF9thRQu9IK5ixSTaLvwlH5iB0jvdAhz5uaKjwth8Wo5zJOq77XxklBZDoi/JSUs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6279
X-Proofpoint-ORIG-GUID: kMWZmyBw6uTzDBcNgOw3hXiBcRjjKrFK
X-Proofpoint-GUID: kMWZmyBw6uTzDBcNgOw3hXiBcRjjKrFK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-10-20_08,2022-10-20_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 suspectscore=0 impostorscore=0 mlxlogscore=898 spamscore=0 adultscore=0
 clxscore=1015 mlxscore=0 bulkscore=0 priorityscore=1501 malwarescore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210200101
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 17:02:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58383

--------------g1hD8ozFiIXOSz0O0iPMdFdZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Steve Sakoman, Stephen Jolley, Randy Macleod, Joshua Watt, 
Alexandre Belloni, , Ross Burton, Tim Orling, Alexandre Belloni, Zheng

*ARs:*

N/A*
*

*Notes:
*
*
*

*Medium+ 4.2 Unassigned Enhancements/Bugs: *45 (Last week 27)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 44)

*AB Bugs: 66* (Last week 53)
--------------g1hD8ozFiIXOSz0O0iPMdFdZ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Steve Sakoman, Stephen Jolley, Randy
        Macleod, Joshua Watt, Alexandre Belloni, , Ross Burton, Tim
        Orling, Alexandre Belloni, Zheng<br>
      </p>
      <p><b>ARs:</b></p>
      <p>N/A<b><br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.2 Unassigned Enhancements/Bugs: </b>45 (Last week
        27) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
      week 44)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: 66</b> (Last
      week 53)<br>
    </div>
  </body>
</html>

--------------g1hD8ozFiIXOSz0O0iPMdFdZ--

