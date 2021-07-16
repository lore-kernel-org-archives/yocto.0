Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.8423.1626450887978507382
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Jul 2021 08:54:50 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=MhNODeJq;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2831df9c98=randy.macleod@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 16GFmZ2x032530;
	Fri, 16 Jul 2021 08:54:46 -0700
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2109.outbound.protection.outlook.com [104.47.58.109])
	by mx0a-0064b401.pphosted.com with ESMTP id 39tw2grm88-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 16 Jul 2021 08:54:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z50ZuHIR+7XlkSWmqAaYxcDua73+9wLmBxP0tXMUJkmkFv+EVLtV7NRAFhu2f76Q8ktucgLylrINcsDfwrA5KJWPBYwTKHgSfrOdIuxWT5gF1twNj+l1LL0CdAPnFfptKLpFghRW7TtzWl+ZyLil70SRFJ6Qffi1INYktXcE3q39JErzBHyDBWDjaaEaEJJxIzDW1zct728fb6EM29/CVKrHRDtdhIStvXsFV0MHN0rpZWRK0xKcMzfZ5Bnz3KvxzsF6P6TUcuqWAmXWav7zRnnRgAtQlu60yxUELuR/cY2kq7VgAZUYN0znNxK4uawkIpDzHrQRxhdO90k4DZ0y2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OGEmdinW5TKX8EGW9F0McJuv3/N4oGUROxXzPqxxWpE=;
 b=a4uYjtS421chHhdc5MY/DS/pWxiWOeyrPllkA6lLlLeDpInvmBpmNcQoQWFPXIW+GW5Kzv7Jx9KHdEen3WQOH4GZX5EYKt8gM5e2dG9/PoNzP4lkFo34EdKgLC5UJn+xrlkvFw68J/ULE/j6Jr4wZvXu4B3JMABBtWfqM0YnkQt7nHIaR6rq7klz/+5g0Prbj6O0tGbYbehJdiLy5CWBY7w3VjAIFK2RopYR10ei6VX0cwphQFCDrCxJ0rMU4sN0J2dXMce7EomLgYY4V2gy7oYx65RBOVA3DdPiPngrh3tsQCDDZTYU9p5b72CT1Vu3kkE4KN7v+ZET1U8Wb4x52g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OGEmdinW5TKX8EGW9F0McJuv3/N4oGUROxXzPqxxWpE=;
 b=MhNODeJquxop5msWFIiuJZN/1YZSE17dDuoCkh3tn8AiS+a/L2otVATOHsuILsxhjG1/SXzao3H7SH/a78lo5LsbgMUmmtppwjOH/Q43oN8uY+3fe16dK6mToSNVt/cFbsQKTexBZETvLKx9SEHmUAr9ow/dPoTnFFsyfqtUNyI=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB4739.namprd11.prod.outlook.com (2603:10b6:5:2a0::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.22; Fri, 16 Jul
 2021 15:54:44 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579%6]) with mapi id 15.20.4331.024; Fri, 16 Jul 2021
 15:54:44 +0000
From: "Randy MacLeod" <randy.macleod@windriver.com>
Subject: Re: [yocto] Trying to get Kivy running on imx8 platform #yocto #linux #imx8
To: whuang8933@gmail.com, yocto@lists.yoctoproject.org
References: <h4KM.1626399692778244438.noMQ@lists.yoctoproject.org>
Message-ID: <566b5370-5850-479a-4916-9c4fcfc8e0c7@windriver.com>
Date: Fri, 16 Jul 2021 11:54:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <h4KM.1626399692778244438.noMQ@lists.yoctoproject.org>
X-ClientProxiedBy: BYAPR21CA0004.namprd21.prod.outlook.com
 (2603:10b6:a03:114::14) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BYAPR21CA0004.namprd21.prod.outlook.com (2603:10b6:a03:114::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.7 via Frontend Transport; Fri, 16 Jul 2021 15:54:43 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cbc11bc9-576e-43d5-c5d9-08d94872077b
X-MS-TrafficTypeDiagnostic: DM6PR11MB4739:
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB4739BCB48D9BF9E43D5992E8F8119@DM6PR11MB4739.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+4p10hdrZ1wPody2le2qNUo98qOxGaQUcKWUZUGPP41UoGIuF+2GgUnBf2nsglwnLdXEhn0kT23AkMv1K/b/EBw2PbnPEqquYlvWCrA6suRazpiwQjX/xr1Kskgwl5B7DaR5Zu5xo0ikS2z/4Ss9+F9zDgXR86J90+5kHEykyzwQ4PdWjycElbQaNlyfkn3d5Be/2ujgtjSYYhLtiZi697XZzzf13i5sauPNjhnn3jDmEKfmWFy1fcOOaVre30V+vVqM2C4XNN0vmqc6EqR2i8xwdUR33rjWtcraOeWbm1kmN3ql04Vi++CpK0TFBGr1+d7hcHysfMy2XYMjDlWUTe4j6Vy4Bkua1kncnwrxlshN3dyLde0vjHlgnAftH75b522ss2yQHUdWmwh425Wp318YjxWLJiodJHLs2IRXat52nkcTZwAY0Vkes/AoS2Bgoz9aZz8DlyUZily/AdZsMtCFCG+F+6gPtuxMhTFWlXvNsTKubyb1cvyGazdu9ylguQXG6euWEx5Pk9/TYpn8InQn8WmLaPa1u1uoLtaDkzzsY3p/RvSQ9BRiHBV/N3+yjoqoxUd/yUNtLxO9flMQEELdGKcP447NomAbAf4XodVsVf36MQesNru3GtvxD1P9r7rpuW0ggyCoWLfBpGqGN7H2GVDMHYQMlNwmcbFrHewXAO2RF72LHwCrETZs4IYEOm0RpWwSLlO4/i4RkrVb73iAetfGx0S85vmiYW8BQg/LMfI5umRnUmEZ6Kr5EnWVgE5E0P56w+X1uv4HF+QyzO74V/Ar4OhF2HYVA3qxgxhrQarYAdFnCSukttek9vOwJNk6DVrnz1mB1eE0hgzEBTTVoUlbDyUbU/TJ8nsOSihEMdTWVAMP/1bIqEbh4Fw28P8ucZksOCTm7z6LkD7XAQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(136003)(346002)(396003)(366004)(39850400004)(53546011)(956004)(26005)(86362001)(5660300002)(478600001)(52116002)(38100700002)(38350700002)(31696002)(186003)(6666004)(83380400001)(966005)(8676002)(66946007)(6486002)(31686004)(316002)(66556008)(8936002)(66476007)(2616005)(16576012)(36756003)(2906002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?K2pEYjdLbFlhT2diTFZoMk9lVlhEKzdSS05IVnhKckV0YnpkczRVZERKWEUr?=
 =?utf-8?B?R1ZubldhZVMwQzFhb21kTWZBT1BEMlB2UGIrSkEvWjUyQWQzdHpIZkJmYWNW?=
 =?utf-8?B?aXNDUFR1eVgyYkJwV3dBWE5MU0hEcEl3Vk5FOGlreEtpZ3UrekkwdWNLa0xn?=
 =?utf-8?B?c20vcXR3UEdLS2cwOEw5a2ZtZEo0Nk5ranB4ZUowWnR2OUdURk5jZEcxK2Nu?=
 =?utf-8?B?eUsyTjA3Zy82ZXNiU3MwYkY5NXdWTUJxaUlYenlHMjlWcWxJUlJ6dVNTbUFl?=
 =?utf-8?B?RWlMd2ZLc2ZwSGZ4WTZzWWpQaW4xU2VGOXFHZk5BT2Z3WEcvcVpFVm15UnRY?=
 =?utf-8?B?MnZQclhXak93UU1mYXF4d3hNcW9JUXQ3UEJVakR6Q2Z6Y3NIMys2UUhoSmg0?=
 =?utf-8?B?QlpLOXI1U0VlMmRRRC9OM3Q3ZHVEWjVBMFJwYXVUcVB4TTVOQy8zUnFMcCs1?=
 =?utf-8?B?aXlleWZKbWg1djNlUVZMNGFjT1Y4REIvSVhOWDJOTngwTmV0ajdsSFE0bmdj?=
 =?utf-8?B?bjBqS2ZlSlhMZmsxdXRTOVVzMmlzR1BuSnRzSU9VNy82bWtJVmlTM0JmN1hl?=
 =?utf-8?B?enZIUFJNQ2phek83OVdjTittaS9HaEFDRVFJZ2pERjN4UXdnY0E5MS9rdjZK?=
 =?utf-8?B?a2hoUWliTkJ1NHpuZDRjRGx4QU1UcitFSWtaT1dNSEhLd21pYVVIMGZNSWJn?=
 =?utf-8?B?anBPa2JFTGNZWHNnS2dLMVZzaVF0N2VScmY3NUFqc2VtQUgzalQ4YWhkUUFR?=
 =?utf-8?B?c0g3RDJ3MGUyZ2JiR1QvWnY2Y2I4MFNmc201NU40cmNrU0ZDR0kzSlJwTVJj?=
 =?utf-8?B?dGZHOGZoMmh5bEV2L2NqTG00RjlnZGhKR1lVWHRKeVhaUDd6UlRkb0RXTWVn?=
 =?utf-8?B?RVhhYjFsS29lUHBqaEUyWEtLdGVRaUFteGIvTzJjQklNNnc4MFJDN21NbHZQ?=
 =?utf-8?B?MngvNk43WDdyaytSNzlFT2Q4OExZQ1pTVXdseHpqTXpDcWU0bEpkSTMydWQx?=
 =?utf-8?B?TG5XUFRodmZxUDNNY0U0MjZVazhIUmVYdVFXVXMrWFpBMXRPb2FwZ1VaU1E5?=
 =?utf-8?B?em51c2pjRGdSZ1dMazM0YzdtZXRzc0M3TEpiZVhUbXZpemZlcDhScmpJc0ll?=
 =?utf-8?B?SHhVdGhEeTA5N1VSc25qTkdVamJlTjhwTVVIbDlVd01wcDZ6b1pkb2ozTnJs?=
 =?utf-8?B?Qk1YOUdUY1hrNzlXUWRrUzNua1hOOTFCRmdLaWw3dWp1UDcxblVTNExTaXdL?=
 =?utf-8?B?U2Zrb2g3ZjB2VXJVd2l5dW94LzBhTTQwYTNaUi95UFZzVktaYS8rNSsrc2o4?=
 =?utf-8?B?M1BNUmZwR0tSWHdsaTFYek9pUXpsU2tuUUJxeXpvQmdsSDBGcFJmTW4xMkw5?=
 =?utf-8?B?L3l0YjYyQVZ5N0piNExYajZIZ0N0VUFnWlZEOWRkd3ZySlNJeFlXMG05UXd5?=
 =?utf-8?B?S2YvMTlRQXBxaEFPYy81YWRuQ2E4aDVXd1hpVHhqVUc5VDltUGJtWDJBVzJO?=
 =?utf-8?B?dDZWR1ltcHRXaFkycFAwMmVQWFE4ME13b3RlTlJZRElWTUZhbENvNU9Lc2dh?=
 =?utf-8?B?S1FHVzBtaldFMVJ5Nm1wVEw2NmlBTmtCY09RRlVCaW9DcnRCb2c3cnlueXI4?=
 =?utf-8?B?MGlKbXB4c1k5VWZWZm84aVUxYnJNY2k4Vk9QTENXWDR4TStDQnQrSWZlOVpw?=
 =?utf-8?B?b2xKTTdHRVA1N1NBMFJMb2FFMGJ0R3V4WnRjTFdPZ0ZFK1R2V2o5U0RCZEtP?=
 =?utf-8?Q?f02duw2UMzrImJvmQKO395sJpTmOQ7J9gdCkpO/?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbc11bc9-576e-43d5-c5d9-08d94872077b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2021 15:54:44.0788
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1t6EXO80sfdpS2xFfI4OlHyHoqADI1C5UObIgUsxZwtjLRBC4etwH+zY0ysZeqcSZkEnqCeqVTU8764vKgjlqin1iBE0u8fyfP6MRJFa8zw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4739
X-Proofpoint-ORIG-GUID: 2wQOU2KyGM5-zwmu_wparfX2kqZ7u1w2
X-Proofpoint-GUID: 2wQOU2KyGM5-zwmu_wparfX2kqZ7u1w2
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-07-16_06:2021-07-16,2021-07-16 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 adultscore=0 mlxlogscore=999 suspectscore=0 bulkscore=0
 phishscore=0 spamscore=0 mlxscore=0 malwarescore=0 clxscore=1011
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2107160097
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 16GFmZ2x032530
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

Hi William,

On 2021-07-15 9:41 p.m., whuang8933@gmail.com wrote:
> Hi community!
> I would like to get Kivy recipe going for this project as I think it=20

For anyone else wondering what kivy is:
  Kivy - Open source Python library for rapid development of applications
  that make use of innovative user interfaces, such as multi-touch apps.
https://kivy.org/#home

> would be great to add an extra GUI framework to the project; however,=20
> I'm running into an issue that I've been stuck on for a couple days now.
> I initially got it running on a rockchip (but it keeps falling back on=
=20
> LLVM pipe for some reason), and would like to do the same on an imx8mp=
=20
> platform. Unfortunately, I get a segmentation fault when getting Kivy to=
=
=20
> run on the imx8 and I couldn't find any help with Kivy's support group.=
=20
> I was hoping the community can lend me an extra hand/give me an extra=20
> set of eyes as I'm currently stumped.
>=20
> Things I have tried so far:
> o.=C2=A0 =C2=A0 =C2=A0 played around Kivy's USE_X11 & USE_WAYLAND switch=
es
> o.=C2=A0 =C2=A0 =C2=A0 Originally it was using Python 3.8.10. The Kivy I=
 got going on=20
> rockchip was on Python 3.8.2, so I downgraded to that version.
> o.=C2=A0 =C2=A0 =C2=A0 Tried using different weston versions (weston_9.0=
.0.imx and=20
> weston_8.0.0.imx)
> o.=C2=A0 =C2=A0 =C2=A0 The stacktrace mentioned missing pthread_mutex_lo=
ck file..=20
> thought it was pthreads related so I added glibc and libgcc to the image=
=
=20
> install
> o.=C2=A0 =C2=A0 =C2=A0 Some googling showed that others use KIVY_GL_BACK=
END=3Dgl, but=20
> this did not work.
>=20
> I've attached the recipe I've written up so far and related patch files.=
=
=20
> (Kivy's current setup.py=20
> <https://urldefense.com/v3/__http://setup.py__;!!AjveYdw8EvQ!Kd4lPl_lXtJ=
_MWzMo3dmsN8miHiYrX4Fe0ldI5FxXKMlAxs7HnLkx-jBi5uWIlllQsDgZQ$>=20
> doesn't seem to look for GLESv2 libraries for non-android/ios/rpi=20
> platforms), a recipe that installs Kivy examples, and attached my=20
> stacktrace for extra information.
>=20
> Any help would be very much appreciated!

I don't  have time to help but you might get more feedback if you
post your recipes as an RFC to:
   openembedded-devel@lists.openembedded.org
with a meta-python prefix as mentioned in:
   http://git.openembedded.org/meta-openembedded/tree/meta-python/README

Also kivy was mentioned a few times previously:
=20
https://lists.yoctoproject.org/g/yocto/search?p=3Dcreated%2C0%2C%2C1%2C1%2=
C2699%2C0&q=3Dkivy

Good luck,
../Randy

> Thanks,
> William Huang
>=20
> PS: It's my first time posting to a mailing list. Is it proper to send=
=20
> source code as attachments or just copy and paste into message body?=20
> Anyways, I've attached the files for now.
>=20
>=20
>=20
>=20


--=20
# Randy MacLeod
# Wind River Linux
