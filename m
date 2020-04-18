Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.92.89.69])
 by mx.groups.io with SMTP id smtpd.web12.3289.1587233834347023699
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Apr 2020 11:17:14 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com header.s=selector1 header.b=nI6K7c8X;
 spf=pass (domain: outlook.com, ip: 40.92.89.69, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GoqHeX/2Qcctae4hrcT3EFim3Jn4iOu8EO8OoBN+4xH6vT7rHbLtC0Sw1cEhJ68DG9f9o5l9yvCodeIDFi9q1WDc56OIL3RYahq7+uTTfgPYtZFD0y8JEE8te3Ry/0JFmgYD6z89O82VbIqknIRbX9RSs99Kl+WqPjjHjju0LIg1ZdG02G/M8zrczL0dD46Ev2m2JOZn6wfPgV/hmabaEk4BLQUzztKGGnESK/UF1L7xESHo4KJfAquXOi7AVyRFmVlTJ4rMppW6RJQ2WFRXn4c88O9y2PexLtOKn0ezrtxXo/ooAoEAo72mjto010VYzDBnhwetvgG3SMwwrjRblA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1FZz0D+XFgr6prAEy59sJylUpMmq4HtKkmIsnj4VFI0=;
 b=He5H++qro74iH7Sw2qwyGb6kMeYk/319SReIU2zlZQna7W9Ou+QfFeQKA8kjKVOsUmw7zu4K0VrIr5XyNKtH02C1BPRnhx8OWDyhVEZByXFcTMBRkpuHsIzkc0Mm2gJqARsWAbGEJMhQGRCzGTOk/STjDQVzHRzFnyiDhM82qJZraaslsfII4ks85q/ewcrTd9kaHaDCU5OFh3Vmr8UsYOZYj1p2gEtTI9kYM+ume54C5JMKsiDuxMzK3c0yRv0UlmC5NworHovOUeFlneeP2xX/wHufPrAGVjFcQYHidDPIpJDlx6YRApXYfGj8FwezX+Cas6/X6/JKVTNpG7M07Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=outlook.com; dmarc=pass action=none header.from=outlook.com;
 dkim=pass header.d=outlook.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1FZz0D+XFgr6prAEy59sJylUpMmq4HtKkmIsnj4VFI0=;
 b=nI6K7c8XaWzpxoC+VNXqCT2dVTmDR573CsZV13BgrXzMC0AUR8txgTiLinqLAXswzJ1um234anmL49/2tB41tOH4BXYGGY987tq0Fk3K01gqHuyxFNgLRkigV6qKd4/ROWjENJj5lIQha6HZsoQ+VtFm2eVpDXkRzM7TYTAAt6o5W7TvMOn4koKzlyQol6YgChvnXCam+1ZyxCjln3Dn44QIvcM+Wu7QILINKjyjjFqMJfRjOHadAva7or40ab9Ong3XOyw4yRIvVgzUpybGwp9EnM58x6IKAB7cO8P8go4PEE27goSrYlrrqoFBlkom4uokZMzLq0IylW8BGkwV8A==
Received: from AM6EUR05FT053.eop-eur05.prod.protection.outlook.com
 (2a01:111:e400:fc11::4c) by
 AM6EUR05HT083.eop-eur05.prod.protection.outlook.com (2a01:111:e400:fc11::275)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Sat, 18 Apr
 2020 18:17:12 +0000
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com
 (2a01:111:e400:fc11::53) by AM6EUR05FT053.mail.protection.outlook.com
 (2a01:111:e400:fc11::62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25 via Frontend
 Transport; Sat, 18 Apr 2020 18:17:12 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:733991716A13BB6B25AE31526DD41418739FD2B1C534F869B4A7E1E43CC9B513;UpperCasedChecksum:1951E7E2D3D4FDF6249F82A5F2CC1FE007675663651EFFC52A77EE6615C864FD;SizeAsReceived:8745;Count:49
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::60a2:74c9:b5ed:8c39]) by VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::60a2:74c9:b5ed:8c39%6]) with mapi id 15.20.2921.027; Sat, 18 Apr 2020
 18:17:12 +0000
Subject: Re: [yocto] Building zeek 3.1.1 in Sumo
To: yocto@lists.yoctoproject.org
References: <HeE2.1587229061546388823.8CVI@lists.yoctoproject.org>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: <VI1PR05MB428650E66D786F271F94174CA8D60@VI1PR05MB4286.eurprd05.prod.outlook.com>
Date: Sat, 18 Apr 2020 20:17:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
In-Reply-To: <HeE2.1587229061546388823.8CVI@lists.yoctoproject.org>
X-ClientProxiedBy: AM6P194CA0089.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:209:8f::30) To VI1PR05MB4286.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::27)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: <e886a894-5cfa-7868-0581-7216301fbcd4@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.20] (87.150.46.56) by AM6P194CA0089.EURP194.PROD.OUTLOOK.COM (2603:10a6:209:8f::30) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.26 via Frontend Transport; Sat, 18 Apr 2020 18:17:10 +0000
X-Microsoft-Original-Message-ID: <e886a894-5cfa-7868-0581-7216301fbcd4@outlook.com>
X-TMN: [cPmJqh01Ljq1ulpURgUq/SDmI/l1h4Ci]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 49
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: d3b0d19e-d125-4248-388c-08d7e3c4b62e
X-MS-TrafficTypeDiagnostic: AM6EUR05HT083:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	z0fEIq/fPMFbZmyUTmybGmXqhX92hUkW3dRF53UE45xpdVAVchJAKtlM5bMoYWJMcQ6PDTdzycYyOpXZB+vq0MuX1RAgDZ6FU0yW4a7iAkB4sedJoyHYxaULkYTmkqMNkyXYI8frg9dpCjLPWcy2EVgM/jMRNcS+Dul7ZRxpT9tyzWyswtgn4KLLamgKErenvmUMmKtU/jPn0IX5gw4BbFgjQ1FqREhtStlaYbka+8gsxd97/BYPbygbde9FspPF
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:0;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR05MB4286.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:;DIR:OUT;SFP:1901;
X-MS-Exchange-AntiSpam-MessageData: 
	m7EvANosDZ9cBUKeE/fWVlLV2JeLt5+kIz/VTjnqBA5kAQu0O1BSBq6DS98dC3wGt3KHbE01MibL2OsKNkx5LMlPRdwn5+j8yIA6iGWK7VnX8g86yqgEI3KInCN2LrvjaP6gWmiRfi+puE10cWjATw==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3b0d19e-d125-4248-388c-08d7e3c4b62e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2020 18:17:11.7035
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6EUR05HT083
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

I would say a `DEPENDS +=3D "sed"` in the recipe should fix things - btw=20
sumo is kind of ancient already, ever considered updating to a newer=20
version of poky?

On 18.04.20 18:57, gary@missionsecure.com wrote:
> I'm trying to create a recipe in Sumo for zeek (zeek.org) which uses=20
> cmake. =C2=A0I'm getting a sed not found error:
>=20
> Initialising tasks: 100%=20
> |#######################################################################=
###########################################################################=
#####|=20
> Time: 0:00:01
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: zeek-3.1.1-r0 do_configure: Function failed: do_configure (log=20
> file is located at=20
> /opt/PHYTEC_BSPs19/yocto_imx7/build-msi1/tmp/work/cortexa7hf-neon-poky-l=
inux-gnueabi/zeek/3.1.1-r0/temp/log.do_configure.18009)
> ERROR: Logfile of failure stored in:=20
> /opt/PHYTEC_BSPs19/yocto_imx7/build-msi1/tmp/work/cortexa7hf-neon-poky-l=
inux-gnueabi/zeek/3.1.1-r0/temp/log.do_configure.18009
> Log data follows:
> | DEBUG: Executing shell function do_configure
> | -- The C compiler identification is GNU 7.3.0
> | -- The CXX compiler identification is GNU 7.3.0
> | -- Check for working C compiler:=20
> /opt/PHYTEC_BSPs19/yocto_imx7/build-msi1/tmp/work/cortexa7hf-neon-poky-l=
inux-gnueabi/zeek/3.1.1-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnu=
eabi/arm-poky-linux-gnueabi-gcc
> | -- Check for working C compiler:=20
> /opt/PHYTEC_BSPs19/yocto_imx7/build-msi1/tmp/work/cortexa7hf-neon-poky-l=
inux-gnueabi/zeek/3.1.1-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnu=
eabi/arm-poky-linux-gnueabi-gcc=20
> -- works
> | -- Detecting C compiler ABI info
> | -- Detecting C compiler ABI info - done
> | -- Detecting C compile features
> | -- Detecting C compile features - done
> | -- Check for working CXX compiler:=20
> /opt/PHYTEC_BSPs19/yocto_imx7/build-msi1/tmp/work/cortexa7hf-neon-poky-l=
inux-gnueabi/zeek/3.1.1-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnu=
eabi/arm-poky-linux-gnueabi-g++
> | -- Check for working CXX compiler:=20
> /opt/PHYTEC_BSPs19/yocto_imx7/build-msi1/tmp/work/cortexa7hf-neon-poky-l=
inux-gnueabi/zeek/3.1.1-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnu=
eabi/arm-poky-linux-gnueabi-g++=20
> -- works
> | -- Detecting CXX compiler ABI info
> | -- Detecting CXX compiler ABI info - done
> | -- Detecting CXX compile features
> | -- Detecting CXX compile features - done
> | CMake Error at CMakeLists.txt:170 (message):
> | =C2=A0 Could not find required dependency: sed
>=20
> I tracked this down to the cmake find_program(), here's the lines in=20
> CMakeLists.txt:
>=20
> ########################################################################
> ## Dependency Configuration
> include(FindRequiredPackage)
> # Check cache value first to avoid displaying "Found sed" messages every=
time
> if (NOT SED_EXE)
>  =C2=A0 =C2=A0 find_program(SED_EXE sed)
>  =C2=A0 =C2=A0 if (NOT SED_EXE)
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 message(FATAL_ERROR "Could not find require=
d dependency: sed")
>  =C2=A0 =C2=A0 else ()
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 message(STATUS "Found sed: ${SED_EXE}")
>  =C2=A0 =C2=A0 endif ()
> endif ()
>=20
> Any ideas how to fix this?
>=20
>=20
>=20
