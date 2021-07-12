Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.10952.1626096888439368260
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jul 2021 06:34:48 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=hPRqffn6;
 spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: prvs=2827191552=trevor.gamblin@windriver.com)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 0BE2238C0529
	for <yocto@yoctoproject.org>; Mon, 12 Jul 2021 13:34:46 +0000 (UTC)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 16CDYXvG008589;
	Mon, 12 Jul 2021 13:34:42 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2101.outbound.protection.outlook.com [104.47.55.101])
	by mx0a-0064b401.pphosted.com with ESMTP id 39r5bq0hdm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 12 Jul 2021 13:34:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CZIx3kR4Tiv8Kamp0esjFAiRvrgh6p+MRq7Zj0WyQbjjVaf99ZERq7U74/UkrFqzp3+v21My0NivRNGTO/CMFKqNTFDSsvk0AQt2XGjb0K+8jlOAl/y2GaxyEuoCdteYCrKxDriWLOc5zbWE6gBmBPifPni1ZH7cjrhTowwxCPJOlS2Ol0p+7fE4QyIzLuRgYidyrs3d/pP2s9maly5GWuwN5Furg8V2FrU/TXgFv+ztJmRy8WiIAm5VocxFJ/HLW+LRzrIsN9c8D8L93BlUdHUz6UeXEToBaaL6dVokTOtiHRKuAf0YmHPtkKpSsBN8s0AjqnzC0aiv3xat99MDdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E8PB/oxM2OehY1OHnlA2L1CIJdoTVLugBFFy6tctzz4=;
 b=Y7iRkstNax+cPC52ervnQg+TIOo0LaRpdeghMhRcfIya/NEgvrCLeUc1WkAPRbR66K9LqR0RM9IDNrcbvwKFUI7ln/yuPN3/585H4Q6m0z87VtRzW6lCy73GRjDoapmFtO4WUYhWgEGwhJ7DP0lQ4RsIYE5Tkn7KfjpWPTKf7dQMnDQt8uoeR42p7EEPNktWS6oRe7hQkNCldyV4WjFSsUN700kZqjX29xWYCplnLJNKES2m4hU8sdbm6uI2nsglYkP5srk44kbsZxOGFOfur7AMAkrH9DE9j7zUCdzx6CKpAYzj1gQn43aaVQ0NoToWsDZzFCk/2X80tnG9hWe/sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E8PB/oxM2OehY1OHnlA2L1CIJdoTVLugBFFy6tctzz4=;
 b=hPRqffn66nCW2C0YvkNwgDfA3rD0dPcSLdLoySRoxq83n22JF6jkTlpPmQ4l4UNNxyfJ0bDcyBvBUUy3p1sS9zHNZbvv8FkSPj5lMnmFwkCHK6BJGnHyvKzDB56Q90MXTXt3zSP/ZKrpnrHHO7dTn+ceWRSalKiLJi3CG+2smBU=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BYAPR11MB3477.namprd11.prod.outlook.com (2603:10b6:a03:7c::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.22; Mon, 12 Jul
 2021 13:34:39 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::8d6:5e1b:3029:341e]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::8d6:5e1b:3029:341e%4]) with mapi id 15.20.4308.027; Mon, 12 Jul 2021
 13:34:39 +0000
Subject: Re: Yocto Autobuilder: Latency Monitor and AB-INT - Meeting notes: July 8, 2021
To: Randy MacLeod <randy.macleod@windriver.com>,
        Sakib Sajal <sakib.sajal@windriver.com>, alexandre.belloni@bootlin.com,
        richard.purdie@linuxfoundation.org,
        "Wold, Saul" <saul.wold@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
        "Tascioglu, Tony" <Tony.Tascioglu@windriver.com>,
        Michael Halstead <mhalstead@linuxfoundation.org>
References: <15248ca8-1257-4ed9-b405-149070fde4a1@windriver.com>
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
Message-ID: <6239506e-f3b2-8b1b-87dc-08ee853a2631@windriver.com>
Date: Mon, 12 Jul 2021 09:34:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <15248ca8-1257-4ed9-b405-149070fde4a1@windriver.com>
X-ClientProxiedBy: BL1PR13CA0387.namprd13.prod.outlook.com
 (2603:10b6:208:2c0::32) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2607:fea8:c29d:d7c0::f245] (2607:fea8:c29d:d7c0::f245) by BL1PR13CA0387.namprd13.prod.outlook.com (2603:10b6:208:2c0::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.10 via Frontend Transport; Mon, 12 Jul 2021 13:34:37 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0e938808-a9a9-45b9-3119-08d94539cbdd
X-MS-TrafficTypeDiagnostic: BYAPR11MB3477:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB347724C7669BF3E21CF704AD9F159@BYAPR11MB3477.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	EV4O0naUaqt7Xs4tFy69vHJ1fR6yNvqrdtSf2/RTVqj6sOxD0C+y6uiqhHPiivr4y65Sv6I1+djA5/QDWd2aiiMEMX7FsPNjhdp/NiiSph883DxGOT9/mgaEI/dxhHSwAlZ8TNnzYC4lelcYEWvvH1aNa3owXeBAtdbyo0tpZ650JC6xMufMMp9qBpi1NIhfl+fy3XddC1Yibf/TNC27FnWkzlla5r1nrn63InMbweKKjvkm8Gm7P/3wr+izw6Vza+nytDzXlKKpu2cIMdTkgL2oJiAhVXB1SqkZDHOQLKKYaH5A9mxjxitUG3WVDXaWduwFionyepJHuAegZiakddUukKafMLJRidt1cwz9TebLblpMKjaN8JFhaWVVMSJo1H65WZtWdaQrHZlgOkv6yvtx2W9fKP5DfM8i5JQZj+PjDAxJakPgDYlJJfqfRh2nD4MLTkQ4h2God2FHpqu2iXAVPvHN7YyXZ/oWNGKCgpGMWhbxVYg7onZ2fXVrDqpwWLeyy5io74OtN0j0jIZLMfEaimXCNQGhLgbXSU4EaNoNocAeWJ539Bg7FxeCdSlWx5DU034doi58XWlBT6p9k+AWyYjPTjBQFdekJ6XBwaFTFcsLb30ynocplRNwmDMRRnm1o06WWvCPcRQotp+b6wbyCuIht+8P/O0tPKtVRwlwhZ6SC1CfXSOy8y6DmjLzsNd7hOqE5Ty7BWN6/JrBuMDHIYhu6Pwvcm8a53LXjja3hsfOvv9G4nVVHYWrDUlYTyBPDa4o8umVriYPkX0VnjXZba9cFaX8hYVLatseRJ4ZPpMn1Snr0LjzTEUGNbtFFg/upZtFeG6RBuzwriiyvSsJ15MjPr9CaTNWTMAHHiQ=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(39850400004)(376002)(136003)(346002)(396003)(36756003)(5660300002)(4326008)(31686004)(44832011)(66556008)(478600001)(2616005)(38100700002)(66946007)(86362001)(6486002)(83380400001)(31696002)(8936002)(316002)(186003)(6636002)(53546011)(66476007)(54906003)(2906002)(8676002)(110136005)(966005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dXkyZ0M5V0dPRFd1LzhLVXlUT24wQ1dza2RFSUxnd2JCWmV3c0k5ZEFPZG92?=
 =?utf-8?B?KzVRbGtFQSsrbldJTldFajN0M0lmTVExM2pRNkdSNWpOSEsvYnNqenNsRWgx?=
 =?utf-8?B?UWVZRHl4TEpaZWdYV1F6bjFTR2xVWXhMYVNpOW5jOU5yQThmZmhtUjNLZXlL?=
 =?utf-8?B?QXhIQXVRZkNKZmsvcmhpUDMvbEVqdmlHZm9Ha2hBaGg1UXRRemgrcVFjYnBW?=
 =?utf-8?B?V2tZaEVlc3pIbThSTG5yMTdtTitUVFkxcFdBdkpwNUhXNjRGamwxRmFmOUxJ?=
 =?utf-8?B?d3V6YUErNTdHaGRYdTNGT1dHODZhamhDcWtWMVdOMVJURDlUaUJ5WlV4UkJQ?=
 =?utf-8?B?SUJ1RGFNM3ZvNkc4ZU5SM3pIdkFrakpSTmVLNjBmOFhsT1VQSk0wak1aTjdu?=
 =?utf-8?B?akl6bG9UdzBaYkFGd0IyNnNUem1mZURJL0xkdEpCQUsyK3ozOFFEWE1GcGt3?=
 =?utf-8?B?UC9leDk1dWhGdE1USVBDUk9TYm1SRlVoNzIzd3l6U0xpZWM0cnBYUkpkNGhw?=
 =?utf-8?B?QWJsdXkxRC9saFRYNVJiUXVRT2VXeWhyM2FBUlUrcFhBcGNiNEZpR3pWRkxl?=
 =?utf-8?B?dUdwNlUvNEJuZFBZdHJiL0FCQU9Ddm9DVjFnTmhkaytvLzZkSDB4Sjh3NjhR?=
 =?utf-8?B?RUxSVkNVSDFnR1NWcnpDY2pSTzlNbFlyTnpBYzM4TEhoR2tPZk1HQXNPRmtj?=
 =?utf-8?B?eHo3b05vZVZjdWdvaHNYQTd3UmFURnkyS1R3eStzZzNSVTk5MGVOSWhBWkMr?=
 =?utf-8?B?VWNmVWZZclVrNjl1QTZZZmhRU2Y3RUFCblZDdkgyWEFvMzZCNGVnc3RqUCt3?=
 =?utf-8?B?TzZqWmo0U2c4czVBVkhJV2ZEdnBaNnlyejI1MFowcWNVV2JrYzJIM0RST2Jr?=
 =?utf-8?B?WkpQQ3drOVVYMXhPczFKKzJXbTVvRDNUa0s4cHlUdCtHcnpyTU1yNG9zajRM?=
 =?utf-8?B?aGFrc3NrQm9nOXB5dmJvOUlqeVg5OTRScEtaSzltVUR3NEsvZkpxS2gvTG43?=
 =?utf-8?B?M3FYZ1pOcmhVTEdBM2x0R0k3Q2NHWjhsbzZGZ2FMS2poa1ZZNVNpQWxoUTFL?=
 =?utf-8?B?VFRhWUpjMi9FZjBMZ0diWkFNU2VJTG9iUEJBNjNKMUx3Y1BOYUVoL3FGbVJ0?=
 =?utf-8?B?c2RwSFV5dlMvc0xUSzFYUVEyekduSzRVVVlxOWg1VkNheFkvdGtVRTJZTldO?=
 =?utf-8?B?TGswaWlqQ2g3QkdYekphMk5teVROVXdTSjJ6S21qdVF6cm1JRHdpNTRKOUpG?=
 =?utf-8?B?SS9ob24wY1MrYUpzWjhvTUdWbTJrNUFuM2VncWx6MVljSFYvYnNIVHRFUVpK?=
 =?utf-8?B?dzZiYU43bk0zUkFoTUFEZzdHZi9mSFVkOUdKZ1FmU2tDR2gyb2pFZFBwT1Zr?=
 =?utf-8?B?UVZjLy8yNUNJRWVhQ3EvR1pqRXF4a21iZGZ6SVVBck9Td0xYTElQNGlvK3pN?=
 =?utf-8?B?NWZOTGtaTEU0N0RCTE01M0IzMUZnQjk3VGRKSHNrV05wNE5tSUp0Z1h3clJw?=
 =?utf-8?B?Z21rZE9xRHVzbzVmYzZqWjRWcEJMdC8rRFFLNWxpUG1jdmtYQVN2dlE4WUtu?=
 =?utf-8?B?NFdsNmJRVndEQVZ2V203b1o4TkJLRkI5azdGUGdBSkQzWjVzY0dBUVc2YnFU?=
 =?utf-8?B?UE5zSnNCRVVkUUppaWYyU2hPajlldzd3YlQ4TmFmWkxySGxVb3kwN2lvSi9y?=
 =?utf-8?B?K2lYenl6cXpFeEY1bHJ5YzN1ZEhyV0dYVUhGVU94N3MzMEtSUkk0ZHdtbEtZ?=
 =?utf-8?B?T3ErdDNnRzZvVkZka0xGVjk3d0FSWkhZQWQ5VmFobEdDR05JbTFVN3FhSjNL?=
 =?utf-8?B?YmR1RXFqK0hBNmR0RWoyQT09?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e938808-a9a9-45b9-3119-08d94539cbdd
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2021 13:34:38.8517
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BEyb4K6702x/s+Qfj1l8Hv3BycKb856yz9d8I3FQXnJm1Av4xk20iM1uMJo15NqDSkG9TnL2Y+Vs5IvTXKq3krSayPeHs+/GNCbO9mdYVmk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3477
X-Proofpoint-ORIG-GUID: 2yxACasdhddwoP1YYRiCu0yAnMgv0lxO
X-Proofpoint-GUID: 2yxACasdhddwoP1YYRiCu0yAnMgv0lxO
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-07-12_08:2021-07-12,2021-07-12 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 spamscore=0
 clxscore=1031 impostorscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 lowpriorityscore=0 mlxlogscore=999 adultscore=0
 phishscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2107120107
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable


On 2021-07-08 9:53 a.m., Randy MacLeod wrote:
>
> YP AB Intermittent failures meeting
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> July 1, 2021, 9 AM ET
> https://windriver.zoom.us/j/3696693975
>
> Attendees:=C2=A0 Tony, Richard, Trevor, Randy
>
>
> Summary:
>
> =3D=3D=3D=3D=3D=3D=3D=3D
>
>
>
> The autobuilder RCU hang is still fixed ;-),
> =C2=A0=C2=A0 master branch builds greener.
>
> ptest failures are the top problem now.
>
>
>
> Add Michael Halstead, see questions below in section 4.
>
>
>
> If anyone wants to help, we could use more eyes on the logs,
>
> particularly the summary logs and understanding iostat #
>
> when the dd test times out.
>
>
>
>
>
> Plans for the week:
>
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
>
>
>
>
> =C2=A0 Richard: glibc upgrade, etc.
>
>
>
> =C2=A0 Alex: ?
>
>
>
> =C2=A0 Sakib: pub/non-release link upgrade, script clean-up.
>
>
>
> =C2=A0 Trevor: make job server test. Try it on YP AB!!! What type of bu=
ild?
>
>
>
> =C2=A0 Tony: fix/work-around valgrind ptest bug:
> =C2=A0=C2=A0=C2=A0=C2=A0 none/tests/amd64/fb_test_amd64
> =C2=A0 Saul: nothing this week for YP.
>
>
>
> =C2=A0 Randy: vacation, then email catch-up!
>
>
>
>
> Meeting Notes:
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
>
> 1, runqemu
>
> Tony having trouble with runqemu on some Wind River machine.
>
> Richard has a fix for a race in runqemu in master-next.
>
> These might be related but if not Tony should debug the
> issue/ collect logs.
>
> 2. job server
>
> - Trevor has conclusive evidence that the 'make' job server is useful.
> =C2=A0 email summary to come. Need to fix some assumptoins in code that
> =C2=A0 parses PARALLEL_MAKE then send patch to yocto-autobuilder-helper=
.
>
> - ninja will have to be done next.

I've submitted an initial patch to yocto@lists.yoctoproject.org. My=20
short notes to go along with it:

MAKE JOBSERVERS, SYSTEM LOADS, AND THE YOCTO AUTOBUILDER

INTRO

- Yocto Autobuilder has been experiencing several issues with nightly=20
builds, some intermittent
- Previous discussions looking for ways to limit CPU/RAM loading (see "=20
[yocto] bitbake controlling memory use" on yocto@lists.yoctoproject.org=20
mailing list)
- Source packages built as part of YP builds rely on various build=20
tools, including Make, Ninja. Can we use them to limit system resource=20
loading, and therefore reduce build failures that occur near/beyond=20
these limits?

MAKE JOBSERVER

- When the "-j" option is provided (e.g. by PARALLEL_MAKE and/or=20
EXTRA_OEMAKE in local.conf), this tells Make to use that many job slots,=20
e.g. PARALLEL_MAKE =3D "-j 10" tells make to use at most 10 job slots=20
during compilation
- When the "-l" or "--max-load" option is provided (also via=20
PARALLEL_MAKE or EXTRA_OEMAKE in local.conf), this tells Make not to=20
start *more than one job* if the system load average (as perceived by=20
Make) exceeds that value. If the system load exceeds the average=20
specified with the "-l" argument and there is already a Make job=20
running, no new ones are started until either the existing jobs finish,=20
or the system load falls below the threshold.
- No limit by default

Sources:
https://www.gnu.org/software/make/manual/make.html#Parallel
http://make.mad-scientist.net/papers/jobserver-implementation/

PROPOSED SOLUTION

- "Just do it" - put a patch in for use with the Autobuilder and see=20
what shakes out
- add 'PARALLEL_MAKE =3D "-j N -l M"' to the yocto-autobuilder-helper=20
config.json default
- Complicated slightly by Ninja not supporting the same "--debug"=20
functionality as Make - this is what has been used to track the system=20
load in the initial testing. To get around this, we can temporarily set=20
EXTRA_OEMAKE. Without "--debug", the "-l" option still works, but there=20
is no output in the do_compile logs to tell us how the actual system=20
load compares to the percentage targeted by the "-l" option

I did not see any issues in my manual testing with PARALLEL_MAKE and=20
EXTRA_OEMAKE set in the same manner. It appears from a recursive grep=20
through the poky repository that PARALLEL_MAKE gets referenced in=20
various places, but it is usually either passed directly to the build=20
tool of choice, or the argument to the "-j" flag is explicitly stripped=20
out for use. An example of the former is meta/classes/meson.bbclass:

...

meson_do_compile() {
 =C2=A0=C2=A0=C2=A0 ninja -v ${PARALLEL_MAKE}
}

...

It's possible that we will run into some edge cases of course, but I=20
haven't seen them in my manual testing. Builds are running now at=20
https://autobuilder.yoctoproject.org/typhoon/#/builders/85/builds/1478 ,=20
so we should have some initial results soon.

- Trevor

>
>
> 3. AB status
>
> =C2=A0generally better but...
>
> =C2=A0ptests are having some recurring problems.
> =C2=A0- parted - only on arm?
> =C2=A0- valgrind - none/tests/amd64/fb_test_amd64
> =C2=A0- gdb test failing again. - Randy!
>
> 4. Richard reported
> =C2=A0=C2=A0 - something really flaky going on with serial ports.
> =C2=A0=C2=A0 - particularly bad on qemuppc but also x86.
> =C2=A0=C2=A0 - related to Saul's QMP data dump?
>
> 5. Sakib needs to send patch to make testimage failures
> =C2=A0=C2=A0 generate summary logs.
>
> 6. Richard says that we may need to redesign the data collection system
> =C2=A0=C2=A0 that Sakib's AB INT tests are based on.
>
>
>
>
>
> Still relevant parts of
> Previous Meeting Notes:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> 1. The qemu RCU hang has been fixed to not deadlock anymore!
>
> It still=C2=A0 hangs at times but this dramatically reduces the
> AB failures.
>
>
>
> 4. bitbake server timeout.
>
> =C2=A0=C2=A0 "Timeout while waiting for a reply from the bitbake server=
 (60s)"
>
> =C2=A0=C2=A0 Randy mentioned that the bitbake server timeouts seen in t=
he
> =C2=A0=C2=A0 Wind River build cluster have gone away after upgrading to
> =C2=A0=C2=A0 a newer version of docker.
>
> =C2=A0=C2=A0 Old: Docker Version: Docker version 18.09.4, build d14af54=
266
> =C2=A0=C2=A0 New: Docker Version: Docker version 20.10.7, build f0df350
>
>
> =C2=A0=C2=A0 Clearly the YP ABs aren't running in docker but what
> =C2=A0=C2=A0 about firmware and kernel tunings.
>
> =C2=A0=C2=A0 Michael,
>
> =C2=A0=C2=A0 Is the BIOS/firmware kept up to date on most nodes?
>
> =C2=A0=C2=A0 It seems that we are running stock kernels which makes sen=
se but
> =C2=A0=C2=A0 given that we don't have concerns about privacy since syst=
em access
> =C2=A0=C2=A0 is controlled and the nodes are being used to test open
> =C2=A0=C2=A0 source software, we might consider optimizing for performa=
nce
> =C2=A0=C2=A0 rather than security.
>
> =C2=A0=C2=A0 Alex pointed at: https://make-linux-fast-again.com/
> =C2=A0=C2=A0 Which just lists a set of kernel boot options:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 noibrs noibpb nopti nospectre_v2 nospect=
re_v1=C2=A0 \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 l1tf=3Doff nospec_store_bypass_disable n=
o_stf_barrier \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mds=3Doff tsx=3Don tsx_async_abort=3Doff=
 mitigations=3Doff
>
> =C2=A0=C2=A0 Can we enable some or all of these on a node to see what t=
he
> =C2=A0=C2=A0 performance difference is?
>
>
> 5. io stalls
>
> =C2=A0=C2=A0 Richard said that it would make sense to write an ftrace u=
tility
> =C2=A0=C2=A0 / script to monitor io latency and we could install it wit=
h sudo
> =C2=A0=C2=A0 Ch^W mentioned ftrace on IRC.
> =C2=A0=C2=A0 Sakib and Randy will work on that but not for a week or tw=
o.
>
> 6. Switch the pub/non-release links from full log to summary.
> =C2=A0=C2=A0 The host data links on:
> =C2=A0=C2=A0=C2=A0=C2=A0 https://autobuilder.yocto.io/pub/non-release/
> =C2=A0=C2=A0 should include links to the summary data. I think we have =
room to
> =C2=A0=C2=A0 include both links like this:
> =C2=A0=C2=A0 0 1 2 3=C2=A0 (Full: 0 1 2 3 )
>
>
>
>
>
> ../Randy
