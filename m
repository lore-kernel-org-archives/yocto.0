Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EBB9D6392E
	for <webhook@archiver.kernel.org>; Wed, 20 Nov 2024 11:36:43 +0000 (UTC)
Received: from mailout01.t-online.de (mailout01.t-online.de [194.25.134.80])
 by mx.groups.io with SMTP id smtpd.web11.11306.1732102595719448669
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Nov 2024 03:36:36 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: t-online.de, ip: 194.25.134.80, mailfrom: f_l_k@t-online.de)
Received: from fwd79.aul.t-online.de (fwd79.aul.t-online.de [10.223.144.105])
	by mailout01.t-online.de (Postfix) with SMTP id 9189B4F9;
	Wed, 20 Nov 2024 12:36:33 +0100 (CET)
Received: from [192.168.178.67] ([84.154.160.173]) by fwd79.t-online.de
	with (TLSv1.3:TLS_AES_256_GCM_SHA384 encrypted)
	esmtp id 1tDj0V-3Ys7aS0; Wed, 20 Nov 2024 12:36:28 +0100
Date: Wed, 20 Nov 2024 12:38:53 +0100
From: Markus Volk <f_l_k@t-online.de>
Subject: Re: [yocto] gnome desktop with kirkstone #kirkstone #gnome
To: yocto@lists.yoctoproject.org, f_l_k@t-online.de
Cc: Ankita.AN@exaleapsemi.com
Message-Id: <T0Z8NS.TY84FKA36X0S3@t-online.de>
In-Reply-To: <1809A882E9B0199B.32520@lists.yoctoproject.org>
References: <DFqh.1732099913660193870.SnUS@lists.yoctoproject.org>
	<1809A882E9B0199B.32520@lists.yoctoproject.org>
X-Mailer: geary/46.0
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-81Kjj9TG/yGR/B5CnWoI"
X-TOI-EXPURGATEID: 150726::1732102588-50FE1DD7-66555508/0/0 CLEAN NORMAL
X-TOI-MSGID: 2a262b95-0406-4bf2-a2dd-ef5aacff1026
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Nov 2024 11:36:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64307

--=-81Kjj9TG/yGR/B5CnWoI
Content-Type: text/plain; charset=us-ascii; format=flowed

Sorry, I wasn't looking properly, I thought you wanted to build 2.46, 
but kirkstone is on 2.36. So just ignore this message

On Wed, Nov 20 2024 at 12:09:12 PM +01:00:00, Markus Volk 
<f_l_k@t-online.de> wrote:
> Hi,
> 
> Webkitgtk is pulled in by gnome-control-center to provide support for 
> online-accounts/cloud-storage. Recent webkitgtk is still broken with 
> webassembly/jit for riscv64, so you should downgrade that to the 
> version that is included in oe-core
> 
> On Wed, Nov 20 2024 at 02:51:53 AM -08:00:00, 
> Ankita.AN@exaleapsemi.com wrote:
>> HI,
>> I am trying to launch gnome desktop with kirkstone for 
>> riscv64(custom distro).
>> 
>> For trial purpose I used poky to build qemu image with gnome.
>> 
>> in local.conf
>> 
>> MACHINE ?= "qemux86-64"
>> DISTRO_FEATURES:append = " x11 wayland pam systemd gnome"
>> IMAGE_INSTALL:append = " gnome-session gnome-terminal 
>> gnome-control-center gnome-shell"
>> DISTRO_FEATURES += "polkit opengl"
>> 
>> and vi  
>> meta-openembedded/meta-gnome/recipes-core/images/core-image-gnome.bb
>> 
>> SUMMARY = "Minimal GNOME Desktop Image"
>> LICENSE = "MIT"
>> IMAGE_FEATURES += "ssh-server-dropbear"
>> IMAGE_INSTALL = "\
>>     gnome-session \
>>     gnome-terminal \
>>     gnome-shell \
>>     gnome-control-center \
>>     gdm \
>>     "
>> inherit core-image
>> 
>> 
>> The error I am facing is,
>> ERROR: Task 
>> (/home/vitthal/ankita/poky/meta/recipes-sato/webkit/webkitgtk_2.36.8.bb:do_compile) 
>> failed with exit code '1'
>> 
>> Any suggestions for this?
>> 
>> Thanks,
>> Ankita


--=-81Kjj9TG/yGR/B5CnWoI
Content-Type: text/html; charset=us-ascii

<div id="geary-body" dir="auto"><div>Sorry, I wasn't looking properly, I thought you wanted to build 2.46, but kirkstone is on 2.36. So just ignore this message</div></div><div id="geary-quote" dir="auto"><br>On Wed, Nov 20 2024 at 12:09:12 PM +01:00:00, Markus Volk &lt;f_l_k@t-online.de&gt; wrote:<br><blockquote type="cite"><div id="geary-body" dir="auto"><div>Hi,</div><div><br></div><div>Webkitgtk is pulled in by gnome-control-center to provide support for online-accounts/cloud-storage. Recent webkitgtk is still broken with webassembly/jit for riscv64, so you should downgrade that to the version that is included in oe-core</div></div><div id="geary-quote" dir="auto"><br>On Wed, Nov 20 2024 at 02:51:53 AM -08:00:00, Ankita.AN@exaleapsemi.com wrote:<br><blockquote type="cite"><div>HI,</div>
<div>I am trying to launch gnome desktop with kirkstone for riscv64(custom distro).</div>
<div>&nbsp;</div>
<div>For trial purpose I used poky to build qemu image with gnome.</div>
<div>&nbsp;</div>
<div>in local.conf</div>
<div>&nbsp;</div>
<div>MACHINE ?= "qemux86-64"<br>DISTRO_FEATURES:append = " x11 wayland pam systemd gnome"<br>IMAGE_INSTALL:append = " gnome-session gnome-terminal gnome-control-center gnome-shell"<br>DISTRO_FEATURES += "polkit opengl"</div>
<div>&nbsp;</div>
<div>and vi&nbsp; meta-openembedded/meta-gnome/recipes-core/images/core-image-gnome.bb</div>
<div>&nbsp;</div>
<div>
<div>SUMMARY = "Minimal GNOME Desktop Image"<br>LICENSE = "MIT"</div>
<div>IMAGE_FEATURES += "ssh-server-dropbear"</div>
<div>IMAGE_INSTALL = "\<br>&nbsp; &nbsp; gnome-session \<br>&nbsp; &nbsp; gnome-terminal \<br>&nbsp; &nbsp; gnome-shell \<br>&nbsp; &nbsp; gnome-control-center \<br>&nbsp; &nbsp; gdm \<br>&nbsp; &nbsp; "</div>
<div>inherit core-image</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>The error I am facing is,</div>
<div>ERROR: Task (/home/vitthal/ankita/poky/meta/recipes-sato/webkit/webkitgtk_2.36.8.bb:do_compile) failed with exit code '1'</div>
<div>&nbsp;</div>
<div>Any suggestions for this?</div>
<div>&nbsp;</div>
<div>Thanks,</div>
<div>Ankita</div>
</div>
</blockquote></div>
</blockquote></div>
--=-81Kjj9TG/yGR/B5CnWoI--


