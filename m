Return-Path: <kweihmann@outlook.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F39FC433EF
	for <webhook@archiver.kernel.org>; Sun,  2 Jan 2022 19:07:48 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (EUR04-VI1-obe.outbound.protection.outlook.com [40.92.75.29])
 by mx.groups.io with SMTP id smtpd.web09.17114.1641150466972561062
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Jan 2022 11:07:47 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com
 header.s=selector1 header.b=sZzWewQP;
 spf=pass (domain: outlook.com, ip: 40.92.75.29,
 mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IeqFSGo1Uk+aYioMoVtNl3kC10OZwKgyQvubghHVJw2a/JQ04Wm9RLsS8lMS6+ZRnNdspS7tjurlPspapOwg28YD5SmyOKPUh8zbLGk/KlBPW2Zm1PA9j4i8ek5+R/kJfPlKX4sz9zL2jWavLe27soyLS07TtjRW8EsfTtmfqC1ylxw9pKLe8MkYDtKdauZRIbs5qbtIdFNCZSVE1fGyptEPzT96fQWq7NTZ8cH9kTOb73ykqI6FHE4ph6AyHs1mFdA0QWmdlfka3l1mN1ZbR0iuU+WYn0yUSL3H645+iUhW58/W9JbrKiq5nsg7kGfd23t1Sy7sfebGmFtN9XF7ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KQwZAqUXFBIL5rz5H5Vs0XR0p69rH4MuVZ0MRmyat50=;
 b=SEAKx3AA3ojJGzyq845ObgM+iDS8FmsKFdWC9it9F29uhrGD+VNa4zifoJFXUi0ESFZx4LvSR99rB1gHMUbSQlb6vcTqn/gwAzKJkVXVZGHj1s6IGbN7RA4yHwtstiqdG001X51Pf1E9eyix5BV/PLlgSof8ShyXkFwZrtXfroEjv1SjwBRg84ZITrJH55fLDzPUBf1gZAK54zJ+INk+44LWC/mcIfTY4kpJYdt6UXNxlmybacOahPnA57urTNM1i1IZM6ogoKusqKZwMvg5eX+RxErYbTpOATvZyHUj9E2E53WFIADlL4N/OrQjaFXuCNVqVUrOAr3QfsKYN9cpUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KQwZAqUXFBIL5rz5H5Vs0XR0p69rH4MuVZ0MRmyat50=;
 b=sZzWewQP4TUsPT46ST6LDxcw+/i+jod37oYvYEsNhT0sQFLesMOhuowuMboyj0dv2hubkXLCJnctZ32+NbH4MxGE2g/7NoigNOOS0e2HC/8yp9qElp1mmO836fqueref+Z/KSoOeHX7exRO6WGadtMY6Qi0u7bA63J2vrXab/kLwLvy6z5YqtKKXo/K2KPgip6FIPEuV6Q7kUE88hl9dpDsvHaTJlwi8u5Qll8u+1Cib8ZQOuFc+xgLny0Ap8WLEX4Brakf/I5aRCWn4ErzFRTzvN5xTInt/V4I6W2SRucoqR86wBZyhm5twPXpvrW+Qpr2nd6khRboOj43USweyig==
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com (2603:10a6:20b:284::24)
 by AM9PR09MB4739.eurprd09.prod.outlook.com (2603:10a6:20b:282::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4844.14; Sun, 2 Jan
 2022 19:07:44 +0000
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::5d3:5a56:4869:a401]) by AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::5d3:5a56:4869:a401%3]) with mapi id 15.20.4844.016; Sun, 2 Jan 2022
 19:07:44 +0000
Subject: Re: [yocto] libquadmath
To: staticd <staticd@gmail.com>
CC: yocto@lists.yoctoproject.org
References: 
 <CAFC2zY1xWRvmZ75r6JG=3ZZ4xX83584Q1RDXgdGEBCi4Gr+gSw@mail.gmail.com>
 <CALpKvHrow01J=5XCgJHyeNK8DXApsOOXwjUyUOA6jMP204YpiA@mail.gmail.com>
 <CAFC2zY1RbDGbeZZD7YtzKBFF66aSo8qiXfn3tFCujAEWqqk_oA@mail.gmail.com>
 <CAFC2zY10Hi9mT03biAvbsyfmPjvNNukmOCrwH1-mYKAG4NT9qA@mail.gmail.com>
From: Konrad Weihmann <kweihmann@outlook.com>
Message-ID: 
 <AM9PR09MB464282949C9AB4859002D0BFA8489@AM9PR09MB4642.eurprd09.prod.outlook.com>
Date: Sun, 2 Jan 2022 20:07:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: 
 <CAFC2zY10Hi9mT03biAvbsyfmPjvNNukmOCrwH1-mYKAG4NT9qA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-TMN: [ge/vcbjkBJxQK4Nv7b9jIvhiLB0uBmxvcQ0QRdoTnWH5WYVaDfVOAgFMtw9monp/]
X-ClientProxiedBy: FR3P281CA0028.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1c::19) To AM9PR09MB4642.eurprd09.prod.outlook.com
 (2603:10a6:20b:284::24)
X-Microsoft-Original-Message-ID: 
 <064c8686-89be-7fd7-4766-b1ba0a599495@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f90f59f7-9df0-472c-9fc2-08d9ce2327f8
X-MS-TrafficTypeDiagnostic: AM9PR09MB4739:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gdmV0Tf9hJoM5jsjCglUJXlbh6iPVjDcUedvftpTNwkzVK58LW0YJmP2Jgds9zfGiKiQ1p6YyFiVWDYz28lZeRjNvotYGiYtzhUVLJHiCzFEvOJ6x6twc4JukzRxtrEpjiQTEmVlON+8IHrbeqOCrg4HdUamT6T5wm8WHGvi+JuD6fG4TIq3/Ax0rvfOvlirG9VauOjWIyXJQqn+UatNtz/MLnCXUcndYNNOw6jgT9IjjYrhuDM5mx2ih0URKqxKOgGElLTmrWD/BdMOur+buIZy8L6luWYPIjS6XSrVEL92QBwWR+Mm7qupvOV3Rr4JXUBGWdzKBjXLtPoflVyQAO6Md7BE8wtQq+Yu7FYL0Ks+6X1J70kJ6Hikywfx48s2lYpBUetVrVjG+bOiLs1X2Is69OSVKEcQBJJSoCHa5pT9GCtJbiz6j0D/1LOUoKk7JcbNu5ahJl9qHpW6K0NmantVwE9hBXPVvHtowr20Bg1/cc69wrt826JL2+TUCNGHCtutiQUnbGnV3VjQH/LySQIHy7i2CYOLMOlI8VrM/WOs5hIhW1INtXDlXouq0UfiEEsXX4Vz9uFd24xhv1NSqpiCtX8LludtpulEuHPV7Tag0J5ORiOkOfBSAeQkllfQ6kwRqrS01GJGche7icf1hz5Ds1gJtaoBb4+loEyQNgE=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?7uAIkjXa9Bnpy5JA1+5slszSfbgFBy4KL3KCsMXuhTiy0zhgM91bdusE/VKT?=
 =?us-ascii?Q?wS0qpLnAT8IBAud/adM2EQe8QXCKQ6h4E3trIXKywqmVsiMDoADpnhYtMqAg?=
 =?us-ascii?Q?blQyCbH8Xl/GQNsicN4M5B6vZs7UvE1FRfM7dA7ykYLEhe3i3/KXsse9G3ms?=
 =?us-ascii?Q?G864eDe+JhTlWAvO4c/fcGFVNhhrfOGXNKLpAsPdCNiQ3PPy7nUqn2YZHdrY?=
 =?us-ascii?Q?MmBILlE4jUnpc+4pYC/8pKRfK72bz6Jil0bsyXGQM1HOiMTx0PqCFqMCNP0c?=
 =?us-ascii?Q?krToS9pGmOOf8nauySCDFB9X88crBQGP6hXbSIbXj7p2psdwLzjYKR8MmJZY?=
 =?us-ascii?Q?J1zWraUZL9eTxIHSixsoqEMBL74/v4OVOZvRJUeqfgsHxZ5Ej4y0R++Nz5Qn?=
 =?us-ascii?Q?mnFQw+3BcgqK1AsXZb4mWJ8luAAz7EPkhbvkSxz/mJ8kgzVAmZ0CZnV3QB4x?=
 =?us-ascii?Q?5KGsUX6ew8SZBBamYL+FaDmd1lhbf3/XLvOzidR96dSjaVyHIPjE1D8fTE5D?=
 =?us-ascii?Q?TeUJXy0+JdS+rPLTn9/PvN+txRO8AMOKC7XxKq9UO0BbJCxC1QPCt423daFB?=
 =?us-ascii?Q?ZIX/gEY7giTJ8G/l7hiPWn6fmYniuJlaHUYn5edIIEi5UoxDvi3rAnhC2EFZ?=
 =?us-ascii?Q?P3utTA1NBo/v3elksUhcfAJyh8Q9qGVkftuljVibOr7Qfyhp7DBF3SKT8WPm?=
 =?us-ascii?Q?UHT+hCbi3mbn5hB2FBZHxfrxTf9a0VQiu2n4YsXhig6vUDGwt14UPX7wzoSk?=
 =?us-ascii?Q?SNEWHPGlUA1vcYhRD5Bk9UT/RBRtVWt0shpZaII7TOPM7Ob4ixGVkfLN5aeC?=
 =?us-ascii?Q?AF8/kNmeGx8zbzejZRuw+jcTzf5YneY05oDusZCiM4JY6aso94Bc3dM73u05?=
 =?us-ascii?Q?z4brz2SmwrpQyVl0F+LlGn9bWtwp+Jwp8zW+22RRKzvpcIzzYFFY0aS/STgR?=
 =?us-ascii?Q?NnZZc2JEqkOjWRrf1i9zu9fRQPitIhJ9HQOdoX/Vus2wzdMn3BRBNHTqX+wF?=
 =?us-ascii?Q?6XIivC086nlQ8anEDE+5NNHJAQ=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 f90f59f7-9df0-472c-9fc2-08d9ce2327f8
X-MS-Exchange-CrossTenant-AuthSource: AM9PR09MB4642.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jan 2022 19:07:44.1917
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR09MB4739
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 02 Jan 2022 19:07:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55705

The following I just found in local.conf.sample.extended

# Enabling FORTRAN
# Note this is not officially supported and is just illustrated here to
# show an example of how it can be done
# You'll also need your fortran recipe to depend on libgfortran
FORTRAN:forcevariable =3D ",fortran"

guess that will solve your issue without the need for a bbappend.
Just inject that line via distro or local.conf

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

