Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.15937.1626116219788613143
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jul 2021 11:57:00 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=OFs9PAjF;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=2827191552=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 16CIsJeq018969;
	Mon, 12 Jul 2021 18:56:57 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2173.outbound.protection.outlook.com [104.47.58.173])
	by mx0a-0064b401.pphosted.com with ESMTP id 39r5bq0rs5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 12 Jul 2021 18:56:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JTWk1TTZlEPgO2QgioJ+10omoyqadJfXzuEwP2stPHKJefiLlqF9xUS8NSIH2eVoCbpgCZR5N3iEi1X3dC+egn8E31lwzYHT1TLwcDvRMofJ6vEi3Oh3wmP95lMnvOAy4V68/mVIOjWL64TkqT77IB3obcXZMk+g0MVqT1c6dL1Dv0eFqS0+MabsNc8Vzo/ahztkglDFD3WjfKuF+Hl6IYPiMDMmbnCMVL0F7jgdkVB6fiv82VmFyrWynKEhbSLeUX6w2L7IZKb8Yd47GJfZIr9zOnQhszj8yfOCigP8ytBMMm97YuRAHxmvY9ipNBCcWdpaeklSe081oY+sIqlxgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iN1hOavraoBfPSjLjROhcAzlbafd9GdX1oJgFtYjF6g=;
 b=HSthhZGhYwqTtPEUx+5ObvF/gsuqDuRrh8VFtXd3R/idpYkJXZTMJKOurLO9D11gyUCtIMc5YIqVTZoB58L60eycskORGFnBjmfblLOo4I2uMIhhNtOjOU6AGrWUuXxP1nxR3vAFlLN6/3qDcHJ6+6EAiH1bvas0U1Ic0Mr5cfWBLqzn8avUWKRpd/O4iq030ezBgYT4ifut40oWw6oYQqbIa04fER+tTWnaGoyLsgcCgySCPyeU4d5rfYVjmeK6CYeVa1bX7O1XviLJxqQ4b4chHk1k5VgJEJudfm2rwHJPmrDydYvylrLNlFOnRKEQcBZ4hUbu25LCbAiHz9L2pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iN1hOavraoBfPSjLjROhcAzlbafd9GdX1oJgFtYjF6g=;
 b=OFs9PAjFnLTn0tpfN8mRgGo/FvFZnKkcsui3HyvkT7iEPx2aQ5Zyw27XR/9ezOVZxETkSjOiaSTqn52JPnQ7RQk6+usjBBJ7fM1GE7PUNXO2zrMHRWoexf5nyFouokBGxn2pl72JFzPGrqKxZ2Eu2X9uvvxsL5EzzIu7C17ZFgg=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BYAPR11MB3303.namprd11.prod.outlook.com (2603:10b6:a03:18::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.19; Mon, 12 Jul
 2021 18:56:54 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::8d6:5e1b:3029:341e]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::8d6:5e1b:3029:341e%4]) with mapi id 15.20.4308.027; Mon, 12 Jul 2021
 18:56:54 +0000
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json: track system load with PARALLEL_MAKE
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
        Richard Purdie <richard.purdie@linuxfoundation.org>
References: <20210712121116.218723-1-trevor.gamblin@windriver.com>
 <CANNYZj91M+UAg1fDE4dV4rbRxR8mPcMjCkds68zxTgj8xk=erA@mail.gmail.com>
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
Message-ID: <3187f36c-b2d8-5f6c-51a1-6d5a6f91a8fb@windriver.com>
Date: Mon, 12 Jul 2021 14:56:51 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <CANNYZj91M+UAg1fDE4dV4rbRxR8mPcMjCkds68zxTgj8xk=erA@mail.gmail.com>
X-ClientProxiedBy: YT1PR01CA0032.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01::45)
 To BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2607:fea8:c29d:d7c0::f245] (2607:fea8:c29d:d7c0::f245) by YT1PR01CA0032.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01::45) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.20 via Frontend Transport; Mon, 12 Jul 2021 18:56:53 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9ca378d5-48f9-4c88-6042-08d94566d0f1
X-MS-TrafficTypeDiagnostic: BYAPR11MB3303:
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB33033BE29B81A171298A7F529F159@BYAPR11MB3303.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	yDvH4LlyvSFbXRfvCPTXiozfo/X2Mk/+HmIUtuwpcF499tPI+Bs9EbSVh8iUUHlLlblIRAEOhgEn3CFjuUG3JSMHjNN1GNEl8pau49swPF4HrKdlaeqyvSMSy7nbGhrIXKK0qQ3qQBP4Ol0jfFSAZuY67/lpfhDrL67a0qkD4iDLCpGC5lEdcESdlqtITH/YXGnntyWN1R9eOKPvIelphFKSFzSd7vqKB69ROCfwE1qrAtiLzaCFO1yhtS0ePncYBn8js6gMPpDCG/4P6qCkTaGjdytSBLwG6FpD+LOXmZ1c+IKC0KBv18hhcw1Ioz2steyFHl7S2Yxw3miNaoGzjZbYtKSWerbL7RPaJpwS2lv5UZ9n8r0kVmQT5uOEoy1WkqzFRiDCRM6g9/Mf0RX91empmkzdP/qJytDCl/xHN8OkYWY+++vdoc44eSAU21knnV8GE/0UQE4rSiyIzHGuuxgpCzZEAoyD56cL4x50dz3yvXbwuITOPG5Jzc1AACel7OZy8tXsJnGgcc5OBCEnj/KV766pQjkvq9wGiyYhdi1yV0CC2AJQemibMSuuCh/E2JONk1XrbhWdy9TS7yign2fgRKmmg9f0HMJAx4ZbWn7FhidQGAaItjrw946ouVpKjVHa94boXSTo7b+4a8lw4cLAzyO5QCAoeQlRhVfkcOkw/s7937mwwETc9obZhUZ4SacMJEORcuRPOk9ZzdGElg6wNiNpno0eDbOrXHhm6K+zfcyZVysw/C2J9S/sI8UDNGRF2LTrZFvkWj2fC5iJqnNNz0J2fM1vKOF5d40pffl/VyQOrW0CSQFnUpH40JCTpMqfSHLp1hAn42mpn8uuFOOgLIpl9vBoXrFiU2VUBSs=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(136003)(39850400004)(376002)(366004)(396003)(31696002)(31686004)(36756003)(166002)(54906003)(33964004)(4326008)(2906002)(186003)(86362001)(6916009)(83380400001)(66476007)(38100700002)(44832011)(8936002)(316002)(66946007)(5660300002)(2616005)(966005)(6486002)(53546011)(478600001)(8676002)(66556008)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OEJGZnN1dS9EM1JKUlNNbDRpSUVmNjBFU3B5UUl5R1BvUlJuVVZRd2Q5Z21z?=
 =?utf-8?B?aTFtQ1ZrMmhBeXczbXViOE9Vbk5HUmJkNzN2a1JsaXA5WmFVZU91ejBlWTMz?=
 =?utf-8?B?ekl2YXRxUVFvbFhNbHo4K2VvckRkWDJ3S05CalhFMnQ0YUtzU1pDOC9WQVJx?=
 =?utf-8?B?L3JJanRETWdCY21wc3g2MXplVjF0NHRrc2U1WmZEc3VKNmJlSHNTNkVzajE1?=
 =?utf-8?B?bWxKUHZIOS94Wm8wc3hPOXl0Nkx4dG5HOGY2WFNyTHphcTN5blZ0SmFPQmgw?=
 =?utf-8?B?RWFsZFFFWnEvbXRDMHREZUpERGFXMXh4ZlBHcDIvRGZZZU8venZPQ1l0d2Qv?=
 =?utf-8?B?WEJoTk5BL25LTEN5QW9tYktSNkg3dDRVa0ZWVk9LRXZvWmtmY25iUzRhMTVx?=
 =?utf-8?B?UE8vZjdyTCtVOEM0MzJQVGc4L0h5cy9wYlRldjZ3Yk0zZkh5aXhIUzZUR1d6?=
 =?utf-8?B?eFNoUkZST29jdTUwanU1Njl2MitIMjRkNXZ2aU9xREFDUjBiNEVlN05qVys0?=
 =?utf-8?B?dU5lQnJpdm9NSGNueFJIaTJjMUR6K29IQ01LU1AveHdCK2w4OWtXRWFiZWFV?=
 =?utf-8?B?T3dNTjRPejFLTWhzQzhwQmVJeWF1dlBKUUZITzY3UzVrQUFES241b2tWL0VQ?=
 =?utf-8?B?ckNwQzlxTFdiS0JCd05WSkVGaFB0aHpOcEhjYnFaclJ2WC9IQ25GSHlmZ2pP?=
 =?utf-8?B?MEZLOHVzZUNCNEZzVG5EVlJvNDB1WjRIc1gvdUYzWDk0QzNleGhBYmhiODJR?=
 =?utf-8?B?THpzRHNpYno5YW9PTkpXMDE3NnE3aWJYWU1ZR1N1M3RVdFU2elM0UW94Ymp5?=
 =?utf-8?B?M0ZEdW5vaHY5ZisrVWNOVVBVY2Q0bDBUaDlGTUsxNmlLZ05ORzIzWDlFVWhS?=
 =?utf-8?B?cnVuRzZmd05EVllCcE9xSjNjazBGUWxPWFdrNkV4Qnk0MDFIVE9iYmNZemdq?=
 =?utf-8?B?RWlCM0FaUTBIWS9pTjY1blVraGprNFRDNHdmWkZpUmhvNXJiUTlNbGpyVndR?=
 =?utf-8?B?VDRaVnQ4RStCUzhpeFAvTUNOZ2JvblZ3K3llaDBvQVVsempHN0dTZlBreGRk?=
 =?utf-8?B?ZCtLL2sxVWNxbEswWG1acmtuU2gyZjJ5VVhlSjlmTmlEeXJSZUh3NXR6SGVY?=
 =?utf-8?B?OTIreStVa3Rwb0JzMTZtYmgvVTJxbXRPNGdBa1JwUjh2bFBoQktheGhRb0Nh?=
 =?utf-8?B?WERGNGJXMFJqaUJFN2YwRTVSc0xkaEhYdzB0aGkrOVZtYXcxMzd4K2JUVWc2?=
 =?utf-8?B?R2tVNFNNMUc4U25OQ1JvZGM1Q2lnNW1mT2p2OW45eU9wV2hjdkRaaGhzQ3Zr?=
 =?utf-8?B?S1lmSW9HNTk4K1EzbVlyRWlmQXY4V0RHZStOTmlhL2VOMXRGZGlObnBTWXJ2?=
 =?utf-8?B?eW5vMGxxUnZGb3BUYyt6M0NCdHZwR2cxdCsyNmR1ZEdqV2pTc0kxYUFycDI5?=
 =?utf-8?B?SDZUWm0xWFFjK0M0QkxrM0U2dW9VaW4vZDMvdzdCc2lBQXBiQkhpK3ZTOWpn?=
 =?utf-8?B?MlNZUHFJUkN4enEvMWJDajAyTC9WTVNIMlVFa2FOSEkxOTZBWnhuMDZTZUh6?=
 =?utf-8?B?djB1SDlSUWlRTlVFUXhUT3BsN1BvL056QVp0Ykljc1pTQ1c3aGhLYnc5d1dY?=
 =?utf-8?B?cmx3WFJJOUFXUXNxY1pWYWYwZVdmZkViUzhiQVVsVXJDWmI1Qko2Y3hnN2tU?=
 =?utf-8?B?U2EycUE4RWQreXcrREJlaW5oMXRxQWR5V29UL0J5VVJTVG9aOFkwcGFTb3pz?=
 =?utf-8?B?RWJvQ1Q3ZU0xc0tYV2JVZ1JFM0ZHeHo0NEswZW5FQW9IQytLRCtmMW1Fa3Vn?=
 =?utf-8?B?SUhuNTB6TUVVZmgrcTlaZz09?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ca378d5-48f9-4c88-6042-08d94566d0f1
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2021 18:56:54.7004
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mc4iofAg9bi693xtoDgClGZgbWc4gLEKsejsTh75PFBseiCp0XY9oMA3G0W5MZdOi5oSxboghdRzcAl/gO2o/oeQS4kpKAQEE978NY4SY28=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3303
X-Proofpoint-ORIG-GUID: 3slbdwQWjz6V3KRPAxAtJsCRzqDnq6ph
X-Proofpoint-GUID: 3slbdwQWjz6V3KRPAxAtJsCRzqDnq6ph
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-07-12_10:2021-07-12,2021-07-12 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 spamscore=0
 clxscore=1015 impostorscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 lowpriorityscore=0 mlxlogscore=999 adultscore=0
 phishscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2107120134
Content-Type: multipart/alternative;
 boundary="------------280961690959763D88AE654A"
Content-Language: en-US

--------------280961690959763D88AE654A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 16CIsJeq018969


On 2021-07-12 12:04 p.m., Alexander Kanavin wrote:
>
> **[Please note: This e-mail is from an EXTERNAL e-mail address]
>
> I seem to vaguely remember that -l is not actually taking a=20
> percentage, but an absolute value that is specific to the amount of=20
> CPU cores a system has. Have you verified your assumption?
You are right that it's not actually a percentage and is instead tied to=
=20
the number of cores. I'll correct the patch body to reflect this when I=20
inevitably send a v2. With the latest testing on the AB, my suspicion=20
that "-l 100" is too generous for most machines is being confirmed...
>
> Alex
>
> On Mon, 12 Jul 2021 at 14:11, Trevor Gamblin=20
> <trevor.gamblin@windriver.com <mailto:trevor.gamblin@windriver.com>>=20
> wrote:
>
>     This adds the "-l" option to PARALLEL_MAKE in config.json with an
>     initial testing value of 100 (100% system load). This option is
>     supported
>     by both Make and Ninja. However, we also require the "--debug=3Dj"
>     option
>     to be passed to Make in order for the latter to report perceived
>     system
>     load in the do_compile logs, and since this option is not supported =
by
>     Ninja, also add EXTRA_OEMAKE to the EXTRAVARS so that we can
>     determine if
>     the target load percentage needs to be adjusted.
>
>     Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com
>     <mailto:trevor.gamblin@windriver.com>>
>     ---
>     =C2=A0config.json | 5 +++--
>     =C2=A01 file changed, 3 insertions(+), 2 deletions(-)
>
>     diff --git a/config.json b/config.json
>     index f54081b..7fc89ea 100644
>     --- a/config.json
>     +++ b/config.json
>     @@ -44,7 +44,7 @@
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0"PREMIRRORS =3D ''",
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0"BB_GENERATE_MIRROR_=
TARBALLS =3D '1'",
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0"BB_NUMBER_THREADS =
=3D '16'",
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 "PARALLEL_MAKE =3D '-j 16=
'",
>     +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 "PARALLEL_MAKE =3D '-j 16=
 -l 100'",
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0"XZ_MEMLIMIT =3D '5%=
'",
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0"XZ_THREADS =3D '8'"=
,
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0"BB_TASK_NICE_LEVEL =
=
=3D '5'",
>     @@ -61,7 +61,8 @@
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0"RUNQEMU_TMPFS_DIR =
=3D '/home/pokybuild/tmp'",
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0"BB_HEARTBEAT_EVENT =
=
=3D '60'",
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0"BB_LOG_HOST_STAT_ON=
_INTERVAL =3D '1'",
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 "BB_LOG_HOST_STAT_CMDS_IN=
TERVAL =3D 'oe-time-dd-test.sh
>     <https://urldefense.com/v3/__http://oe-time-dd-test.sh__;!!AjveYdw8E=
vQ!IMv8JyMfE5mhi_q22gXmTjUg883rq2tckayxOn-9FWThX9U5fJRJRkJYL6L8m9A1NvmBBg$>
>     100'"
>     +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 "BB_LOG_HOST_STAT_CMDS_IN=
TERVAL =3D 'oe-time-dd-test.sh
>     <https://urldefense.com/v3/__http://oe-time-dd-test.sh__;!!AjveYdw8E=
vQ!IMv8JyMfE5mhi_q22gXmTjUg883rq2tckayxOn-9FWThX9U5fJRJRkJYL6L8m9A1NvmBBg$>
>     100'",
>     +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 "EXTRA_OEMAKE =3D ' --deb=
ug=3Dj'"
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0]
>     =C2=A0 =C2=A0 =C2=A0},
>     =C2=A0 =C2=A0 =C2=A0"templates" : {
>     --=20
>     2.31.1
>
>
>    =20
>

--------------280961690959763D88AE654A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2021-07-12 12:04 p.m., Alexander
      Kanavin wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:CANNYZj91M+UAg1fDE4dV4rbRxR8mPcMjCkds68zxTgj8xk=erA@mail.gmail.com">
      
      <div style="border:solid #9C6500 1.0pt;padding:2.0pt 2.0pt 2.0pt
        2.0pt">
        <p class="MsoNormal" style="line-height:12.0pt;background:#FFEB9C"><b><span style="font-size:10.0pt;color:#9C6500"></span></b><span style="font-size:10.0pt;color:red">[Please note: This e-mail
            is from an EXTERNAL e-mail address]<o:p></o:p></span></p>
      </div>
      <div>
        <div dir="ltr">
          <div>I seem to vaguely remember that -l is not actually taking
            a percentage, but an absolute value that is specific to the
            amount of CPU cores a system has. Have you verified your
            assumption?<br>
          </div>
        </div>
      </div>
    </blockquote>
    You are right that it's not actually a percentage and is instead
    tied to the number of cores. I'll correct the patch body to reflect
    this when I inevitably send a v2. With the latest testing on the AB,
    my suspicion that &quot;-l 100&quot; is too generous for most machines is
    being confirmed...<br>
    <blockquote type="cite" cite="mid:CANNYZj91M+UAg1fDE4dV4rbRxR8mPcMjCkds68zxTgj8xk=erA@mail.gmail.com">
      <div>
        <div dir="ltr">
          <div>
          </div>
          <div><br>
          </div>
          <div>Alex<br>
          </div>
        </div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Mon, 12 Jul 2021 at
            14:11, Trevor Gamblin &lt;<a href="mailto:trevor.gamblin@windriver.com" moz-do-not-send="true">trevor.gamblin@windriver.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            This adds the &quot;-l&quot; option to PARALLEL_MAKE in config.json
            with an<br>
            initial testing value of 100 (100% system load). This option
            is supported<br>
            by both Make and Ninja. However, we also require the
            &quot;--debug=j&quot; option<br>
            to be passed to Make in order for the latter to report
            perceived system<br>
            load in the do_compile logs, and since this option is not
            supported by<br>
            Ninja, also add EXTRA_OEMAKE to the EXTRAVARS so that we can
            determine if<br>
            the target load percentage needs to be adjusted.<br>
            <br>
            Signed-off-by: Trevor Gamblin &lt;<a href="mailto:trevor.gamblin@windriver.com" target="_blank" moz-do-not-send="true">trevor.gamblin@windriver.com</a>&gt;<br>
            ---<br>
            &nbsp;config.json | 5 +++--<br>
            &nbsp;1 file changed, 3 insertions(+), 2 deletions(-)<br>
            <br>
            diff --git a/config.json b/config.json<br>
            index f54081b..7fc89ea 100644<br>
            --- a/config.json<br>
            +++ b/config.json<br>
            @@ -44,7 +44,7 @@<br>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&quot;PREMIRRORS = ''&quot;,<br>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&quot;BB_GENERATE_MIRROR_TARBALLS = '1'&quot;,<br>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&quot;BB_NUMBER_THREADS = '16'&quot;,<br>
            -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &quot;PARALLEL_MAKE = '-j 16'&quot;,<br>
            +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &quot;PARALLEL_MAKE = '-j 16 -l 100'&quot;,<br>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&quot;XZ_MEMLIMIT = '5%'&quot;,<br>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&quot;XZ_THREADS = '8'&quot;,<br>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&quot;BB_TASK_NICE_LEVEL = '5'&quot;,<br>
            @@ -61,7 +61,8 @@<br>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&quot;RUNQEMU_TMPFS_DIR = '/home/pokybuild/tmp'&quot;,<br>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&quot;BB_HEARTBEAT_EVENT = '60'&quot;,<br>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&quot;BB_LOG_HOST_STAT_ON_INTERVAL = '1'&quot;,<br>
            -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &quot;BB_LOG_HOST_STAT_CMDS_INTERVAL = '<a href="https://urldefense.com/v3/__http://oe-time-dd-test.sh__;!!AjveYdw8EvQ!IMv8JyMfE5mhi_q22gXmTjUg883rq2tckayxOn-9FWThX9U5fJRJRkJYL6L8m9A1NvmBBg$" moz-do-not-send="true">oe-time-dd-test.sh</a> 100'&quot;<br>
            +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &quot;BB_LOG_HOST_STAT_CMDS_INTERVAL = '<a href="https://urldefense.com/v3/__http://oe-time-dd-test.sh__;!!AjveYdw8EvQ!IMv8JyMfE5mhi_q22gXmTjUg883rq2tckayxOn-9FWThX9U5fJRJRkJYL6L8m9A1NvmBBg$" moz-do-not-send="true">oe-time-dd-test.sh</a> 100'&quot;,<br>
            +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &quot;EXTRA_OEMAKE = ' --debug=j'&quot;<br>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;]<br>
            &nbsp; &nbsp; &nbsp;},<br>
            &nbsp; &nbsp; &nbsp;&quot;templates&quot; : {<br>
            -- <br>
            2.31.1<br>
            <br>
            <br>
            <br>
            <br>
          </blockquote>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------280961690959763D88AE654A--
