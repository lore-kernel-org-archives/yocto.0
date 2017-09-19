Return-Path: <parkch98@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 503D7E00BB1; Mon, 18 Sep 2017 19:34:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (parkch98[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f180.google.com (mail-wr0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3165CE00970
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 19:34:44 -0700 (PDT)
Received: by mail-wr0-f180.google.com with SMTP id l22so1904129wrc.10
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 19:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=9z4DWz2Ot1FmsBYarRNIPs8jl/QP/4eMouKFIKJ2Q9k=;
	b=umDEHvURnLDEW+zL5IcD9mIVSFQdeVnFrsgX7JYVr3n3umkV68hqeNaTWKPiBB7rEo
	ytd9k06QPJ4sFd+QS4R+Db7Fw+MwDYwa2jLo/zUOLxjKbDpHZynwpBwJPdvET5NSFn4m
	OlrsSMX0xg1/IJTj2iw93R9iEriXZBv6uRoc0Q/ttasQyU3zr2SsMvN+5eKsbwjiyGT4
	ObsE9s3r0ok6gpa/yueBm7QdjxpuLs9W3mYQYUgrl45TjuaadW0QIsHkEAimoLld/O5G
	7fWFxnymcX4VuRrN1lTBZo+bApK7h/5o8LJnZ7hN6yi88oI3hZ3lbsNcH1tkmx5gYfBa
	/xgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=9z4DWz2Ot1FmsBYarRNIPs8jl/QP/4eMouKFIKJ2Q9k=;
	b=bUcCceIyPGl3ZHzPwjkANanhQnPg2+yCUeXCRT1bHRfOmaUVkNYuyu4bgU1Op92rhI
	acp3FGQAYTxH9h5sGFWeHNqVOjtTTnybP6P7NJ9LwpsdLHxVARwPVeINd8DqQgDEcYU0
	x+IvbiNXpNnJ+3egQV6LRzNdvcb63RVE465NLLuH3IAKOch4DOFfH/0WtY2XnjyE/PSc
	dtc90oO6Jz5akP8RtHhorEpUp2FfRcZhMO7BrcEBJYxLy5SZnkSHjQAHKvyiP102QQYG
	MwsCveqQslTyRiI9RXIngqC1EkYbD8Je59AQm1JhXp8K6kUuQGbu/y5ZyXUNl/9jTm0S
	O3nQ==
X-Gm-Message-State: AHPjjUgcsFwkDJyD6Gx1UgNlpelYp6+bFwsR3u4KG6EiE/Nx1UeAWZE7
	KxPxtlJL4IbkscXqUunPQ68/c17FxD5FMBHhCAY=
X-Google-Smtp-Source: ADKCNb5B0Tz5MLSFmbYY41SmCHi0CxFvYVtkRZFKftgsdwVy8XstFozpJ3CYP60jkrewwHAzohkjX4qxbhmPpB88EIE=
X-Received: by 10.223.169.247 with SMTP id b110mr27706800wrd.31.1505788483970; 
	Mon, 18 Sep 2017 19:34:43 -0700 (PDT)
MIME-Version: 1.0
References: <76d0f29a-b6d7-6dc3-1b18-4ef001f487c9@windriver.com>
In-Reply-To: <76d0f29a-b6d7-6dc3-1b18-4ef001f487c9@windriver.com>
From: Chanho Park <parkch98@gmail.com>
Date: Tue, 19 Sep 2017 02:34:33 +0000
Message-ID: <CAPTzV15N3SqnOTcvoiGvj5F1d7RNZkwNGYBPTkpNsKcDCLUNKQ@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>, yocto@yoctoproject.org
Subject: Re: [meta-selinux] Update announcement
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
X-List-Received-Date: Tue, 19 Sep 2017 02:34:46 -0000
Content-Type: multipart/alternative; boundary="001a113c5248b1aa28055981b330"

--001a113c5248b1aa28055981b330
Content-Type: text/plain; charset="UTF-8"

Hi Mark,

Thanks for the update.
When I ran the semanage tool, I got below errors.

> ImportError: No module named lib2to3.pgen2.parse

Does the setools use python3 instead of the python2?

Best Regards,
Chanho Park

On Fri, 15 Sep 2017 at 6:27 AM Mark Hatle <mark.hatle@windriver.com> wrote:

> I have pushed an update to meta-selinux to work with master.  A few key
> changes:
>
> The oe-selinux and poky-selinux distro configurations HAVE BEEN REMOVED!
> It is
> now up to the user to enable the components using the appropriate
> DISTRO_FEATURES as documented in the README file.  (acl xattr pam selinux)
>
> The layer now requires meta-selinux as part of the 'setools' upgrade.  The
> tool
> is now a python based tool.
>
> SELinux componetns have been updated to version 2.7.
>
> Refpolicy is at 2.20170204, git at master as of yesterday.
>
> The README for the layer has been updated to include some additional
> information
> about running the included images.
>
> Changelog:
>
> f1f0860 openssh: set ChallengeResponseAuthentication to no
> 24cce7b refpolicy: fix a typo in RDEPENDS
> 827b305 initscripts: use the 'i' option for restorecon command
> eeb2c2f audit: fix the wrong packaging for auditd.service
> 2aadc0d audit 2.7.1 -> 2.7.6
> beaaa37 attr: fix ptest failures when selinux enabled
> 232bfeb systemd: Remove inherit enable-selinux, obsolete
> 40a581d selinux: uprev include file to 20170804
> 3aafa96 libsepol: uprev to 2.7 (20170804)
> 375dfa6 libselinux: uprev to 2.7 (20170804)
> b00974f libsemanage: uprev to 2.7 (20170804)
> 43adb0c checkpolicy: uprev to 2.7 (20170804)
> f838032 secilc: uprev to 2.7 (20170804)
> c9186be policycoreutils: uprev to 2.7 (20170804)
> 9b70823 sepolgen: remove package
> d8d6ac6 mcstrans: add package 2.7 (20170804)
> 9a07ac8 restorecond: add package 2.7 (20170804)
> a5b5f5b selinux-sandbox: add package 2.7 (20170804)
> 1d3df56 selinux-python: add package 2.7 (20170804)
> 17cda5a semodule-utils: add package 2.7 (20170804)
> 28b961c selinux-dbus: add package 2.7 (20170804)
> a1f9832 selinux-gui: add package 2.7 (20170804)
> 493b567 policycoreutils: fixes for 2.7 uprev
> fe8bc07 refpolicy_common: depends on semodule-utils-native
> fdf7612 setools: uprev to 4.1.1
> 96b54b4 packagegroup-*: sync package names
> 2c7c0e9 selinux-python: add setools to RDEPENDS
> 8bd72df refpolicy-git: Update to lastest git version
> 694b8d1 README: Update and remove references to distros, replace w/
> DISTRO_FEATURES
> 4fefe83 Refactor to conform to YP Compat requirements
> 6733785 README: Add information about running the system
> dddf265 packagegroups: Fix LIC_FILES_CHKSUM
> bca5c61 refpolicy: Add '/bin/bash.bash', an update-alternative to the
> policy
> 907e373 policycoreutils: Update fixfile
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
-- 
Best Regards,
Chanho Park

--001a113c5248b1aa28055981b330
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Hi Mark,</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Thanks for the update.</div><div dir=3D"auto">When I ran the sema=
nage tool, I got below errors.</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">&gt; ImportError: No module named lib2to3.pgen2.parse</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Does the setools use python3 instead =
of the python2?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Best Reg=
ards,</div><div dir=3D"auto">Chanho Park</div><br><div class=3D"gmail_quote=
"><div>On Fri, 15 Sep 2017 at 6:27 AM Mark Hatle &lt;<a href=3D"mailto:mark=
.hatle@windriver.com">mark.hatle@windriver.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">I have pushed an update to meta-selinux to work =
with master.=C2=A0 A few key changes:<br>
<br>
The oe-selinux and poky-selinux distro configurations HAVE BEEN REMOVED!=C2=
=A0 It is<br>
now up to the user to enable the components using the appropriate<br>
DISTRO_FEATURES as documented in the README file.=C2=A0 (acl xattr pam seli=
nux)<br>
<br>
The layer now requires meta-selinux as part of the &#39;setools&#39; upgrad=
e.=C2=A0 The tool<br>
is now a python based tool.<br>
<br>
SELinux componetns have been updated to version 2.7.<br>
<br>
Refpolicy is at 2.20170204, git at master as of yesterday.<br>
<br>
The README for the layer has been updated to include some additional inform=
ation<br>
about running the included images.<br>
<br>
Changelog:<br>
<br>
f1f0860 openssh: set ChallengeResponseAuthentication to no<br>
24cce7b refpolicy: fix a typo in RDEPENDS<br>
827b305 initscripts: use the &#39;i&#39; option for restorecon command<br>
eeb2c2f audit: fix the wrong packaging for auditd.service<br>
2aadc0d audit 2.7.1 -&gt; 2.7.6<br>
beaaa37 attr: fix ptest failures when selinux enabled<br>
232bfeb systemd: Remove inherit enable-selinux, obsolete<br>
40a581d selinux: uprev include file to 20170804<br>
3aafa96 libsepol: uprev to 2.7 (20170804)<br>
375dfa6 libselinux: uprev to 2.7 (20170804)<br>
b00974f libsemanage: uprev to 2.7 (20170804)<br>
43adb0c checkpolicy: uprev to 2.7 (20170804)<br>
f838032 secilc: uprev to 2.7 (20170804)<br>
c9186be policycoreutils: uprev to 2.7 (20170804)<br>
9b70823 sepolgen: remove package<br>
d8d6ac6 mcstrans: add package 2.7 (20170804)<br>
9a07ac8 restorecond: add package 2.7 (20170804)<br>
a5b5f5b selinux-sandbox: add package 2.7 (20170804)<br>
1d3df56 selinux-python: add package 2.7 (20170804)<br>
17cda5a semodule-utils: add package 2.7 (20170804)<br>
28b961c selinux-dbus: add package 2.7 (20170804)<br>
a1f9832 selinux-gui: add package 2.7 (20170804)<br>
493b567 policycoreutils: fixes for 2.7 uprev<br>
fe8bc07 refpolicy_common: depends on semodule-utils-native<br>
fdf7612 setools: uprev to 4.1.1<br>
96b54b4 packagegroup-*: sync package names<br>
2c7c0e9 selinux-python: add setools to RDEPENDS<br>
8bd72df refpolicy-git: Update to lastest git version<br>
694b8d1 README: Update and remove references to distros, replace w/ DISTRO_=
FEATURES<br>
4fefe83 Refactor to conform to YP Compat requirements<br>
6733785 README: Add information about running the system<br>
dddf265 packagegroups: Fix LIC_FILES_CHKSUM<br>
bca5c61 refpolicy: Add &#39;/bin/bash.bash&#39;, an update-alternative to t=
he policy<br>
907e373 policycoreutils: Update fixfile<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div><div dir=3D"ltr">-- <br></div><div class=3D"gmail_=
signature" data-smartmail=3D"gmail_signature">Best Regards,<br>Chanho Park<=
/div>

--001a113c5248b1aa28055981b330--
