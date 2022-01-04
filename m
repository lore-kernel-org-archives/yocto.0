Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8667DC433EF
	for <webhook@archiver.kernel.org>; Tue,  4 Jan 2022 12:15:07 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by mx.groups.io with SMTP id smtpd.web08.5792.1641298506312956421
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jan 2022 04:15:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm3 header.b=oYwS1Ybp;
 spf=pass (domain: gherzan.com, ip: 66.111.4.29, mailfrom: andrei@gherzan.com)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id A38355C01D4;
	Tue,  4 Jan 2022 07:15:05 -0500 (EST)
Received: from imap41 ([10.202.2.91])
  by compute4.internal (MEProxy); Tue, 04 Jan 2022 07:15:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	mime-version:message-id:in-reply-to:references:date:from:to:cc
	:subject:content-type; s=fm3; bh=MLHjUtShPJYIWEiH1v9W/gMux/GiZqk
	JjAtq6GFBhmA=; b=oYwS1YbpsKsKJoNU2b6DceN6sicg68gWng6b/9Wqxp1+lxm
	ciopktANhsZ9KpVJ5e6cOjdGdRKwegsfqsAFL6fO5h4ycAvunoyXwAsukytWvv9F
	WoAjvr7dLEtYEeZn8KQGF1iiIavWv+zerHKa9kYaygQBHm8TaNsA5DeUPSdYdfaK
	wol2Ra94NFkGrpQAnavZi2aCFaeJGvEem0pWV2N2GOlwMOn/1f8WpHLTaNyfbfqD
	hzj1RRiKdysWwqq/VX+7y6bivmurU8TALgcGY45lq7urV3GhJuEpjdxFBu65/Hc9
	S63j74FippM7NSU2CPJLTvOjYjxYTn3j6UBK9xQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=MLHjUt
	ShPJYIWEiH1v9W/gMux/GiZqkJjAtq6GFBhmA=; b=ZyFfEffUQNarXmAAFsBD5Z
	tq2sG2cvH0xaPJijpRloznUl1rfsFpOe8XSvD8FqSltLzM0wFWAy+eNG1mtTj9Kr
	vgleeoaq7dBbgLLLEg0KJdCJBDv52wVPQkhqsI0XvyusFbh17R9LTvuN0SLbhpQu
	BRPLIm+0tFHXewFpGY1OVAcZqS4C9l7ExlIFqm6CJCwguW9HkVdv2ZK6veYQBToY
	jhNYf2gJC1i+B4SfzWUsuDxNCpe5zMq+FKRQiC6QYLMPqhMjmVe2SJHuX6mOpIGE
	wSJlyU/kexo9o7Bh4jPTDfpmyzpu0G3b1N6PUBT5wYnExLW4LbhAtp++DnVHPzKg
	==
X-ME-Sender: <xms:STrUYe-BtS54J1y61ygx0tTrWEJosQTukntL_xWAUxsGQ83NMWvZzQ>
    <xme:STrUYesoT0iVLUc1IonWU3x142LS2OKmqr30ruT7CYVJwCm5WyL6RCmlI3hZ1EuOQ
    Jc4vceXBDdlEqX6tbA>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvuddrudeffedgfeekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfgjfhffhffvufgtsehttd
    ertderredtnecuhfhrohhmpedftehnughrvghiucfihhgvrhiirghnfdcuoegrnhgurhgv
    ihesghhhvghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhepjeduvdefieffgfehve
    ekgedugeekteeluedvgfehleeileehtefhffffveduvdelnecuffhomhgrihhnpeihohgt
    thhophhrohhjvggtthdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpegrnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:STrUYUDme2LitImACZSWEt6y69hkMYTKPqjri2vV9B12wAKBmXNu6A>
    <xmx:STrUYWf1gUdfrhdl_GAi7gxMX2qslOPvWSU7pf8fKJUI6EMpCTkpzQ>
    <xmx:STrUYTPLB_6PT2OPJtLIGzA0RnmGwPI35GKSP_n1FHRusmXEz0k8TA>
    <xmx:STrUYSZuWctLFTecpU1B6KrF9pMK-twEX_nubveVTbqFWt3oABM8eg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 68CAF3C0265; Tue,  4 Jan 2022 07:15:05 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4525-g8883000b21-fm-20211221.001-g8883000b
Mime-Version: 1.0
Message-Id: <99ee612d-96a4-4d86-90eb-b3b3cd3114ad@www.fastmail.com>
In-Reply-To: <20210708084522.10558-1-massimo.toscanelli@leica-geosystems.com>
References: <20210708084522.10558-1-massimo.toscanelli@leica-geosystems.com>
Date: Tue, 04 Jan 2022 12:14:44 +0000
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: massimo.toscanelli@leica-geosystems.com
Subject: Re: [yocto] [meta-raspberrypi][PATCH] userland: add dtc dependency
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jan 2022 12:15:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55717

On Thu, 8 Jul 2021, at 09:45, massimo toscanelli via lists.yoctoproject.org wrote:
> When using dtparam, dtoverlay converts /proc/device-tree to a .dtb and
> loads it. However, if dtc is not installed, this operation cannot be
> done and every call to dtparam fails.
>
> Therefore, dtc needs to be added to the list of userland dependencies
> in order to properly call dtparam.
>
> Signed-off-by: massimo toscanelli <massimo.toscanelli@leica-geosystems.com>
> ---
>  recipes-graphics/userland/userland_git.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-graphics/userland/userland_git.bb 
> b/recipes-graphics/userland/userland_git.bb
> index ead81f0..9ec57c9 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -104,5 +104,5 @@ FILES_${PN}-dev += "${includedir} \
>  FILES_${PN}-doc += "${datadir}/install"
>  FILES_${PN}-dbg += "${libdir}/plugins/.debug"
> 
> -RDEPENDS_${PN} += "bash"
> +RDEPENDS_${PN} += "bash dtc"
>  RDEPENDS_${PN} += "${@bb.utils.contains("MACHINE_FEATURES", 
> "vc4graphics", "libegl-mesa", "", d)}"
> -- 
> 2.17.1

Hi Massimo,

Somehow I've managed to miss this patch. Could you review this on the current branch version? This looks good to me but would need to be rebased.

Thanks,
Andrei

