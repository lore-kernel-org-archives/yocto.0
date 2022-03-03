Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46DACC433F5
	for <webhook@archiver.kernel.org>; Thu,  3 Mar 2022 16:13:40 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.12527.1646324019079077933
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Mar 2022 08:13:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=qe74XHqc;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=0061e3aae7=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 223EkZnd024641;
	Thu, 3 Mar 2022 16:13:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=pjkJRBaumRa/EC7ShRAdgOZMtrhOsZsw/t7o7tOg0+w=;
 b=qe74XHqcGf6jw1k3c3L7+yzKg5LUKkgdd+mQQr/loJRYEyM93rPykKyv5Tn+STO9/7Eb
 xtgw89Ccyt/HN6OH/A9qk/dpOh26ETgb4ID7S1pCqLDWwQKrHf74b4F5jdfSBZ88Ie+C
 zXiq3IXAWW8SqoyefWZFzv8CW2pFfklG7NpugMNiYysPySAcaZWFlAF0yU6TxsWk+7yg
 DNzGXOCKwdYS+5UiaNBGPBzLptaTXbxpb8WXu0tvfIOw9AQ27FV3qRFXLA8RfL8gkxit
 SbqhjALKQSRO36rxPOnQuaXujARKFG6opLgPtZ3kkIUX92vZ9RicJN8Yo3nHCOh1jlUW Bg==
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2101.outbound.protection.outlook.com [104.47.58.101])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ejx2h8592-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 03 Mar 2022 16:13:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I4NS+tx+eTAtJy3E9sjdJ83n27aw+nVYWHIsfOWfja0CTrP+q+nRON6NG8A1YrlfNjCb6nRYr1O+O6qE2H/X6fouzkh2BDpeme1YGFQiX7JT63JZYIUB4W7EpFu/YigTLFDXq+3XhDLC5p1dR738e1QGtPw/FapZ3Uo3q0gtmxn5O81aMZgqu7Sow3WjFhIjpRg2aCQ9i//jK6wF5njvynaLj/kStfJTZrrizH9piB7Yw/xJmpKCHi0Y4DfC6tupGrMwX4nXl62EuN55C1uJ3KNn2KhPD2s01Hb1IXEXjtH7Wwqv+1JON49M2LknE1I3MXUbgbP2jX5lm3tkMZ4ejw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pjkJRBaumRa/EC7ShRAdgOZMtrhOsZsw/t7o7tOg0+w=;
 b=gILIkWwIacWPw2Gf/9TvV8Mru+lICDXPW6uDfj/IeizbiN81k3iCOiM8HDKaHAGUL2acV3O/VZ90n1HJCxE2H/HXGm6g7szZcOlq55cbzH9srrEcnNle4tCK+ONoAldnpp3QC/jXbt4F33GUpLqPjaQf2QAtbPBPpp0I/rvd8dDpNmoOB3h7yqq9YR8cLxyw9bBs0zgvgMx6B1VL0WosccdlmJ0sZ53DoHfRN3LXRc+7I7jfRdlNwlBMBiV8y7pBw+rusITp+gM4CJF2D4A3YzhO5X7opOnMLw2Oxdy+4Zgs7MYakVK7XGg39yFxYu0dE1CCv3u70KQZCMRq8hTkog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BL0PR11MB2978.namprd11.prod.outlook.com (2603:10b6:208:31::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Thu, 3 Mar
 2022 16:13:15 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::75bf:a544:9ea7:a236]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::75bf:a544:9ea7:a236%3]) with mapi id 15.20.5038.014; Thu, 3 Mar 2022
 16:13:15 +0000
Content-Type: multipart/alternative;
 boundary="------------Q9br36XKnWL6tWY9wiKQwX30"
Message-ID: <ea1c26ba-8dab-e20a-4948-1b58f9f9d9d6@windriver.com>
Date: Thu, 3 Mar 2022 11:13:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 3/3/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
 pavel.zhukov@huawei.com,
        "MacLeod, Randy" <Randy.MacLeod@windriver.com>,
        akuster808 <akuster808@gmail.com>, alexandre.belloni@bootlin.com,
        Steve Sakoman <steve@sakoman.com>, trevor.gamblin@windriver.com,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        trevor.gamblin@windriver.com, tim.orling@konsulko.com,
        daiane.angolini@foundries.io, luca.ceresoli@bootlin.com,
        "Wold, Saul" <saul.wold@windriver.com>
Content-Language: en-US
X-ClientProxiedBy: YQBPR0101CA0094.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:4::27) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0245cac8-2548-4765-8e9e-08d9fd30b87e
X-MS-TrafficTypeDiagnostic: BL0PR11MB2978:EE_
X-Microsoft-Antispam-PRVS: 
	<BL0PR11MB2978580014D368B247F76D459F049@BL0PR11MB2978.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wnf2LOM/K0WL/PmF3cWPM/iAiNFwz1fzIZg7B4PnWghpZinRSozaTlHBGSn5cIU1vkQJBZboAK3ckPNaciOQHJivdGwo4bzdtPNpNPDlG0+cA1FFsHIXL7gL5yCFEHbWigoChOQ6JXAU8AHuD9w1HsOTt8eSQcQVmP3qRA4w8xnElzFwcvWWguUzvhMYFm+W07zU27PBEFioGYVa9dBbpkDF7waPTXPStxGw5fUaBcC+mqubaJkVAummNLDZ9uW0W5O54DEOzD74fOaZol+VtsXn/MZbWqzgoKV2RRyUhdLVP4AMrGCDA97zUwRtdejb/LJ27PnT1LmKyb/V8fbf1qH3DvarhY6SLSk62EmKkjIzvyLr14d9MZQjdQehW6dE5daZYGp9Krobs4EwYTnze0CSVosLruJX0WzigvW7WwaV+un0aS/wDjHXx1QryOdwfNuyAirOKHvW40Kkg0esIrsUAkL7yIlvRMIPh3q/wxqJPySxxdg9RZPTlvUCO5rfzruNRJRlJo1knGpHZZFEljG0lZQTRdtw8nnd0sI+opaSXRyhMl6nibFO5xqsQxWzQeG3AfVK9kZJB2SpB65NP9bhT121usfGNX47TUaVaGdiiuWNYKhc3WWMxY2qHvMeli3bq4AsxCnwk0pnJmRBSroXwmCGZuXpPVIo+CGfIU2YwbGlzbz3OUIbwG0OiImpUG3wuXGI8lDomXC+Ak20wGeTaKNM6p9FuElIPgovdS8W3r76luThiyT+qXJrVT5+4RIvo1q3BzUUG+cNU/bRosesRHA3hvgN4n/Bf5JQ0OXwH/4+ghbaH+4ZhnpaQJLn
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(6666004)(33964004)(6486002)(966005)(36756003)(54906003)(6506007)(6512007)(508600001)(6916009)(8676002)(83380400001)(31686004)(66476007)(66556008)(66946007)(4326008)(5660300002)(31696002)(8936002)(2906002)(86362001)(186003)(44832011)(166002)(107886003)(2616005)(38100700002)(7416002)(316002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?b1RtdVRGaXhwd1RvNk1LQytYSEJwL1daVGlld1BXeE5qZnZiZW9NOHA5TXhJ?=
 =?utf-8?B?STRFeGdKSXk5dVNlL1Q2ekVsR2Z5NW85SUd0T0Qvcm5IVmNyRTc3TVVUTUhB?=
 =?utf-8?B?NG1ocEdGSDlNYm1zMncyeFJqanBLb2h4emdxN2FDdk4wSjJYOVIzZDdGSDBS?=
 =?utf-8?B?Q3ZacWF6VTRjU0pvZDkrSlRDM3BHclJzVWJxeXVuYmswU3Z3Zjdhb2VSeEgz?=
 =?utf-8?B?L0VHU3BwNmk2U3M0aHd5TlA5VGltM2l5M0pxZjBnK2xwWEtyNkZIdW9PcWND?=
 =?utf-8?B?Yjdvc0p3OXdiMVk3QVV5eHdHTzVMYmtuc0dLSGYrclU1ejVSZEpnQktEeElD?=
 =?utf-8?B?YTlIRzZvMXZvSWt4d1c3OXlVaTNVcmJjTkVXTmFpTDYzWUxidHZSaC9GK0NR?=
 =?utf-8?B?cmRCM0hkc0ZpMGFSVEQzZUxCN1ZobllnczZCRFlGNkVER2NsWFplUytqQmF2?=
 =?utf-8?B?aUQwdHdXeHZvYytRYkIyZ1BXUzE3dHVOTGdPaGNmRHNtUXdianZyWGtiZTlC?=
 =?utf-8?B?Mkw0SzlOL3o1MnVoeC9PS29USllpYzJxdmVNQ1RsSjlEdGZSck9CeXl3MmdK?=
 =?utf-8?B?bjV5djhLeHhNbGFOZi9QMm5RakZhS25OZFB5YjFiZnJSczByNTJreldpWVpa?=
 =?utf-8?B?TVgvd3RZWXJnL003c3gwT0txcDF4Rk45T2ZTVnZkN2RQaTY5YW1uK2JWRnJs?=
 =?utf-8?B?VFgyd1Z1R3Z0dHhDQ1Z1TUtCTi9Gc1lmcHptVGthY0kvTmtTdnhIRkZrU0Fp?=
 =?utf-8?B?eXJuRXJWM2J1UGZSL01BNDFscWZDOVpYZlQ5blVrUWNrWlhEWDNiV2NPb3g0?=
 =?utf-8?B?NStsbTdqZG5Zc2loL1YzTWZHZkEvSUZvK3d6bU5IRGIrOSs2NXMwWEJxLzV4?=
 =?utf-8?B?T3M4NDV1aXJZd1dMWVNsNVN4cHVBZis3Ui9NZ2gwYUw5dGtzSjNremFmWVhs?=
 =?utf-8?B?N0hyL0JUejNWelM4UUROQncyZm5oS20zMDhvanNXTzE5YUNKcm1KSTVXdHhx?=
 =?utf-8?B?NFE1bG1UaWhHRGY5ZEZVNUJGR1A4VVNoZEUvcFRCNHprazhaekIzSnY4U2xn?=
 =?utf-8?B?Q3NJcmkvalQrVTZKc21qRU9lSDBiU1pXQlRmUW0vK29OVUE3T21Td3h5RGZS?=
 =?utf-8?B?MllWeU9QalFYRElTUWhSYUFrMGZ2MTJ1QlFhUm5GNGVxK1RmTm15dHFPUUU2?=
 =?utf-8?B?QVBUd1M2Znp5RlV0WXE1ZVRMY3RqZUp3aGxBK2wzZU9JUE5yVm1hcHpRRHlW?=
 =?utf-8?B?UHU5a3lmUnlkVkx1MXpxTkhyZkpPUmZOTVRjQ2NnbUYva1pFTnU2ZjZlcGVX?=
 =?utf-8?B?QTFMQ01EaWlPbzZWaURGVUZEVWdEdEo0Z0JLYkRMWm1yM2M5NFBYWWV4S250?=
 =?utf-8?B?VWpiV3poQkM3TGhIejkvemc3cExmdjFmTitmbnFneEtReXRXWnkvMTdsbWdm?=
 =?utf-8?B?a3pvd05Ua1luVXg2cFFtdUMxRThuOEYzRVFHYVJFb2NUVi9sdXM1dGNrN3lN?=
 =?utf-8?B?TUhkakt6WlQzNXM5ZVFMTHFQOURycHVSOHhCM2FRWThUS0dlT05UQnVGTVQy?=
 =?utf-8?B?ajJ0TG1TYnlJREV1MFZMNXdhTW5NTUtiNjFHcnM3YUc2NGt3L1VYK1RCWE9Z?=
 =?utf-8?B?dlNzcCtRSmEvRkt4cDZVSUlsZm96SXRxNUVJOWlCek1WM0lxNUhEL0EzdmtF?=
 =?utf-8?B?UEhHS2d5TC8rem0wLzdXRzl1L0FmaGhtVFRLVkJSVGFOenpLWjlYYjk0ZWVO?=
 =?utf-8?B?blFJWFQrRkt3NEs0bTZXekNrNitOcm9sU2VGUGE2Slk5U0swU01UZFhwMU55?=
 =?utf-8?B?Q0V6SWRnZnRrbGkxNEdPWHkyMFV0VkR3NmV6K1lNeHRQQmFjRFJMK2tPUXFp?=
 =?utf-8?B?L3JPUGNFN093VXZ5aUthWERJc1pUb041M09VL0hlamJpR25mcjV5MkFURyt5?=
 =?utf-8?B?RThpUzRoT1BqRnJzYnBrS2g1RlNLcFUwUzVRWisrcS9kaHdydnpaanZ5cTJS?=
 =?utf-8?B?M1lqYVMxTVg1T013ZW1xY1VDSVgwQ3RMWnkyVG5STzFWUlpNRE1vTmlOemtt?=
 =?utf-8?B?ZWNzM1YwSUhPTlVrVjlMWDdGQ3B4T1F4b2xsMGhnNHZnQXFEL1FxUi8rVi9z?=
 =?utf-8?B?d3dQamVwdUxwNVB3cDk1U2N3c1lJNWp0aXdQV282U1plN0Q4YmRjYVcvWmZu?=
 =?utf-8?B?NVVqMHA5VGhHa1lyUmdwMjFqUUMvU0pFYjdwYXI1VS9CWDJRbTRIRVF2bFVq?=
 =?utf-8?B?MVhqNllBOHZrQ3FaSmN0OGpCeEcyVUtYWGpkbEJNYWFkTGQ2RlJRM1JiaW9y?=
 =?utf-8?Q?+T1D0LoH/nAr8gP/9V?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 0245cac8-2548-4765-8e9e-08d9fd30b87e
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2022 16:13:14.7382
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 0VF0FnBOWW4aaGlA+UrHw6wq0BKlY/W+6quAJaCryW74j36V4Ys42icGzqTiIIQQKTBaociRhHCko9Kz2/PyOkUBMdxMSF7dYHfETqAuZxM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB2978
X-Proofpoint-ORIG-GUID: kxg891-q-q5nDlVmiNCUo7cHr6vfHc_U
X-Proofpoint-GUID: kxg891-q-q5nDlVmiNCUo7cHr6vfHc_U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-03-03_07,2022-02-26_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=874 phishscore=0
 adultscore=0 priorityscore=1501 bulkscore=0 mlxscore=0 lowpriorityscore=0
 spamscore=0 malwarescore=0 impostorscore=0 suspectscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2201110000
 definitions=main-2203030079
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Mar 2022 16:13:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56356

--------------Q9br36XKnWL6tWY9wiKQwX30
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Alexandre, Armin, Daiane, Joshua, Luca, Pavel, Randy, 
Richard, Saul, Stephen, Steve, Tim, Trevor

*ARs: *

- Randy to talk to David Reyna about triaging his Toaster Future/3.99 
bugs (25)

*Notes:*

- ~43% of AB workers have been switched to SSDs. Failure rate appears 
lower, but still TBD. More coming soon!

*Medium+ 3.5 Unassigned Enhancements/Bugs: *77 (Last week 71)

*Medium+ 3.5 Unassigned Enhancements/Bugs: *6 (new)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *38**(Last week 39)

*AB Bugs: *71 (Last week 75)
--------------Q9br36XKnWL6tWY9wiKQwX30
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Alexandre, Armin, Daiane, Joshua, Luca,
        Pavel, Randy, Richard, Saul, Stephen, Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs: </b><br>
      </p>
      <p>- Randy to talk to David Reyna about triaging his Toaster
        Future/3.99 bugs (25)<br>
      </p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <p>- ~43% of AB workers have been switched to SSDs. Failure rate
      appears lower, but still TBD. More coming soon!<br>
    </p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>77 (Last week
        71)</p>
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>6 (new) </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>38<b> </b>(Last
      week 39)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>71
      (Last week 75)<br>
    </div>
  </body>
</html>

--------------Q9br36XKnWL6tWY9wiKQwX30--

