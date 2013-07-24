Return-Path: <gopikrishnans@pec.edu>
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61460E01440
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 23:44:17 -0700 (PDT)
Received: by mail-pa0-f52.google.com with SMTP id kq13so287781pab.25
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 23:44:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=UFxvGF32vuNjAynTpuhRfUQoqDVMlJwm3SeeHc8h1kQ=;
	b=PqCTsSpdfHdK9c8NwAdU+ewdCYQhRuzXnXDwaF1+260bdcgm7nI/gMbA551eT1Pi3g
	VPr3C6p7WeGfZJw2VoiV/9jUS3yrJiPDIslv9wMf8s4/YryrQPe5D1h3jp2QeI+wjQOJ
	pKuuaIOPJJLRzgMku1aR2aPKSyuC652jfplB20bL7jRSOfd1uYTN39SzVBmT4S2Pf7vJ
	nzCfGEYgPqNAgzMobi7QqEVyA/wTTD8tXGcp01dPeCqHuvghj1UKzfsLaOsyyuYzsUIM
	NPog8HLjhKuzFqD9YXYGKZpvSYJD6w8Kxgd7BDpUT9wpEIYSxfLVGlWyaDM5RDAKowfe
	WOug==
MIME-Version: 1.0
X-Received: by 10.68.164.97 with SMTP id yp1mr39710607pbb.77.1374648257063;
	Tue, 23 Jul 2013 23:44:17 -0700 (PDT)
Received: by 10.66.27.76 with HTTP; Tue, 23 Jul 2013 23:44:16 -0700 (PDT)
Date: Wed, 24 Jul 2013 12:14:16 +0530
Message-ID: <CAOkC3RYC3hg6sUGwt7SZrfygU5x21UWqvD2diNJUTP9TFtV2iQ@mail.gmail.com>
From: Gopikrishnan S <gopikrishnans@pec.edu>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQn5qOpWqcSgIL9+VRVcI3sBBWRkaARubZ2HwVdHd0xxE5Td3wsqakxu+mFvmUSMCra/bknM
X-Mailman-Approved-At: Wed, 24 Jul 2013 07:32:51 -0700
Subject: Reg: PERL Module
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
X-List-Received-Date: Wed, 24 Jul 2013 06:44:19 -0000
Content-Type: multipart/alternative; boundary=047d7bae446e0dbdb404e23c3d9c

--047d7bae446e0dbdb404e23c3d9c
Content-Type: text/plain; charset=ISO-8859-1

Hi I want to install spamassassin to my image.

already I ran bitbake fal-image-full with following line on my
conf/local.conf

IMAGE_INSTALL_append = " perl-modules"


But still building spamassassing is complaining about PERL modules.

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'libarchive-tar-perl-native' (but
/media/sdk/QorIQ-SDK-V1.3-20121114-yocto/meta-fsl-ppc/recipes-test/spamassassin/
spamassassin_3.3.1.bb DEPENDS on or otherwise requires it)
ERROR: Required build target 'spamassassin' has no buildable providers.
Missing or unbuildable dependency chain was: ['spamassassin',
'libarchive-tar-perl-native']

Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

--047d7bae446e0dbdb404e23c3d9c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi I want to install spamassassin to my image.<div><br></d=
iv><div><div style>already I ran bitbake fal-image-full with following line=
 on my conf/local.conf</div><div><br></div><div>IMAGE_INSTALL_append =3D &q=
uot; perl-modules&quot;</div>
</div><div><br></div><div><br></div><div style>But still building spamassas=
sing is complaining about PERL modules.</div><div style><br></div><div styl=
e>NOTE: Resolving any missing task queue dependencies</div><div>ERROR: Noth=
ing PROVIDES &#39;libarchive-tar-perl-native&#39; (but /media/sdk/QorIQ-SDK=
-V1.3-20121114-yocto/meta-fsl-ppc/recipes-test/spamassassin/<a href=3D"http=
://spamassassin_3.3.1.bb">spamassassin_3.3.1.bb</a> DEPENDS on or otherwise=
 requires it)</div>
<div>ERROR: Required build target &#39;spamassassin&#39; has no buildable p=
roviders.</div><div>Missing or unbuildable dependency chain was: [&#39;spam=
assassin&#39;, &#39;libarchive-tar-perl-native&#39;]</div><div><br></div>
<div>Summary: There was 1 WARNING message shown.</div><div>Summary: There w=
ere 2 ERROR messages shown, returning a non-zero exit code.</div><div><br><=
/div></div>

--047d7bae446e0dbdb404e23c3d9c--
