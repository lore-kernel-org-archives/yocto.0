Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42AE8C433F5
	for <webhook@archiver.kernel.org>; Thu, 27 Jan 2022 16:16:24 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.404.1643300182828505874
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 08:16:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Wjp2Z1Fp;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=80263d5962=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 20RCviNe031284;
	Thu, 27 Jan 2022 16:16:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=7KFPtYm0+J0XjPQ+DmjkTUalaizjOw8Lqlehd39g+mU=;
 b=Wjp2Z1FpiT1DN2udLX50BaKZW21GG7e5Z9vwwJre8/scoLCdUJ2c0tct+pr0g+DQFJT8
 q+mTCuj3nKqNVz86agP+HvFOaWtOzqe+Sb6WrSFvB2x652QWOc62RH3D2ZXp6yuL7LfX
 +QX75TJrbbolTRlMrZseTPj8MFVn4lHPuLbTTN9d524y9BgS06J8BfiDlMCeNbavLMqt
 /h8VFyNeeOLpVUqHWgwj0+/0XXgPNm1HSlLMDzjg0LJTHtoMp2Dl0ACgSAFEFfIzvRVM
 +wL9oU4KGw0QMm+UR4GBr5dH6hZGmMu5WTcYAFGH1zHY2Gv8UazyV70jfjAoctmoZlJI 1A==
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2105.outbound.protection.outlook.com [104.47.55.105])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3du1jes778-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Jan 2022 16:16:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aqB0uxUKvWBJX0U/h4l029Aq/LeFKFFyC4IZhVDGuekchrVLdqB9E0F+5IMSOTLPNHthjXr8BUiZOz7KHFNpolUmCgIryg0mshmsF53CBT2VWZOGAZGO7PNDUjr2nVRE3ctWhFsn5T14hYYAdAwRMOJkRjjISk8MmN4E2oe1VC2qwKhIZwdwhMprzc8o/Wuk2/wChIOCPAap7JzX1OG29K7cz200roCcuhaXttI/9moHRgKnMS++dKMdY7zVCLhkrSnmIDBfLYly/qgYPkFVF0b0vRceYriBDXczCj8g3LdyyH5bXu/U7CMjZYoh1K9aeSu7vSzMdtiu8EDXfpyF5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7KFPtYm0+J0XjPQ+DmjkTUalaizjOw8Lqlehd39g+mU=;
 b=UvsRGpkmFfYhxUooPBDTwIMeksl1QuUjkN572+JvgV5ufp63qiU6HVSLl4a3u1QytqrNXsn10vHzrp9HmCbB+D1QH3IuoR8I0LRjNj6/yNr8itFsT1V56HyZVgML23vaACQyHacOHhrYVNt/mjys0rllJU/c9nJ+vGjCsPYs86SiUBp/cMC07oPrEHWCKb7Silen7I6+77R0nHKedimtWme2u7Wgg5ohJhpTvCsNVUJ3W7NsXCRIktw2eQYRB+yydByBva2borK1RJbgXcLn7VfQWgFTSXBkDxlDam2FLlinzPr0Y1WNkpvOqH5k5P79ocZNlzrRgPTE/jd8dgiQwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by DM5PR11MB1993.namprd11.prod.outlook.com (2603:10b6:3:12::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.18; Thu, 27 Jan
 2022 16:16:11 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::5185:e1ba:237b:8bb1]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::5185:e1ba:237b:8bb1%3]) with mapi id 15.20.4930.017; Thu, 27 Jan 2022
 16:16:11 +0000
Content-Type: multipart/alternative;
 boundary="------------dMiUMSuihRVLkRSWIni4ZMtE"
Message-ID: <01b2c8d9-bfc0-90f2-a635-7a553b88c587@windriver.com>
Date: Thu, 27 Jan 2022 11:16:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 1/27/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy"
 <Randy.MacLeod@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>,
        "Wold, Saul" <saul.wold@windriver.com>,
        Michael Opdenacker <michael.opdenacker@bootlin.com>,
        "akuster@mvista.com" <akuster@mvista.com>,
        alexandre.belloni@bootlin.com, daiane.angolini@foundries.io,
        Ross Burton <ross@burtonini.com>, tim.orling@konsulko.com
Content-Language: en-US
X-ClientProxiedBy: YQXPR0101CA0030.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c00:15::43) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d9437daa-f156-4bce-31e3-08d9e1b0556a
X-MS-TrafficTypeDiagnostic: DM5PR11MB1993:EE_
X-Microsoft-Antispam-PRVS: 
	<DM5PR11MB19939917B116355EE45E77539F219@DM5PR11MB1993.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	bADyJnxeEZVydSDLFiCYnOWIvNX/B9/4JtuK2Tc4FBFpqTprV3z/UWw0BrO453mmoq26fkwoJWVra+X+JtqK/VlQ9nSrPVgKPBHvLlfgbsbjp65kCKpFxDhWcc+eHflgX44e65898pIqYWdDE6iLnR0skff6LzXkK14LOEkHCEESXnebyXvFAuokzhgka22nIqRfduTgu9vCQqB7j7jXrhLlnbBlAx4hrPtOcd7Ai/8jLkuHg6EIK1ZHg134WQ4B80HZdzPlGtBHXC6V/WLZBTRhLZfdSIy7lEV0HEcIiXMQInpTihgHRGh7vFORuk5nuV//zgUzKGUagNlfAL+YyHC3zlrd7eHbUiQdHxa7Dpi+/BwfABZOvqMV9mlmPlcRWQsQQXDT7WWoOxitGz3xXRsuOrHZrNzG9AgqoG+uIrrsjhA803aONKUfuRHj60LT3PiWsV4XWIHnDhQoiAx41RrfubEq/Lx/WicLJX6M6l00gEYed95xYn5D3SNTxIksBN42N01UayiJXbXHBUOIpXnYztp6odNIbH0YJ+68t6wvRaCnfJa0/VW+B2oB3lrzQPpG9lIPiOLrlVhVXhhj13BuCIKeVYfPBixMAmqPlG03Pf1shtRRypZ4B4YmpqgYUBC+38M7qGdjVgYvySKsPR6V30oiIXpzI0bGTObRVX0tpjJaMFHxTGOmqCgUfmM6DlUUwjj9fAoULT9gfHDvrJTLCqYM4jRG2vzjNUzJghw3tYgmRTiVU3K4ayj8SrqUBW6WdBOwktL47b0wKU04V3BQl78sYjgCWIVwiSu9YLU+myG87wN3G6qwdT8znS3C
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(2616005)(38100700002)(186003)(7416002)(36756003)(31686004)(44832011)(5660300002)(2906002)(966005)(6486002)(66476007)(66556008)(66946007)(508600001)(86362001)(8676002)(33964004)(166002)(8936002)(6506007)(4326008)(6512007)(31696002)(6666004)(316002)(6916009)(54906003)(83380400001)(43740500002)(45980500001)(20210929001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Sk1tL2MxTk9CTHBORzNPSWtNb3pqbVFCL0UzcTJBbGlnazIvMU1lVUdhdXZr?=
 =?utf-8?B?Qlh6U2FLZ2ZKS2tCS1lRNWlPck0wSkJlanp2dFBJajY1OTE2TmtDVXRSNDE0?=
 =?utf-8?B?aFJ1R1ppRzVyZG02Rzdqb3hyejc3YVlzcUZuKzJNSW00MmRRcGRRbUUvZGYr?=
 =?utf-8?B?ekJqYlZ0blV0UC9HdW1XS3J3Uk9rTytSbU1FUytPR0R0Q0dKSitTczF5R0x3?=
 =?utf-8?B?T0dPQ2V2L1JyWCs0NzVnMWlFN2hwOHZXOUQ5Zit4d2NNNlYwRE1pK1l6U0tZ?=
 =?utf-8?B?ZjkxTW03WEd3NWVRQzBlVmVyazkwSDk4R2pJeDkwSUxZN2hzWEl5eXZQZUNL?=
 =?utf-8?B?RW9ETmN2bGg5V2p4eFcxWlI2K2V6ZUxLTEdrMkd0MFhsYlJCU2src1dpWjZ2?=
 =?utf-8?B?TVd6VUxTMzkvT2Y5SzZXM2NjV1c5ZTNDUlNhUjZPZVFVZmdEbkZ6OXdKejdB?=
 =?utf-8?B?WG1HU2R6OVpZRE4rd1FGL0dGQ2NVMzFFOVlqNjZMUFc4WGtBY3FFUzFadXUy?=
 =?utf-8?B?VWIybDJrcXV0bFFFczJjdnNSdmdHajVPemJEeVRXWHpyZ1lMeVUzQVFySmNv?=
 =?utf-8?B?Z0c5ejRUWVpDeG0rb3psb055dG5vWDg1U3lQVHJWSWQ1bmE5S3NhVS9ET0xO?=
 =?utf-8?B?NTM5aUdlTDBOVzA4cHJ0dHp3TzByN0U3a2pyWWxUZXRSKytjdEFxeWZFTUZV?=
 =?utf-8?B?REFnMEg4dU9XdjJaaVVyQmk3QjhoWjQ2U0RDaDhxVlEwQTJ0ZS9zS3dTMll1?=
 =?utf-8?B?NXoxaDhoZE93N0FtdWllcXExMkRRbW95TFZFZC9xNFByMkl3WWovaFBuM25k?=
 =?utf-8?B?ODAxVUV6VUdmaHBlNTJ3M1dwVnN0MkZoUG1rVVRCbitTRUlUU0Y0SHkyLzdo?=
 =?utf-8?B?RDRFMnBkaGdNZzZoS1g5YTdqTDVaTVJCMzVSTTJid0RSVG1vM2xtbjBhbVBD?=
 =?utf-8?B?R0o1eWs0aElWTmRvanlpdDF4eXFjNm9zWmhRTVF0Tlpnc1JZOUFkTWN0bGhV?=
 =?utf-8?B?b0h2WFRINVdyRWRiTWVaZGNyQTBZVCtFeGRtSVd5ejF0QThpZGN6WnM1V2Z2?=
 =?utf-8?B?WGdZdDR5dElaU3EzUW1lcitMUTMvSmtkaGNFdWlHS3B6bzVtYkx6SitjT2Y3?=
 =?utf-8?B?NHk0Yy93MXNlcnp0WlE5bndrOXd0YnZqKytmWDJaYUdHWVMySVc5aWQ5N1Bh?=
 =?utf-8?B?QVp4MXpLN2szTFdEWE9xSEFkM3lTdFMyUjc2ZTJFNVJSOVlsbG5EdGQxazNP?=
 =?utf-8?B?UVNFMFlvbStVcGVpbGJIV0t3YmFtc04yaHo1dHdGNVpRTGFsOEMxbERNajBY?=
 =?utf-8?B?R1hDek9lNFQyMmZOSHdTR0JESm5RQUE1bjNqRGxkNytPNlF1K3UwNFkvMUpX?=
 =?utf-8?B?R0pzMlJYMTl3UnNzRnBvQ21DVE9YMDdoNWVhMkxoWlFJYll5bFU1L3pZNnM3?=
 =?utf-8?B?ZnBTdjZ6RUNyc1IrenVYRHlnWGF6UHBDQzhmelJBeHprTVNlek5vaTJZS2Nm?=
 =?utf-8?B?cG9od3NRY2dQMThrTHh5VG5STHI5RHBOclVnTDlrZEQ4Y0hvNmt5eXUvMGZW?=
 =?utf-8?B?UEFuT0RXSUY4SzlkRktYMWtmblZLMWZUSU1ZaTVXQ0g5NEJ4ZWNyTEFrMVNI?=
 =?utf-8?B?dGt5OHZlTEw5dmg2L0ZESnh5NUIyNEN5T2JaZmpxZlNIZk8zYjNJNDlnWmxL?=
 =?utf-8?B?d0xveFo1SmhGamdpVGpOOWVOaWdXeVUrS0RyeldIVE56TnRZR2tLbFBVUFNy?=
 =?utf-8?B?ZXFCdGFWUUhVdllHcm51K1VVMVc3WkVIVm5kY2dWYmIveWpXZGtQRUdnZzBw?=
 =?utf-8?B?ZC9VTEJFMWJFcTRjS0pXQTd0NnRuREpyNElBckJHZXlDSVQvYWJPeUxWYzh3?=
 =?utf-8?B?c29lSTFscHAya1VkdFhCS3BxeU9JZGRlRzNXbEFSWFl3ZDlEOUlibW1QMEx1?=
 =?utf-8?B?RkdSZTBvZ0NXRCtQak0vdDh6bFU2anpLNXpGRGdDOWlna1drRCtmRXVRSDdu?=
 =?utf-8?B?YXYwRkVxRlBUY29Fd0xnRlhVb3pReDdldXN0NnJSTG10SjB3d1Qwc0RnbWZK?=
 =?utf-8?B?L3JUaHdCSHgzaXBFakhIamUvVFpDdG9tUDM3aER2NElSOXRSeXRZVjJxUnNC?=
 =?utf-8?B?TFdtYXdBbHd3OUg2bXlxS25iYnl1OTNEKzZ0N2ZyYlhJbWRKdTg1U2ZCVGN0?=
 =?utf-8?B?ZnZMNldVY1FVNzVKSGpFbktkM29DNU4vRSs2ekVCVXF2Y2lhcjl1L0gxQ3ZQ?=
 =?utf-8?B?eWVhS1NpSHhjZ0s0aDBzNXlwSXNSdndtZmMwYWs2QjVzcElKL1FyU1R0VENl?=
 =?utf-8?Q?/MeoKvCc0LWig+7r20?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 d9437daa-f156-4bce-31e3-08d9e1b0556a
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2022 16:16:11.5964
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 QfuNShhIAkzl0nSIeQi3nuz5oW57xXlIqOOEKUHGjUNLkUiCJwSfhiUOeikq9HG4sdGAFKg7CCp9rt3iWsFIr34JE+fc25indk7II37cyf0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1993
X-Proofpoint-GUID: X9Hi7pytZ4s8qvsytE-i1-Pbh20NHmBv
X-Proofpoint-ORIG-GUID: X9Hi7pytZ4s8qvsytE-i1-Pbh20NHmBv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-27_03,2022-01-27_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 clxscore=1011
 impostorscore=0 malwarescore=0 spamscore=0 phishscore=0 adultscore=0
 mlxlogscore=613 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2201110000 definitions=main-2201270099
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jan 2022 16:16:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55998

--------------dMiUMSuihRVLkRSWIni4ZMtE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Alexandre, Armin, Daiane, Michael, Randy, Richard, Ross, 
Saul, Stephen, Steve, Tim, Trevor

*ARs:*

- Randy to take a look AB-INT defects for M2s and update them to M3

- Everyone to review open bugs and move Old Milestone (M2) bugs to M3 or 
later

*Notes:*

- ~50% of AB workers have been switched to SSDs. Failure rate appears 
lower, but still TBD

*Medium+ 3.5 Unassigned Enhancements/Bugs: *76 (Last week 80)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *39**(Last week 38)

*AB Bugs: *76 (Last week 76)
--------------dMiUMSuihRVLkRSWIni4ZMtE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Alexandre, Armin, Daiane, Michael, Randy,
        Richard, Ross, Saul, Stephen, Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs:</b></p>
      <p>- Randy to take a look AB-INT defects for M2s and update them
        to M3</p>
      <p>- Everyone to review open bugs and move Old Milestone (M2) bugs
        to M3 or later</p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <p>- ~50% of AB workers have been switched to SSDs. Failure rate
      appears lower, but still TBD<br>
    </p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>76 (Last week
        80)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>39<b> </b>(Last
      week 38)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>76
      (Last week 76)<br>
    </div>
  </body>
</html>
--------------dMiUMSuihRVLkRSWIni4ZMtE--

