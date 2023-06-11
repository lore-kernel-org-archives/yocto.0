Return-Path: <kimoto@ohnolab.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1590C7EE43
	for <webhook@archiver.kernel.org>; Sun, 11 Jun 2023 15:49:57 +0000 (UTC)
Received: from tk2-229-24410.vs.sakura.ne.jp (tk2-229-24410.vs.sakura.ne.jp [160.16.107.164])
 by mx.groups.io with SMTP id smtpd.web10.38914.1686498593549697186
 for <yocto@lists.yoctoproject.org>;
 Sun, 11 Jun 2023 08:49:53 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: ohnolab.org, ip: 160.16.107.164, mailfrom: kimoto@ohnolab.org)
Received: from localhost (115.91.30.125.dy.iij4u.or.jp [125.30.91.115])
	by tk2-229-24410.vs.sakura.ne.jp (Postfix) with ESMTPA id C4110181EA;
	Mon, 12 Jun 2023 00:49:51 +0900 (JST)
Date: Mon, 12 Jun 2023 00:49:51 +0900 (JST)
Message-Id: <20230612.004951.267668918911122010.kimoto@ohnolab.org>
To: ypa.takayasu.ito@gmail.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] xwayland needs dependency to libtirpc on kirkstone and
 master branch.
From: Masahiko KIMOTO <kimoto@ohnolab.org>
In-Reply-To: <f50c2516-dd53-95ea-fef4-b97712a7daae@gmail.com>
References: <20230610.172341.1672673222928870000.kimoto@ohnolab.org>
	<f50c2516-dd53-95ea-fef4-b97712a7daae@gmail.com>
X-fingerprint: DA 63 E3 AD 3F 30 98 05  EB CF 3C 06 2D FF 07 7F
X-PGP-Public-Key: http://www.ohnolab.org/~kimoto/kimoto.pubkey.asc
X-URL: http://www.ohnolab.org/~kimoto/
X-Mailer: Mew version 6.9 on Emacs 28.2
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 11 Jun 2023 15:49:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60244

Ito-san,

thanks for instruction, and I'll move this context to OE-core ML, then.

Regards,

From: "Takayasu Ito" <ypa.takayasu.ito@gmail.com>
Subject: Re: [yocto] xwayland needs dependency to libtirpc on kirkstone and master branch.
Date: Sun, 11 Jun 2023 21:44:23 +0900

  > Hi Masahiko,
  > 
  > Patches for recipes in the "meta" layer should be posted to
  > https://lists.openembedded.org/g/openembedded-core instead of this ML.
  > Instructions for submitting patches can be found at the following URL
  > https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded
  > 
  > Best regards,
  > 
  > On 2023/06/10 17:23, Masahiko Kimoto wrote:
  > > Hello all,
  > >
  > > On Kirkstone and Master branch of poky, xwayland needs DEPENDS to
  > > libtirpc.
  > >
  > > A small patch for kirkstone branch is attached.
  > >
  > > Regards,
  > >
  > >
  > ----------------------------------------------------------------------
  > > Masahiko Kimoto, Ph.D.
  > > E-mail: kimoto@ohnolab.org        URL: http://www.ohnolab.org/~kimoto
  > >
  > >
  > > 
  > -- 
  > Takayasu Ito
  > Yocto Project Ambassador
  > Email: ypa.takayasu.ito@gmail.com
  > 

----------------------------------------------------------------------
Masahiko Kimoto, Ph.D.
E-mail: kimoto@ohnolab.org        URL: http://www.ohnolab.org/~kimoto

