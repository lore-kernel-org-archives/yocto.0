Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.11941.1628707559250334736
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Aug 2021 11:45:59 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=ndg/oqdo;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=3857057f33=randy.macleod@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17BIjmLF025238;
	Wed, 11 Aug 2021 11:45:57 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=subject : to : cc
 : references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=BnG4Qzx9Lhv6XGke7ae3q/SQhDl5Ux03Thm1Wcn0QJM=;
 b=ndg/oqdoQCN6auPYDMEbQP61xfLfbY1G9cyUTc8h//InzhsDu7fCaOP2+S1cgmpgh8QK
 DbTBpFjYicN0XcOZvfJXTjX6shf082pm/wARdp+Ja0mvycVNdiUnrt0hqdHK9zXbd1G0
 7dZeq3wGmDTiMilYuYg0pxhZYMXIyrvx5Ee/qNCN4yFU5dS+hiC1sQQiADLz5NZfPAnp
 WjaJ33NympARoZ8Rhl4ZoMp/hgyON6pA6xNYz4ZVhxi0PdGOaqKi5qa2GlmjFYhUgUW7
 2PnmwCZNNZdpXCzJP5RUibqyCBEdO3lnsuTGfmEDWMKnPEliE8QbceMFrok1t6L0cKKJ zw== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2101.outbound.protection.outlook.com [104.47.58.101])
	by mx0a-0064b401.pphosted.com with ESMTP id 3acanf8dnf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Aug 2021 11:45:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ErX1H35XpXd6rjCJEmrdFk7i9aS5RdS7ZLwRKa6t6jKSY/zZyb1n3h8VJtquBtT7gNyoHXRPuSVjycM97kiGqULh7SBNksHyT7oAmO0R3upCIA3hVt1rIcbWLfq80zZza92Kv4e9sH4Nl4WVzH1uPg2vWFz4Bc9c+KuF9SIf2DQiNxgVgyXa+4rhH/jrWj5ZuD7EWWoBhfTmHPjIAFSgs6733Hy0zoZeFJyRx2Oi3ASMcc96AWweDTaiUDF+ZR+IcfDKZxVppS4Xmu/v1Z/AypHMtlTmPMgi6tHjf8Alc5lxHwssoy8hhc52HKJWvUBn7x00ro3G6dwdPj85190COQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BnG4Qzx9Lhv6XGke7ae3q/SQhDl5Ux03Thm1Wcn0QJM=;
 b=QjZZBtWT/BcUu0UXpXtudKz0WDx+d0qtWgXmzrptKt8tMvC674cK0myAO+jg1V5KFAwdp6CS7IHT7tMujMFgvhmT0e6U/PnwuilRbDk6MGSzLD87Rt4JevLZ4rnuqV6dRtZUqcs3fAJ3TFxTQYRTPGplRiWJ176qHYCBTbVpXgKe+EH3+Zkp+X3iEVCFcz8zqSvOFWyhHpqcKn9G8ccZhZQZVE8AYLu5HC1ISjwU/vBn8VraGpi6VPaBtu3yxgrdmmkzH8duSxMf88oD1gzx35TQk1a9Bk1aCzwt5/cg1hIytkdtYLRKgFPnH42rDIdSi0wJdmcykbj2C9hj4XGTMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR11MB2009.namprd11.prod.outlook.com (2603:10b6:3:15::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.14; Wed, 11 Aug
 2021 18:45:54 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::e119:f175:fff0:b3b4]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::e119:f175:fff0:b3b4%6]) with mapi id 15.20.4394.023; Wed, 11 Aug 2021
 18:45:54 +0000
Subject: Re: [yocto] Hardknott support level
To: Alexander Kanavin <alex.kanavin@gmail.com>,
        Fernando Luiz Cola <ferlzc@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <88yg.1627998001124789934.9VL8@lists.yoctoproject.org>
 <CANNYZj-YFwTVNA+Pbs9Uy71iBgZ+zZp=YWOcd2fde3aahAKOOA@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <11386154-88fe-ddf9-c54f-b23c2bfd0f1a@windriver.com>
Date: Wed, 11 Aug 2021 14:45:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <CANNYZj-YFwTVNA+Pbs9Uy71iBgZ+zZp=YWOcd2fde3aahAKOOA@mail.gmail.com>
X-ClientProxiedBy: BYAPR07CA0087.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::28) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BYAPR07CA0087.namprd07.prod.outlook.com (2603:10b6:a03:12b::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.14 via Frontend Transport; Wed, 11 Aug 2021 18:45:53 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2df0730c-8138-4e02-97db-08d95cf83fab
X-MS-TrafficTypeDiagnostic: DM5PR11MB2009:
X-Microsoft-Antispam-PRVS: 
	<DM5PR11MB20096B350C9C7284FCA0D01EF8F89@DM5PR11MB2009.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	jh4SMCHl75H+EVyCEDVXpxOyZTD5EL9dmZX4Ly15j6SiS0H2HCeUR9/0uVy7I95/0P11XLJYm5O78Q22DO3C56gn6kYDXLmhnWgtOtluyzrLbQdmO7nYSSr8aWRGrUkBEz24oxn5KtVjMvWOWC7BWYe2lk0tr1ULD2byJrYMsSdJjYWbDMPG02PM3xSzadWlKxOwHfKoa2xKskALSVjAfp1DMqQT10Z0u6ww5FTA5Yd9ir662vYdSyGq5fuOQCZMvVWB33V/AJ2DmG0OfLChjUl8cdUhrBHO9hKMwok6dq/+HTlnpd1A3WZRXya9IeYPIR23NxnvcfNWgyLQbcSkd/Ct8fl4zcZGFgtKuyKpRm9x1RbYVkvT1BmtneQcWY7P9sjj0ZnZ+8NYoVcdzjrSuFvzx3Gde1/GFdtgYl9FcBmx03wDgeKHSrjjT+GEqO3IZDFPcAruBOVgIrml1+ZUCM8qfuPbDsXcHrwr/ydH788EjpPbEeF5CPceeMWhQzhE26reyhsqoxZ+rtnIu1slCJPvsgcjrqhY6EnlOZekHD7xADUQ5ZydHlCRuPq6KjsJvly5rcNkdy6B2eBpA2sEVqyW7H1rrxvYcWrzgLyDtApkiAaMGkMGs9Up8jRHefijWDX31b7nxIqPGOy3O57+KOv/mtX6ETyKblnaCqk5Z+CHIS4BDC87rOcCXEkH0FJb/8dBW/InuQRbSQqO62FUnQ7R0lniKEhLPHggmn+RegNooFiVqy2laEv7n+ph7PR48cH8zb9kPZOPAjKkiaQ8mwU0gZHJkgW52Xk5cYE75Qgc91HbLr4qeiXUiAjRCiux5FiHUUStwX3Z9zgs44WXmF2Iz0RgdWb1FKV1zuaM8OBlEe+MSuhkHv5tvAbpj4BTsZ6DRNLrGNkeqy9+JjMv9Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(39850400004)(136003)(366004)(396003)(110136005)(66476007)(52116002)(186003)(66556008)(966005)(16576012)(83380400001)(36756003)(316002)(2616005)(31686004)(956004)(8676002)(66946007)(6486002)(8936002)(38100700002)(86362001)(38350700002)(2906002)(4326008)(53546011)(478600001)(31696002)(26005)(5660300002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RkorL1pIYnRick1lWnYvYnBkcUVPQU9ZeldHSmNBSnZOb1pPMG9aSzFrMVdi?=
 =?utf-8?B?STdiNk52akZld2g2U2NzYVd4cVlNd2Q1RmxKWXlsMURHMmU4NGVzK05TUDUv?=
 =?utf-8?B?WFRmai85MGMrVFhQbkFpUzJ6dlZDQ28yOVJ5WHhOcVZTNHl4ZTR3WldCYlNi?=
 =?utf-8?B?L3JvVXN5SnphdlV5MTlXdDlrclJKc3RoSVV2eGFxdllxb1dRSjZPNGFEbm1x?=
 =?utf-8?B?YVVEUGJrb2VGMU1NaDYzQU9qeDgzVDhvL0Z6MmlCVGUvYTRvZHJqMW5IazZm?=
 =?utf-8?B?Wk96SmdKbE84ZGNvRHhVZzFGWkxDVVoyTmtXM3dzb21wMHdVYmFmZVdPN1Fh?=
 =?utf-8?B?bGxjUVFteVFBdDFqb3pUWmtnY3BveWVLRkUvMXM0T0t2emJDb3lKV256R3Rr?=
 =?utf-8?B?QkNrcjRHdU9UTWdrTk51eDZiQ3ptWXphTFNIN1IvejBLN1pJbDYzSFM0QmJN?=
 =?utf-8?B?M0k4N2lKRkVtV0lRcU1ZU1BiUmlSNXQ4R1FteEtHb2hZL1EvaDF1dEZBbTlX?=
 =?utf-8?B?SGJjM0NLWDRMV1FueUd2dXFwUTh6NExHN3BkV1BnUjFnVGF0eitRTlFySlB1?=
 =?utf-8?B?ajhiU3hqZGgrMStHM1ZleFkzL3MvY0w3bFRmL0R4akVSQWFhY0RUY2UvM1Rs?=
 =?utf-8?B?VGNzZ2JUS015SWk5bUxWZEJ0V0swbjBsbmd6dWJFREMxVzZWUWNSNUpCNitR?=
 =?utf-8?B?NzVFRGRRcUZSK2lselV4NUFnZlNZd3NMUk9hWUYxakFZajROdC9GTGtpSGhC?=
 =?utf-8?B?amdUbWVxWlBQaFQxWmlmUTZlS0FIdE96bkh4WVB6Wk5WZHNXVDE4SlFBaW5P?=
 =?utf-8?B?eVVtZTZQRlFGUzdUNVZralJyRG1nWWE4a1NDM3g1bFJOYytoTFpqUWs4RFBj?=
 =?utf-8?B?SWQzdGFmM00yT2dPdWZsK0FHOWlzbmRnMENyTVlxZlV4TlQ2bkZXVTN4c2JR?=
 =?utf-8?B?Ly8xQWg2R2lJL0c2T29IQkFjSHhCWEtkUlJjeFJHaWlSMVB2WVErcit3bUlZ?=
 =?utf-8?B?OStacWxsckF1K1FIZGViR2ErVStHMmcvRCs0NnVjb2dvZGtTYzRSS1BFbzQ1?=
 =?utf-8?B?eVUzaFhYWU5VVG85bDVwUTdCeTEzOGErNHBJRWcxT3NFVUJhS1hYQmF1N3J1?=
 =?utf-8?B?WGhLL2ZEMnFkN25NYUMvblVqbnFuN2U1NG0xSk51dXVFcXBRSExnbnA4RTE1?=
 =?utf-8?B?UEJFa00xMFMyWGZLN05iQmpiMkp5YkZsZG5LbTJ3OWJsVm5GQnFWN3dReU5W?=
 =?utf-8?B?RTk1UjNpSUJnMGtmbUxiTmhLNko2SHh6M2xvdk1lTkVkMWlObFlRVWVYSXhk?=
 =?utf-8?B?UTdtSDg0Z2JhdHJibXhGa3dmNkJrUXY2STlqSGY1dXJzQTJsMFc1NDNOTFZt?=
 =?utf-8?B?VWFKZCtqajVLUDJQaW1iRUFnSFRFVGJ1Nit6d3RXaUZOVjhlcHhBRGZSbVFy?=
 =?utf-8?B?UWYwUWN2VnlMOWdFUkVFdVhiOWVFamNSSWQ0dXo1TEVHVHJwamRqZmgrSjFF?=
 =?utf-8?B?QXdjbzVZZFp4SDhnZ2FoQVk4YW5XbEdScnc5Q0tEWVQ4OHQ3bndZTXVqWjdV?=
 =?utf-8?B?UW1XV0JyMFhEWGFMVE9iRlp1Q04yN3U3TGk0eFJQWXcwOElZcFhpdXA5TjJw?=
 =?utf-8?B?bDN2cEthM0RhTSs1U0RMdHJIWmtTeWxCeS9lS2tlcER4TWJUcmNtVytMMks3?=
 =?utf-8?B?WmwzQlJzUTRBY1E3eXZGSm0xTHhTRG5MUy9HL3hqeFhnWEhJWlJ0UHBZTlE0?=
 =?utf-8?Q?jnlLR8FGJHPlgNI6BpTJfGrRtOKi8bP22CEEofU?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2df0730c-8138-4e02-97db-08d95cf83fab
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2021 18:45:54.1479
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ouAvnWxFDZF06tqdw2m0nyqKJgfFZEMqRK4EUQqRyLGxikVU6EI529gcjCQ0atnHNHUbnOr7SQMkm7891cgcQ2qMzJ7ScJMrovSd+mcogTE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2009
X-Proofpoint-ORIG-GUID: disYJ5ZuDuu-mRWsjwCrRf0A1JATF8fB
X-Proofpoint-GUID: disYJ5ZuDuu-mRWsjwCrRf0A1JATF8fB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-11_06,2021-08-11_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 suspectscore=0 mlxscore=0 impostorscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 mlxlogscore=999 spamscore=0 phishscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108110128
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 17BIjmLF025238
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 2021-08-03 9:52 a.m., Alexander Kanavin wrote:
> Hardknott will not become an LTS version, and will be maintained for 7=20
> months, per https://wiki.yoctoproject.org/wiki/Stable_Release_and_LTS=20
> <https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Stable_Re=
lease_and_LTS__;!!AjveYdw8EvQ!NIoKnDSRFq3WDiKuTYy4hTbk0Nk0McU69nTZltOJaEobA=
7lVri6QJvk6HoQXH-Qq0S1rew$>=20
> (all of it worth reading).
>=20
> The current plan is that Kirkstone will be the next LTS release (there's=
=20
> an LTS release every two years).
>=20
> My recommendation is to start the project using current master (rather=20
> than something already released), periodically rebase on a later master,=
=20
> and branch off the stable/product branches in sync with upstream LTS=20
> releases. Rebasing from one yocto release to another yocto release is a=
=20
> lot more painful than rolling master + stable LTS model.
>=20
> Alex

Or contact one of the companies that support Yocto:

=20
https://www.yoctoproject.org/ecosystem/yocto-project-compatible-product-sho=
wcase/

That page is out of date and I'm trying to get it refreshed but it at
least shows which companies are available.

../Randy

>=20
> On Tue, 3 Aug 2021 at 15:40, Fernando Luiz Cola <ferlzc@gmail.com=20
> <mailto:ferlzc@gmail.com>> wrote:
>=20
>     Hi, I'm=C2=A0starting a new project using Yocto and we plan to use St=
able
>     (Hardknott - 3.3).
>=20
>     We gather this information on:
>     https://wiki.yoctoproject.org/wiki/Releases
>     <https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Relea=
ses__;!!AjveYdw8EvQ!NIoKnDSRFq3WDiKuTYy4hTbk0Nk0McU69nTZltOJaEobA7lVri6QJvk=
6HoQXH-TNnj1LJA$>
>=20
>     How can I verify/follow the when the project will schedule=C2=A0from
>     Stable to LTS?=C2=A0 There is an estimate for the EOL ?
>=20
>     Thank you in advance
>=20
>=20
>=20
>=20
>=20
>=20


--=20
# Randy MacLeod
# Wind River Linux
