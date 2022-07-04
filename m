Return-Path: <mauro@faresoftware.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E978EC433EF
	for <webhook@archiver.kernel.org>; Mon,  4 Jul 2022 19:18:02 +0000 (UTC)
Received: from posta.faresoftware.it (posta.faresoftware.it [93.38.119.136])
 by mx.groups.io with SMTP id smtpd.web09.76465.1656962281617642837
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Jul 2022 12:18:02 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@faresoftware.it
 header.s=20210817 header.b=rxrI4ny1;
 spf=pass (domain: faresoftware.it, ip: 93.38.119.136,
 mailfrom: mauro@faresoftware.it)
Message-ID: <bd2a4d2c-b284-f627-98dc-a2acf53d61cb@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=faresoftware.it;
	s=20210817; t=1656962278;
	bh=TdS5fFq7nyxNfLgAGQqsTLhKsK5xPiIVLXCxn2vkqKI=;
	h=Date:To:From:Subject;
	b=rxrI4ny1BmIWRWD5FuOGb0NyGq2gsGwqPk1jaRLtNxJ9ojOSw7O7JwdhVNjw069E0
	 Vos40nqQH3iO4BNx82Noo/DtfGDIrO0DyCj9HEoPg5Sx5E/VkB+6xHSSws77g30syd
	 oQAh6I2MCpTQl+VRV6TJFSZJvgjbWzZ8XgKAHxKs=
Date: Mon, 4 Jul 2022 21:17:57 +0200
MIME-Version: 1.0
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Language: en-US
From: Mauro Ziliani <mauro@faresoftware.it>
Subject: dunfell do_image_wic error
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Synology-Spam-Status: score=-0.101, required 5, RCVD_COUNT_ZERO 0,
 FROM_EQ_ENVFROM 0, MIME_TRACE 0, __NOT_SPOOFED 0, MID_RHS_MATCH_FROM 0,
 NO_RECEIVED -0.001, FROM_HAS_DN 0, TO_MATCH_ENVRCPT_ALL 0, MIME_GOOD -0.1,
 RCPT_COUNT_ONE 0, TO_DN_EQ_ADDR_ALL 0
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Jul 2022 19:18:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57441

Hi all.

I update dunfell to last version.


But now I get a python exception error on do_image_wic task



| Traceback (most recent call last):
|=C2=A0=C2=A0 File "/home/yocto/sources/poky/scripts/lib/wic/filemap.py",=
 line=20
457, in get_mapped_ranges
|=C2=A0=C2=A0=C2=A0=C2=A0 first_prev, last_prev =3D next(iterator)
| StopIteration
|
| The above exception was the direct cause of the following exception:
|
| Traceback (most recent call last):
|=C2=A0=C2=A0 File "/home/yocto/sources/poky/scripts/wic", line 542, in <=
module>
|=C2=A0=C2=A0=C2=A0=C2=A0 sys.exit(main(sys.argv[1:]))
|=C2=A0=C2=A0 File "/home/yocto/sources/poky/scripts/wic", line 537, in m=
ain
|=C2=A0=C2=A0=C2=A0=C2=A0 return hlp.invoke_subcommand(args, parser, hlp.=
wic_help_usage,=20
subcommands)
|=C2=A0=C2=A0 File "/home/yocto/sources/poky/scripts/lib/wic/help.py", li=
ne 83, in=20
invoke_subcommand
|=C2=A0=C2=A0=C2=A0=C2=A0 subcmd[0](args, usage)
|=C2=A0=C2=A0 File "/home/yocto/sources/poky/scripts/wic", line 219, in=20
wic_create_subcommand
|=C2=A0=C2=A0=C2=A0=C2=A0 engine.wic_create(wks_file, rootfs_dir, bootimg=
_dir, kernel_dir,
|=C2=A0=C2=A0 File "/home/yocto/sources/poky/scripts/lib/wic/engine.py", =
line 190,=20
in wic_create
|=C2=A0=C2=A0=C2=A0=C2=A0 plugin.do_create()
|=C2=A0=C2=A0 File=20
"/home/yocto/sources/poky/scripts/lib/wic/plugins/imager/direct.py",=20
line 96, in do_create
|=C2=A0=C2=A0=C2=A0=C2=A0 self.create()
|=C2=A0=C2=A0 File=20
"/home/yocto/sources/poky/scripts/lib/wic/plugins/imager/direct.py",=20
line 180, in create
|=C2=A0=C2=A0=C2=A0=C2=A0 self._image.prepare(self)
|=C2=A0=C2=A0 File=20
"/home/yocto/sources/poky/scripts/lib/wic/plugins/imager/direct.py",=20
line 354, in prepare
|=C2=A0=C2=A0=C2=A0=C2=A0 part.prepare(imager, imager.workdir, imager.oe_=
builddir,
|=C2=A0=C2=A0 File "/home/yocto/sources/poky/scripts/lib/wic/partition.py=
", line=20
182, in prepare
|=C2=A0=C2=A0=C2=A0=C2=A0 plugin.do_prepare_partition(self, srcparams_dic=
t, creator,
|=C2=A0=C2=A0 File=20
"/home/yocto/sources/poky/scripts/lib/wic/plugins/source/rawcopy.py",=20
line 68, in do_prepare_partition
|=C2=A0=C2=A0=C2=A0=C2=A0 sparse_copy(src, dst)
|=C2=A0=C2=A0 File "/home/yocto/sources/poky/scripts/lib/wic/filemap.py",=
 line=20
539, in sparse_copy
|=C2=A0=C2=A0=C2=A0=C2=A0 for first, last in fmap.get_mapped_ranges(0, fm=
ap.blocks_cnt):
| RuntimeError: generator raised StopIteration

MZ


