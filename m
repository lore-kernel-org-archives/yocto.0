Return-Path: <sebastian@mapped.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53390C433F5
	for <webhook@archiver.kernel.org>; Fri,  5 Nov 2021 18:58:40 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (NAM10-BN7-obe.outbound.protection.outlook.com [40.107.92.87])
 by mx.groups.io with SMTP id smtpd.web09.9942.1636138719812905836
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 11:58:40 -0700
Authentication-Results: mx.groups.io;
 dkim=fail,
 err=mail: missing word in phrase: charset not supported: "windows-1252";
 spf=pass (domain: mapped.com, ip: 40.107.92.87,
 mailfrom: sebastian@mapped.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ArJB7g75eLlR0c6M+7x0HdOKHsRU4n7pMAzsYRHfisg8ZrLJQBPExbsumOs3RF/XnOe/nVO6cQK9DskuhOPel6Yv3Yw8ZlSDNo5Gzr9dja4OhnVQ9/hxrTXcwoIKJL10unPd82glF+rEBRvHqrsJVhCsKFhRWAT7SSJ8q2hNxRKqql0+Y/mzx54y3gcPJUQu4aTYpB1vLf5OVdyMz+6xlBgXn+UCuQ+KgG+UZ+rPW1cAQbIrCu90zeSyigJ7tvCKUbMXqBRArkoqpgJ5TyuPYdt8kiJA85911zziMSKFFWpGyXCHN3iaguYr4ijG2ULzp00Dg+o6jHK1MMaybV0h/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0mVLhpi8ZKr2SfCBxJGmZxEEFYEJLtP5e561Rn5hzXo=;
 b=QjgbUWhZYOCDKSPFL5J2DQ5kUfRscUz2vVwhKOpHjbiDG2WNSGEFAzRHRX6YYg/L+Iz57dSjaAAi4y4vVfGZIopQ2i9U8YARV0ap8l/PqyN9G7bMMNglomFJlOo5HIV1UsDPVRUUAyzdXvkE9IEc4gipoSp12lGdY5z0rX0sD8Y3Ujub9EfOv3svdJjlsnu0eyWEY6h2MjJWHOBp0dRdrEr2rbGcDhDvblq5HanCnImT/vbc1Bt3NwXtQevJ5aYEwVMFhA7UYLwKRiE5jPjl0U6w1Y7elRf7OexjrlKwAd09hbR0o6B6QY+0zgzpCvqBR+Rr3ZYmrG32HBARe5Kv+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mapped.com; dmarc=pass action=none header.from=mapped.com;
 dkim=pass header.d=mapped.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mapped.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0mVLhpi8ZKr2SfCBxJGmZxEEFYEJLtP5e561Rn5hzXo=;
 b=hAgEWaNfa67hhgYb4xIRx3CU7YkRYN2b82r4+zsKDLX/PnB8Uk6t9ObO1PLG4YCgW6EdhQNo8CB6sRlFe6fgu2Jqt2lLTSXVgm7tVnWpdzTn9TGXErf/wG32bs7S0d3ou+ivNb9MVRYgIrKJIctm45fW6fT1DrmDuC4PDriQLqI=
Received: from SA1PR05MB8048.namprd05.prod.outlook.com (2603:10b6:806:184::15)
 by SA0PR05MB7289.namprd05.prod.outlook.com (2603:10b6:806:c2::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.5; Fri, 5 Nov
 2021 18:58:35 +0000
Received: from SA1PR05MB8048.namprd05.prod.outlook.com
 ([fe80::a810:8c45:9e6d:9b79]) by SA1PR05MB8048.namprd05.prod.outlook.com
 ([fe80::a810:8c45:9e6d:9b79%6]) with mapi id 15.20.4690.008; Fri, 5 Nov 2021
 18:58:35 +0000
From: =?Windows-1252?Q?Sebastian_R=FChl?= <sebastian@mapped.com>
To: Khem Raj <raj.khem@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: AW: [yocto] #golang Build tools required during go generate
Thread-Topic: [yocto] #golang Build tools required during go generate
Thread-Index: AQHX0lH88EEGR1pAjkSJDEXe/vWH36v1MMWAgAAX8kc=
Date: Fri, 5 Nov 2021 18:58:35 +0000
Message-ID: 
 <SA1PR05MB804857BE5F3B9AE4EF05A108CC8E9@SA1PR05MB8048.namprd05.prod.outlook.com>
References: <JnQS.1636122755681200580.kFay@lists.yoctoproject.org>
 <61d3f746-107b-6dba-19dc-8e8786d6f26d@gmail.com>
In-Reply-To: <61d3f746-107b-6dba-19dc-8e8786d6f26d@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mapped.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7ce21015-ff56-4b9f-76ce-08d9a08e4548
x-ms-traffictypediagnostic: SA0PR05MB7289:
x-microsoft-antispam-prvs: 
 <SA0PR05MB72897EAF5A58F9CBF83C9AF3CC8E9@SA0PR05MB7289.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 hOy7WWn9HHLt0tRyh7z+J3qFpeRgeeKqUwUCDNqm4BRRffN8cD+nQj2ubvwAszaJz4YwNpUpzH4vuBUPtRR9CvvWzOV/ooD6ojsfqpeBiIa9Ym9P+kwxu1zP8EPnkmmuF0Kxcifg6GERVp2XQUx0mDdqmq79z/WNeyjyJC58wMj6X9Klqn1IhAWqeyZE6pE1uFIN0p/6z107q2bxBuVa6e5Rhqwu/Zk1LinpghBxYgyfP6PeGU3UQCQmPd64+hvH6GrDfE7/7J574YWZfvpAUPkWPPmzCMMaA7XVm55u8y8qNwPgD7x94ZSyGrUjjA8t7CY9YtFgrQ/6LSr2P4stnKYycwFEn/JU0YWlrz/UIcQzL5FaVy2BNbjGYUu7f5hSKjF23r8o87IdCZIG2pIUbw0Nos7eZzWS06GkXUOQ3lKLJ3/SSi1qzYqWpNmlbiE61lM9rpG+Iu78vZcgCeBHjGmXRuoKWYsHFQI75xgsjp8FXCNyY1tp2u6q6OhApgZrItg2iq8ZexGPwalOirNf5GhtzWGqJAlS0A5WenfPzHsqG+0Q+Ps1TS3OVygC+NYAnJ7aD9jfdtFcMtJY+mGwzWOkyZFDxZ3S8qD14t5bzwJ5l/Bv51FB0h6P6SmTusE0jmwEg4ySLXw3X0rnnabEFaY0dwZf/vavqagiBJ48HRoDe/x5a1zYnkFibnqchrIDpeDbwWvf/lhEPsUTrX0vuXQby5pI4qG56/FTw+8fkH6tRBtcai/UEiU/K+HUHCFWKNeNEhtTiZoNJWfPEBDDp5pjDi3gYAvfYFtEzHP41sjdLwoOA2ltIlX5cZAme0zx
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR05MB8048.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(366004)(346002)(396003)(136003)(39830400003)(8676002)(55016002)(38100700002)(186003)(966005)(91956017)(76116006)(9686003)(64756008)(71200400001)(66556008)(66946007)(66446008)(66476007)(122000001)(52536014)(8936002)(6506007)(5660300002)(53546011)(83380400001)(7696005)(508600001)(86362001)(66574015)(2906002)(33656002)(38070700005)(316002)(166002)(19627235002)(110136005)(2004002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?Y5Uafppl7/ByBLgRfKIGhOItAa3bR1z6B3Y+sr2T21oO5gXl6yv2NCtl?=
 =?Windows-1252?Q?C/6NxepMm/uNX7SRq01p1jDz1sbmcOT/zzwPvlxb+w+FwXU/nJwQ0GgQ?=
 =?Windows-1252?Q?Yhs6wpWor3qDCjigkTTNn2i+kCktJRYiYjCBywi2NKFXpLrEkzh9wzMK?=
 =?Windows-1252?Q?pglnrpXRU4z31e3eBwlAH9wmXV/mlIzVucbCS8y11tHdjJJUflsa+5ds?=
 =?Windows-1252?Q?ioZ5zjBSZWGPEE280VkxS7gtLK7Yigm2yLQEN6Qxq8sfVZaAkaWWFKr4?=
 =?Windows-1252?Q?UvHZW/dUOtzPDCUQcAH2rVNslMGT17S2URCs0PL7hFz4EA64aLuucLjc?=
 =?Windows-1252?Q?x5evGiXtK4yTRbGNhz5s7Z/XqnkKsvD92dvDXTWZrP9TU4Qli1wdJQAs?=
 =?Windows-1252?Q?cOwyoTCxCf1f3PQFlo3C0vv2wOc0wsvEHfeqSrgiuyF7/WP8QDs6z5g8?=
 =?Windows-1252?Q?2eugdo5tR6lZOWOXERoIJYJtMgsRw5zZ7dVkqLe7iyWKB2pYdtrtslmN?=
 =?Windows-1252?Q?uSM6I9f7IdcOafW4LZyjnBZZvLTFKgWO3vVpWQGn8D/AMIt7vUp+DqDM?=
 =?Windows-1252?Q?FJzAUjMBo3vWqubATT1T2KmhztHg8H/QCLwMUsUmqpiosV95Xd5tcfe7?=
 =?Windows-1252?Q?hd5WFLQXORBCoFv33t9u8aSE1gRetOEikxmG3NChLpfi+3gj9GaFOljc?=
 =?Windows-1252?Q?XBPmR7hOPiCRTrizM9VF7Nu/24j7zCOyKcz7jzbRrZHJYMdFqEYztUZd?=
 =?Windows-1252?Q?TfHaUwiMSZm/t5SKX3FGbjKAbVkQcjufS2CYTH9jC/6MfEqW8Jhekkck?=
 =?Windows-1252?Q?Ip0vaLlJCFsdLhOHeIJ2ZFX6Za+wuhOIcEM5JrVw23Vvcf92ghTCYxIO?=
 =?Windows-1252?Q?WxTCVDJ95/1o3SLrRdUluMWN5ey6tS1hiqUHjxYASfJpmchaaPMUFu4l?=
 =?Windows-1252?Q?lfO208l03u+nfml8dLvi9c0hktEISCmb+e6bXMTGVQadgSu6FhFIfSdy?=
 =?Windows-1252?Q?9gH+i7WZUKMM6kg+LR6X7tpKYNQLt8FPSjzF9PP+UCP3UeXIonlnt/pM?=
 =?Windows-1252?Q?WVc5gGHkmPX3vammcfwQZIvzmeVEGrG1aQy0BUPhmMnUnDr839axJqQX?=
 =?Windows-1252?Q?1zC+wyqbyjLNLKGc2pO43gZA5GAC1r1FykNtPK+qvoWsc3h1htCssfeW?=
 =?Windows-1252?Q?BEJ+SM/eUNn1K2+ekyADsuqxORrO/0t41/pcynFkUb/GF+9ZB1ZV9Cgl?=
 =?Windows-1252?Q?M2ms5EJq3r+Sd/vc5sQD9i1IF3aRctzY1ywl8gkKmBDb7DaiZPrBfHqo?=
 =?Windows-1252?Q?8MkJMlB0DZzvPxRvWWPqLLsPYAK4McCRqZi2ddQ8eKmLsWtlOMipg0q1?=
 =?Windows-1252?Q?fGe9NBpw+hBxnocNCrnhTaGSM+JfHcNGVW02Am2sxqVVkZ9lbhDQklmY?=
 =?Windows-1252?Q?qOsH4bgCoyj9VJMRMm2wLNvr3EuTi9tm8ipHqSQnMG4HNA8eEIyHMorz?=
 =?Windows-1252?Q?D3LJaFVm3OhVbN8mAvsTfAm2YJnzaG7Hj7a+ki1WUQ3eWoBq77Hzub38?=
 =?Windows-1252?Q?U5pcNcLK4z5VyNM1OsBIy2iFmAdyhDaYbwQhDQ7hTCZ/vRBySkvWM0AZ?=
 =?Windows-1252?Q?QC1V866VzUeQnnUaEQjVR23F4Dz3Kj4yRIzfB4YZphEVmm2wg/vZgC8m?=
 =?Windows-1252?Q?HggXZ9yx7pOS7TGGkXnsc9csjEbetGfSrnPw3l6qsCtRNHSAr5z3wioX?=
 =?Windows-1252?Q?HBJFLzJxEF3JMD2AwVc/jlGD11TO5UdTFGjTFGBrWj8w0Gw3Xruectpj?=
 =?Windows-1252?Q?InbnMwenZs/keKGjHFNrHuPh0INCwIAZd+Pn9ZoRz9t1vdja?=
Content-Type: multipart/alternative;
	boundary="_000_SA1PR05MB804857BE5F3B9AE4EF05A108CC8E9SA1PR05MB8048namp_"
MIME-Version: 1.0
X-OriginatorOrg: mapped.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR05MB8048.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 7ce21015-ff56-4b9f-76ce-08d9a08e4548
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2021 18:58:35.7006
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5905aed6-175d-4ef4-914d-3ee92a398d55
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 aRiAeXWxR0tqtmukzTasO50sWoXBO9nvDGN/SNv6QLzGhrwKFvKh1AI/pLiSDvi1q/lfBlp9DJS8vimC76zFmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR05MB7289
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Nov 2021 18:58:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55255

--_000_SA1PR05MB804857BE5F3B9AE4EF05A108CC8E9SA1PR05MB8048namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Here some outputs:

Bitbake -c devshell target-recipe
sh-4.4# easyjson
Segmentation fault
sh-4.4# strace easyjson
execve("/workdir/build/tmp/work/aarch64-fslc-linux/datadog-agent/7.31.1-r0/=
recipe-sysroot-native/usr/bin/easyjson", ["easyjson"], 0x7ffc7e88d530 /* 13=
8 vars */) =3D 0
brk(NULL)                               =3D 0x556083886000
arch_prctl(0x3001 /* ARCH_??? */, 0x7fffd54fcc80) =3D -1 EINVAL (Invalid ar=
gument)
--- SIGSEGV {si_signo=3DSIGSEGV, si_code=3DSEGV_MAPERR, si_addr=3D0x556083a=
1d000} ---
+++ killed by SIGSEGV +++
Segmentation fault
sh-4.4# file $(which easyjson)
/workdir/build/tmp/work/aarch64-fslc-linux/datadog-agent/7.31.1-r0/recipe-s=
ysroot-native/usr/bin/easyjson: ELF 64-bit LSB shared object, x86-64, versi=
on 1 (SYSV), dynamically linked, interpreter /workdir/build/tmp/sysroots-un=
inative/x86_64-linux/lib/ld-linux-x86-64.so.2, stripped
sh-4.4# gdb $(which easyjson)
GNU gdb (Ubuntu 8.1.1-0ubuntu1) 8.1.1
Copyright (C) 2018 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.htm=
l>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
and "show warranty" for details.
This GDB was configured as "x86_64-linux-gnu".
Type "show configuration" for configuration details.
For bug reporting instructions, please see:
<http://www.gnu.org/software/gdb/bugs/>.
Find the GDB manual and other documentation resources online at:
<http://www.gnu.org/software/gdb/documentation/>.
For help, type "help".
Type "apropos word" to search for commands related to "word"...
Reading symbols from /workdir/build/tmp/work/aarch64-fslc-linux/datadog-age=
nt/7.31.1-r0/recipe-sysroot-native/usr/bin/easyjson...(no debugging symbols=
 found)...done.
(gdb) run
Starting program: /workdir/build/tmp/work/aarch64-fslc-linux/datadog-agent/=
7.31.1-r0/recipe-sysroot-native/usr/bin/easyjson
warning: Error disabling address space randomization: Operation not permitt=
ed
BFD: warning: /workdir/build/tmp/sysroots-uninative/x86_64-linux/lib/ld-lin=
ux-x86-64.so.2: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0010001
BFD: warning: /workdir/build/tmp/sysroots-uninative/x86_64-linux/lib/ld-lin=
ux-x86-64.so.2: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0010002
BFD: warning: /workdir/build/tmp/sysroots-uninative/x86_64-linux/lib/.debug=
/ld-2.33.so: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0010001
BFD: warning: /workdir/build/tmp/sysroots-uninative/x86_64-linux/lib/.debug=
/ld-2.33.so: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0010002

Program received signal SIGSEGV, Segmentation fault.
0x00007fcfd962c2fa in strcmp () from /workdir/build/tmp/sysroots-uninative/=
x86_64-linux/lib/ld-linux-x86-64.so.2
(gdb)

Hope that helps=85.

Small background: Yocto on dunfell, build with poky docker image

Von: Khem Raj <raj.khem@gmail.com>
Datum: Freitag, 5. November 2021 um 18:29
An: Sebastian R=FChl <sebastian@mapped.com>, yocto@lists.yoctoproject.org <=
yocto@lists.yoctoproject.org>
Betreff: Re: [yocto] #golang Build tools required during go generate


On 11/5/21 7:32 AM, sebastian@mapped.com wrote:
> Hi yoto-devs/users,
>
> in order to get a golang application to run which relies on `go
> generate` calls I wrote special recipes for this tools and include them
> in my original recipe. However I always get a segmentation fault.
> In the tools (which happens to be based on golang too) I use [1] in the
> recipes and in the recipe I want to use them I include them via [2].
> However if for example enter the dev-shell or during build I get a
> segmentation fault although the binary seems to be compiled for the
> right architecture (host-amd64).
> Is there something wrong I try to use that?

do you have stack trace ? that might give some more info on whats going on

>
> Sebastian
>
> [1]
> inherit go-mod
> BBCLASSEXTEND =3D "native"
> [2]
> DEPENDS +=3D "random-go-tool-needed-by-recipe-native"
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55250): https://lists.yoctoproject.org/g/yocto/messag=
e/55250
> Mute This Topic: https://lists.yoctoproject.org/mt/86841696/1997914
> Mute #golang:https://lists.yoctoproject.org/g/yocto/mutehashtag/golang
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--_000_SA1PR05MB804857BE5F3B9AE4EF05A108CC8E9SA1PR05MB8048namp_
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.E-MailFormatvorlage19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"DE" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break-w=
ord">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Here some=
 outputs:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Bitbake -c devshell target-recipe<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">sh-4.4# easyjson<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Segmentation fault<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">sh-4.4# strace easyjson<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">execve(&quot;/workdir/build/tmp/work/aarch64-fslc-linux/datadog-agent=
/7.31.1-r0/recipe-sysroot-native/usr/bin/easyjson&quot;, [&quot;easyjson&qu=
ot;], 0x7ffc7e88d530 /* 138 vars */) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">brk(NULL)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D 0x556083886000<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">arch_prctl(0x3001 /* ARCH_??? */, 0x7fffd54fcc80) =3D -1 EINVAL (Inva=
lid argument)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">--- SIGSEGV {si_signo=3DSIGSEGV, si_code=3DSEGV_MAPERR, si_addr=3D0x5=
56083a1d000} ---<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">+++ killed by SIGSEGV +++<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Segmentation fault<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">sh-4.4# file $(which easyjson)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">/workdir/build/tmp/work/aarch64-fslc-linux/datadog-agent/7.31.1-r0/re=
cipe-sysroot-native/usr/bin/easyjson: ELF 64-bit LSB shared object, x86-64,=
 version 1 (SYSV), dynamically linked,
 interpreter /workdir/build/tmp/sysroots-uninative/x86_64-linux/lib/ld-linu=
x-x86-64.so.2, stripped<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">sh-4.4# gdb $(which easyjson)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">GNU gdb (Ubuntu 8.1.1-0ubuntu1) 8.1.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Copyright (C) 2018 Free Software Foundation, Inc.<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">License GPLv3+: GNU GPL version 3 or later &lt;http://gnu.org/license=
s/gpl.html&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">This is free software: you are free to change and redistribute it.<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">There is NO WARRANTY, to the extent permitted by law.&nbsp; Type &quo=
t;show copying&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">and &quot;show warranty&quot; for details.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">This GDB was configured as &quot;x86_64-linux-gnu&quot;.<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Type &quot;show configuration&quot; for configuration details.<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">For bug reporting instructions, please see:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">&lt;http://www.gnu.org/software/gdb/bugs/&gt;.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Find the GDB manual and other documentation resources online at:<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">&lt;http://www.gnu.org/software/gdb/documentation/&gt;.<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">For help, type &quot;help&quot;.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Type &quot;apropos word&quot; to search for commands related to &quot=
;word&quot;...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Reading symbols from /workdir/build/tmp/work/aarch64-fslc-linux/datad=
og-agent/7.31.1-r0/recipe-sysroot-native/usr/bin/easyjson...(no debugging s=
ymbols found)...done.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">(gdb) run<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Starting program: /workdir/build/tmp/work/aarch64-fslc-linux/datadog-=
agent/7.31.1-r0/recipe-sysroot-native/usr/bin/easyjson<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">warning: Error disabling address space randomization: Operation not p=
ermitted<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">BFD: warning: /workdir/build/tmp/sysroots-uninative/x86_64-linux/lib/=
ld-linux-x86-64.so.2: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0010001<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">BFD: warning: /workdir/build/tmp/sysroots-uninative/x86_64-linux/lib/=
ld-linux-x86-64.so.2: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0010002<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">BFD: warning: /workdir/build/tmp/sysroots-uninative/x86_64-linux/lib/=
.debug/ld-2.33.so: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0010001<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">BFD: warning: /workdir/build/tmp/sysroots-uninative/x86_64-linux/lib/=
.debug/ld-2.33.so: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0010002<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Program received signal SIGSEGV, Segmentation fault.<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">0x00007fcfd962c2fa in strcmp () from /workdir/build/tmp/sysroots-unin=
ative/x86_64-linux/lib/ld-linux-x86-64.so.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">(gdb)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Hope that helps=85.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Small background: Yocto on dunfell, build with poky docker image<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">Von:
</span></b><span style=3D"font-size:12.0pt;color:black">Khem Raj &lt;raj.kh=
em@gmail.com&gt;<br>
<b>Datum: </b>Freitag, 5. November 2021 um 18:29<br>
<b>An: </b>Sebastian R=FChl &lt;sebastian@mapped.com&gt;, yocto@lists.yocto=
project.org &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Betreff: </b>Re: [yocto] #golang Build tools required during go generate=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><br>
<br>
On 11/5/21 7:32 AM, sebastian@mapped.com wrote:<br>
&gt; Hi yoto-devs/users,<br>
&gt; <br>
&gt; in order to get a golang application to run which relies on `go <br>
&gt; generate` calls I wrote special recipes for this tools and include the=
m <br>
&gt; in my original recipe. However I always get a segmentation fault.<br>
&gt; In the tools (which happens to be based on golang too) I use [1] in th=
e <br>
&gt; recipes and in the recipe I want to use them I include them via [2].<b=
r>
&gt; However if for example enter the dev-shell or during build I get a <br=
>
&gt; segmentation fault although the binary seems to be compiled for the <b=
r>
&gt; right architecture (host-amd64).<br>
&gt; Is there something wrong I try to use that?<br>
<br>
do you have stack trace ? that might give some more info on whats going on<=
br>
<br>
&gt; <br>
&gt; Sebastian<br>
&gt; <br>
&gt; [1]<br>
&gt; inherit go-mod<br>
&gt; BBCLASSEXTEND =3D &quot;native&quot;<br>
&gt; [2]<br>
&gt; DEPENDS +=3D &quot;random-go-tool-needed-by-recipe-native&quot;<br>
&gt; <br>
&gt; <br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#55250): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/55250">
https://lists.yoctoproject.org/g/yocto/message/55250</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86841696=
/1997914">https://lists.yoctoproject.org/mt/86841696/1997914</a><br>
&gt; Mute #golang:https://lists.yoctoproject.org/g/yocto/mutehashtag/golang=
<br>
&gt; Group Owner: yocto+owner@lists.yoctoproject.org<br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub">=
https://lists.yoctoproject.org/g/yocto/unsub</a> [raj.khem@gmail.com]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; <o:p></o:p></p>
</div>
</div>
</body>
</html>

--_000_SA1PR05MB804857BE5F3B9AE4EF05A108CC8E9SA1PR05MB8048namp_--

