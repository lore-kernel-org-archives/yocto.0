Return-Path: <dwatkins@sierrawireless.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8317FC433EF
	for <webhook@archiver.kernel.org>; Tue, 16 Nov 2021 16:43:14 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (NAM10-DM6-obe.outbound.protection.outlook.com [40.107.93.46])
 by mx.groups.io with SMTP id smtpd.web12.554.1637080992823164612
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Nov 2021 08:43:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sierrawireless.com header.s=selector1 header.b=EHV/nG6K;
 spf=pass (domain: sierrawireless.com, ip: 40.107.93.46,
 mailfrom: dwatkins@sierrawireless.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JqYseC53l/cro7Xy4NGfw9PcC84WEebAnddQX0KyzRTuW0ls+hn0ibc8j9GMnpjGcxxazubBgzfdapJ9T+XIca6gD53ZcHm96s+NasGrwwzPABL+rRpppXx7wTtLGdsG/6h0WEoOZ3e9QK28Rc6cLSBi6Y/10TF1mTJ2Z7nHyl+O8+E0A5YKR7YJHecjBjZrrZxuEZ+sf/q81/i4qxTD/F2O/r+LMsvSzmaEhjwflTqvLmygomchOy8CNVjutUfp+EexglnHagDFIV+XpeX7VMvFDJnjOYqRnKSTM4pv6gAo4t1/0slz8RCMxx0fTYULzBzg6i+fsfKKrxOWgXHhHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=roW5KVOAGnfiOCy0GZKdgyt2d8q4N/bINxteGDGwego=;
 b=hwOKVTnF3I5LCyOQLbMySbZFuN5aDmhD5HqWHgHmI/8HWo4R1rd9z74gFqQbxpMhbY7HErJNGBca87qLF8L0qkg7J9tIc99MdVtXNsARV8Dmp5N4egvuH2vrLdsF/KmnwTa/0X+zVSc2Yt0sLfx6NQV8URVi7DvHFZr/Li13t8eTSt3CnF9hogjiTNKT0IjblDK1Y8Y7XVMuKIOwJtM+uW7wqoTAaCnd0GcNCnmMqwIpKsO9yoZZFztHjgU/28iz0ESH4VeebYg1D31cyIG7/VKSo6If49kRovlJMZn5Q9pyjDQpdELS1Pajb80OFXkJ/5+Wv3kVXhTqnL18nSk9VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sierrawireless.com; dmarc=pass action=none
 header.from=sierrawireless.com; dkim=pass header.d=sierrawireless.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sierrawireless.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=roW5KVOAGnfiOCy0GZKdgyt2d8q4N/bINxteGDGwego=;
 b=EHV/nG6KnxWon/HLXv0gurTMmSFhLQolSX8x20m9mXMr6jRxw92/fAwPo7TxI2gwtK30Mp94jfXSCAeNtDHiW4zhpHvaJZ8Lp2Oaf9rc62W4EdLRkdVu5+KNslDF8OI+EX1HHYS79R3zu8T4L86lZuG4EyAvEKs4KFSknYRmch4=
Received: from CO6PR02MB8740.namprd02.prod.outlook.com (2603:10b6:303:137::20)
 by CO6PR02MB7700.namprd02.prod.outlook.com (2603:10b6:303:a7::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.19; Tue, 16 Nov
 2021 16:43:10 +0000
Received: from CO6PR02MB8740.namprd02.prod.outlook.com
 ([fe80::49b8:c463:ddb0:47c0]) by CO6PR02MB8740.namprd02.prod.outlook.com
 ([fe80::49b8:c463:ddb0:47c0%9]) with mapi id 15.20.4690.027; Tue, 16 Nov 2021
 16:43:10 +0000
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: Martin Jansa <martin.jansa@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Dunfell - ERROR: ca-certificates-20211016-r0 do_fetch:
 Fetcher failure
Thread-Topic: [yocto] Dunfell - ERROR: ca-certificates-20211016-r0 do_fetch:
 Fetcher failure
Thread-Index: AQHX0RA900BWtHKgJ0eghj1mJDarV6vygxyAgBPscDY=
Date: Tue, 16 Nov 2021 16:43:10 +0000
Message-ID: 
 <CO6PR02MB87401C9A3FC90F1A92418A16B2999@CO6PR02MB8740.namprd02.prod.outlook.com>
References: 
 <CO6PR02MB87407C625F4A1F4A228EC9C2B28D9@CO6PR02MB8740.namprd02.prod.outlook.com>
 <CA+chaQft9bsFnY8g7gxXPbSjEwzpc-LB62GRM__DHukn44oybQ@mail.gmail.com>
In-Reply-To: 
 <CA+chaQft9bsFnY8g7gxXPbSjEwzpc-LB62GRM__DHukn44oybQ@mail.gmail.com>
Accept-Language: en-CA, en-US
Content-Language: en-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sierrawireless.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1a902934-9d5c-4dc4-9604-08d9a9202cd5
x-ms-traffictypediagnostic: CO6PR02MB7700:
x-microsoft-antispam-prvs: 
 <CO6PR02MB770052CB06C8EBC235631096B2999@CO6PR02MB7700.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Yr/OKSBdORXwnI/tErXaE0CEpgivSy+YdSEV86WvfPqtvyPhhZu/WWDH9TY1mswgfrYwx7eBk7x+Kw0LcqOcjKW8jEU7yQkrQkC2Z/zjPhJYwFsb2uyUTGVSLyKkPNXTHwRwnqhnbfB8Mpo5jGJYIaalxFX8+VU1QNSf0InNV5YUasd8UTWJbOtU//LF7bPk3WAPKF1ZKFcqIeRi7GsPoX5bdkY1dy9b/hFDDi6iFZPSf2tGgaUJDXusu77XtQg2zfc7T2geg5oJ5iz2NbTC2vhldyNiB1WDk0MaZk2CXSmRvhYZqSVOswAESaiuOQ6HG6lfbe8wM14vgItpGG2tACUn2oGs2TeOtTvgY0yCRxrPUdcr5ntmAG9fSE+Uexx9WpqUBGf/vLGLdI8x9XSmcQW0xO5rL9mGvexWMOeOBWXv7Tgw9PzhvWkaO83S465WaNtgBP8p+Kvvo+8KEkwi9tzTGkRqudRFtzyPE0o3gq21I2jtEovzH+PBQzDOXzkDc2jZs6xqp6E1yae2WvJlFMoFiktcNjz0HB+poCBSlF3uCcUaIvoEdtM/CZQVCwZWlvbxujpAegfy7tgidmSPyo+fnSjgE98qZvRXp/3zGJj3PVe4RUU1FOhPhvLxnzAPDPUfGYczT9Mf6b4c51lAehgNM5Ws92vHjhiIB0juiar47agZ2Yx/3/Jp6DfAyh1IgyyZzrbBU1M2jbJKNw622yVCjNYgbF0deG12D9e0V8H6exH+u47/GKWgEv3+ynkj3N0fULseh0JasyAP79tI+4C9hiWmfg5FsABOQge6RGYjoj/UtelCZdikHSzgrqrsPkqh1OHTXK3r8j9VL0HUCg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR02MB8740.namprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(55016002)(316002)(122000001)(2906002)(186003)(53546011)(38100700002)(4326008)(76116006)(52536014)(33656002)(66446008)(64756008)(66556008)(7696005)(66946007)(6916009)(66476007)(9686003)(6506007)(83380400001)(8676002)(5660300002)(86362001)(166002)(8936002)(508600001)(38070700005)(966005)(71200400001)(40140700001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?9SirNiulpkIPz8M+GX/C3REOqh+YfkgDG4EHYzeRGmCG7TxOlSET8kk0?=
 =?Windows-1252?Q?t4fxjfefrEj88CgZGxJgiFbX2E20oLkh4T7iEikZRdLokwrtY40bcw1b?=
 =?Windows-1252?Q?G5k/y4l7MK+Oyq1DLwWKrIEPUcNWm6wfY4yPcthAZkoq/siotpKCEkeg?=
 =?Windows-1252?Q?i0yFG3EVnDIxP5qFL0UzdaKK1Wi561TnerSrBq4mydWM4nRHGcLnyu/5?=
 =?Windows-1252?Q?0rwvaA/EXVF57iqeRy8ksY6QwnGJOj0MA9ayVsh6gZvpX3HydG16lV/5?=
 =?Windows-1252?Q?9ec/3S8Q5nkHZ4epLk/6cWBsDOFXFxfZHsmdkzg/fQyqFKr3n5toCeEO?=
 =?Windows-1252?Q?36Nuiam5ZVFN/K67gb0Tk89piwFAt5DvDxVGypoIwSeaFB9xCG4wadv9?=
 =?Windows-1252?Q?QZgifxK/L1gUZaNXctqTDdPSNNGsx4vl+YOA2C8wn/Ld2aTV5eWYIX1H?=
 =?Windows-1252?Q?a1KWVE6a1/odhFJMminpgxl2oUSHHAXD3mvRquo/CGrqZaK1HnEyhp2b?=
 =?Windows-1252?Q?vpzgCclDm4sN+ZZQz46JkJWvX4ZAfmOaiEpvi2WIGZ8uRbXMF/tYuxO+?=
 =?Windows-1252?Q?8mt62YvEkzVf5Bgqux3SUdnYfAj8hOMgFbksrzQHy5nI4ppAlgI6o9oG?=
 =?Windows-1252?Q?LgzkX9+wcdE1XHAyjFOpz/nTnQymE15eLbcNNxqkM93HpDqDKnlzpHA3?=
 =?Windows-1252?Q?Vt2G/7cRl26xW0bSBrxtkc44RluXEUcH/Axg0QXyLgBO505v56A5X06X?=
 =?Windows-1252?Q?SLJFXiisvcQZtmzrAXcUtG8iDiIkvmY0i2BNGBNrBIz7k+Q4E6MObZwZ?=
 =?Windows-1252?Q?cNDzKJQvz4WcW+cPYD6RErb1lp6HqNkwx8QF3P6aJ0l1upeknqwpiYZ+?=
 =?Windows-1252?Q?OiO/fenuhhm6syySNFj3z3ERmcOEqvKCdNr4IcSzIB5ezLc/cGwOdVFn?=
 =?Windows-1252?Q?zjn36gBreedQoqgLeLMc+NRD8hSxJ1NEshL0HwgK/SIrg6Pt8e/0cSUw?=
 =?Windows-1252?Q?2LjeqR9TNN2ODUpvwvYxn/QwbvpLUov0J/6ao9bP5cg8It7K1C/4CFra?=
 =?Windows-1252?Q?SKknljmi7f6HhS/YUUwqGjiWLEj2FHeoQRKXwQPyfQ1yZDcuFjRU0pEM?=
 =?Windows-1252?Q?D4v/zUiS4m9gkjPnCh74EgsRxn0kjf/shnEmwG9GecwUGp2OxoPpC7te?=
 =?Windows-1252?Q?O7DdN1PQwo43R8kK0sWL2T65sgFiJglw/P8BIMlef14EVezdSDh/40Ut?=
 =?Windows-1252?Q?GrCVBydXtpI53Fof+CYYerLAzeAGl8FrGE+Jw+f8jrW0WIqaRyzqasul?=
 =?Windows-1252?Q?LfkTtYGZnKVYejPL72XjLY4aBqNKxVlBcQ5l7hFyeiy4AMopO+t3MgZu?=
 =?Windows-1252?Q?j5o6JUyGEsBAtKde+kYLmqSUePRr67lFlFDNUMbXtgm9oYiyvt1Dbd3r?=
 =?Windows-1252?Q?pzNFMCITCX60HgvxcAoclP9b2MJd+vOYT03J8wAk5HQs1yBHgXUigtiT?=
 =?Windows-1252?Q?UgD8Mzf16IDHyWHhxW6JcC36P7LpM/f0CQblRcaxLBeXjoFjupTMkAn2?=
 =?Windows-1252?Q?iTgeyKQoiKlQq7tXJZattqVhYziyakWbWCatHz6JZkhrqLGQg7fqKTC1?=
 =?Windows-1252?Q?Vpf94YMSNf/V4o/gUYBykuZiSjJWb42WJKN5FvTR6fu8wzoFMY4BI52H?=
 =?Windows-1252?Q?NonZUsfR+kNLZromNPSRsHEPwZuWR6hA1LQAHifsYVh+bCxfY6NGze0X?=
 =?Windows-1252?Q?HInA+YJczogEa5WI1XiaZJZUCuFXnunmIIqN7PIsYel0XWhG9vagTbnT?=
 =?Windows-1252?Q?E6opcN+zOoy3euHyg/maGxSuAdQoX2lLpfqrOieh42L6hA/VRVslnCHt?=
 =?Windows-1252?Q?CG5+2zm89MuBAa5WCv6R5LkUCrStwksKuxI=3D?=
Content-Type: multipart/alternative;
	boundary="_000_CO6PR02MB87401C9A3FC90F1A92418A16B2999CO6PR02MB8740namp_"
MIME-Version: 1.0
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR02MB8740.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 1a902934-9d5c-4dc4-9604-08d9a9202cd5
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2021 16:43:10.3787
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 rs2NmUYJLsWH/Ty1RMxUaJ3f0wDeWag193MV3eCpdyqmLVjQBaH9QvQNsTqqp5oigfGXaEWk5NhFS1G2hfZqF3Ml8Ma1WmCw6uvTMQGMj2s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR02MB7700
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Nov 2021 16:43:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55347

--_000_CO6PR02MB87401C9A3FC90F1A92418A16B2999CO6PR02MB8740namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Thanks Martin,

I added an extra step to sync up the ca-certificates within my docker conta=
iner that I use to build dunfell.  This seems to have resolved the issue th=
at I encountered.



Regards,

Darcy

Darcy Watkins ::  Senior Staff Engineer, Firmware

SIERRA WIRELESS
Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +1 604 231 11=
00
13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
[M4]
dwatkins@sierrawireless.com<mailto:dwatkins@sierrawireless.com> :: www.sier=
rawireless.com<http://www.sierrawireless.com/>

From: Martin Jansa <martin.jansa@gmail.com>
Date: Wednesday, November 3, 2021 at 5:26 PM
To: Darcy Watkins <dwatkins@sierrawireless.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Dunfell - ERROR: ca-certificates-20211016-r0 do_fetch:=
 Fetcher failure
Most likely expired Let's Encrypt certificate (which salsa.debian.org<https=
://can01.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Fsalsa.debian.=
org%2F&data=3D04%7C01%7Cdwatkins%40sierrawireless.com%7C17dc364915194089e3d=
308d99f29c8f9%7C08059a4c248643dd89e33a747e0dcbe8%7C1%7C0%7C6377158240940236=
32%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1h=
aWwiLCJXVCI6Mn0%3D%7C1000&sdata=3DEEF1F0g1K2u7ShE5pBdfQM7LlAEZOKvt47hxsDTqk=
l8%3D&reserved=3D0> where ca-certificates are hoster is using) on your buil=
der (host OS), see e.g. for ubuntu:
https://bugs.launchpad.net/ubuntu/+source/openssl/+bug/1928989<https://can0=
1.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fbugs.launchpad.net%=
2Fubuntu%2F%2Bsource%2Fopenssl%2F%2Bbug%2F1928989&data=3D04%7C01%7Cdwatkins=
%40sierrawireless.com%7C17dc364915194089e3d308d99f29c8f9%7C08059a4c248643dd=
89e33a747e0dcbe8%7C1%7C0%7C637715824094033602%7CUnknown%7CTWFpbGZsb3d8eyJWI=
joiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=
=3DVrVxhORfor8nsL9izU16kZFTrmVBJCqG2%2FdugO%2BIVNU%3D&reserved=3D0>

So to fix this update ca-certificates on your host distribution and then it=
 should be fine.

On Thu, Nov 4, 2021 at 1:20 AM Darcy Watkins <dwatkins@sierrawireless.com<m=
ailto:dwatkins@sierrawireless.com>> wrote:
Hi,

After syncup of Yocto dunfell, I get the following error:


dwatkins@carmd-ed-n11377-docker-dwatkins_apollo17:64bit build $ bitbake ca-=
certificates -c fetch

Loading cache: 100% |######################################################=
###########################################################################=
###########################################################################=
#####################################| Time: 0:00:00

Loaded 4042 entries from dependency cache.

Parsing recipes: 100% |####################################################=
###########################################################################=
###########################################################################=
#####################################| Time: 0:00:00

Parsing of 2833 .bb files complete (2815 cached, 18 parsed). 4060 targets, =
183 skipped, 0 masked, 0 errors.

WARNING: No recipes available for:

  /home/dwatkins/workspace/mgos/apollo17/meta-mg90-bsp/recipes-kernel/firmw=
are/linux-firmware_git.bbappend

  /home/dwatkins/workspace/mgos/apollo17/meta-mg90-bsp/recipes-kernel/linux=
/linux-qoriq_4.19.bbappend

  /home/dwatkins/workspace/mgos/apollo17/meta-mgos-distro/meta-openssl-fips=
/recipes-support/openssl/openssl_1.0.2%.bbappend

  /home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-support/che=
rrypy/cherrypy-python_%.bbappend

  /home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-support/hos=
tapd/hostapd_2.6.bbappend

  /home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-support/hos=
tapd/hostapd_2.8.bbappend

  /home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-support/wpa=
-supplicant/wpa-supplicant_2.6.bbappend

  /home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-support/wpa=
-supplicant/wpa-supplicant_2.7.bbappend

NOTE: Resolving any missing task queue dependencies



Build Configuration:

BB_VERSION           =3D "1.46.0"

BUILD_SYS            =3D "x86_64-linux"

NATIVELSBSTRING      =3D "universal"

TARGET_SYS           =3D "arm-poky-linux-gnueabi"

MACHINE              =3D "mg90"

DISTRO               =3D "mgos"

DISTRO_VERSION       =3D "3.1.11"

TUNE_FEATURES        =3D "arm vfp cortexa7 neon callconvention-hard"

TARGET_FPU           =3D "hard"

meta-mgos-core       =3D "main:96c5c6d35f19d16f65100ee29cb23e9a1470876c"

meta-mgos-release    =3D "main:0825ac63c95db495330848f80d6d68b6f47a77d4"

meta-mg90-bsp        =3D "main:47d0284b7a337df7587055c405213f9428c94884"

meta-mgos-airprime   =3D "main:5e8ffb01629c60d282b22e3313740e3b2cf325f4"

meta

meta-daisy-cf

meta-openssl-fips

meta-sigma           =3D "main:abf8a7a7408b690dfb0dff796ce8e94b6b661b0d"

meta

meta-poky

meta-yocto-bsp       =3D "HEAD:0810ac6b926cd901f0619e95f367efc79d4c3159"

meta-oe

meta-networking

meta-python

meta-perl            =3D "HEAD:814eec96c2a29172da57a425a3609f8b6fcc6afe"

meta-security

meta-integrity

meta-security-compliance

meta-security-isafw  =3D "HEAD:b76698c788cb8ca632077a972031899ef15025d6"

meta-freescale       =3D "HEAD:727fd8df20c8ee58474ce15cd5e1459f14bee977"

meta-java            =3D "HEAD:6e84638d77ac921aac46649095bca5ddbde94d2a"

workspace            =3D "<unknown>:<unknown>"



Initialising tasks: 100% |#################################################=
###########################################################################=
###########################################################################=
#####################################| Time: 0:00:00

Sstate summary: Wanted 0 Found 0 Missed 0 Current 0 (0% match, 0% complete)

NOTE: No setscene tasks

NOTE: Executing Tasks

WARNING: ca-certificates-20211016-r0 do_fetch: Failed to fetch URL git://sa=
lsa.debian.org/debian/ca-certificates.git;protocol=3Dhttps<https://can01.sa=
felinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Fsalsa.debian.org%2Fdebia=
n%2Fca-certificates.git%3Bprotocol%3Dhttps&data=3D04%7C01%7Cdwatkins%40sier=
rawireless.com%7C17dc364915194089e3d308d99f29c8f9%7C08059a4c248643dd89e33a7=
47e0dcbe8%7C1%7C0%7C637715824094033602%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4w=
LjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=3D138AI=
RTehPauZBvZO%2F4%2FxLROE0qdwEDLA%2B2JLVDWesk%3D&reserved=3D0>, attempting M=
IRRORS if available

ERROR: ca-certificates-20211016-r0 do_fetch: Fetcher failure: Fetch command=
 export PSEUDO_DISABLED=3D1; export PATH=3D"/home/dwatkins/workspace/mgos/a=
pollo17/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/dwatkins/wo=
rkspace/mgos/apollo17/upstream/yocto/poky/scripts:/home/dwatkins/workspace/=
mgos/apollo17/build/tmp/work/all-poky-linux/ca-certificates/20211016-r0/rec=
ipe-sysroot-native/usr/bin/allarch-poky-linux:/home/dwatkins/workspace/mgos=
/apollo17/build/tmp/work/all-poky-linux/ca-certificates/20211016-r0/recipe-=
sysroot/usr/bin/crossscripts:/home/dwatkins/workspace/mgos/apollo17/build/t=
mp/work/all-poky-linux/ca-certificates/20211016-r0/recipe-sysroot-native/us=
r/sbin:/home/dwatkins/workspace/mgos/apollo17/build/tmp/work/all-poky-linux=
/ca-certificates/20211016-r0/recipe-sysroot-native/usr/bin:/home/dwatkins/w=
orkspace/mgos/apollo17/build/tmp/work/all-poky-linux/ca-certificates/202110=
16-r0/recipe-sysroot-native/sbin:/home/dwatkins/workspace/mgos/apollo17/bui=
ld/tmp/work/all-poky-linux/ca-certificates/20211016-r0/recipe-sysroot-nativ=
e/bin:/home/dwatkins/workspace/mgos/apollo17/upstream/yocto/poky/bitbake/bi=
n:/home/dwatkins/workspace/mgos/apollo17/build/tmp/hosttools"; export HOME=
=3D"/home/dwatkins"; LANG=3DC git -c core.fsyncobjectfiles=3D0 fetch -f --p=
rogress "https://salsa.debian.org/debian/ca-certificates.git<https://can01.=
safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fsalsa.debian.org%2Fde=
bian%2Fca-certificates.git&data=3D04%7C01%7Cdwatkins%40sierrawireless.com%7=
C17dc364915194089e3d308d99f29c8f9%7C08059a4c248643dd89e33a747e0dcbe8%7C1%7C=
0%7C637715824094043546%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoi=
V2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=3DvOtQ6JonoKq%2BkjJFdjb=
NrnzjZWW9JfZoKSRtL9dk1e4%3D&reserved=3D0>" refs/*:refs/* failed with exit c=
ode 128, no output

ERROR: ca-certificates-20211016-r0 do_fetch: Bitbake Fetcher Error: FetchEr=
ror('Unable to fetch URL from any source.', 'git://salsa.debian.org/debian/=
ca-certificates.git;protocol=3Dhttps<https://can01.safelinks.protection.out=
look.com/?url=3Dhttp%3A%2F%2Fsalsa.debian.org%2Fdebian%2Fca-certificates.gi=
t%3Bprotocol%3Dhttps&data=3D04%7C01%7Cdwatkins%40sierrawireless.com%7C17dc3=
64915194089e3d308d99f29c8f9%7C08059a4c248643dd89e33a747e0dcbe8%7C1%7C0%7C63=
7715824094053498%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMz=
IiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=3DyLKDzQwmQEFG0nOiKXbOxnUyqpP=
0NiWPWfPVL44PGho%3D&reserved=3D0>')

ERROR: Logfile of failure stored in: /home/dwatkins/workspace/mgos/apollo17=
/build/tmp/work/all-poky-linux/ca-certificates/20211016-r0/temp/log.do_fetc=
h.11215

ERROR: Task (/home/dwatkins/workspace/mgos/apollo17/upstream/yocto/poky/met=
a/recipes-support/ca-certificates/ca-certificates_20211016.bb:do_fetch) fai=
led with exit code '1'

NOTE: Tasks Summary: Attempted 1 tasks of which 0 didn't need to be rerun a=
nd 1 failed.



Summary: 1 task failed:

  /home/dwatkins/workspace/mgos/apollo17/upstream/yocto/poky/meta/recipes-s=
upport/ca-certificates/ca-certificates_20211016.bb:do_fetch

Summary: There were 2 WARNING messages shown.

Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

dwatkins@carmd-ed-n11377-docker-dwatkins_apollo17:64bit build $


Looking in the git history, I find a recent commit=85

commit 7158bf0775383eefcec148c47310b4681bfbed86
Author: Alexander Kanavin <alex.kanavin@gmail.com<mailto:alex.kanavin@gmail=
.com>>
Date:   Tue Oct 19 17:33:29 2021 +0200

    ca-certificates: update 20210119 -> 20211016

    (From OE-Core rev: 43aa25b523b2c11ce483ea22435196dfca259b30)

    Signed-off-by: Alexander Kanavin <alex@linutronix.de<mailto:alex@linutr=
onix.de>>
    Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com<mailto:=
alexandre.belloni@bootlin.com>>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org<mailt=
o:richard.purdie@linuxfoundation.org>>
    (cherry picked from commit c479b8a810d966d7267af1b4dac38a46f55fc547)
    Signed-off-by: Steve Sakoman <steve@sakoman.com<mailto:steve@sakoman.co=
m>>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org<mailt=
o:richard.purdie@linuxfoundation.org>>


I don=92t think this is necessarily the culprit as I likely fetched long ag=
o and have been using cached content since.

Is this part of that unauthenticated GIT protocol issue?



Regards,

Darcy

Darcy Watkins ::  Senior Staff Engineer, Firmware

SIERRA WIRELESS
Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +1 604 231 11=
00
13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
[M4]
dwatkins@sierrawireless.com<mailto:dwatkins@sierrawireless.com> :: www.sier=
rawireless.com<https://can01.safelinks.protection.outlook.com/?url=3Dhttp%3=
A%2F%2Fwww.sierrawireless.com%2F&data=3D04%7C01%7Cdwatkins%40sierrawireless=
.com%7C17dc364915194089e3d308d99f29c8f9%7C08059a4c248643dd89e33a747e0dcbe8%=
7C1%7C0%7C637715824094053498%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLC=
JQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=3DIIeKD8ZOg7no%2B=
z2g2C6dXnUCTTGzjCcWWW1dm%2FIqff0%3D&reserved=3D0>

-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#55236): https://lists.yoctoproject.org/g/yocto/message/=
55236<https://can01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fl=
ists.yoctoproject.org%2Fg%2Fyocto%2Fmessage%2F55236&data=3D04%7C01%7Cdwatki=
ns%40sierrawireless.com%7C17dc364915194089e3d308d99f29c8f9%7C08059a4c248643=
dd89e33a747e0dcbe8%7C1%7C0%7C637715824094063459%7CUnknown%7CTWFpbGZsb3d8eyJ=
WIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdat=
a=3D1QA2n9YP8dlGEd8NebDxWsrboNlG%2FDlMU9uE9NnKQKM%3D&reserved=3D0>
Mute This Topic: https://lists.yoctoproject.org/mt/86806146/3617156<https:/=
/can01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.yoctopro=
ject.org%2Fmt%2F86806146%2F3617156&data=3D04%7C01%7Cdwatkins%40sierrawirele=
ss.com%7C17dc364915194089e3d308d99f29c8f9%7C08059a4c248643dd89e33a747e0dcbe=
8%7C1%7C0%7C637715824094063459%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAi=
LCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=3DGXIvjXtHP0Bgd=
IP6niV9BgfThymU5QoxTH5SBk58uXY%3D&reserved=3D0>
Group Owner: yocto+owner@lists.yoctoproject.org<mailto:yocto%2Bowner@lists.=
yoctoproject.org>
Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub<https://can01.saf=
elinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2=
Fg%2Fyocto%2Funsub&data=3D04%7C01%7Cdwatkins%40sierrawireless.com%7C17dc364=
915194089e3d308d99f29c8f9%7C08059a4c248643dd89e33a747e0dcbe8%7C1%7C0%7C6377=
15824094073421%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIi=
LCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=3DMEgkbrmrVRRRBCQf3OYxSylOW%2Bb=
R9tXrsBSAf0Rwinw%3D&reserved=3D0> [Martin.Jansa@gmail.com<mailto:Martin.Jan=
sa@gmail.com>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

--_000_CO6PR02MB87401C9A3FC90F1A92418A16B2999CO6PR02MB8740namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Menlo;
	panose-1:2 11 6 9 3 8 4 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-CA" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Thanks Martin,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I added an extra step to sync up the ca-certificates=
 within my docker container that I use to build dunfell.&nbsp; This seems t=
o have resolved the issue that I encountered.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">&nbsp;</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Regards,</span></b><span lan=
g=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">&nbsp;</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Darcy</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">&nbsp;</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Darcy Watkins ::&nbsp;&nbsp;=
Senior Staff Engineer, Firmware</span></b><span lang=3D"EN-US"><o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">&nbsp;</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"color:red">SIERRA W=
IRELESS</span></b><span lang=3D"EN-US" style=3D"color:red"><o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Direct&nbsp; +1 604 233 7989&nb=
sp; &nbsp;::&nbsp;&nbsp;Fax&nbsp;&nbsp;+1 604 231 1109&nbsp; ::&nbsp;&nbsp;=
Main&nbsp;&nbsp;+1 604 231 1100<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">13811 Wireless Way&nbsp; ::&nbs=
p;Richmond, BC Canada V6V 3A4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[M4]<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"mailto:dwatkins@sier=
rawireless.com"><span style=3D"color:#0563C1">dwatkins@sierrawireless.com</=
span></a>&nbsp;::&nbsp;<a href=3D"http://www.sierrawireless.com/"><span sty=
le=3D"color:#0563C1">www.sierrawireless.com</span></a>
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">Martin Jansa &lt;ma=
rtin.jansa@gmail.com&gt;<br>
<b>Date: </b>Wednesday, November 3, 2021 at 5:26 PM<br>
<b>To: </b>Darcy Watkins &lt;dwatkins@sierrawireless.com&gt;<br>
<b>Cc: </b>yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject: </b>Re: [yocto] Dunfell - ERROR: ca-certificates-20211016-r0 do=
_fetch: Fetcher failure<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal">Most likely expired Let's Encrypt certificate (which=
 <a href=3D"https://can01.safelinks.protection.outlook.com/?url=3Dhttp%3A%2=
F%2Fsalsa.debian.org%2F&amp;data=3D04%7C01%7Cdwatkins%40sierrawireless.com%=
7C17dc364915194089e3d308d99f29c8f9%7C08059a4c248643dd89e33a747e0dcbe8%7C1%7=
C0%7C637715824094023632%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjo=
iV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3DEEF1F0g1K2u7ShE5=
pBdfQM7LlAEZOKvt47hxsDTqkl8%3D&amp;reserved=3D0">
salsa.debian.org</a> where ca-certificates are hoster is using) on your bui=
lder (host OS), see e.g. for ubuntu:<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><a href=3D"https://can01.safelinks.protection.outloo=
k.com/?url=3Dhttps%3A%2F%2Fbugs.launchpad.net%2Fubuntu%2F%2Bsource%2Fopenss=
l%2F%2Bbug%2F1928989&amp;data=3D04%7C01%7Cdwatkins%40sierrawireless.com%7C1=
7dc364915194089e3d308d99f29c8f9%7C08059a4c248643dd89e33a747e0dcbe8%7C1%7C0%=
7C637715824094033602%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2=
luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3DVrVxhORfor8nsL9izU1=
6kZFTrmVBJCqG2%2FdugO%2BIVNU%3D&amp;reserved=3D0">https://bugs.launchpad.ne=
t/ubuntu/+source/openssl/+bug/1928989</a><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">So to fix this update ca-certificates on your host d=
istribution and then it should be fine.<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Thu, Nov 4, 2021 at 1:20 AM Darcy Watkins &lt;<a =
href=3D"mailto:dwatkins@sierrawireless.com" target=3D"_blank">dwatkins@sier=
rawireless.com</a>&gt; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">After syncup of Yocto dunfell, I get the following error:<o:p></o:=
p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p>dwatkins@carmd-ed-n11377-docker-dwatkins_apollo17:64bit build $ bitbake =
ca-certificates -c fetch<o:p></o:p></p>
<p>Loading cache: 100% |###################################################=
###########################################################################=
###########################################################################=
########################################|
 Time: 0:00:00<o:p></o:p></p>
<p>Loaded 4042 entries from dependency cache.<o:p></o:p></p>
<p>Parsing recipes: 100% |#################################################=
###########################################################################=
###########################################################################=
########################################|
 Time: 0:00:00<o:p></o:p></p>
<p>Parsing of 2833 .bb files complete (2815 cached, 18 parsed). 4060 target=
s, 183 skipped, 0 masked, 0 errors.<o:p></o:p></p>
<p><b>WARNING</b>: No recipes available for:<o:p></o:p></p>
<p>&nbsp; /home/dwatkins/workspace/mgos/apollo17/meta-mg90-bsp/recipes-kern=
el/firmware/linux-firmware_git.bbappend<o:p></o:p></p>
<p>&nbsp; /home/dwatkins/workspace/mgos/apollo17/meta-mg90-bsp/recipes-kern=
el/linux/linux-qoriq_4.19.bbappend<o:p></o:p></p>
<p>&nbsp; /home/dwatkins/workspace/mgos/apollo17/meta-mgos-distro/meta-open=
ssl-fips/recipes-support/openssl/openssl_1.0.2%.bbappend<o:p></o:p></p>
<p>&nbsp; /home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-sup=
port/cherrypy/cherrypy-python_%.bbappend<o:p></o:p></p>
<p>&nbsp; /home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-sup=
port/hostapd/hostapd_2.6.bbappend<o:p></o:p></p>
<p>&nbsp; /home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-sup=
port/hostapd/hostapd_2.8.bbappend<o:p></o:p></p>
<p>&nbsp; /home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-sup=
port/wpa-supplicant/wpa-supplicant_2.6.bbappend<o:p></o:p></p>
<p>&nbsp; /home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-sup=
port/wpa-supplicant/wpa-supplicant_2.7.bbappend<o:p></o:p></p>
<p><b>NOTE</b>: Resolving any missing task queue dependencies<o:p></o:p></p=
>
<p>&nbsp;<o:p></o:p></p>
<p>Build Configuration:<o:p></o:p></p>
<p>BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;1.46.0&quot;<o:p=
></o:p></p>
<p>BUILD_SYS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;x86_64-linu=
x&quot;<o:p></o:p></p>
<p>NATIVELSBSTRING&nbsp; &nbsp; &nbsp; =3D &quot;universal&quot;<o:p></o:p>=
</p>
<p>TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;arm-poky-linux-g=
nueabi&quot;<o:p></o:p></p>
<p>MACHINE&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;mg90&q=
uot;<o:p></o:p></p>
<p>DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;mgos&q=
uot;<o:p></o:p></p>
<p>DISTRO_VERSION &nbsp; &nbsp; &nbsp; =3D &quot;3.1.11&quot;<o:p></o:p></p=
>
<p>TUNE_FEATURES&nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;arm vfp cortexa7 neon=
 callconvention-hard&quot;<o:p></o:p></p>
<p>TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;hard&quot;<o:p><=
/o:p></p>
<p>meta-mgos-core &nbsp; &nbsp; &nbsp; =3D &quot;main:96c5c6d35f19d16f65100=
ee29cb23e9a1470876c&quot;<o:p></o:p></p>
<p>meta-mgos-release&nbsp; &nbsp; =3D &quot;main:0825ac63c95db495330848f80d=
6d68b6f47a77d4&quot;<o:p></o:p></p>
<p>meta-mg90-bsp&nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;main:47d0284b7a337df7=
587055c405213f9428c94884&quot;<o:p></o:p></p>
<p>meta-mgos-airprime &nbsp; =3D &quot;main:5e8ffb01629c60d282b22e3313740e3=
b2cf325f4&quot;<o:p></o:p></p>
<p>meta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<o:p><=
/o:p></p>
<p>meta-daisy-cf &nbsp; &nbsp; &nbsp; &nbsp;<o:p></o:p></p>
<p>meta-openssl-fips &nbsp; &nbsp;<o:p></o:p></p>
<p>meta-sigma &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;main:abf8a7a7408=
b690dfb0dff796ce8e94b6b661b0d&quot;<o:p></o:p></p>
<p>meta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<o:p><=
/o:p></p>
<p>meta-poky &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<o:p></o:p></p>
<p>meta-yocto-bsp &nbsp; &nbsp; &nbsp; =3D &quot;HEAD:0810ac6b926cd901f0619=
e95f367efc79d4c3159&quot;<o:p></o:p></p>
<p>meta-oe &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<o:p></o:p></p>
<p>meta-networking &nbsp; &nbsp; &nbsp;<o:p></o:p></p>
<p>meta-python &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<o:p></o:p></p>
<p>meta-perl&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;HEAD:814eec=
96c2a29172da57a425a3609f8b6fcc6afe&quot;<o:p></o:p></p>
<p>meta-security &nbsp; &nbsp; &nbsp; &nbsp;<o:p></o:p></p>
<p>meta-integrity&nbsp; &nbsp; &nbsp; &nbsp;<o:p></o:p></p>
<p>meta-security-compliance&nbsp;<o:p></o:p></p>
<p>meta-security-isafw&nbsp; =3D &quot;HEAD:b76698c788cb8ca632077a972031899=
ef15025d6&quot;<o:p></o:p></p>
<p>meta-freescale &nbsp; &nbsp; &nbsp; =3D &quot;HEAD:727fd8df20c8ee58474ce=
15cd5e1459f14bee977&quot;<o:p></o:p></p>
<p>meta-java&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;HEAD:6e8463=
8d77ac921aac46649095bca5ddbde94d2a&quot;<o:p></o:p></p>
<p>workspace&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;&lt;unknown=
&gt;:&lt;unknown&gt;&quot;<o:p></o:p></p>
<p>&nbsp;<o:p></o:p></p>
<p>Initialising tasks: 100% |##############################################=
###########################################################################=
###########################################################################=
########################################|
 Time: 0:00:00<o:p></o:p></p>
<p>Sstate summary: Wanted 0 Found 0 Missed 0 Current 0 (0% match, 0% comple=
te)<o:p></o:p></p>
<p><b>NOTE</b>: No setscene tasks<o:p></o:p></p>
<p><b>NOTE</b>: Executing Tasks<o:p></o:p></p>
<p><b>WARNING</b>: ca-certificates-20211016-r0 do_fetch: Failed to fetch UR=
L git://<a href=3D"https://can01.safelinks.protection.outlook.com/?url=3Dht=
tp%3A%2F%2Fsalsa.debian.org%2Fdebian%2Fca-certificates.git%3Bprotocol%3Dhtt=
ps&amp;data=3D04%7C01%7Cdwatkins%40sierrawireless.com%7C17dc364915194089e3d=
308d99f29c8f9%7C08059a4c248643dd89e33a747e0dcbe8%7C1%7C0%7C6377158240940336=
02%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1h=
aWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3D138AIRTehPauZBvZO%2F4%2FxLROE0qdwEDLA=
%2B2JLVDWesk%3D&amp;reserved=3D0" target=3D"_blank">salsa.debian.org/debian=
/ca-certificates.git;protocol=3Dhttps</a>,
 attempting MIRRORS if available<o:p></o:p></p>
<p><b>ERROR</b>: ca-certificates-20211016-r0 do_fetch: Fetcher failure: Fet=
ch command export PSEUDO_DISABLED=3D1; export PATH=3D&quot;/home/dwatkins/w=
orkspace/mgos/apollo17/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/h=
ome/dwatkins/workspace/mgos/apollo17/upstream/yocto/poky/scripts:/home/dwat=
kins/workspace/mgos/apollo17/build/tmp/work/all-poky-linux/ca-certificates/=
20211016-r0/recipe-sysroot-native/usr/bin/allarch-poky-linux:/home/dwatkins=
/workspace/mgos/apollo17/build/tmp/work/all-poky-linux/ca-certificates/2021=
1016-r0/recipe-sysroot/usr/bin/crossscripts:/home/dwatkins/workspace/mgos/a=
pollo17/build/tmp/work/all-poky-linux/ca-certificates/20211016-r0/recipe-sy=
sroot-native/usr/sbin:/home/dwatkins/workspace/mgos/apollo17/build/tmp/work=
/all-poky-linux/ca-certificates/20211016-r0/recipe-sysroot-native/usr/bin:/=
home/dwatkins/workspace/mgos/apollo17/build/tmp/work/all-poky-linux/ca-cert=
ificates/20211016-r0/recipe-sysroot-native/sbin:/home/dwatkins/workspace/mg=
os/apollo17/build/tmp/work/all-poky-linux/ca-certificates/20211016-r0/recip=
e-sysroot-native/bin:/home/dwatkins/workspace/mgos/apollo17/upstream/yocto/=
poky/bitbake/bin:/home/dwatkins/workspace/mgos/apollo17/build/tmp/hosttools=
&quot;;
 export HOME=3D&quot;/home/dwatkins&quot;; LANG=3DC git -c core.fsyncobject=
files=3D0 fetch -f --progress &quot;<a href=3D"https://can01.safelinks.prot=
ection.outlook.com/?url=3Dhttps%3A%2F%2Fsalsa.debian.org%2Fdebian%2Fca-cert=
ificates.git&amp;data=3D04%7C01%7Cdwatkins%40sierrawireless.com%7C17dc36491=
5194089e3d308d99f29c8f9%7C08059a4c248643dd89e33a747e0dcbe8%7C1%7C0%7C637715=
824094043546%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLC=
JBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3DvOtQ6JonoKq%2BkjJFdjbNrnzjZ=
WW9JfZoKSRtL9dk1e4%3D&amp;reserved=3D0" target=3D"_blank">https://salsa.deb=
ian.org/debian/ca-certificates.git</a>&quot;
 refs/*:refs/* failed with exit code 128, no output<o:p></o:p></p>
<p><b>ERROR</b>: ca-certificates-20211016-r0 do_fetch: Bitbake Fetcher Erro=
r: FetchError('Unable to fetch URL from any source.', 'git://<a href=3D"htt=
ps://can01.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Fsalsa.debia=
n.org%2Fdebian%2Fca-certificates.git%3Bprotocol%3Dhttps&amp;data=3D04%7C01%=
7Cdwatkins%40sierrawireless.com%7C17dc364915194089e3d308d99f29c8f9%7C08059a=
4c248643dd89e33a747e0dcbe8%7C1%7C0%7C637715824094053498%7CUnknown%7CTWFpbGZ=
sb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1=
000&amp;sdata=3DyLKDzQwmQEFG0nOiKXbOxnUyqpP0NiWPWfPVL44PGho%3D&amp;reserved=
=3D0" target=3D"_blank">salsa.debian.org/debian/ca-certificates.git;protoco=
l=3Dhttps</a>')<o:p></o:p></p>
<p><b>ERROR</b>: Logfile of failure stored in: /home/dwatkins/workspace/mgo=
s/apollo17/build/tmp/work/all-poky-linux/ca-certificates/20211016-r0/temp/l=
og.do_fetch.11215<o:p></o:p></p>
<p><b>ERROR</b>: Task (/home/dwatkins/workspace/mgos/apollo17/upstream/yoct=
o/poky/meta/recipes-support/ca-certificates/ca-certificates_20211016.bb:do_=
fetch) failed with exit code '1'<o:p></o:p></p>
<p><b>NOTE</b>: Tasks Summary: Attempted 1 tasks of which 0 didn't need to =
be rerun and 1 failed.<o:p></o:p></p>
<p>&nbsp;<o:p></o:p></p>
<p>Summary: 1 task failed:<o:p></o:p></p>
<p>&nbsp; /home/dwatkins/workspace/mgos/apollo17/upstream/yocto/poky/meta/r=
ecipes-support/ca-certificates/ca-certificates_20211016.bb:do_fetch<o:p></o=
:p></p>
<p>Summary: There were 2 WARNING messages shown.<o:p></o:p></p>
<p>Summary: There were 2 ERROR messages shown, returning a non-zero exit co=
de.<o:p></o:p></p>
<p>dwatkins@carmd-ed-n11377-docker-dwatkins_apollo17:64bit build $<o:p></o:=
p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Looking in the git history, I find a recent commit=85<o:p></o:p></=
p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:8.5pt;font-family:Menlo;color:#AAAB25">co=
mmit 7158bf0775383eefcec148c47310b4681bfbed86</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:8.5pt;font-family:Menlo;color:black">Auth=
or: Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=
=3D"_blank">alex.kanavin@gmail.com</a>&gt;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:8.5pt;font-family:Menlo;color:black">Date=
: &nbsp; Tue Oct 19 17:33:29 2021 +0200</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:8.5pt;font-family:Menlo;color:black">&nbs=
p;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:8.5pt;font-family:Menlo;color:black">&nbs=
p; &nbsp; ca-certificates: update 20210119 -&gt; 20211016</span><o:p></o:p>=
</p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:8.5pt;font-family:Menlo;color:black">&nbs=
p;&nbsp; &nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:8.5pt;font-family:Menlo;color:black">&nbs=
p; &nbsp; (From OE-Core rev: 43aa25b523b2c11ce483ea22435196dfca259b30)</spa=
n><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:8.5pt;font-family:Menlo;color:black">&nbs=
p;&nbsp; &nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:8.5pt;font-family:Menlo;color:black">&nbs=
p; &nbsp; Signed-off-by: Alexander Kanavin &lt;<a href=3D"mailto:alex@linut=
ronix.de" target=3D"_blank">alex@linutronix.de</a>&gt;</span><o:p></o:p></p=
>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:8.5pt;font-family:Menlo;color:black">&nbs=
p; &nbsp; Signed-off-by: Alexandre Belloni &lt;<a href=3D"mailto:alexandre.=
belloni@bootlin.com" target=3D"_blank">alexandre.belloni@bootlin.com</a>&gt=
;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:8.5pt;font-family:Menlo;color:black">&nbs=
p; &nbsp; Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdi=
e@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxfoundation.org=
</a>&gt;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:8.5pt;font-family:Menlo;color:black">&nbs=
p; &nbsp; (cherry picked from commit c479b8a810d966d7267af1b4dac38a46f55fc5=
47)</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:8.5pt;font-family:Menlo;color:black">&nbs=
p; &nbsp; Signed-off-by: Steve Sakoman &lt;<a href=3D"mailto:steve@sakoman.=
com" target=3D"_blank">steve@sakoman.com</a>&gt;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:8.5pt;font-family:Menlo;color:black">&nbs=
p; &nbsp; Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdi=
e@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxfoundation.org=
</a>&gt;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">I don=92t think this is necessarily the culprit as I likely fetche=
d long ago and have been using cached content since.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Is this part of that unauthenticated GIT protocol issue?<o:p></o:p=
></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span lang=3D"EN-US">&nbsp;</span></b><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span lang=3D"EN-US">Regards,</span></b><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span lang=3D"EN-US">&nbsp;</span></b><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span lang=3D"EN-US">Darcy</span></b><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span lang=3D"EN-US">&nbsp;</span></b><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span lang=3D"EN-US">Darcy Watkins ::&nbsp;&nbsp;Senior Staff E=
ngineer, Firmware</span></b><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span lang=3D"EN-US">&nbsp;</span></b><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span lang=3D"EN-US" style=3D"color:red">SIERRA WIRELESS</span>=
</b><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">Direct&nbsp; +1 604 233 7989&nbsp; &nbsp;::&n=
bsp;&nbsp;Fax&nbsp;&nbsp;+1 604 231 1109&nbsp; ::&nbsp;&nbsp;Main&nbsp;&nbs=
p;+1 604 231 1100</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">13811 Wireless Way&nbsp; ::&nbsp;Richmond, BC=
 Canada V6V 3A4</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[M4]</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US"><a href=3D"mailto:dwatkins@sierrawireless.com=
" target=3D"_blank"><span style=3D"color:#0563C1">dwatkins@sierrawireless.c=
om</span></a>&nbsp;::&nbsp;<a href=3D"https://can01.safelinks.protection.ou=
tlook.com/?url=3Dhttp%3A%2F%2Fwww.sierrawireless.com%2F&amp;data=3D04%7C01%=
7Cdwatkins%40sierrawireless.com%7C17dc364915194089e3d308d99f29c8f9%7C08059a=
4c248643dd89e33a747e0dcbe8%7C1%7C0%7C637715824094053498%7CUnknown%7CTWFpbGZ=
sb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1=
000&amp;sdata=3DIIeKD8ZOg7no%2Bz2g2C6dXnUCTTGzjCcWWW1dm%2FIqff0%3D&amp;rese=
rved=3D0" target=3D"_blank"><span style=3D"color:#0563C1">www.sierrawireles=
s.com</span></a>
</span><o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55236): <a href=3D"https://can01.safelinks.protection.o=
utlook.com/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Fmessag=
e%2F55236&amp;data=3D04%7C01%7Cdwatkins%40sierrawireless.com%7C17dc36491519=
4089e3d308d99f29c8f9%7C08059a4c248643dd89e33a747e0dcbe8%7C1%7C0%7C637715824=
094063459%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBT=
iI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3D1QA2n9YP8dlGEd8NebDxWsrboNlG%2=
FDlMU9uE9NnKQKM%3D&amp;reserved=3D0" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/message/55236</a><br>
Mute This Topic: <a href=3D"https://can01.safelinks.protection.outlook.com/=
?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fmt%2F86806146%2F3617156&amp;d=
ata=3D04%7C01%7Cdwatkins%40sierrawireless.com%7C17dc364915194089e3d308d99f2=
9c8f9%7C08059a4c248643dd89e33a747e0dcbe8%7C1%7C0%7C637715824094063459%7CUnk=
nown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJX=
VCI6Mn0%3D%7C1000&amp;sdata=3DGXIvjXtHP0BgdIP6niV9BgfThymU5QoxTH5SBk58uXY%3=
D&amp;reserved=3D0" target=3D"_blank">
https://lists.yoctoproject.org/mt/86806146/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">
yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://can01.safelinks.protection.outlook.com/?url=
=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Funsub&amp;data=3D04%7=
C01%7Cdwatkins%40sierrawireless.com%7C17dc364915194089e3d308d99f29c8f9%7C08=
059a4c248643dd89e33a747e0dcbe8%7C1%7C0%7C637715824094073421%7CUnknown%7CTWF=
pbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D=
%7C1000&amp;sdata=3DMEgkbrmrVRRRBCQf3OYxSylOW%2BbR9tXrsBSAf0Rwinw%3D&amp;re=
served=3D0" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:Martin.=
Jansa@gmail.com" target=3D"_blank">Martin.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<o:p></o:p></p>
</blockquote>
</div>
</div>
</body>
</html>

--_000_CO6PR02MB87401C9A3FC90F1A92418A16B2999CO6PR02MB8740namp_--

