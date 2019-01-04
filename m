Return-Path: <matt.hoosier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD0CEE00C77; Fri,  4 Jan 2019 07:50:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (matt.hoosier[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f45.google.com (mail-yw1-f45.google.com
	[209.85.161.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A9E4E00C71
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2019 07:50:09 -0800 (PST)
Received: by mail-yw1-f45.google.com with SMTP id d190so13508252ywb.5
	for <yocto@yoctoproject.org>; Fri, 04 Jan 2019 07:50:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=owq93N1d11dTKVtxrPyZJqmKlYTQf2vIkoVfKjn1E14=;
	b=gWnbRQMNkhVcYeTK4iFArd5Xb2GE5KkosIVDDEq65E3akMBy7YbVXZutjpQKR40WLQ
	urVL6BTQx7o+VLwv2ouRIDKPG3c+d83LbYp48Slv4XuQHBdIKozwIFgQQ88uDT47XILY
	Uvd7sO79rTKKAp7gzFYe9h3GzD52ICScAGex+fm8xMtFJEtq/ZHYvKjJB49hQtMVEU8c
	gZE0SmW283QR0WjG2ekm+1spM3uEmg7ajAHjOAuVQwpqILfNzJvOuk8+KjAfVWsLw9xa
	F6aZrIYjzwy+Zoi5VVi04kBbQGsPuteEtAhsErWysbvgLqsaKowaqv4vZ+E9pFz4DI1P
	Y7TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=owq93N1d11dTKVtxrPyZJqmKlYTQf2vIkoVfKjn1E14=;
	b=Fy0FGG29cRkzCyzZOtZdo+bK/tG5mSxtmwkIV1ubJ9pRgvQ2xT0j8DSmqctJEcvHwb
	wRU+QWREF9V7PDsd3dMFGK23KsrR4VQrbRI895kwCVjv3qXM28MRL985Njdz4oLIwsN4
	mVTZA4ou7eZY3DdioTdcDQO6YnlDOQXVS38Tr6B1saXIAuDu0Ea813TmbFoJg4wZGy0o
	lnvxZ3BkFpJV/PxE20hutyWQdk5lgiG2jLw9t+Gixuz1/0H19yYVMbfOP8E5C5Y86X2k
	0QbSlXBpTrNRiqAovVl6Xe2d4nW4b4StWWlW8n5Gj3ft2VzPEjhvX3H3yJvdtMSDGtdq
	Fq/Q==
X-Gm-Message-State: AA+aEWak9qkxysRHErkbUPQDFo6qbwDB+2F9ea241d3/E5Tqx8uaoV2t
	WEeSa0AzkRUgSEyqPpElZPJ/KPPc+svMSW2+5dUvnKJV
X-Google-Smtp-Source: AFSGD/VV+/LE+EVXsi1zfB9iI9n5N/XpcvjjrJ5N2EJm0sBCxsMKoOkTAaGhCApkinysE2OwOUNqC4oXksWXgx3Wu9E=
X-Received: by 2002:a0d:f2c5:: with SMTP id
	b188mr52436644ywf.341.1546617009019; 
	Fri, 04 Jan 2019 07:50:09 -0800 (PST)
MIME-Version: 1.0
From: Matt Hoosier <matt.hoosier@gmail.com>
Date: Fri, 4 Jan 2019 09:49:33 -0600
Message-ID: <CAJgxT38ryEhJKQ1_CN79nKPBLUiOca-xHVVKUnGrOQoUq027hA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Using prelink in Thud and subsequent
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
X-List-Received-Date: Fri, 04 Jan 2019 15:50:10 -0000
Content-Type: multipart/alternative; boundary="0000000000006d2db3057ea3d50d"

--0000000000006d2db3057ea3d50d
Content-Type: text/plain; charset="UTF-8"

Hi all,

With the following change, position-independent executables became the
default in Poky:

commit 491082c56ce34f3fd644f8d4457ccd52af951087
Author: Khem Raj <raj.khem@gmail.com>
Date:   Fri Jul 27 19:46:14 2018 -0700

    poky.conf: Enable security flags+pie by defaultEnable security
flags+pie by

    This has been an opt-in for so long, some distributions e.g.
    poky-lsb uses it by default however, since most of linux
    distros have started to default to these settings for security
    enhancements, time has come for OE to make it default too

This carries the consequence that prelinking no longer really works. What's
the recommendation for users that want to keep applying whole-system
prelink optimizations (that is, image-prelink.bbclass)? Manually resetting
SECURITY_CFLAGS to the empty string after including poky.conf will come
close to undoing the effect of security_flags.inc, but there are a few
places its effects will still leak out.

-Matt

--0000000000006d2db3057ea3d50d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi all,<div><br></div><div>With the follo=
wing change, position-independent executables became the default in Poky:</=
div><div><br></div><div><div>commit 491082c56ce34f3fd644f8d4457ccd52af95108=
7</div><div>Author: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.=
khem@gmail.com</a>&gt;</div><div>Date:=C2=A0 =C2=A0Fri Jul 27 19:46:14 2018=
 -0700</div><div><br></div><div>=C2=A0 =C2=A0 poky.conf: Enable security fl=
ags+pie by defaultEnable security flags+pie by=C2=A0</div><div>=C2=A0 =C2=
=A0=C2=A0</div><div>=C2=A0 =C2=A0 This has been an opt-in for so long, some=
 distributions e.g.</div><div>=C2=A0 =C2=A0 poky-lsb uses it by default how=
ever, since most of linux</div><div>=C2=A0 =C2=A0 distros have started to d=
efault to these settings for security</div><div>=C2=A0 =C2=A0 enhancements,=
 time has come for OE to make it default too</div></div><div><br></div><div=
>This carries the consequence that prelinking no longer really works. What&=
#39;s the recommendation for users that want to keep applying whole-system =
prelink optimizations (that is, image-prelink.bbclass)? Manually resetting =
SECURITY_CFLAGS to the empty string after including poky.conf will come clo=
se to undoing the effect of security_flags.inc, but there are a few places =
its effects will still leak out.</div><div><br></div><div>-Matt</div></div>=
</div>

--0000000000006d2db3057ea3d50d--
