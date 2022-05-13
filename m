Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13A73C433EF
	for <webhook@archiver.kernel.org>; Fri, 13 May 2022 09:44:30 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.74])
 by mx.groups.io with SMTP id smtpd.web11.6404.1652435059684666805
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 May 2022 02:44:21 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify"
 header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=lJffvlCB;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.20.74,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FlcFibYw6fgyiL1Lu5EQRlNnlUERIiSHRgzLwHszoRxvSjv2r/4UJ9drYdClOdRl0ktlaYxHJ6FKNqjGL+S6dBWB70ozGT8k5tevDtswlusCsjdxut6IUfrOSJtX+mV998G/fyy7Y1G+4ZN03tv9GHRGBW4Vkf68hv/p/87bLA/Y5HJAdT8pyETtD72eGC+2l29b90pNaDftJ+KzJr48/Fx1gZd1ZW5vYOo4jwOLRWjJ9XEX4DUQJcpVUZSszuV9ChME/8Ege0BrfrGuw5Q5uF7hvBNPY3wzUS92JgLgJw9Y6f0qnCFcecQr8gqNK/jsvtJp55X24MDz8mWfrVKi0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QRnFNlMhlxEwqrcNCJy9Gf5vadaJ5UXcGs9zFIidB4c=;
 b=NQ1M3L6gpEvtscQ9Bdreum1xtaguggycX/ByiAXPWq1zWD2ZZe0GrmC7r7DABlR3zSXYBXRAtvGg5zgByEs1wnPXO5bwk+6hMYjlzIiraFAdzmqRT/rqs++Xa6pZ6eaHtkUJBEvXc9KlwjdjN4YOErh/zgzQwjwBXpQeRRrW6ryFztg9/NepRUJv3wwjDPacFn0B1m1c09jzgFUTAnv9uxhqigNvYnCPaTPhirk9MFwy4IwU/i0LtZvJJMWP1lyrt/0YgSN5O3yrXCEOpUkf7nmgwxYdLr2mZIip1zOHFulyvdg3Mxj8zJ2cxwbhtd4sq/LwKmGg10qfFGOzYrszUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QRnFNlMhlxEwqrcNCJy9Gf5vadaJ5UXcGs9zFIidB4c=;
 b=lJffvlCBf/8vUkXSsXDoInhdjpvh+WlPsucFlpHoa7KTs6LmOl0PaXdxlEbSXD5TamS6u5buPQsNtQ5xo3Fopoi4q2gCkLUWOjxuEUnHcM5UXd/dZPJSTdVn9Kz7I4+UyBdorw9+G8S5IbFDHEJRr6H1+Q6smm3uW/pzH4nkyu0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by PR3PR04MB7292.eurprd04.prod.outlook.com (2603:10a6:102:85::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.15; Fri, 13 May
 2022 09:44:16 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e443:c646:c299:5512]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e443:c646:c299:5512%7]) with mapi id 15.20.5227.023; Fri, 13 May 2022
 09:44:16 +0000
Message-ID: <5953a052-4457-c109-460a-adaa4f0d15b7@theobroma-systems.com>
Date: Fri, 13 May 2022 11:44:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [yocto] Problems with recipe for our Rust-Software
Content-Language: en-US
To: Felix Knorr <FKnorr@neuroloop.de>, Alex Kiernan <alex.kiernan@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <e1f7dbc8-c091-5891-2d1e-d1fb22ada352@neuroloop.de>
 <CAO5Uq5TnUuDo1uC40qjOkGrVWfjDG98XbxchQ86wpVAXCch_eg@mail.gmail.com>
 <d613b978-e8fa-ffcc-77de-87f1415bfdb9@neuroloop.de>
 <a1d712e5-4b88-1a77-9b77-d6bb652f3add@theobroma-systems.com>
 <3f911b42-7879-a3e4-002d-2b7a6d360d3a@neuroloop.de>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <3f911b42-7879-a3e4-002d-2b7a6d360d3a@neuroloop.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: VI1P190CA0031.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:802:2b::44) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 577041e7-6184-4bd6-4b7b-08da34c524cc
X-MS-TrafficTypeDiagnostic: PR3PR04MB7292:EE_
X-Microsoft-Antispam-PRVS: 
	<PR3PR04MB7292394D9D927E4EC433216FC2CA9@PR3PR04MB7292.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	scO6v2ueRrOl22YfXajpwRNwHm2yyX7xAK2k56gXJDYVpOLhCu/pYyoFVIKw5sVXZqF+tIB89TTBuVB7XR8679ZmIXoVjDLE15/tfZX/rafzUVicgj29mtqQTlparbVuJ12dvoy6WAwufvZDq3gNrI3ujRAqJHWeqVRprRUl4pAnC0podX1GUoUznJXI3BQ4uUQPKYySmYheseSrvcqTKMriNJ/kQ0z/UPimRi2W2pgi/h2u3qPuamzJOwXUwWAdUUzy1KPfLoLWXn/R4lbZeOqj1pC4BKMDuEeo9Ev1POfY27kPF3/QU5YgelNk7LvC+rSm44Fb6I7YosLh7Rwu1W5M4/0S1VWcxTZ6OA107vHOgbwdcDS1s0tpRQlCJ7ny/9zg7iJ4YEGXrDpGvvpzRKy6y17BF7vHywUtvRr0AFrEseqoSL5x6lVDoBhK2O+EwCdjGf2h7wglbdDQRrwFa0Nt91T6f+/2Hse2T2k35LHJYXcOwm66mBiNqu3UUDs7OZ6mJWWU+bTh6IfkTBkdl451HQ6S8a1rJMAemNh4tSRS2LO1wTxT+8/bPvxPq/ZdTlwJOUPo4r9p3D6oC1PiIrMkKZd0Bb19ceCwkcFn5AvwgBhpzwoG6I2PbupAbRT9YZqqNbohVcZ1g9hdQC3OBkURkI4wb8jqilbuhUVgxK0e6ig24n1a05Wd8QurO8lmMbcm0jthURyMLAnsxfiiaJZe/lqMp+vclWam2zHnGi5bAKxkzzvDCsNH97np7KbUiNJSoLhTIlo+mUxn6dozJc3x7ltZleVY3TjADF2y9WxoDVLz+3OrC5H+Ctn9Gcm38hYXVaISJB7ki3Hu/blM09y8JdM1O4Ay6raey4aAktk=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(4326008)(316002)(36756003)(31686004)(38100700002)(2906002)(66574015)(6666004)(31696002)(66476007)(66556008)(8676002)(110136005)(66946007)(83380400001)(5660300002)(966005)(508600001)(6486002)(8936002)(186003)(86362001)(44832011)(30864003)(2616005)(53546011)(6512007)(6506007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?Wk+BAYo3odDq7E9AniYeIrsw/LTOAZ5jEpLE4RFVacgS1DeBRFHwg4i3z7+H?=
 =?us-ascii?Q?TKK+crNPpM3uemxVvoTkX+56Ba/09/e77N6CJzz9CMuPVeiuwCDab+tQNKDN?=
 =?us-ascii?Q?PKdrAkMgPdOAu6CYEZ24uQOpc59kGrGcz4aH6J1iZtYhYRqz3vDF29Vm1xy/?=
 =?us-ascii?Q?Czb4ccvEAxWBhHONInz25r5aj+hZB4HyKP2O77NrJmyF2aaf06cIq1RrThXB?=
 =?us-ascii?Q?iNKClMP1/ZIXGKc4UvFjm3hT3cFx6exkAf7VM44hw1RybnwQQKVvhp2A9RYV?=
 =?us-ascii?Q?X3+wX4AnS+5lZd+m4AXMrV1TI92hsucfj0lVini9zhQCLjaP6inqJqBTpdly?=
 =?us-ascii?Q?eyx+p8ptXKA3mVvpqXvR6qYEbJoFkcz0u1MEI5v59fdCADhC8DQ35w1KdHn9?=
 =?us-ascii?Q?eAH+xb3wVabVMd48XyFCx5VrB7fjBAHv294dOJAZhirUdAUlGYbK67XJfTny?=
 =?us-ascii?Q?b/gDzG3rkXt30C1VRzmqjvNnUQW1rIDjGLBxF8BeRWcI4mAEa/jNFX2K54vb?=
 =?us-ascii?Q?e84vJcLZgIWLNoTAfFV74S/C0+C0Ob93thnNhVmG/tF6jWgyCLZyEL3zXrwO?=
 =?us-ascii?Q?NukDWProXcYb+VkMfskUIK7Fkj8vNEBDdTKnP3d7MYYx6DpZkfGsfyJwkOU9?=
 =?us-ascii?Q?nFWgPvr38AhO4GyFWwXgg63jGXF+OekKkH/LxQOYbcj9ttsTJaCk/dCJ+skB?=
 =?us-ascii?Q?MWssGaE/oTbnXHNA7e2ShUj46w2fttj4Zw73ia3ydGTz0fx7BW6t8btmNwPi?=
 =?us-ascii?Q?O0+vTEmHds7BSZERGvsxWr0D02uo63kGbi0TIdC91/IFMcGHcKFLD/9EyzBX?=
 =?us-ascii?Q?fN+dWD6f1FBuX5ynSAeBZGsQCv9gUAAFgqMFYW/nX4xODomGNqE+oP/TB3TA?=
 =?us-ascii?Q?DH4Mmevy8wKpwV4m2nMxmR8vgdpOsGUwaJu1vLJUz/b0H2u2ZM0VApBsu+Aa?=
 =?us-ascii?Q?jDhzA6hQar0en415jvpsMQ2IoTFiUVPoD1/33Tuhpo3xbD9MS8o9f9vMOoyJ?=
 =?us-ascii?Q?HIvTjpUfkilWYDciOi1xSb/FqB3FYSIbv49KqHQd0KBRVaPevdxQ4vZME8Ut?=
 =?us-ascii?Q?ERm6CvImgWu02JZXan76JSlzLVyef0425E+MMUlGSZiIfZ2UwBxt6TH5Rq6p?=
 =?us-ascii?Q?ASKG4me51X6cZDbz0rzLXnLu8qHktVeHZY0mNSQ6V6BjjleJOL4c4bw7/nXA?=
 =?us-ascii?Q?2qmCjsnDC516rt/AMabolrQc2ZLm8hosLN6SAVGjj02t2qzd5+Hk5rwQmv8w?=
 =?us-ascii?Q?q4HAHKl0vQTv4CGcPlafYW+oFfGg8BasUGka5IUelnaGA0p/ecXWf7wgUNYD?=
 =?us-ascii?Q?p8wfZsUyOC1yfJ5jsCgIwddaxdT90kql6oCDAlBoP7zu2YrkyQlPRKM/ig0G?=
 =?us-ascii?Q?59ZHvmRhY9YEWs1UcKQo8dmrb2eT1gbhG+7wyJ38He0/HNbwEyCuBdUt7ajP?=
 =?us-ascii?Q?aPtkkgLVeJu5So0wA6wrNCb9zKTwSK9beMiwBUesoGl1Tw0foB6alykMZFfc?=
 =?us-ascii?Q?bJtWS2K42oGRTP2Lol343QQYrwod8Uf4BGKRyKQvCpEA22aFWP0x+i5UhGRe?=
 =?us-ascii?Q?hiHHU0phSv0Ak3YM1t6YM7z0BEegyP15/G25xWhZTdBaDC8LFLJVCEt/XWph?=
 =?us-ascii?Q?dJNn6qCv8GATixJJEPkmjo/dKUvJhXHeu/uJvFUT92GZE/Tou5MXQl7vaTcV?=
 =?us-ascii?Q?kgu5CzlEPRnupXuCyiaY+HmENpuFwQJFah78HJ2XE53uj4rLw6C8EovX1o9e?=
 =?us-ascii?Q?qcXET7y75TX1di+oJ8xPgKv67x6MNbxA0JSlmUFeiFqKEXJAT3EbQq+VtCDU?=
X-MS-Exchange-AntiSpam-MessageData-1: 3EqjHHYanE3RFGvRWI8prWFnRqPxBtK+7qA=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 577041e7-6184-4bd6-4b7b-08da34c524cc
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2022 09:44:16.2084
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 /oJ1ggKU43lGCCZWq+RGeFUaFiyYYvY/FYe/sRffa6K8FDk7qDl2dtLZiYImrEGgg6gOvd5XyUqY7qpgk+d+9HpAPHCUhySipzjfyXkpWAPvkH/CsRhNt6/EdYKMAO8F
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR04MB7292
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 May 2022 09:44:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57091

Hi Felix,

On 5/13/22 11:25, Felix Knorr wrote:
> Hey,
> thanks for your help, it's working now. But could you explain, why
> adding pkgconf to DEPENDS didn't work?
>=20

Sure!

pkgconf-native very likely would have worked, so I'll not talk about=20
pkgconf vs pkgconfig (also because I don't know much about them :) ).

There are multiple "flavors" for recipes. The two most common ones are=20
target and host, in Yocto terms, "normal" recipes (or target recipe) and=20
native recipes.

The difference between both is fundamental. Target recipes are going to=20
be built so that they can be run on the target hardware (usually an=20
embedded device, which very often differs from the CPU architecture used=20
to compile the image).
Native recipes are going to be built so their outcome can be used on the=20
CPU architecture used by your building machine (aka host). This is=20
called native because the architecture used to compile something is the=20
same as the architecture of this something after being built.
Target recipes are built on your build machine, therefore, you need=20
software compiled for your host architecture to be able to cross-compile=20
for the target (Yocto build system is running on your machine, but the=20
result is supposed to run on a different machine). This means that=20
target recipes depend on native recipes.

For example, if you have a cmake-based project you want to use on your=20
target, you need to run cmake on your build machine. This means cmake=20
needs to be compiled for your build machine. Therefore, your cmake-based=20
project recipe will require cmake-native as dependency.

Any non-target recipe will not make it to the target filesystem and will=20
only be used during compilation for binaries **EXECUTED during=20
compilation**.

By the way, just use inherit pkgconfig instead of adding the dependency=20
manually, it's what is done in poky for all recipes :) (it's doing the=20
same thing, but cleaner, and if some modifications are required later on=20
to fix some issues with pkgconfig, you'll not need to do it yourself and=20
will get the fixes when updating your yocto version).

Let me know if I should rephrase some parts,
Cheers,
Quentin

> On 13.05.22 10:03, Quentin Schulz wrote:
>> Hi Felix,
>>
>> On 5/13/22 09:56, Felix Knorr wrote:
>>> Hey,
>>>
>>> I'm now using the latest cargo-bitbake (thanks for the tip), but I'm
>>> still having problems. One of the dependencies needs pkg-config to
>>> build, and the error implies that it couldn't be found. To verify
>>> this, I added the following do_compile function:
>>>
>>> do_compile() {
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bbnote "pkg-config: $=
(which pkg-config)"
>>> }
>>>
>>>
>>>
>>> and checked the log.do_compile=C2=A0 file after running which just says
>>>
>>>
>>> DEBUG: Executing shell function do_compile
>>> NOTE: pkg-config:
>>> DEBUG: Shell function do_compile finished
>>>
>>>
>>> so it's definitely not there. I added DEPENDS +=3D " dbus (>=3D 1.6)
>>> pkgconf" to the recipe, but that didn't help.
>>>
>>
>> Because it's supposed to be pkgconfig-native in DEPENDS, which can be
>> done by just adding:
>> inherit pkgconfig
>> to your recipe.
>>
>> Cheers,
>> Quentin
>>
>>> On 12.05.22 15:28, Alex Kiernan wrote:
>>>
>>> On Thu, May 12, 2022 at 2:09 PM Felix Knorr
>>> <fknorr@neuroloop.de><mailto:fknorr@neuroloop.de> wrote:
>>>
>>>
>>>
>>> Hey,
>>>
>>> I'm struggling with a recipe to build our rust project.
>>>
>>> I cannot use cargo-bitbake because we use the 2021 edition. Also the
>>> project is quite complex. We have one repository with 4 different
>>> crates, some of them are linking c code. I'm trying to create a
>>> recipe by hand.
>>>
>>>
>>>
>>>
>>> The HEAD of cargo-bitbake works fine for 2021 for us.
>>>
>>>
>>>
>>> When I run bitbake for the recipe, it will error out with the
>>> following error message:
>>>
>>> ERROR: serve-1.0.0-r0 do_compile:
>>> ExecutionError('/home/felix/git/poky/build/tmp/work/core2-64-poky-linux=
/serve/1.0.0-r0/temp/run.do_compile.400923',
>>> 101, None, None)
>>> ERROR: Logfile of failure stored in:
>>> /home/felix/git/poky/build/tmp/work/core2-64-poky-linux/serve/1.0.0-r0/=
temp/log.do_compile.400923
>>> Log data follows:
>>> | DEBUG: Executing shell function do_compile
>>> |=C2=A0=C2=A0=C2=A0=C2=A0 Updating crates.io index
>>> | warning: spurious network error (2 tries remaining): failed to
>>> resolve address for github.com: Name or service not known; class=3DNet
>>> (12)
>>> | warning: spurious network error (1 tries remaining): failed to
>>> resolve address for github.com: Name or service not known; class=3DNet
>>> (12)
>>> | error: failed to get `anyhow` as a dependency of package `nlprog
>>> v0.1.0
>>> (/home/felix/git/poky/build/tmp/work/core2-64-poky-linux/serve/1.0.0-r0=
/tmp/baroloop/programmer-rust/nlprog)`
>>> |
>>> | Caused by:
>>> |=C2=A0=C2=A0 failed to fetch
>>> `https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_rust=
-2Dlang_crates.io-2Dindex&d=3DDwIGaQ&c=3D_sEr5x9kUWhuk4_nFwjJtA&r=3DLYjLexD=
n7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=3DKVxrF11PIYLER=
0S0KZ5nJTg8Ut1pYlTpWVAglebyRABm3CAb_QrF6YGl4ooo6kcf&s=3DvjlTVOHFeWmwaLHUilC=
KAh_c4dOX92W-oBIEor_tiR8&e=3D
>>> `
>>> |
>>> | Caused by:
>>> |=C2=A0=C2=A0 network failure seems to have happened
>>> |=C2=A0=C2=A0 if a proxy or similar is necessary `net.git-fetch-with-cl=
i` may
>>> help here
>>> |
>>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__doc.rust-2Dlang.=
org_cargo_reference_config.html-23netgit-2Dfetch-2Dwith-2Dcli&d=3DDwIGaQ&c=
=3D_sEr5x9kUWhuk4_nFwjJtA&r=3DLYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4nj=
ZguQhZhkI_-172IIy1t&m=3DKVxrF11PIYLER0S0KZ5nJTg8Ut1pYlTpWVAglebyRABm3CAb_Qr=
F6YGl4ooo6kcf&s=3DaaYEIIOtHpjY7BkTDEi5V9-gt8kNkmRnhhAIUBrpOPI&e=3D
>>> |
>>> | Caused by:
>>> |=C2=A0=C2=A0 failed to resolve address for github.com: Name or service=
 not
>>> known; class=3DNet (12)
>>> | WARNING: exit code 101 from a shell command.
>>> ERROR: Task
>>> (/home/felix/git/baroloop/programmer-tablet/layers/meta-main/recipes-co=
re/programmer/serve_1.0.0.bb:do_compile)
>>> failed with exit code '1'
>>>
>>> However, if I run the devshell for the recipe and run cargo, it will
>>> at least be able to do the fetching. (It will currently fail in the
>>> linker step, but I assume thats because I haven't executed
>>> oe_cargo_fix_env)
>>>
>>> if I don't remove the http.multiplexing=3Dfalse from the cargo config,
>>> it will just hang forever in the devshell (but not error out).
>>>
>>> If I set export CARGO_NET_GIT_FETCH_WITH_CLI=3Dtrue the error is
>>> slightly different, but the git call that is then displayed also
>>> works in the devshell. Also using a crate://-fetcher doesn't work,
>>> which is why I added the CARGO_DISABLE_BITBAKE_VENDORING =3D "1" I've
>>> been fighting this for hours and can't come up with anything. I hope
>>> you can help me.
>>>
>>> PS: I'm using kirkstone, and I'm not having any url sections in my
>>> .gitconfig
>>>
>>> This is the recipe:
>>>
>>> cargo
>>>
>>> SUMMARY =3D "Copy prebuild programmer serve into the image"
>>> LICENSE =3D "CLOSED"
>>> LIC_FILES_CHKSUM =3D ""
>>>
>>> SRC_URI=3D"\
>>>  =C2=A0=C2=A0=C2=A0=C2=A0 file://${bl_path}/programmer-ui/dist \
>>>  =C2=A0=C2=A0=C2=A0=C2=A0 file://${config_path}/files/session \
>>>  =C2=A0=C2=A0=C2=A0=C2=A0 file:///tmp/baroloop \
>>> "
>>> #=C2=A0=C2=A0 crate://crates.io/tokio/1 \
>>> #=C2=A0=C2=A0 crate://crates.io/war/0.3 \
>>> #=C2=A0=C2=A0 crate://crates.io/byte/1 \
>>> #=C2=A0=C2=A0 crate://crates.io/log/0.4.8 \
>>> #=C2=A0=C2=A0 crate://crates.io/serde_json/1.0.75 \
>>> #=C2=A0=C2=A0 crate://crates.io/serde/1.0.133 \
>>> #=C2=A0=C2=A0 crate://crates.io/docopt/1.1.0 \
>>> #=C2=A0=C2=A0 crate://crates.io/colored/1.9.3 \
>>> #=C2=A0=C2=A0 crate://crates.io/chrono/0.4.11 \
>>> #=C2=A0=C2=A0 crate://crates.io/battery/0.7.7 \
>>> #=C2=A0=C2=A0 crate://crates.io/uuid/0.8.2 \
>>> #=C2=A0=C2=A0 crate://crates.io/thiserror/1.0 \
>>> #=C2=A0=C2=A0 crate://crates.io/anyhow/1 \
>>> #=C2=A0=C2=A0 crate://crates.io/clap/3.0 \
>>> #=C2=A0=C2=A0 crate://crates.io/futures/0.3 \
>>> #=C2=A0=C2=A0 crate://crates.io/wry/0.6.1
>>> S =3D "${WORKDIR}"
>>>
>>> RDEPENDS:${PN} =3D "\
>>>  =C2=A0=C2=A0=C2=A0=C2=A0 eudev \
>>>  =C2=A0=C2=A0=C2=A0=C2=A0 dbus \
>>> "
>>>
>>> DEPENDS =3D "\
>>>  =C2=A0=C2=A0=C2=A0=C2=A0 eudev \
>>>  =C2=A0=C2=A0=C2=A0=C2=A0 dbus \
>>> "
>>>
>>> # INSANE_SKIP:${PN} +=3D "file-rdeps"
>>>
>>> FILES:${PN} =3D "\
>>>  =C2=A0=C2=A0=C2=A0=C2=A0 /home/neuro/serve \
>>>  =C2=A0=C2=A0=C2=A0=C2=A0 /home/neuro/dist/** \
>>>  =C2=A0=C2=A0=C2=A0=C2=A0 ${sysconfdir}/mini_x/session \
>>> "
>>>
>>> CARGO_DISABLE_BITBAKE_VENDORING =3D "1"
>>>
>>> do_compile() {
>>>  =C2=A0=C2=A0=C2=A0=C2=A0 oe_cargo_fix_env
>>>
>>>  =C2=A0=C2=A0=C2=A0=C2=A0 sed -i '/multiplexing =3D false/d' $CARGO_HOM=
E/config
>>>  =C2=A0=C2=A0=C2=A0=C2=A0 sed -i '/\[http\]/d' $CARGO_HOME/config
>>>  =C2=A0=C2=A0=C2=A0=C2=A0 sed -i '/cainfo/d' $CARGO_HOME/config
>>>
>>>  =C2=A0=C2=A0=C2=A0=C2=A0 export RUSTFLAGS=3D"${RUSTFLAGS}"
>>>  =C2=A0=C2=A0=C2=A0=C2=A0 export RUST_TARGET_PATH=3D"${RUST_TARGET_PATH=
}"
>>>
>>>  =C2=A0=C2=A0=C2=A0=C2=A0 export CARGO_NET_GIT_FETCH_WITH_CLI=3Dtrue
>>>  =C2=A0=C2=A0=C2=A0=C2=A0 cd ${S}/tmp/baroloop/programmer-rust/
>>>  =C2=A0=C2=A0=C2=A0=C2=A0 cargo build --release --bin serve
>>> }
>>>
>>> do_install() {
>>>  =C2=A0=C2=A0=C2=A0=C2=A0 # this isn_t reached anyway
>>> # ...
>>> }
>>>
>>> --=20
>>> Mit freundlichen Gr=C3=BC=C3=9Fen neuroloop GmbH
>>> i.A. Felix Knorr
>>> Senior Software Developer
>>> --------------------------------------
>>> neuroloop GmbH
>>> Engesserstr. 4, 79108 Freiburg, Germany
>>>
>>> Amtsgericht Freiburg HRB 713935
>>>
>>> Gesch=C3=A4ftsf=C3=BChrer: Dr. Michael Lauk, Dr. Dennis Plachta
>>>
>>>
>>>
>>> The information contained in this communication is confidential, may
>>> be attorney-client privileged, may constitute inside information, and
>>> is intended only for the use of the addressee. It is the property of
>>> the company of the sender of this e-mail. Unauthorized use,
>>> disclosure, or copying of this communication or any part thereof is
>>> strictly prohibited and may be unlawful. If you have received this
>>> communication in error, please notify us immediately by return e-mail
>>> and destroy this communication and all copies thereof, including all
>>> attachments.
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> --=20
>>> Mit freundlichen Gr=C3=BC=C3=9Fen neuroloop GmbH
>>> i.A. Felix Knorr
>>> Senior Software Developer
>>> --------------------------------------
>>> neuroloop GmbH
>>> Engesserstr. 4, 79108 Freiburg, Germany
>>>
>>> Amtsgericht Freiburg HRB 713935
>>>
>>> Gesch=C3=A4ftsf=C3=BChrer: Dr. Michael Lauk, Dr. Dennis Plachta
>>>
>>>
>>>
>>> The information contained in this communication is confidential, may
>>> be attorney-client privileged, may constitute inside information, and
>>> is intended only for the use of the addressee. It is the property of
>>> the company of the sender of this e-mail. Unauthorized use,
>>> disclosure, or copying of this communication or any part thereof is
>>> strictly prohibited and may be unlawful. If you have received this
>>> communication in error, please notify us immediately by return e-mail
>>> and destroy this communication and all copies thereof, including all
>>> attachments.
>>>
>>>
>>>
>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>> Links: You receive all messages sent to this group.
>>> View/Reply Online (#57087):
>>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproje=
ct.org_g_yocto_message_57087&d=3DDwIFaQ&c=3D_sEr5x9kUWhuk4_nFwjJtA&r=3DLYjL=
exDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=3DKVxrF11PIY=
LER0S0KZ5nJTg8Ut1pYlTpWVAglebyRABm3CAb_QrF6YGl4ooo6kcf&s=3DnSOPRfnF8sfc7MDM=
EC7nkzjahHnPJNW1A6IO4PIFAyM&e=3D
>>> Mute This Topic:
>>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproje=
ct.org_mt_91057468_6293953&d=3DDwIFaQ&c=3D_sEr5x9kUWhuk4_nFwjJtA&r=3DLYjLex=
Dn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=3DKVxrF11PIYLE=
R0S0KZ5nJTg8Ut1pYlTpWVAglebyRABm3CAb_QrF6YGl4ooo6kcf&s=3DXQJ4_qwH1c3zIzyBMt=
V4txka8PH8jirZIIdqVs1LMYQ&e=3D
>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>> Unsubscribe:
>>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproje=
ct.org_g_yocto_unsub&d=3DDwIFaQ&c=3D_sEr5x9kUWhuk4_nFwjJtA&r=3DLYjLexDn7rXI=
zVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=3DKVxrF11PIYLER0S0KZ=
5nJTg8Ut1pYlTpWVAglebyRABm3CAb_QrF6YGl4ooo6kcf&s=3DGf_Ak0q1f16Vu8TA-X4Yd_5x=
O059CVsSDHjYzWtpe4g&e=3D
>>> [quentin.schulz@theobroma-systems.com]
>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>
>=20

