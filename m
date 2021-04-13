Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.319.1618334226211446084
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 10:17:07 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=DVMBU0u4;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: randy.macleod@windriver.com)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2049.outbound.protection.outlook.com [40.107.93.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D71DA38C06AD
	for <yocto@yoctoproject.org>; Tue, 13 Apr 2021 17:17:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f6Eo4MSVw1geHcW7cUKSBtSuyCWJ4AwRyNc0UpJL3FNGx1F0hXkGssHJyePheytE5DgNTfddVS77nLKq4g9NoxA+dSkbZon3rXOLbeNvWaQ4fq6kdONTTAlRp3gVdQFvQiNuvEw3j/SvY8zQA0p8iibQgSCMKe/I4GObkWBUMJzrXEut7jEDLvUhI8Xx+jk7IvzjatMNcTEuwTmNwgGg1oqV78t8JBXNuC+PdpgTefGtO+NSL5hvu70cdIohOBadmtElYHq9vcus0RDJ8Mj4h2j3njBXyGXVU9D2JGVT/c3oAahpP9N77IV/J25vFONa1PUB7BPQDB18eADs1cPp7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J22tuly1IrwwNCX8wlCPOcwAKDElcTbFKn6w0QIuX+g=;
 b=AifPDUvirG96kUlmRC3xDugRQR+4fjPOZzTsT7sImANmy6IfSYSPXjmYxEm6ih9jsGVXVyXoUP4rnS1PCnMzBFij3XZTkqC9MFHkxAYMpDjQmfzCh3aZxEIK/4Ts+es33nOqXw9GIQUz2EGg6RFedoNCFO2ce8nixG9a3Y9DABnrv8m9y3ELItBoNCOPNyaO+CC0Vb1hNRJK/fN4RFFaoLgd0RFi9QignJ1/4hERzYWqMmluT4iiFRV9prZ5aYjIhXTxcLaIE/ya3D4hSRI8cCFDItJ6SBzDm4/Ap4aeRiNtlsCe86YAKiLl6xpuOi/Nq1utB+IifewztJhArqdy8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J22tuly1IrwwNCX8wlCPOcwAKDElcTbFKn6w0QIuX+g=;
 b=DVMBU0u4L8Wg0UCIfGI5R4VrOLlWGMQqXxY+HnbzwhkNsG/WOZaiYppKwG7agD4l1Rb4E5+5yHcOQZybur9/VycoC3ciKF3zYlog+XoPstdAhxecz/03Z1M9+xecRp8G06em4CYSZBemVkCplzMNJhS+nXoopMPu5+OTbrRFInM=
Authentication-Results: linux.com; dkim=none (message not signed)
 header.d=none;linux.com; dmarc=none action=none header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB2603.namprd11.prod.outlook.com (2603:10b6:5:c6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.21; Tue, 13 Apr
 2021 17:17:01 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f17d:2de1:291f:80a9]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f17d:2de1:291f:80a9%4]) with mapi id 15.20.4020.022; Tue, 13 Apr 2021
 17:17:01 +0000
Subject: Re: [yocto] [meta-cgl][PATCH] pacemaker: upgrade 2.0.3 -> 2.0.5
To: Jeremy Puhlman <jpuhlman@mvista.com>
Cc: Changqing Li <changqing.li@windriver.com>, yocto@yoctoproject.org,
 Yi Zhao <yi.zhao@windriver.com>, Adrian Dudau <Adrian.Dudau@enea.com>,
 alexandru.vaduva@linux.com
References: <20201209060111.97275-1-yi.zhao@windriver.com>
 <ad06fdcd-04b0-ae06-0fc2-67eb6c6389af@windriver.com>
 <99b93a31-dfd4-3129-6897-ff10ef9ea8fb@windriver.com>
 <CADe5tdO2urU-zXP8CxMMwp2voe3o0h8oWd328VdWvSiyGvTH8g@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <ad95ce81-a779-79a4-f071-02bca15afe30@windriver.com>
Date: Tue, 13 Apr 2021 13:15:21 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <CADe5tdO2urU-zXP8CxMMwp2voe3o0h8oWd328VdWvSiyGvTH8g@mail.gmail.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BY5PR04CA0018.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::28) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BY5PR04CA0018.namprd04.prod.outlook.com (2603:10b6:a03:1d0::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.17 via Frontend Transport; Tue, 13 Apr 2021 17:16:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 080533e5-f36e-4fbd-74a3-08d8fe9ff334
X-MS-TrafficTypeDiagnostic: DM6PR11MB2603:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB2603E5C999FDB835137BCD15F84F9@DM6PR11MB2603.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wJElGlaz9lC/BTsv+FDyOiOtkuPwNiEMkuwAJxPa8JGU2RkhsL26MiH+Sajwux4oT6GL7eTg7RFmHpEST4v8hjVyAmbRJqLKenzAgOojMGmFqfifJ97BrWh7baXWp+fxvRH0wpos6fLs1N5c/ebWoPrJfNrnswCmwSCKPTk6CgRut42hScHM1HME5KUu7LvxOF6sKZRuPARZT0/cFZweBRsInH1JcJuMe6qY9zw2NcW2RM14li+eLgUIn7/xx4b6nzUkOK1yt5/O7r1Mm1CyXtc5sFMW7ozo6N8fSfoXomypuGLL49WHY/2dEgBefVRG8bi5KHPAMY4t6NpC4V2aOfzZPjU3cZLJt71lqBB4UOkVGLZEANdWTrwSMnYQ3J+Ohn/OaXMNBeqcPNfCiwu6IDc1Z9fbajWly8mZI5Un+Ml282e0ZaAd6skbtYoXPKzU87vnUch0sld2Eokby2AHovWwzXG16htq9jE9dB5eEWVX6ciZeRDT9bI85Txo+G8Ahf9f7+dwrDhkDbnD9XydE7XwgE09W5FHTvofMk9+tyxb71wiu5NOHB6AIL/czrpD+rOOCsM+4GwPKpKUSLVqoS9aIQzONZQcblw6lGG9JBrOOWb/r7ZBUs7Ge4Gl3u3FvLv1I0c+ri4cOsEmQ6DzbTYb40QLKCEnI2Wq6gc+29KjP5AsZutXL3f9Bagu/rAQB1S+V1nFQuKUtf0jUZYlwN7opwaMYuiMTgq7aeszDPOhkpWNxr6VKvnOXF3U2DG5S+gKzG4f6IBjiOXskuhB5xu1BzqXaHnXah8NspvyVAg=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(956004)(16526019)(4326008)(186003)(16576012)(30864003)(86362001)(54906003)(66946007)(38350700002)(38100700002)(36756003)(53546011)(6666004)(5660300002)(26005)(31696002)(966005)(2906002)(52116002)(8676002)(83380400001)(8936002)(498600001)(2616005)(6916009)(31686004)(6486002)(66476007)(66556008)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?NURqYkJWbVZGaGJCd3RvZitlMEhsMEViOTd5MGpheE12UmcrMERpQ05ab25F?=
 =?utf-8?B?bkJYcUt0OTl0NFlPWEZTVzYrRzlqMjJPSnNraVNJOHkzd1VubWRqNTAvV014?=
 =?utf-8?B?eVNGWVovZzFDT3BiV1M0STFETStmQ0FmRFpLeXcreWJ3SFU1Z2tibGNCU29z?=
 =?utf-8?B?WllXejM3dUVlSVM1dmc1a2l6MGR0RkVibHdmSy9YMThFZ1dWYkwwRXhDTmZu?=
 =?utf-8?B?MlhjNzByZjhYZ1NvNmdvZUZsbk5CZVFLUGxxckVDK05veFQwNWRoaldrMEp1?=
 =?utf-8?B?aFRkeHlaWjRVeEp2OTBmcmNvMjVyZDF1bDI4V1FTbGJvdFVTaHhLQkJIUXNH?=
 =?utf-8?B?NVA1SFVGSXdnQzM0T1dyb2krbUtLZlhUajVsOERadEEwN1dPMGhCNXVPcmRR?=
 =?utf-8?B?eURXazNiSDAyTk1TMW55OFNPRXRsbEJMZFhmcHo2cjV0M1Y4VEZkVHJKKzlY?=
 =?utf-8?B?bGJIODd2WXBEeG55aXFUS21HeTdlRnZnc2tHMHF2cWhMdndsUFdydkMwN3BH?=
 =?utf-8?B?U1k0TWF4UHRTd1kvKzdHclZNcTdqcW5RdVdaOUhONmtuclpDZmpNZHV3ZnMz?=
 =?utf-8?B?eXIrUmNmV25QejMvbE5MUkRFeCtVK3AxbUFBT1NqQ3h1RWZKcG9CeUlZbUdD?=
 =?utf-8?B?TkI3MUlod29teGJueFNtTHprSnAvd2JIZkJwR2JzbU9YcVN3SGkyVWdMQXJO?=
 =?utf-8?B?MVppRnVSSEpRall3VTkzUkhGUUtWQUdBV3ptRjJTUFZ2MGEzL3UwQzBKK1NY?=
 =?utf-8?B?V3pITFBpTDRJL0lOeFk0NThuYlRuSEI0cDVoV1diYUFQcVZrLzdRV1BWMzY5?=
 =?utf-8?B?ZTNUcmFDQ2x5MmxFVVMzYjdJUENzVERFcEZFNGtJU0VxM3kvOWw3My9QbnVR?=
 =?utf-8?B?Um83T3BTdmdRcXB1c2g1TXRxWUhMdG9DTk01MTF5blZWUmF1b09NaUxsTVov?=
 =?utf-8?B?clpqUklYUnJhU2EwcGExa0V2WDlhMWU3QkNRODVLdWhwTEZzMmxDRW9MdTRT?=
 =?utf-8?B?NUtOWXZza0NNajI5OExRaTZ2THExV3dRU2NaY3lZQk85ZS9YYXR4aGNYUjBS?=
 =?utf-8?B?NTgzK2J3aDI4S0Q5eEtDOWJnME1nVjBrbi8zaUpiZlkwNFpGbEZxSGJZazht?=
 =?utf-8?B?UElEM3RZQ0RTcG9vNGk1aHVha0ZwM2VHTnhkSk80ZTBOSUNSTlA1TEV6YzBp?=
 =?utf-8?B?NUk0QlIxZk5jRVhtRzQ2NU1mOFM3ZWdVWS9TWllQYzJ5WlgrajRjaDRXT2sy?=
 =?utf-8?B?Yld2a3kyb25CcjJiaGoyZ2YzK1I0aHNmS0VSY3BOSnpuMEdDMkhBSkU0Mk9P?=
 =?utf-8?B?K1pXdU1xNUQ1Nlg2SlBiVE5uSDRMNzR5M1Q4ZXFqbURnSGpWMWFXZHVaK2hw?=
 =?utf-8?B?YUpBNmt3ZGs3UjFPSSt4eG5CR2R4K05NUnp2Wm51dUw3cHNxK2xYakFBUm9m?=
 =?utf-8?B?aGpSZzNiYlVKdGh2dU1HWEMxekl4N0xrYytJYWhYTzNJMUxuSTJPYUxZbG1i?=
 =?utf-8?B?clN5citWRjU5SGcvdWlMWWV6OXlKK3g0WnFzY1IzcW1oRFpybmJxSW1tNzlq?=
 =?utf-8?B?K2lWUFc3c0wzSk02OG9TY2pqcGdEYnlIazA0N1ZZSnhnRVJyTXk2T21VbmJD?=
 =?utf-8?B?QW10Q2ltdDgwbVdmL1YxSE4yc2pKenlrL0xlVng4ZnM2TVdqZlJLcFZRZm9j?=
 =?utf-8?B?R2ovYkZOYS9sc01rUFNndUQrU3BtNEw3bGJOS1ZqRXBjWXNhNXhFWkN6d1U3?=
 =?utf-8?Q?xsb6nOt9HjQ4OLM5LEHE3O2dbghORu/p6K5VsBC?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 080533e5-f36e-4fbd-74a3-08d8fe9ff334
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2021 17:17:01.0619
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 08adAapEFGKb9noaSKsUN5kBPS4YttecCSWH1DzywdlBrj+dQETQHr8eOZiMl0sZ8uBhJzSiyu/mho1Wmr0dxlK+quay0mBIGWYXG67beVA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2603
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 2021-04-12 11:00 p.m., Jeremy Puhlman wrote:
> I haven't been doing much with it lately and this got lost in my pile.=
=20
> Its merged to master.

Thanks Jeremy.
../Randy

>=20
> On Mon, Apr 12, 2021 at 7:29 PM Randy MacLeod=20
> <randy.macleod@windriver.com <mailto:randy.macleod@windriver.com>> wrote=
:
>=20
>     On 2021-03-05 1:28 a.m., Changqing Li wrote:
>      > ping
>=20
>     Is this layer alive? :)
>=20
>     ../Randy
>      >
>      > On 12/9/20 2:01 PM, Yi Zhao wrote:
>      >> Drop backported patches:
>      >> 0001-Mark-declaration-with-extern.patch
>      >> 0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch
>      >>
>      >> Rebase patches:
>      >> 0001-Fix-python3-usage.patch
>      >> 0001-pacemaker-fix-compile-error-of-musl-libc.patch
>      >>
>      >> Remove /var/log directory in do_install and create
>     /var/log/pacemaker
>      >> directory in volatile file.
>      >>
>      >> Signed-off-by: Yi Zhao<yi.zhao@windriver.com
>     <mailto:yi.zhao@windriver.com>>
>      >> ---
>      >>=C2=A0 =C2=A0.../recipes-cgl/pacemaker/files/tmpfiles=C2=A0 =C2=
=A0 =C2=A0 |=C2=A0 3 +-
>      >>=C2=A0 =C2=A0.../recipes-cgl/pacemaker/files/volatiles=C2=A0 =C2=
=A0 =C2=A0|=C2=A0 1 +
>      >>=C2=A0 =C2=A0.../pacemaker/0001-Fix-python3-usage.patch=C2=A0 =C2=
=
=A0 | 34 ++++----------
>      >>=C2=A0 =C2=A0.../0001-Mark-declaration-with-extern.patch=C2=A0 =
=C2=A0| 46
>     -------------------
>      >>=C2=A0 =C2=A0...maker-fix-compile-error-of-musl-libc.patch | 39
>     +++-------------
>      >>=C2=A0 =C2=A0...definition-of-curses_indented_printf.patch | 30 -=
-----------
>      >>=C2=A0 =C2=A0...{pacemaker_2.0.3.bb <http://pacemaker_2.0.3.bb> =
=3D>
>     pacemaker_2.0.5.bb <http://pacemaker_2.0.5.bb>} |=C2=A0 5 +-
>      >>=C2=A0 =C2=A07 files changed, 21 insertions(+), 137 deletions(-)
>      >>=C2=A0 =C2=A0mode change 100755 =3D> 100644
>     meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
>      >>=C2=A0 =C2=A0mode change 100755 =3D> 100644
>     meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
>      >>=C2=A0 =C2=A0delete mode 100644
>     meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaratio=
n-with-extern.patch
>      >>=C2=A0 =C2=A0delete mode 100644
>     meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-d=
efinition-of-curses_indented_printf.patch
>      >>=C2=A0 =C2=A0rename
>     meta-cgl-common/recipes-cgl/pacemaker/{pacemaker_2.0.3.bb
>     <http://pacemaker_2.0.3.bb> =3D> pacemaker_2.0.5.bb
>     <http://pacemaker_2.0.5.bb>} (96%)
>      >>
>      >> diff --git
>     a/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
>     b/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
>      >> old mode 100755
>      >> new mode 100644
>      >> index 979db47..765ee0d
>      >> --- a/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
>      >> +++ b/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
>      >> @@ -3,4 +3,5 @@ d /var/lib/pacemaker/cib 0750 hacluster haclient=
 -
>      >>=C2=A0 =C2=A0d /var/lib/pacemaker/cores 0750 hacluster haclient -
>      >>=C2=A0 =C2=A0d /var/lib/pacemaker/pengine 0750 hacluster haclient=
 -
>      >>=C2=A0 =C2=A0d /var/lib/pacemaker/blackbox 0750 hacluster haclien=
t -
>      >> -d /var/run/crm 0750 hacluster haclient -
>      >> +d /run/crm 0750 hacluster haclient -
>      >> +d /var/log/pacemaker 0750 hacluster haclient -
>      >> diff --git
>     a/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
>     b/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
>      >> old mode 100755
>      >> new mode 100644
>      >> index 1700a69..eca3002
>      >> --- a/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
>      >> +++ b/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
>      >> @@ -4,3 +4,4 @@ d hacluster haclient 0750
>     /var/lib/pacemaker/cores none
>      >>=C2=A0 =C2=A0d hacluster haclient 0750 /var/lib/pacemaker/pengine=
 none
>      >>=C2=A0 =C2=A0d hacluster haclient 0750 /var/lib/pacemaker/blackbo=
x none
>      >>=C2=A0 =C2=A0d hacluster haclient 0750 /var/run/crm none
>      >> +d hacluster haclient 0750 /var/log/pacemaker none
>      >> diff --git
>     a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-u=
sage.patch
>     b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-u=
sage.patch
>      >> index 05d7a76..2095227 100644
>      >> ---
>     a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-u=
sage.patch
>      >> +++
>     b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-u=
sage.patch
>      >> @@ -1,4 +1,4 @@
>      >> -From fdefa9efc726fe704238d462a3dc207e0282fb9e Mon Sep 17
>     00:00:00 2001
>      >> +From f470884e0b990676685c8740b5c7d6f094267e4f Mon Sep 17
>     00:00:00 2001
>      >>=C2=A0 =C2=A0From: Jeremy Puhlman<jpuhlman@mvista.com
>     <mailto:jpuhlman@mvista.com>>
>      >>=C2=A0 =C2=A0Date: Sun, 15 Mar 2020 21:09:33 +0000
>      >>=C2=A0 =C2=A0Subject: [PATCH] Fix python3 usage
>      >> @@ -18,12 +18,11 @@ Upstream-Status: Pending
>      >>=C2=A0 =C2=A0 cts/pacemaker-cts-dummyd.in <http://pacemaker-cts-d=
ummyd.in>=20
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +=
-
>      >>=C2=A0 =C2=A0 daemons/fenced/fence_legacy.in <http://fence_legacy=
.in>    =20
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-
>      >>=C2=A0 =C2=A0 doc/Pacemaker_Development/en-US/Ch-Python.txt | 2 +=
-
>      >> - doc/Pacemaker_Development/pot/Ch-Python.pot=C2=A0 =C2=A0| 2 +-
>      >>=C2=A0 =C2=A0 tools/pcmk_simtimes.in <http://pcmk_simtimes.in>   =
         =20
>      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-
>      >> - 14 files changed, 14 insertions(+), 14 deletions(-)
>      >> + 13 files changed, 13 insertions(+), 13 deletions(-)
>      >>
>      >>=C2=A0 =C2=A0diff --git a/cts/CTSlab.py.in <http://CTSlab.py.in>
>     b/cts/CTSlab.py.in <http://CTSlab.py.in>
>      >> -index f4ae60dc1..55a0d4ecf 100644
>      >> +index 4bae93515..f09f71c66 100644
>      >>=C2=A0 =C2=A0--- a/cts/CTSlab.py.in <http://CTSlab.py.in>
>      >>=C2=A0 =C2=A0+++ b/cts/CTSlab.py.in <http://CTSlab.py.in>
>      >>=C2=A0 =C2=A0@@ -1,4 +1,4 @@
>      >> @@ -43,10 +42,10 @@ index 81a5da8c0..bbadf938a 100644
>      >>=C2=A0 =C2=A0 '''OCF IPaddr/IPaddr2 Resource Agent Test'''
>      >>
>      >>=C2=A0 =C2=A0diff --git a/cts/cluster_test.in <http://cluster_tes=
t.in>
>     b/cts/cluster_test.in <http://cluster_test.in>
>      >> -index e0d28509d..f982be05a 100755
>      >> +index 38f941d3e..5a289e3fc 100755
>      >>=C2=A0 =C2=A0--- a/cts/cluster_test.in <http://cluster_test.in>
>      >>=C2=A0 =C2=A0+++ b/cts/cluster_test.in <http://cluster_test.in>
>      >> -@@ -171,4 +171,4 @@ printf "\nAll set to go for %d
>     iterations!\n" "$CTS_numtests"
>      >> +@@ -172,4 +172,4 @@ printf "\nAll set to go for %d
>     iterations!\n" "$CTS_numtests"
>      >>=C2=A0 =C2=A0 =C2=A0 =C2=A0 || echo "+ To use a different configu=
ration, remove
>     ~/.cts and re-run cts (or edit it manually)."
>      >>
>      >>=C2=A0 =C2=A0 echo Now paste the following command into this shel=
l:
>      >> @@ -63,7 +62,7 @@ index 592d850b4..9a653a442 100644
>      >>=C2=A0 =C2=A0 """
>      >>
>      >>=C2=A0 =C2=A0diff --git a/cts/cts-fencing.in <http://cts-fencing.=
in>
>     b/cts/cts-fencing.in <http://cts-fencing.in>
>      >> -index 2d9999ca0..8e3fb7203 100644
>      >> +index 444402438..0270c99ce 100644
>      >>=C2=A0 =C2=A0--- a/cts/cts-fencing.in <http://cts-fencing.in>
>      >>=C2=A0 =C2=A0+++ b/cts/cts-fencing.in <http://cts-fencing.in>
>      >>=C2=A0 =C2=A0@@ -1,4 +1,4 @@
>      >> @@ -83,7 +82,7 @@ index 28f4efe7f..b4ed5024f 100644
>      >>
>      >>=C2=A0 =C2=A0 Reads a specified number of lines from the supplied=
 offset
>      >>=C2=A0 =C2=A0diff --git a/cts/cts-scheduler.in <http://cts-schedu=
ler.in>
>     b/cts/cts-scheduler.in <http://cts-scheduler.in>
>      >> -index 8fa16fb69..d4306b02b 100644
>      >> +index 23e6a919f..09058ce22 100644
>      >>=C2=A0 =C2=A0--- a/cts/cts-scheduler.in <http://cts-scheduler.in>
>      >>=C2=A0 =C2=A0+++ b/cts/cts-scheduler.in <http://cts-scheduler.in>
>      >>=C2=A0 =C2=A0@@ -1,4 +1,4 @@
>      >> @@ -93,7 +92,7 @@ index 8fa16fb69..d4306b02b 100644
>      >>=C2=A0 =C2=A0 """
>      >>
>      >>=C2=A0 =C2=A0diff --git a/cts/environment.py b/cts/environment.py
>      >> -index db9d3db16..9d103fda9 100644
>      >> +index 6a97b1289..39e89fa6f 100644
>      >>=C2=A0 =C2=A0--- a/cts/environment.py
>      >>=C2=A0 =C2=A0+++ b/cts/environment.py
>      >>=C2=A0 =C2=A0@@ -639,7 +639,7 @@ class Environment(object):
>      >> @@ -106,7 +105,7 @@ index db9d3db16..9d103fda9 100644
>      >>
>      >>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sys.exit(status)
>      >>=C2=A0 =C2=A0diff --git a/cts/fence_dummy.in <http://fence_dummy.=
in>
>     b/cts/fence_dummy.in <http://fence_dummy.in>
>      >> -index a2692b1e0..f1d111205 100644
>      >> +index 8b0dd5165..9e8624bd9 100644
>      >>=C2=A0 =C2=A0--- a/cts/fence_dummy.in <http://fence_dummy.in>
>      >>=C2=A0 =C2=A0+++ b/cts/fence_dummy.in <http://fence_dummy.in>
>      >>=C2=A0 =C2=A0@@ -1,4 +1,4 @@
>      >> @@ -148,19 +147,6 @@ index 42d35b649..467e1c524 100644
>      >>=C2=A0 =C2=A0 ----
>      >>=C2=A0 =C2=A0 =3D=3D=3D=3D
>      >>=C2=A0 =C2=A0 which will be replaced with the appropriate python =
executable
>     when Pacemaker is
>      >> -diff --git a/doc/Pacemaker_Development/pot/Ch-Python.pot
>     b/doc/Pacemaker_Development/pot/Ch-Python.pot
>      >> -index ed71331ce..27c7e22e5 100644
>      >> ---- a/doc/Pacemaker_Development/pot/Ch-Python.pot
>      >> -+++ b/doc/Pacemaker_Development/pot/Ch-Python.pot
>      >> -@@ -39,7 +39,7 @@ msgstr ""
>      >> -
>      >> - #. Tag: screen
>      >> - #, no-c-format
>      >> --msgid "#!@PYTHON@"
>      >> -+msgid "#!/usr/bin/env python3"
>      >> - msgstr ""
>      >> -
>      >> - #. Tag: para
>      >>=C2=A0 =C2=A0diff --git a/tools/pcmk_simtimes.in <http://pcmk_sim=
times.in>
>     b/tools/pcmk_simtimes.in <http://pcmk_simtimes.in>
>      >>=C2=A0 =C2=A0index 6e362243b..28009f499 100644
>      >>=C2=A0 =C2=A0--- a/tools/pcmk_simtimes.in <http://pcmk_simtimes.i=
n>
>      >> @@ -172,5 +158,5 @@ index 6e362243b..28009f499 100644
>      >>=C2=A0 =C2=A0 """
>      >>
>      >>=C2=A0 =C2=A0--
>      >> -2.23.0
>      >> +2.17.1
>      >>
>      >> diff --git
>     a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declarat=
ion-with-extern.patch
>     b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declarat=
ion-with-extern.patch
>      >> deleted file mode 100644
>      >> index 5729447..0000000
>      >> ---
>     a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declarat=
ion-with-extern.patch
>      >> +++ /dev/null
>      >> @@ -1,46 +0,0 @@
>      >> -From e1abd3b7c7a0122813e4d0abdb079df10104882c Mon Sep 17
>     00:00:00 2001
>      >> -From: Mingli Yu<mingli.yu@windriver.com
>     <mailto:mingli.yu@windriver.com>>
>      >> -Date: Thu, 3 Sep 2020 04:44:09 +0000
>      >> -Subject: [PATCH] Mark declaration with extern
>      >> -
>      >> -Fixes build with gcc 10+
>      >> -
>      >> -Upstream-Status: Pending
>      >> -
>      >> -Signed-off-by: Mingli Yu<mingli.yu@windriver.com
>     <mailto:mingli.yu@windriver.com>>
>      >> ----
>      >> - daemons/attrd/pacemaker-attrd.h | 4 ++--
>      >> - daemons/execd/pacemaker-execd.h | 2 +-
>      >> - 2 files changed, 3 insertions(+), 3 deletions(-)
>      >> -
>      >> -diff --git a/daemons/attrd/pacemaker-attrd.h
>     b/daemons/attrd/pacemaker-attrd.h
>      >> -index cc8e29ee1..76778915e 100644
>      >> ---- a/daemons/attrd/pacemaker-attrd.h
>      >> -+++ b/daemons/attrd/pacemaker-attrd.h
>      >> -@@ -106,8 +106,8 @@ typedef struct attribute_value_s {
>      >> -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gboolean seen;
>      >> - } attribute_value_t;
>      >> -
>      >> --crm_cluster_t *attrd_cluster;
>      >> --GHashTable *attributes;
>      >> -+extern crm_cluster_t *attrd_cluster;
>      >> -+extern GHashTable *attributes;
>      >> -
>      >> - #define attrd_send_ack(client, id, flags) \
>      >> -=C2=A0 =C2=A0 =C2=A0crm_ipcs_send_ack((client), (id), (flags), =
"ack",
>     __FUNCTION__, __LINE__)
>      >> -diff --git a/daemons/execd/pacemaker-execd.h
>     b/daemons/execd/pacemaker-execd.h
>      >> -index 4a52d9183..dab3ccdbe 100644
>      >> ---- a/daemons/execd/pacemaker-execd.h
>      >> -+++ b/daemons/execd/pacemaker-execd.h
>      >> -@@ -20,7 +20,7 @@
>      >> - #=C2=A0 =C2=A0 include <gnutls/gnutls.h>
>      >> - #=C2=A0 endif
>      >> -
>      >> --GHashTable *rsc_list;
>      >> -+extern GHashTable *rsc_list;
>      >> -
>      >> - typedef struct lrmd_rsc_s {
>      >> -=C2=A0 =C2=A0 =C2=A0char *rsc_id;
>      >> ---
>      >> -2.26.2
>      >> -
>      >> diff --git
>     a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix=
-compile-error-of-musl-libc.patch
>     b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix=
-compile-error-of-musl-libc.patch
>      >> index f8cbb7e..a10e8cd 100644
>      >> ---
>     a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix=
-compile-error-of-musl-libc.patch
>      >> +++
>     b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix=
-compile-error-of-musl-libc.patch
>      >> @@ -1,4 +1,4 @@
>      >> -From 51b0df9242bb1e3eb41362381472a00727910f64 Mon Sep 17
>     00:00:00 2001
>      >> +From ba9e4810a09893521d28f6c699fb7f213d4a4b34 Mon Sep 17
>     00:00:00 2001
>      >>=C2=A0 =C2=A0From: Changqing Li<changqing.li@windriver.com
>     <mailto:changqing.li@windriver.com>>
>      >>=C2=A0 =C2=A0Date: Fri, 10 Aug 2018 15:08:31 +0800
>      >>=C2=A0 =C2=A0Subject: [PATCH] pacemaker: fix compile error of mus=
l libc
>      >> @@ -7,28 +7,14 @@ Upstream-Status: Pending
>      >>
>      >>=C2=A0 =C2=A0Signed-off-by: Changqing Li<changqing.li@windriver.c=
om
>     <mailto:changqing.li@windriver.com>>
>      >>=C2=A0 =C2=A0---
>      >> - include/crm/stonith-ng.h | 1 +
>      >> - lib/cib/cib_remote.c=C2=A0 =C2=A0 =C2=A0| 3 ---
>      >> - tools/crm_mon.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-
>      >> - 3 files changed, 2 insertions(+), 4 deletions(-)
>      >> + lib/cib/cib_remote.c | 3 ---
>      >> + 1 file changed, 3 deletions(-)
>      >>
>      >> -diff --git a/include/crm/stonith-ng.h b/include/crm/stonith-ng.=
h
>      >> -index 56c1ec7..a637b47 100644
>      >> ---- a/include/crm/stonith-ng.h
>      >> -+++ b/include/crm/stonith-ng.h
>      >> -@@ -28,6 +28,7 @@
>      >> - #=C2=A0 include <dlfcn.h>
>      >> - #=C2=A0 include <errno.h>
>      >> - #=C2=A0 include <stdbool.h>
>      >> -+#=C2=A0 include <time.h>
>      >> -
>      >> - /* TO-DO: Work out how to drop this requirement */
>      >> - #=C2=A0 include <libxml/tree.h>
>      >>=C2=A0 =C2=A0diff --git a/lib/cib/cib_remote.c b/lib/cib/cib_remo=
te.c
>      >> -index 4d7b93b..8be8ecc 100644
>      >> +index 4de0a0f7b..7686637db 100644
>      >>=C2=A0 =C2=A0--- a/lib/cib/cib_remote.c
>      >>=C2=A0 =C2=A0+++ b/lib/cib/cib_remote.c
>      >> -@@ -53,9 +53,6 @@ typedef void gnutls_session_t;
>      >> +@@ -45,9 +45,6 @@ typedef void gnutls_session_t;
>      >>=C2=A0 =C2=A0 #endif
>      >>
>      >>=C2=A0 =C2=A0 #include <arpa/inet.h>
>      >> @@ -38,19 +24,6 @@ index 4d7b93b..8be8ecc 100644
>      >>
>      >>=C2=A0 =C2=A0 #define DH_BITS 1024
>      >>
>      >> -diff --git a/tools/crm_mon.c b/tools/crm_mon.c
>      >> -index 7c63803..1ae6c21 100644
>      >> ---- a/tools/crm_mon.c
>      >> -+++ b/tools/crm_mon.c
>      >> -@@ -553,7 +553,7 @@ main(int argc, char **argv)
>      >> -
>      >> - #if !defined (ON_DARWIN) && !defined (ON_BSD)
>      >> -=C2=A0 =C2=A0 =C2=A0/* prevent zombies */
>      >> --=C2=A0 =C2=A0 signal(SIGCLD, SIG_IGN);
>      >> -+=C2=A0 =C2=A0 signal(SIGCHLD, SIG_IGN);
>      >> - #endif
>      >> -
>      >> -=C2=A0 =C2=A0 =C2=A0if (crm_ends_with_ext(argv[0], ".cgi") =3D=
=3D TRUE) {
>      >>=C2=A0 =C2=A0--
>      >> -2.7.4
>      >> +2.17.1
>      >>
>      >> diff --git
>     a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix=
-definition-of-curses_indented_printf.patch
>     b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix=
-definition-of-curses_indented_printf.patch
>      >> deleted file mode 100644
>      >> index f5e1829..0000000
>      >> ---
>     a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix=
-definition-of-curses_indented_printf.patch
>      >> +++ /dev/null
>      >> @@ -1,30 +0,0 @@
>      >> -From 426f06cc088d11d6db0c45b434e5ce6b69da78b4 Mon Sep 17
>     00:00:00 2001
>      >> -From: Chris Lumens<clumens@redhat.com <mailto:clumens@redhat.co=
m>>
>      >> -Date: Thu, 2 Jan 2020 15:08:58 -0500
>      >> -Subject: [PATCH 006/207] Fix: tools: Fix definition of
>     curses_indented_printf.
>      >> -
>      >> -The placeholder version that is built if curses is not enabled
>     does not
>      >> -have a type that matches the header file.=C2=A0 Correct that.
>      >> -
>      >> -Signed-off-by: Jeremy A. Puhlman<jpuhlman@mvista.com
>     <mailto:jpuhlman@mvista.com>>
>      >> -Upstream-Status: Backport[git]
>      >> ----
>      >> - tools/crm_mon_curses.c | 2 +-
>      >> - 1 file changed, 1 insertion(+), 1 deletion(-)
>      >> -
>      >> -diff --git a/tools/crm_mon_curses.c b/tools/crm_mon_curses.c
>      >> -index c0dbedbf0..ecd0584fe 100644
>      >> ---- a/tools/crm_mon_curses.c
>      >> -+++ b/tools/crm_mon_curses.c
>      >> -@@ -368,7 +368,7 @@ curses_indented_vprintf(pcmk__output_t
>     *out, const char *format, va_list args) {
>      >> -
>      >> - G_GNUC_PRINTF(2, 3)
>      >> - void
>      >> --curses_indented_printf(pcmk__output_t *out, const char
>     *format, va_list args) {
>      >> -+curses_indented_printf(pcmk__output_t *out, const char
>     *format, ...) {
>      >> -=C2=A0 =C2=A0 =C2=A0return;
>      >> - }
>      >> -
>      >> ---
>      >> -2.23.0
>      >> -
>      >> diff --git
>     a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
>     <http://pacemaker_2.0.3.bb>
>     b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
>     <http://pacemaker_2.0.5.bb>
>      >> similarity index 96%
>      >> rename from
>     meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
>     <http://pacemaker_2.0.3.bb>
>      >> rename to
>     meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
>     <http://pacemaker_2.0.5.bb>
>      >> index 8576f18..6cfa057 100644
>      >> --- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
>     <http://pacemaker_2.0.3.bb>
>      >> +++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
>     <http://pacemaker_2.0.5.bb>
>      >> @@ -14,9 +14,7 @@ LIC_FILES_CHKSUM
>     =3D"file://COPYING;md5=3D000212f361a81b100d9d0f0435040663"
>      >>=C2=A0 =C2=A0DEPENDS =3D "corosync libxslt libxml2 gnutls resourc=
e-agents
>     libqb python3-native"
>      >>
>      >>=C2=A0 =C2=A0SRC_URI =3D "git://github.com/ClusterLabs/${BPN}.git
>     <http://github.com/ClusterLabs/$%7BBPN%7D.git> \
>      >>
>     -file://0006-Fix-tools-Fix-definition-of-curses_indented_printf.patc=
h=C2=A0 \
>      >>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-Fix-=
python3-usage.patch=C2=A0 \
>      >> -file://0001-Mark-declaration-with-extern.patch=C2=A0 \
>      >>            =20
>     file://0001-pacemaker-set-OCF_ROOT_DIR-to-libdir-ocf.patch=C2=A0 \
>      >>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://volatiles=
=
=C2=A0 \
>      >>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://tmpfiles=
=C2=A0 \
>      >> @@ -26,7 +24,7 @@ CFLAGS +=3D "-I${STAGING_INCDIR}/heartbeat"
>      >>=C2=A0 =C2=A0CPPFLAGS +=3D"-I${STAGING_INCDIR}/heartbeat"
>      >>=C2=A0 =C2=A0SRC_URI_append_libc-musl
>     =3D"file://0001-pacemaker-fix-compile-error-of-musl-libc.patch"
>      >>
>      >> -SRCREV =3D "4b1f869f0f64ef0d248b6aa4781d38ecccf83318"
>      >> +SRCREV =3D "ba59be71228fed04f78ab374dfac748d314d0e89"
>      >>
>      >>=C2=A0 =C2=A0inherit autotools-brokensep pkgconfig systemd python=
3native
>     python3-dir useradd
>      >>
>      >> @@ -78,6 +76,7 @@ do_install_append() {
>      >>
>      >>=C2=A0 =C2=A0 =C2=A0 =C2=A0rm -rf ${D}${localstatedir}/lib/heartb=
eat
>      >>=C2=A0 =C2=A0 =C2=A0 =C2=A0rm -rf ${D}${localstatedir}/run
>      >> +=C2=A0 =C2=A0 rm -rf ${D}${localstatedir}/log
>      >>
>      >>=C2=A0 =C2=A0 =C2=A0 =C2=A0# remove buildpath
>      >>=C2=A0 =C2=A0 =C2=A0 =C2=A0tempdirs=3D$(grep -Rn ${RECIPE_SYSROOT=
_NATIVE} ${D}/* | awk
>     -F: '{print $1}' | uniq)
>      >>
>      >
>      >
>      >=20
>      >
>=20
>=20
>     --=20
>     # Randy MacLeod
>     # Wind River Linux
>=20
>=20
>=20
> --=20
> Jeremy Puhlman
> Montavista Software, LLC.


--=20
# Randy MacLeod
# Wind River Linux
