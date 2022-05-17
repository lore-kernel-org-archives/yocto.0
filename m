Return-Path: <ben.s.doron@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62698C433F5
	for <webhook@archiver.kernel.org>; Tue, 17 May 2022 05:51:10 +0000 (UTC)
Subject: yocto linux with dual boot for dual images #yocto #grub
To: yocto@lists.yoctoproject.org
From: ben.s.doron@gmail.com
X-Originating-Location: Ashdod, Southern District, IL (212.235.98.140)
X-Originating-Platform: Windows Chrome 101
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 16 May 2022 22:51:04 -0700
Message-ID: <evX4.1652766664435829558.AC3k@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="iXB7twfWT46ntAYHG8L6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 May 2022 05:51:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57116

--iXB7twfWT46ntAYHG8L6
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

have two yocoto images and i need to make a dual boot for them. I make two =
partitions in dev/mmcblk1 called mmcblk1p1 & mmcblk1p2. I install first ima=
ge in mmcblk1p1 & the second image in mmcblk1p2 with dd commannd.

I add a title and menu with grub.cfg but no success to boot to the second i=
mage.

Also try to boot from the grub shell with the following commands but no suc=
cess

grub> ls
grub> (hd0) (hd0,gpt2) (hd0,gpt1)
grub> set root=3D(hd0,gpt2)
grub> linux (hd0,gpt2)/vmlinuz=20
grub> initrd (hd0,gpt2)/initrd
grub> boot

Also try with the parted command to set on the boot flag to specific image =
but no success.

--iXB7twfWT46ntAYHG8L6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"margin-bottom: var(--s-prose-spacing); padding: 0px; border: 0p=
x; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-st=
retch: inherit; line-height: inherit; font-family: -apple-system, BlinkMacS=
ystemFont, 'Segoe UI Adjusted', 'Segoe UI', 'Liberation Sans', sans-serif; =
font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear: both=
; color: #232629;">&nbsp;have two yocoto images and i need to make a dual b=
oot for them. I make two partitions in dev/mmcblk1 called mmcblk1p1 &amp; m=
mcblk1p2. I install first image in mmcblk1p1 &amp; the second image in mmcb=
lk1p2 with dd commannd.</p>
<p style=3D"margin-bottom: var(--s-prose-spacing); padding: 0px; border: 0p=
x; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-st=
retch: inherit; line-height: inherit; font-family: -apple-system, BlinkMacS=
ystemFont, 'Segoe UI Adjusted', 'Segoe UI', 'Liberation Sans', sans-serif; =
font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear: both=
; color: #232629;">I add a title and menu with grub.cfg but no success to b=
oot to the second image.</p>
<p style=3D"margin-bottom: var(--s-prose-spacing); padding: 0px; border: 0p=
x; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-st=
retch: inherit; line-height: inherit; font-family: -apple-system, BlinkMacS=
ystemFont, 'Segoe UI Adjusted', 'Segoe UI', 'Liberation Sans', sans-serif; =
font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear: both=
; color: #232629;">Also try to boot from the grub shell with the following =
commands but no success</p>
<pre class=3D"lang-sh s-code-block" style=3D"margin-bottom: calc(var(--s-pr=
ose-spacing) + 0.4em); padding: var(--su12); font-variant-numeric: inherit;=
 font-variant-east-asian: inherit; font-stretch: inherit; line-height: var(=
--lh-md); font-family: var(--ff-mono); font-size: var(--fs-body1); vertical=
-align: baseline; box-sizing: inherit; width: auto; max-height: 600px; back=
ground-color: var(--highlight-bg); border-radius: var(--br-md); color: var(=
--highlight-color); overflow-wrap: normal; border: 0px initial initial;"><c=
ode class=3D"hljs language-bash" style=3D"margin: 0px; border: 0px; font-st=
yle: inherit; font-variant: inherit; font-weight: inherit; font-stretch: in=
herit; line-height: inherit; font-family: inherit; font-size: var(--fs-body=
1); vertical-align: baseline; box-sizing: inherit; white-space: inherit;">g=
rub&gt; ls
grub&gt; (hd0) (hd0,gpt2) (hd0,gpt1)
grub&gt; <span class=3D"hljs-built_in" style=3D"margin: 0px; padding: 0px; =
border: 0px; font-style: inherit; font-variant: inherit; font-weight: inher=
it; font-stretch: inherit; line-height: inherit; font-family: inherit; font=
-size: 13px; vertical-align: baseline; box-sizing: inherit; color: var(--hi=
ghlight-literal);">set</span> root=3D(hd0,gpt2)
grub&gt; linux (hd0,gpt2)/vmlinuz=20
grub&gt; initrd (hd0,gpt2)/initrd
grub&gt; boot
</code></pre>
<p style=3D"margin-bottom: 0px; padding: 0px; border: 0px; font-variant-num=
eric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; lin=
e-height: inherit; font-family: -apple-system, BlinkMacSystemFont, 'Segoe U=
I Adjusted', 'Segoe UI', 'Liberation Sans', sans-serif; font-size: 15px; ve=
rtical-align: baseline; box-sizing: inherit; clear: both; color: #232629;">=
Also try with the parted command to set on the boot flag to specific image =
but no success.</p>

--iXB7twfWT46ntAYHG8L6--

