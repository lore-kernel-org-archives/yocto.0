Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.4952.1575584755013396706
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Dec 2019 14:25:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rPunGtAy;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: waynli329@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3700E01147; Thu,  5 Dec 2019 14:25:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (waynli329[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E996AE010DA
	for <yocto@yoctoproject.org>; Thu,  5 Dec 2019 14:25:52 -0800 (PST)
Received: by mail-il1-f181.google.com with SMTP id f6so4444369ilh.9
        for <yocto@yoctoproject.org>; Thu, 05 Dec 2019 14:25:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=f3/+vapBayJEMdSCIhoz401YoTDLwGFmvwPOoV9MNO8=;
        b=rPunGtAy7SLqv32Wo4aVupBiH/PbbT5sRNJrt8o9up1jjv6Jdq+2TZvpnRmVjolimo
         qYaarzr09Mph323BaZ00iF2NfX10UquN60gLVTJW097H+/CSwzjHcDiN+XQBWIrpi0kU
         hmfjaOJvekXUVFRsz1BaiQRMWThi7XPrQK6PIm6fyhtifEouDkPLU8vveecStwv/K9WU
         s+SxtJ1IMQ09+9wm0TS3wcn/CMI3898e8jR3MN2bQrnXEVjW0UABKhhanQ7lRuyATb2T
         /znDadHxkv7UjFwdpdrsSsuEC+3TJXNZ/pkYU0oF2CVASoYEi5XEJYJ6SueDwf6GIlVW
         kLMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=f3/+vapBayJEMdSCIhoz401YoTDLwGFmvwPOoV9MNO8=;
        b=GuU5GCu3zGqBJ5wgJ8vPuNaXTZT7kPt7NGuqEjIjWYjVoivM8h36glVAo4qWHyXOD8
         rI5TQanhmJn5xZDiyW6N7HPwv5e6LcrtMPnGT/eGlpR5FAo9JdxXEHHGGn1j/yK5CPhF
         a/XycTgOFVHJJdPFTmI9qZA34Jg2OLswjKOLU5WIRK7uRwpW83417Am1vMXJ7fE5bi/Q
         1oaJ78pKjSYB+ssdRISornf/Gp5Vzjec2FPm3BGSA6FxBpDhcoCAkswbrqnmgvLrbCDQ
         GZpk7WeXHykZb+myFW/2uR3vpiV2aPmdQRXrs+mCZZ+joFixgzyzWN8GHHuxiX+pIUmV
         svKw==
X-Gm-Message-State: APjAAAUrJKyYifOPVO7UoonBlQY9LvdWYbuaqFo3WRLjCFPDNwApdeUd
	zZ9bssF3WgUD6i0D6COs8q3u3ksjA2DaaPD+ItgMw2qJ
X-Google-Smtp-Source: APXvYqzZBJky0Z8zY5jL0wnu/8QamUgniyKq6prd/N09ypuT2+VfFWlqCu6YvnsUaXThcDGIAd9FNA4nqD6D0dI9Qco=
X-Received: by 2002:a92:b749:: with SMTP id c9mr10726748ilm.143.1575584752148;
 Thu, 05 Dec 2019 14:25:52 -0800 (PST)
MIME-Version: 1.0
From: "Wayne Li" <waynli329@gmail.com>
Date: Thu, 5 Dec 2019 22:25:41 +0000
Message-ID: <CAM2K0nr6suFCaV-Ne7zv7ukyiXh4BG5H0Y6S6UkS5h08x8aGAg@mail.gmail.com>
Subject: Question about shipping files to package.
To: bitbake-devel <bitbake-devel@lists.openembedded.org>, 
	Yocto Project Discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000077491b0598fc69bf"

--00000000000077491b0598fc69bf
Content-Type: text/plain; charset="UTF-8"

Dear Yocto Developers,

So I created a bitbake recipe to integrate kvm into my image as an
out-of-tree kernel module.  Here's my recipe right now:

LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=c616d0e7924e9e78ee192d99a3b26fbd"

inherit module

SRC_URI =
"file:///homead/QorIQ-SDK-V2.0-20160527-yocto/sources/meta-virtualization/recipes-kernel/kvm-kmodule/kvm-kmod-3.10.21.tar.bz2"

S = "${WORKDIR}/kvm-kmod-3.10.21"

do_configure() {
    ./configure --arch=ppc64
--kerneldir=/homead/QorIQ-SDK-V2.0-20160527-yocto/build_t4240rdb-64b/tmp/work/t4240rdb_64b-fsl-linux/kernel-devsrc/1.0-r0/image/usr/src/kernel
}

FILES_${PN} += "/lib/modules/4.1.8-rt8+gbd51baf"

Bitbaking this recipe completes with no problems but no kernel module is
created (compiling the source code should create a kernel module file
kvm.ko).  I was wondering if the problem might be because of what I set
FILES_${PN} to be.  Before I set the FILES variable I was getting an error
saying something along the lines of, "Files/directories were installed but
not shipped."  Then I more or less just guessed a directory and set my
FILES variable to it and then the recipe finished bitbaking with no errors.

But now that the kvm.ko file isn't even being created, I am wondering if it
might be because I set the FILES variable wrong?  What does the word "ship"
mean?  And along those lines what exactly is a "package" in the setting of
Yocto project?

-Thanks!, Wayne Li

--00000000000077491b0598fc69bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear Yocto Developers,</div><div><br></div><div>So I =
created a bitbake recipe to integrate kvm into my image as an out-of-tree k=
ernel module.=C2=A0 Here&#39;s my recipe right now:</div><div><br></div><di=
v style=3D"margin-left:40px">LICENSE =3D &quot;GPLv2&quot;<br>LIC_FILES_CHK=
SUM =3D &quot;file://COPYING;md5=3Dc616d0e7924e9e78ee192d99a3b26fbd&quot;<b=
r><br>inherit module<br><br>SRC_URI =3D &quot;file:///homead/QorIQ-SDK-V2.0=
-20160527-yocto/sources/meta-virtualization/recipes-kernel/kvm-kmodule/kvm-=
kmod-3.10.21.tar.bz2&quot;<br><br>S =3D &quot;${WORKDIR}/kvm-kmod-3.10.21&q=
uot;<br><br>do_configure() {<br>=C2=A0 =C2=A0 ./configure --arch=3Dppc64 --=
kerneldir=3D/homead/QorIQ-SDK-V2.0-20160527-yocto/build_t4240rdb-64b/tmp/wo=
rk/t4240rdb_64b-fsl-linux/kernel-devsrc/1.0-r0/image/usr/src/kernel<br>}<br=
><br>FILES_${PN} +=3D &quot;/lib/modules/4.1.8-rt8+gbd51baf&quot;</div><div=
 style=3D"margin-left:40px"><br></div><div>Bitbaking this recipe completes =
with no problems but no kernel module is created (compiling the source code=
 should create a kernel module file kvm.ko).=C2=A0 I was wondering if the p=
roblem might be because of what I set FILES_${PN} to be.=C2=A0 Before I set=
 the FILES variable I was getting an error saying something along the lines=
 of, &quot;Files/directories were installed but not shipped.&quot;=C2=A0 Th=
en I more or less just guessed a directory and set my FILES variable to it =
and then the recipe finished bitbaking with no errors.</div><div><br></div>=
<div>But now that the kvm.ko file isn&#39;t even being created, I am wonder=
ing if it might be because I set the FILES variable wrong?=C2=A0 What does =
the word &quot;ship&quot; mean?=C2=A0 And along those lines what exactly is=
 a &quot;package&quot; in the setting of Yocto project?</div><div><br></div=
><div>-Thanks!, Wayne Li<br></div></div>

--00000000000077491b0598fc69bf--
