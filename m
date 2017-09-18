Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A838FE009F5; Mon, 18 Sep 2017 11:48:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC40AE0090A
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 11:48:07 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id g206so5291360wme.0
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 11:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3tXd3rPeNY2M+ttAHtTHpiSNWpLMvRGaoKg0sogLfSc=;
	b=qV8W99L7Yj+AfCbGtFWLcSOYMFO59jA0AvEfedwdC2Nb8W4ggI3MiwmsRyzu37fPMH
	7gumxkj88HXOtepxMKHXEtDPHTVYuUb8wVl+YJ5gnQCqzRFZ14FS7AvStfdaWm94VMgR
	Gu0ypknxnhp3k9QYaanuGVBamSxjyw/LQPUCoQKY50HQ3thW8HBtHUq0DpdUQEQpLp+o
	X/djHxjXakM44Z9ZIjKJVE7PskEpytCRRzvTkiZ/Qo67hwL4tIgVqG63pGVC/D9J+E8b
	/glDYsBSrdQYhZP0uUzjCn0O+mCqZm1eLUa+BSJtYVxN9VElV7CM18OygbFNelr+Zisz
	jFlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3tXd3rPeNY2M+ttAHtTHpiSNWpLMvRGaoKg0sogLfSc=;
	b=g2qakIRr3Moj2WGJrc6pl7ZlCpiF2G6N23TQUB20gApDzurvLgydt5aZmz3kItMdtY
	1i66pcakUDR3d8P1J57RGYIXg9T4H+GI6OAQVNVrxuGc1hL5RWOLpRy7OnxBLNWQ6rGe
	dcLDalGmlZ4mRQMS0ZvAW52DhkJFPOS4uYYegfcFqnTKHZuJJD2H54o3tHVmuiUre8ZY
	3qRzHAgpayMFSx97zGpWb6E9xdQ0xzMkI4cAd3/6/2xDSR9ux42vlAd6vVD6p3NeCGx+
	CRQEYBq0KMp9G0waQM4aDJXfA8qXBgWyf4rFHLVqBmrHeN1rhaTJgILto9en9fdEk27g
	o/TA==
X-Gm-Message-State: AHPjjUgRgdos5sJr+akUR5MdZvBXQ1FgXg8jKI3/nqsmJhkfzTxqxjLe
	zz/vIBHGAEnUlUFVFYSV8rciS42R+iNza3SjoXM=
X-Google-Smtp-Source: AOwi7QA/osyI+pIxfdH/4xMWljce/FwzVFbqKRIWfegtmYcgFWSK+ltgSX9d84QjDwq+iAAXpQDAxjn3dk+mceV6NW8=
X-Received: by 10.28.128.131 with SMTP id b125mr9611705wmd.1.1505760486774;
	Mon, 18 Sep 2017 11:48:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.147.202 with HTTP; Mon, 18 Sep 2017 11:48:05 -0700 (PDT)
In-Reply-To: <20170918054137.33583-1-raj.khem@gmail.com>
References: <20170918054137.33583-1-raj.khem@gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Mon, 18 Sep 2017 20:48:05 +0200
Message-ID: <CA+chaQc8ZLh=hOmr+iecg1EZUM+vORLV0=ej8eJefB0GubFSpQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/3] linux-raspberrypi_4.9.bb: Upgrade to 4.9.50
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
X-List-Received-Date: Mon, 18 Sep 2017 18:48:08 -0000
Content-Type: multipart/alternative; boundary="001a1142076cee5c3405597b2e5a"

--001a1142076cee5c3405597b2e5a
Content-Type: text/plain; charset="UTF-8"

With these 3 changes included I see following failure with raspberrypi3-64,
it might be something caused by last oe-core upgrade, but I haven't noticed
anything suspicious there.

Looks familiar?

|   VDSOL   arch/arm64/kernel/vdso/vdso.so.dbg
|
/OE/build/owpb/webos-ports/tmp-glibc/work/raspberrypi3_64-webos-linux/linux-raspberrypi/1_4.9.50+gitAUTOINC+46e2d4d1bd-r0/recipe-sysroot-native/usr/bin/aarch64-webos-linux/../../libexec/aarch64-webos-linux/gcc/aarch64-webos-linux/7.2.0/ld:
fatal error: -shared and -static are incompatible
| collect2: error: ld returned 1 exit status
| make[3]: ***
[/OE/build/owpb/webos-ports/tmp-glibc/work-shared/raspberrypi3-64/kernel-source/arch/arm64/kernel/vdso/Makefile:34:
arch/arm64/kernel/vdso/vdso.so.dbg] Error 1
| make[2]: *** [arch/arm64/Makefile:144: vdso_prepare] Error 2
| make[1]: *** [Makefile:150: sub-make] Error 2
| make: *** [Makefile:24: __sub-make] Error 2
| ERROR: oe_runmake failed
| WARNING:
/OE/build/owpb/webos-ports/tmp-glibc/work/raspberrypi3_64-webos-linux/linux-raspberrypi/1_4.9.50+gitAUTOINC+46e2d4d1bd-r0/temp/run.do_compile.29341:1
exit 1 from 'exit 1'


On Mon, Sep 18, 2017 at 7:41 AM, Khem Raj <raj.khem@gmail.com> wrote:

> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> index ba17020..068965f 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> @@ -1,8 +1,8 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
> -LINUX_VERSION ?= "4.9.41"
> +LINUX_VERSION ?= "4.9.50"
>
> -SRCREV = "4153f509b449f1c1c816cf124c314975c3daa824"
> +SRCREV = "46e2d4d1bd2c17e2f84dd90768321ee0bbaa6b8a"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;branch=rpi-4.9.y"
>
>  require linux-raspberrypi.inc
> --
> 2.14.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1142076cee5c3405597b2e5a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">With these 3 changes included I see following failure with=
 raspberrypi3-64, it might be something caused by last oe-core upgrade, but=
 I haven&#39;t noticed anything suspicious there.<div><br></div><div>Looks =
familiar?<br><div><br></div><div><div>|=C2=A0 =C2=A0VDSOL=C2=A0 =C2=A0arch/=
arm64/kernel/vdso/vdso.so.dbg</div><div>| /OE/build/owpb/webos-ports/tmp-gl=
ibc/work/raspberrypi3_64-webos-linux/linux-raspberrypi/1_4.9.50+gitAUTOINC+=
46e2d4d1bd-r0/recipe-sysroot-native/usr/bin/aarch64-webos-linux/../../libex=
ec/aarch64-webos-linux/gcc/aarch64-webos-linux/7.2.0/ld: fatal error: -shar=
ed and -static are incompatible</div><div>| collect2: error: ld returned 1 =
exit status</div><div>| make[3]: *** [/OE/build/owpb/webos-ports/tmp-glibc/=
work-shared/raspberrypi3-64/kernel-source/arch/arm64/kernel/vdso/Makefile:3=
4: arch/arm64/kernel/vdso/vdso.so.dbg] Error 1</div><div>| make[2]: *** [ar=
ch/arm64/Makefile:144: vdso_prepare] Error 2</div><div>| make[1]: *** [Make=
file:150: sub-make] Error 2</div><div>| make: *** [Makefile:24: __sub-make]=
 Error 2</div><div>| ERROR: oe_runmake failed</div><div>| WARNING: /OE/buil=
d/owpb/webos-ports/tmp-glibc/work/raspberrypi3_64-webos-linux/linux-raspber=
rypi/1_4.9.50+gitAUTOINC+46e2d4d1bd-r0/temp/run.do_compile.29341:1 exit 1 f=
rom &#39;exit 1&#39;</div></div><div><br></div></div></div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">On Mon, Sep 18, 2017 at 7:41 AM, =
Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.=
com">raj.khem@gmail.com</a>&gt;<br>
---<br>
=C2=A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_4.9.bb" rel=
=3D"noreferrer" target=3D"_blank">linux-<wbr>raspberrypi_4.9.bb</a> | 4 ++-=
-<br>
=C2=A01 file changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_4.9.b=
b" rel=3D"noreferrer" target=3D"_blank">linux-<wbr>raspberrypi_4.9.bb</a> b=
/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_4.9.bb" rel=3D"no=
referrer" target=3D"_blank">linux-<wbr>raspberrypi_4.9.bb</a><br>
index ba17020..068965f 100644<br>
--- a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_4.9.bb" rel=
=3D"noreferrer" target=3D"_blank">linux-<wbr>raspberrypi_4.9.bb</a><br>
+++ b/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_4.9.bb" rel=
=3D"noreferrer" target=3D"_blank">linux-<wbr>raspberrypi_4.9.bb</a><br>
@@ -1,8 +1,8 @@<br>
=C2=A0FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}-${PV}:&quot;<br>
<br>
-LINUX_VERSION ?=3D &quot;4.9.41&quot;<br>
+LINUX_VERSION ?=3D &quot;4.9.50&quot;<br>
<br>
-SRCREV =3D &quot;<wbr>4153f509b449f1c1c816cf124c3149<wbr>75c3daa824&quot;<=
br>
+SRCREV =3D &quot;<wbr>46e2d4d1bd2c17e2f84dd90768321e<wbr>e0bbaa6b8a&quot;<=
br>
=C2=A0SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi/linu=
x.git;branch=3Drpi-4.9.y" rel=3D"noreferrer" target=3D"_blank">github.com/r=
aspberrypi/<wbr>linux.git;branch=3Drpi-4.9.y</a>&quot;<br>
<br>
=C2=A0require linux-raspberrypi.inc<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.14.1<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a1142076cee5c3405597b2e5a--
