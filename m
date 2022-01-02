Return-Path: <kweihmann@outlook.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B245C433F5
	for <webhook@archiver.kernel.org>; Sun,  2 Jan 2022 17:46:19 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (EUR05-AM6-obe.outbound.protection.outlook.com [40.92.91.73])
 by mx.groups.io with SMTP id smtpd.web10.15790.1641145578041347277
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Jan 2022 09:46:18 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com
 header.s=selector1 header.b=ijhHMtPS;
 spf=pass (domain: outlook.com, ip: 40.92.91.73,
 mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EgbICCuGo6bFS5oAMIJdoKTSd/sUEz8jh4eZ0fy+XjsqZnNuxficl08KCZ89kxKAkOuVJzC3zN+GsSHRznkofXDIVzHPIZ112lTBtHqSlwqZwiWUZo8shrZ+Y19EGLVUrIC2tFNUEoyNZO3a4bX1olyVBb5P1qKFP/e1P0POANAAf1NvxFMKlak3Kai9LGRuIHVH5qeBTYVhBGAzN2ybWfMYyRO291lCem+65l+KTwMEwqA6JgCIDjIhGca2BSAfHSjQzlaXZnm6dgNa6iXxn26ta7+zPWfusi9lqL/GHmtTamhcf1I6KrG4A1coG1yP/5oQ8K3uD3K1X1gaGwwESg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CAq6qdTeORizXbOxTJZoJV5Yr2QcJGNj1dt1FW8LQTw=;
 b=gobVFp4900FD0zamMHwVtjhCAvDA17w4qt3EriC4B9uT1TvY3LPy4shF5omH7qUiIR6YejqPBz4JlMXsa+5s7ATA0fNfw/+bfkze7rjJVAd0KMAf3IBBkN39AgQp/RMewN/zf9ER2LB8i+ULmTLQA9BRdaqPfDi83FlnZ+m9zvjvvDpqojFeIfjK1fhnWD4WhfHMCrpBsLLFEvEXfEHxUJ4na/Zj9/7+JfHPsicZkKdi0adwhDjeWEKcQ4ye8LMju/DFKJcjoTrj+RJVM80mIZe9loCydI7skcDPcaNFtn6GmmnJyngIVEAuoWQ9m8DfokOjNLHQeTE+ilrT0g5wgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CAq6qdTeORizXbOxTJZoJV5Yr2QcJGNj1dt1FW8LQTw=;
 b=ijhHMtPSPv4NfXhITl6VZ7JeD4bpHvuTdDAKamCMIkRG1is8VtIaKZM8QZwvQhxHd0Pw9An9nQ1ciGSKS3PLoeTchcAKrA57wpzFwiIb1zMHOuue7eGvIEbQMDzwTkLMcbrL3UX+01I2A4HNQw7luf7ZbFg0o1Gu6Rur+ayR8y4zlWqDlRtnjtEoCphdrfcCucbI70oIkaUFtVh3ZyAUrlfPN5DAR8dj9lK3+xtvjrXuwnIBoYBDR2zYO02KhCAU34BOKuyBuNQch4okUh+cHWEDSsy9XlK+DdtppzMCMpAZQm6C6/aM4elrFgIEAHsah0OLc/RzVqZQRy+xDZHxMA==
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com (2603:10a6:20b:284::24)
 by AM0PR09MB4163.eurprd09.prod.outlook.com (2603:10a6:208:196::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4844.13; Sun, 2 Jan
 2022 17:46:15 +0000
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::5d3:5a56:4869:a401]) by AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::5d3:5a56:4869:a401%3]) with mapi id 15.20.4844.016; Sun, 2 Jan 2022
 17:46:15 +0000
Subject: Re: [yocto] libquadmath
To: staticd <staticd@gmail.com>, Michael Ho <michael.ho@ieee.org>
CC: yocto@lists.yoctoproject.org
References: 
 <CAFC2zY1xWRvmZ75r6JG=3ZZ4xX83584Q1RDXgdGEBCi4Gr+gSw@mail.gmail.com>
 <CALpKvHrow01J=5XCgJHyeNK8DXApsOOXwjUyUOA6jMP204YpiA@mail.gmail.com>
 <CAFC2zY1RbDGbeZZD7YtzKBFF66aSo8qiXfn3tFCujAEWqqk_oA@mail.gmail.com>
 <CAFC2zY10Hi9mT03biAvbsyfmPjvNNukmOCrwH1-mYKAG4NT9qA@mail.gmail.com>
From: Konrad Weihmann <kweihmann@outlook.com>
Message-ID: 
 <AM9PR09MB46425720B35DBEFF1CF6241DA8489@AM9PR09MB4642.eurprd09.prod.outlook.com>
Date: Sun, 2 Jan 2022 18:46:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: 
 <CAFC2zY10Hi9mT03biAvbsyfmPjvNNukmOCrwH1-mYKAG4NT9qA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-TMN: [07m/dynrfP6FhXXuLBmJqUmN8fSe5iCTzGnbmfN8KfBAmvhgCky752eF5Ae5HFJS]
X-ClientProxiedBy: FR3P281CA0061.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::9) To AM9PR09MB4642.eurprd09.prod.outlook.com
 (2603:10a6:20b:284::24)
X-Microsoft-Original-Message-ID: 
 <3608e843-606a-ea04-b366-b999a93a88fc@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5de1d804-751b-45ca-db07-08d9ce17c500
X-MS-TrafficTypeDiagnostic: AM0PR09MB4163:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	AIVLuzaKeBiiMvYxxcZbTYzHbqBm1jnu1bl9YWKD/UX2RjzfT3yoR6sNk0V3bIQR8MtvT9gxiPMc6vgbc7cdOyS3rXukIf/T32bGXk+glQ1Ms88LIeavRukt0edKsWox+LF9+Azk8XUEASk3ctuDnAMlB5SdnVoO0gmY1TwBHvewYdc9F7iV9noUsaelcZYe+ExnWaZXQkYSYvYEdrt3w9A8VU8WfL/rlbiCVJ3VynqLJmMmunlsDWeimgvSQcJhj5kPQTYh2BP7XA6LQi8T+h7L6RucsS5UIkgkrTYCZNnXAyWaSBqIJrYQjTEAM1JJGj1i3tsjo5RZtBBO8KxLrv0yxNfrGzs5MTfm30V8LvlFfo6QKwdpYwgcWiZp8JWVPjamx5ZJ6NLDjPeXx4hkW6mF3xzmQOyCGh6UikwwjXWEaPm6EJSk7e4OD1DAN4EFKf8+NNvDrgJNEg3/ntE2NlBRf1/4pSldUObd9YEuWBRJgQh39x2ayqIaNJ4lT5vN/it03hwWEMgJecZzStohkmWjx2IRicr7JRxXbKoy5vrorpthsS/fK4YDOMjvmjJvn5X6y0BGF9kcxUFlyHHmOgsxqTeoCoOCoMGAk80NI1Wxvw0g/IQvosxGKCKjEKII3jWh7VdW71Ztb7dHRGCsJ8aj+XzchlH8LMIIXyX7s8I=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?vkaaGUYtYuVqpHo6GUDFOqBO818xcZdRXmm32yqlL1IBxUfvrugrLdAPMFQ7?=
 =?us-ascii?Q?W7fTpb9Rv+YDWHt/2mobsdKLmSwXUk7WJwUH95FcWiFNPyTBNZAZXmnS7lOP?=
 =?us-ascii?Q?GpYjX8NrBO5dfCVuRNYQVUVVX3QwpOZBwjLfn6tOHgXpbB0/fpf4DfNhSDDo?=
 =?us-ascii?Q?JNVht0+LtVsVcrX9OZBoXK7NRJYcF5SOGNKQD5VWaHsnOF/eV36gGnv9PVtn?=
 =?us-ascii?Q?3sXMTw7TRLlojfvGrqs5ZNFuv6sWQN/9iNj51T/f+MWjFDI4ZuqJGB1RvJcd?=
 =?us-ascii?Q?8lr3cWXmZeztCPZebjO3e2gStLkkIXBuQ2MXlkX2Kpa2eO3U5PmzccSqF7Iq?=
 =?us-ascii?Q?NsuG8oS86cvRacKbCe8Af2rLqQ5q5IF+UXDS/etz6nkg+QNcEo38C4celaWK?=
 =?us-ascii?Q?i+Ox/1gzrFwV3aK26EKew4iqL3Kk0Ok13edeYGuA3UqInJzaqA04pjFZf+qP?=
 =?us-ascii?Q?6FDsYotanXIvYYJxsKUOpvGkLRVhnsRH1EVYLvkzeMjJaqXWAES+e+uaaIwQ?=
 =?us-ascii?Q?1JvhVk0dOu1EPSfbi10vBbPwg9Ms4i6lprx1NabbcSWk8270uy80j+H0f93t?=
 =?us-ascii?Q?WXfZegLj1ByO5vv06F6Aiy3VEgc9CiUL+cSxGXYQ6VfpDgfCuvQ7YWCpQkOP?=
 =?us-ascii?Q?pY2//wSOs+DLxsPW8hzZDIyjSLBOb3ehMFzBylzuO9p5nMKb/0K+IB2O3Uqu?=
 =?us-ascii?Q?v2TbFXUCb8q7hZIBxAj4rmfwoi99T4nJafd+GEpXymtMOUsDuAxbrbcgbO7A?=
 =?us-ascii?Q?F/UfjNFp1YhHkCwwVvywkQYHawNGCt/ts7iFE/f1uCl6RGaGT5vR0Kst7xwY?=
 =?us-ascii?Q?55qo1MA8E5pW2GVSG/iV0S34BRSrmG9ZKCEVZffTyiOH7+sfASLpJjpowo8w?=
 =?us-ascii?Q?M9nsAaHTa0OXqp9b9HrARbOnMVldrW9drvVgUmj9BEzpFiTF2/G9b2n63QSh?=
 =?us-ascii?Q?L91ePMC+QJxcNZmynQPpr5KS7cSH9mlgfUoKeX69FKrPxxpRdDSBvINEC/3D?=
 =?us-ascii?Q?9Ij2LH/Ix398hDjS9yAlgP2uew=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 5de1d804-751b-45ca-db07-08d9ce17c500
X-MS-Exchange-CrossTenant-AuthSource: AM9PR09MB4642.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jan 2022 17:46:15.5319
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR09MB4163
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 02 Jan 2022 17:46:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55704

I think the reason of that is that fortran support isn't enabled in=20
default gcc-runtime recipe.

from gcc-runtime.inc:

RUNTIMETARGET =3D "${RUNTIMELIBSSP} libstdc++-v3 libgomp libatomic=20
${RUNTIMELIBITM} \
     ${@bb.utils.contains_any('FORTRAN', [',fortran',',f77'],=20
'libquadmath', '', d)} \
"

activates the configuration of libquadmath if either ',fortran' or=20
',f77' is set in 'FORTRAN' variable.
Unfortunately this variable seems to be set to "" since gcc version 9 updat=
e

By just adding

FORTRAN =3D ",fortran"

to a gcc-runtime_%.bbappend I could create the needed files in the=20
sysroot-components directory

gcc-runtime/usr/lib/libstdc++.so
gcc-runtime/usr/lib/libitm.spec
->> gcc-runtime/usr/lib/libquadmath.so.0.0.0
gcc-runtime/usr/lib/libstdc++.so.6
gcc-runtime/usr/lib/libitm.so.1.0.0
gcc-runtime/usr/lib/libatomic.so.1
gcc-runtime/usr/lib/libgomp.spec
gcc-runtime/usr/lib/libitm.a

now as you already have set `DEPENDS =3D=20
"virtual/arm-oe-linux-gnueabi-compilerlibs"` it should automatically=20
make the lib available to your recipe workspace.

On 02.01.22 18:31, staticd wrote:
> I think to clarify...what I need are these files:
>=20
> --- snipped from gcc-runtime.inc ---
> ```
> FILES_libquadmath =3D "${libdir}/libquadmath*.so.*"
> SUMMARY_libquadmath =3D "GNU quad-precision math library"
> FILES_libquadmath-dev =3D "\
>  =C2=A0 =C2=A0 ${libdir}/${TARGET_SYS}/${BINV}/include/quadmath* \
>  =C2=A0 =C2=A0 ${libdir}/libquadmath*.so \
>  =C2=A0 =C2=A0 ${libdir}/libquadmath.la <http://libquadmath.la> \
> "
> ```
> ---
> to be in my $STAGING_LIBDIR
>=20
> So far, I have been unable to figure out how to do that, unfortunately.
>=20
> On Sun, Jan 2, 2022 at 12:23 PM staticd <staticd@gmail.com=20
> <mailto:staticd@gmail.com>> wrote:
>=20
>     Thank you, Michael.
>=20
>     I have `DEPENDS =3D "virtual/arm-oe-linux-gnueabi-compilerlibs"`
>=20
>     and `do_compile[depends] +=3D
>     "virtual/arm-oe-linux-gnueabi-compilerlibs:do_check"`
>=20
>     However, libquadmath.so is still not present in `recipe-sysroot/lib`
>=20
>     I used the `do_check` task from gcc_runtime but that still isn't
>     providing `libquadmath.so` in my $STAGING_LIBDIR, which is where I
>     need it.
>=20
>     Many=C2=A0thanks.
>=20
>     On Sun, Jan 2, 2022 at 12:17 PM Michael Ho <michael.ho@ieee.org
>     <mailto:michael.ho@ieee.org>> wrote:
>=20
>         Not familiar with Fortran but maybe it helps to know that this
>         is normally handled with the DEPENDS mechanism. When you add
>         other recipes as dependencies to your recipe, the task
>         do_prepare_recipe_sysroot (run before do_compile) will make hard
>         links to the files from those dependency recipes into that
>         recipe-sysroot directory.
>=20
>         See:
>         https://docs.yoctoproject.org/singleindex.html#do-prepare-recipe-=
sysroot
>         <https://docs.yoctoproject.org/singleindex.html#do-prepare-recipe=
-sysroot>
>=20
>         Kind regards,
>         Michael
>=20
>         On Sun, 2 Jan 2022, 6:06 pm staticd, <staticd@gmail.com
>         <mailto:staticd@gmail.com>> wrote:
>=20
>             okay...I think I have a more interesting question now...
>=20
>             In the package I am building I have some Fortran code that
>             requires `libquadmath`
>=20
>             I see that `gcc-runtime` provides the library but I need the
>             library present in `recipe-sysroot/lib` when my `do_compile`
>             runs
>=20
>             Is there a way for me to do that?
>=20
>             My current approach is to build my image, copy the
>             libraries/includes to my recipe and `install` them in
>             `recipe-sysroot` before `do_compile`
>=20
>             This doesn't seem like the correct approach but I am not
>             sure how else to do it at this point
>=20
>             Any help would be greatly appreciated.
>=20
>=20
>=20
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55703): https://lists.yoctoproject.org/g/yocto/messag=
e/55703
> Mute This Topic: https://lists.yoctoproject.org/mt/88095036/3647476
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kweihmann@outl=
ook.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

