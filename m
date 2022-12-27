Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 768BBC4332F
	for <webhook@archiver.kernel.org>; Tue, 27 Dec 2022 16:15:58 +0000 (UTC)
Received: from mailout03.t-online.de (mailout03.t-online.de [194.25.134.81])
 by mx.groups.io with SMTP id smtpd.web10.160138.1672157757562058772
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Dec 2022 08:15:57 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.81, mailfrom: f_l_k@t-online.de)
Received: from fwd76.dcpf.telekom.de (fwd76.aul.t-online.de [10.223.144.102])
	by mailout03.t-online.de (Postfix) with SMTP id BE04A1548C;
	Tue, 27 Dec 2022 17:15:42 +0100 (CET)
Received: from [192.168.178.83] ([79.219.226.104]) by fwd76.t-online.de
	with (TLSv1.3:TLS_AES_256_GCM_SHA384 encrypted)
	esmtp id 1pACc6-1294LY0; Tue, 27 Dec 2022 17:15:38 +0100
Date: Tue, 27 Dec 2022 17:15:32 +0100
From: Markus Volk <f_l_k@t-online.de>
Subject: Re: [yocto] recipe won't build, missing pseudo
To: Mistyron <ron.eggler@mistywest.com>
Cc: yocto@lists.yoctoproject.org
Message-Id: <W55KNR.L3PGYBANDB9M2@t-online.de>
In-Reply-To: <c8e02a83-0061-d3f2-6c60-1ca836719836@mistywest.com>
References: <c8e02a83-0061-d3f2-6c60-1ca836719836@mistywest.com>
X-Mailer: geary/40.0
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-9OEWQQeC2ev+oBrK7H5r"
X-TOI-EXPURGATEID: 150726::1672157738-EF7F5A26-7B45B000/0/0 CLEAN NORMAL
X-TOI-MSGID: 66cf558a-a49a-43a8-bd58-878b67c5f973
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Dec 2022 16:15:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58875

--=-9OEWQQeC2ev+oBrK7H5r
Content-Type: text/plain; charset=us-ascii; format=flowed

<https://git.openembedded.org/meta-openembedded/tree/meta-networking/recipes-support/phytool/phytool.bb>

Am Mo, 26. Dez 2022 um 18:54:01 -0800 schrieb Mistyron 
<ron.eggler@mistywest.com>:
> Hi,
> 
> I'm want to write a recipe to compile phytool but I'm getting the 
> below error when building it with:
> $ bitbake -b phytool_2.0
> ERROR: Failed to spawn fakeroot worker to run 
> /home/yocto/rzg_vlp_v3.0.0/build/../meta-mistysom/recipes-bringup/phytool/phytool_2.0.bb:do_install: 
> [Errno 2] No such file or directory: 
> '/home/yocto/rzg_vlp_v3.0.0/build/tmp/sysroots-components/x86_64/pseudo-native/usr/bin/pseudo'
> 
> my bb file looks like:
> 
> [phytool_2.0.bb]
> DESCRIPTION = "Recipe builds phytool utility"
> # Needs to be changed to GPLv2
> LICENSE = "MIT"
> SRC_URI = "git://github.com/MistySOM/phytool.git"
> SRCREV = "8882328c08ba2efb13c049812098f1d0cb8adf0c"
> LIC_FILES_CHKSUM = 
> "file://../git/LICENSE;md5=39bba7d2cf0ba1036f2a6e2be52fe3f0" 
> <file://../git/LICENSE;md5=39bba7d2cf0ba1036f2a6e2be52fe3f0>
> INHERIT += " pseudo"
> 
> python do_display_banner() {
>     bb.plain("some message")
> }
> 
> addtask display_banner before do_build
> [/phytool_2.0.bb]
> 
> It appears like my INHERIT line does not satsify the requirement.
> How can I resolve this?
> 
> --
> RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com 
> <http://www.mistywest.com/>
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58872): 
> <https://lists.yoctoproject.org/g/yocto/message/58872>
> Mute This Topic: <https://lists.yoctoproject.org/mt/95898174/3618223>
> Group Owner: yocto+owner@lists.yoctoproject.org 
> <mailto:yocto+owner@lists.yoctoproject.org>
> Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub> 
> [f_l_k@t-online.de <mailto:f_l_k@t-online.de>]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


--=-9OEWQQeC2ev+oBrK7H5r
Content-Type: text/html; charset=us-ascii

<div id="geary-body" dir="auto"><div><a href="https://git.openembedded.org/meta-openembedded/tree/meta-networking/recipes-support/phytool/phytool.bb">https://git.openembedded.org/meta-openembedded/tree/meta-networking/recipes-support/phytool/phytool.bb</a></div></div><div id="geary-quote" dir="auto"><br>Am Mo, 26. Dez 2022 um 18:54:01 -0800 schrieb Mistyron &lt;ron.eggler@mistywest.com&gt;:<br><blockquote type="cite"><div class="plaintext" style="white-space: break-spaces;">Hi,

I'm want to write a recipe to compile phytool but I'm getting the below error when building it with:
$ bitbake -b phytool_2.0
ERROR: Failed to spawn fakeroot worker to run /home/yocto/rzg_vlp_v3.0.0/build/../meta-mistysom/recipes-bringup/phytool/phytool_2.0.bb:do_install: [Errno 2] No such file or directory: '/home/yocto/rzg_vlp_v3.0.0/build/tmp/sysroots-components/x86_64/pseudo-native/usr/bin/pseudo'

my bb file looks like:

[phytool_2.0.bb]
DESCRIPTION = "Recipe builds phytool utility"
# Needs to be changed to GPLv2
LICENSE = "MIT"
SRC_URI = "git://github.com/MistySOM/phytool.git"
SRCREV = "8882328c08ba2efb13c049812098f1d0cb8adf0c"
LIC_FILES_CHKSUM = "<a href="file://../git/LICENSE;md5=39bba7d2cf0ba1036f2a6e2be52fe3f0" "="">file://../git/LICENSE;md5=39bba7d2cf0ba1036f2a6e2be52fe3f0"</a>
INHERIT += " pseudo"

python do_display_banner() {
&nbsp;&nbsp;&nbsp; bb.plain("some message")
}

addtask display_banner before do_build
[/phytool_2.0.bb]

It appears like my INHERIT line does not satsify the requirement.
How can I resolve this?

<div>-- 
</div>RON EGGLER Firmware Engineer (he/him/his) <a href="http://www.mistywest.com">www.mistywest.com</a>
</div><div class="plaintext" style="white-space: break-spaces;">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#58872): <a href="https://lists.yoctoproject.org/g/yocto/message/58872">https://lists.yoctoproject.org/g/yocto/message/58872</a>
Mute This Topic: <a href="https://lists.yoctoproject.org/mt/95898174/3618223">https://lists.yoctoproject.org/mt/95898174/3618223</a>
Group Owner: <a href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href="mailto:f_l_k@t-online.de">f_l_k@t-online.de</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</div></blockquote></div>
--=-9OEWQQeC2ev+oBrK7H5r--


