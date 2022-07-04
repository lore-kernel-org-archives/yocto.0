Return-Path: <mauro@faresoftware.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 014EAC43334
	for <webhook@archiver.kernel.org>; Mon,  4 Jul 2022 19:26:03 +0000 (UTC)
Received: from posta.faresoftware.it (posta.faresoftware.it [93.38.119.136])
 by mx.groups.io with SMTP id smtpd.web12.76061.1656962757718114871
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Jul 2022 12:25:58 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@faresoftware.it
 header.s=20210817 header.b=yAc8A1Kv;
 spf=pass (domain: faresoftware.it, ip: 93.38.119.136,
 mailfrom: mauro@faresoftware.it)
Message-ID: <136855e3-ed29-c3a2-3450-72ddaae4d187@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=faresoftware.it;
	s=20210817; t=1656962754;
	bh=YZB0d5oQWv11GfxWrdHo+jiKHAV6ZQ5zcKiuWragMLs=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=yAc8A1Kva4kDv1c/KrV/wURf0aXxcjp5Utj2EoOhwWMnAoEKn3pcFJcbWCUPTK4OJ
	 1/2s0+Z0FAtov1cg9FUz6RbgxDqFhOOnt5oqoW4TJ/AsrXgfCGJ6LFkABYMd9b+ua0
	 RsDjPTPCNe+tUZKIh1zup++bTePgTWzwVzAiys5Q=
Date: Mon, 4 Jul 2022 21:25:54 +0200
MIME-Version: 1.0
Subject: Re: [yocto] dunfell do_image_wic error
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <16FEB66AD9D1EECC.2437@lists.yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
In-Reply-To: <16FEB66AD9D1EECC.2437@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Synology-Spam-Status: score=1.342, required 5, __NOT_A_PERSON 0,
 __BODY_URI_ONLY 0, FROM_HAS_DN 0, TO_MATCH_ENVRCPT_ALL 0, MIME_GOOD -0.1,
 TO_DN_NONE 0, __THREADED 0, RCPT_COUNT_ONE 0, SCC_BODY_URI_ONLY 1.443,
 RCVD_COUNT_ZERO 0, FROM_EQ_ENVFROM 0, MIME_TRACE 0, __NOT_SPOOFED 0,
 MID_RHS_MATCH_FROM 0, NO_RECEIVED -0.001
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Jul 2022 19:26:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57442

Sorry for missing information


I get this error when I do


bitbake core-image-minimal


MZ

On 04/07/22 21:17, Mauro Ziliani wrote:
> Hi all.
>
> I update dunfell to last version.
>
>
> But now I get a python exception error on do_image_wic task
>
>
>
> | Traceback (most recent call last):
> |=C2=A0=C2=A0 File "/home/yocto/sources/poky/scripts/lib/wic/filemap.py=
", line=20
> 457, in get_mapped_ranges
> |=C2=A0=C2=A0=C2=A0=C2=A0 first_prev, last_prev =3D next(iterator)
> | StopIteration
> |
> | The above exception was the direct cause of the following exception:
> |
> | Traceback (most recent call last):
> |=C2=A0=C2=A0 File "/home/yocto/sources/poky/scripts/wic", line 542, in=
 <module>
> |=C2=A0=C2=A0=C2=A0=C2=A0 sys.exit(main(sys.argv[1:]))
> |=C2=A0=C2=A0 File "/home/yocto/sources/poky/scripts/wic", line 537, in=
 main
> |=C2=A0=C2=A0=C2=A0=C2=A0 return hlp.invoke_subcommand(args, parser, hl=
p.wic_help_usage,=20
> subcommands)
> |=C2=A0=C2=A0 File "/home/yocto/sources/poky/scripts/lib/wic/help.py", =
line 83,=20
> in invoke_subcommand
> |=C2=A0=C2=A0=C2=A0=C2=A0 subcmd[0](args, usage)
> |=C2=A0=C2=A0 File "/home/yocto/sources/poky/scripts/wic", line 219, in=
=20
> wic_create_subcommand
> |=C2=A0=C2=A0=C2=A0=C2=A0 engine.wic_create(wks_file, rootfs_dir, booti=
mg_dir, kernel_dir,
> |=C2=A0=C2=A0 File "/home/yocto/sources/poky/scripts/lib/wic/engine.py"=
, line=20
> 190, in wic_create
> |=C2=A0=C2=A0=C2=A0=C2=A0 plugin.do_create()
> |=C2=A0=C2=A0 File=20
> "/home/yocto/sources/poky/scripts/lib/wic/plugins/imager/direct.py",=20
> line 96, in do_create
> |=C2=A0=C2=A0=C2=A0=C2=A0 self.create()
> |=C2=A0=C2=A0 File=20
> "/home/yocto/sources/poky/scripts/lib/wic/plugins/imager/direct.py",=20
> line 180, in create
> |=C2=A0=C2=A0=C2=A0=C2=A0 self._image.prepare(self)
> |=C2=A0=C2=A0 File=20
> "/home/yocto/sources/poky/scripts/lib/wic/plugins/imager/direct.py",=20
> line 354, in prepare
> |=C2=A0=C2=A0=C2=A0=C2=A0 part.prepare(imager, imager.workdir, imager.o=
e_builddir,
> |=C2=A0=C2=A0 File "/home/yocto/sources/poky/scripts/lib/wic/partition.=
py", line=20
> 182, in prepare
> |=C2=A0=C2=A0=C2=A0=C2=A0 plugin.do_prepare_partition(self, srcparams_d=
ict, creator,
> |=C2=A0=C2=A0 File=20
> "/home/yocto/sources/poky/scripts/lib/wic/plugins/source/rawcopy.py",=20
> line 68, in do_prepare_partition
> |=C2=A0=C2=A0=C2=A0=C2=A0 sparse_copy(src, dst)
> |=C2=A0=C2=A0 File "/home/yocto/sources/poky/scripts/lib/wic/filemap.py=
", line=20
> 539, in sparse_copy
> |=C2=A0=C2=A0=C2=A0=C2=A0 for first, last in fmap.get_mapped_ranges(0, =
fmap.blocks_cnt):
> | RuntimeError: generator raised StopIteration
>
> MZ
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57441): https://lists.yoctoproject.org/g/yocto/mess=
age/57441
> Mute This Topic: https://lists.yoctoproject.org/mt/92171800/3617482
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mauro@fareso=
ftware.it]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

