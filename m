Return-Path: <maxpowel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DF6DE00874; Wed, 29 Mar 2017 10:11:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxpowel[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.174 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 680C4E007AD
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 10:11:21 -0700 (PDT)
Received: by mail-qk0-f174.google.com with SMTP id d10so18827612qke.1
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 10:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=HK8JifcBQoXMLpAlwDn406pTy5L53kCn5UNjZFqi8nI=;
	b=g0ygNijGeAQusDOPtfHiRYpbzyJgwkpSRT+oxD2HIGyHBWrvT47SQIFDpNzstI0nQC
	4u2KnftDOguh4RCQ+/zoT6WAh2sWF6eHJKyLDlCBNGYgEPZhKlL5DH/K/axC7lEt56QK
	Je1BAjp+5lZKRq30Btfl7Z0+Z2FoBNQYjhXHmLSUlAqxW/SiatXuLAD05F/Lvc6C+9Y9
	y3hvTeDWorhAJZ1CWhGGTn1u6MzngE/d09qWy6qlMkFbYemyq4KL3tWPkpGRidmYQcAo
	y9Jy4QgtjpoPHnVc1ZsJxAKOW2tj7jFR7mPvpHJejgs5v8IypEuY6OrT3rYxa8gf0Kdp
	sw9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=HK8JifcBQoXMLpAlwDn406pTy5L53kCn5UNjZFqi8nI=;
	b=A5/YvW5eDm8DcTOoVMjBx2FtIjtuqDAmUzGVagtg4K8/KpvJMMNxgobDHnCRsThfmw
	N2gmqRJZBXiUr/hA8phboICnuf+MDNsaWOGXf9M3xZ/KaOyNi83wSAv/mxokMPvB9xSg
	NB52WtgIwwR78pFyfE9y0Zw7I55teHZBff84+gJ6gmCTphjtJpLFKpaTHX/SMia4sRn7
	rhBAMGSADU5JAWcvy3JCkyUBwX6AclF2aeh9Hh9qQHgtSufy2dZZdlDnorQVXUGUkzJ4
	TFJLTlHnZ6RpIQqjhcA5XM1999Q54QeCREYm3RjVh2TAf49L6a0f5h8sH4K9jNqAAUnR
	DvIw==
X-Gm-Message-State: AFeK/H3AHEiG98S85Gr7YM1pUfZAVyJE4Dpnb6QA8vjEXqTz2W2NWlbRlPxyqc1hn7yN1nqhVlUD/X5F38mZeA==
X-Received: by 10.55.142.69 with SMTP id q66mr1574351qkd.13.1490807480904;
	Wed, 29 Mar 2017 10:11:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.37.5 with HTTP; Wed, 29 Mar 2017 10:11:20 -0700 (PDT)
From: Alvaro Garcia <maxpowel@gmail.com>
Date: Wed, 29 Mar 2017 19:11:20 +0200
Message-ID: <CAOsmwBQhqjnnek3enUrXRzVnRRJANcibQ43hPX9jViN+ZhZyyw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Compiling custom kernel
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 29 Mar 2017 17:11:34 -0000
Content-Type: multipart/alternative; boundary=94eb2c083c7a541446054be1aa45

--94eb2c083c7a541446054be1aa45
Content-Type: text/plain; charset=UTF-8

Hi, I'm trying to compile a custom kernel (just custom config).
I created a recipe called linux-yocto in my layer:
meta-test
-recipes-test
--linux-yocto
---linux-yocto.bbapend
---files
----enable_various_options.cfg

The content of the linux-yocto.bbapend is:

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://enable_various_options.cfg"

And the content of enable_various_options.cfg is:
CONFIG_DRM_NOUVEAU=y

The way I generated enable_various_options.cfg was
bitbake -c menuconfig virtual/kernel
Select my configuration
bitbake -c devshell virtual/kernel
diff of the original .config and the new one.
I just followed the instructions here
https://lists.yoctoproject.org/pipermail/yocto/2014-June/020174.html
and here
https://software.intel.com/sites/default/files/m/4/d/8/5/8/42868-11__Developing_Kernel_Module_on_Yocto.pdf

Then I run bitbake core-image-x11
I got this warning:
WARNING:
/home/amacho/poky/meta/recipes-kernel/linux/linux-yocto_4.4.bb.do_kernel_configme
is tainted from a forced run
but the kernel is not compiled with the new config (I do md5 to vmlinuz and
was exactly the same).

Can you help me to find the way I can compile this kernel?

Thank you

--94eb2c083c7a541446054be1aa45
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, I&#39;m trying to compile a custom kernel (just custom=
 config).<br>I created a recipe called linux-yocto in my layer:<br>meta-tes=
t<br>-recipes-test<br>--linux-yocto<br>---linux-yocto.bbapend<br>---files<b=
r>----enable_various_options.cfg<br><br>The content of the linux-yocto.bbap=
end is:<br><br>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<b=
r>SRC_URI +=3D &quot;file://enable_various_options.cfg&quot;<br><br>And the=
 content of enable_various_options.cfg is:<br>CONFIG_DRM_NOUVEAU=3Dy<br><br=
>The way I generated enable_various_options.cfg was<br>bitbake -c menuconfi=
g virtual/kernel<br>Select my configuration<br>bitbake -c devshell virtual/=
kernel<br>diff of the original .config and the new one.<br>I just followed =
the instructions here <a href=3D"https://lists.yoctoproject.org/pipermail/y=
octo/2014-June/020174.html">https://lists.yoctoproject.org/pipermail/yocto/=
2014-June/020174.html</a><br>and here <a href=3D"https://software.intel.com=
/sites/default/files/m/4/d/8/5/8/42868-11__Developing_Kernel_Module_on_Yoct=
o.pdf">https://software.intel.com/sites/default/files/m/4/d/8/5/8/42868-11_=
_Developing_Kernel_Module_on_Yocto.pdf</a><br><br>Then I run bitbake core-i=
mage-x11<br>I got this warning:<br>WARNING: /home/amacho/poky/meta/recipes-=
kernel/linux/linux-yocto_4.4.bb.do_kernel_configme is tainted from a forced=
 run<br>but the kernel is not compiled with the new config (I do md5 to vml=
inuz and was exactly the same).<br><br>Can you help me to find the way I ca=
n compile this kernel?<br><br>Thank you<br><br><br></div>

--94eb2c083c7a541446054be1aa45--
