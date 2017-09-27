Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B762E00C35; Wed, 27 Sep 2017 10:14:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5B9CE00C14
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 10:14:20 -0700 (PDT)
Received: by mail-wr0-f195.google.com with SMTP id u48so69919wrf.4
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 10:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wvgDh0i/A37oKHk6KJxky8vNLrk3AnPBb43bmUl6Ebk=;
	b=HC193shGnZhvGdlwzZzGsy7OlQCGYTzy0V5oyLs0ZEHeyCQyq21B2hC3rF7la8J42D
	wCIihoxnvQfMha3SQS42A2Wa+ZOx5+QGarEEh0Ca9XEN7LVSvAv5jx5hTu86dbCmINu3
	FbVgiD6zK/PE9f/Ue+NTob1jwNnasa9bCDqyDAQaX/8NS4+0co1Fm7uaD8xtwYR5U8Vx
	CtSFvJ3WP/Mxy7JY4iuI12LYDs15oBsVZkP/EsM287MX8tDZEf1kKcNO2gzPEHzIAKbc
	A04qEbLUluZJn56xKbHWK/UDO6lV4OAmY8bx0Oskf4vfRQ/HIyobuE2xmbJCrdbrmrbg
	wXZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wvgDh0i/A37oKHk6KJxky8vNLrk3AnPBb43bmUl6Ebk=;
	b=NiU8Te+wsZz5CWaUAkRDRdwb6VpwmwAjlFF/lvnY6PLK0mox1c+GJLbEjG6EcMzg3a
	PhvtYZ6eb10+Lzic0UTXBkUvgE+1zsIxaNT80ptbYqMn0VszaSgBZhQspJB39GPPXD5t
	iylkG/6XvemNoqbq6fRuTNdN7F/OxXdg/i6W41vCm3BkQX7UGn6AeyLkGKeg2+HP/JG1
	ivaqD8/aw8zfU2/YER5fPy3wsJ9fErzHd+77GtJ2web1w2tRJGsW84yQX3CHkz449HAx
	wlDsXDrwTT1IxyrvNAYE75i/roU1lQGGdaIIMGyr7qOTR8jUhn+RR37jql0qcDbHJZKp
	BEGQ==
X-Gm-Message-State: AHPjjUhud1iVaAd+PloYGBN66wyj7aglcm2XRLYx++AfJmHtuVLy5RZa
	kAbuXrUAdJdE/ENl//67GQyrLcRmzkvNV5nMGU1dlg==
X-Google-Smtp-Source: AOwi7QCqlUkBbNgCK7jkCZLpKQd9jmqJ7pR9PtWIBilvexfwZMoTP5hWU2QkcEklop0SouREAP02yrbOdY2iExzncTk=
X-Received: by 10.223.193.71 with SMTP id w7mr2246180wre.158.1506532460079;
	Wed, 27 Sep 2017 10:14:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.208.10 with HTTP; Wed, 27 Sep 2017 10:13:39 -0700 (PDT)
X-Originating-IP: [109.150.130.247]
In-Reply-To: <1506525799-219-1-git-send-email-Martin.Jansa@gmail.com>
References: <1506525799-219-1-git-send-email-Martin.Jansa@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 27 Sep 2017 18:13:39 +0100
Message-ID: <CAK18fxE0LZZE0tZ=R_f1e=ACixGjE=KRbq1K7c+NzUE7Q10Fvg@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>,
	Otavio Salvador <otavio@ossystems.com.br>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] Revert "qtbase: Enable EGLFS support"
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
X-List-Received-Date: Wed, 27 Sep 2017 17:14:22 -0000
Content-Type: multipart/alternative; boundary="089e08233b00204369055a2eecd2"

--089e08233b00204369055a2eecd2
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 27, 2017 at 4:23 PM, Martin Jansa <martin.jansa@gmail.com>
wrote:

> * this reverts commit 04b37dbdb79638b17a670280058400ffaf1b6ccb.
> * this makes qtbase and everything which depends on some qt* recipe to
>   be effectivelly MACHINE_ARCH
>
> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> ---
>  dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 3 ---
>  1 file changed, 3 deletions(-)
>  delete mode 100644 dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.
> bbappend
>
> diff --git a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> b/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> deleted file mode 100644
> index ae3f1d3..0000000
> --- a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> +++ /dev/null
> @@ -1,3 +0,0 @@
> -# Copyright (C) 2017 O.S. Systems Software LTDA.
> -
> -PACKAGECONFIG_GL_rpi   = "gles2 eglfs"


What would be the solution though?

--
Andrei Gherzan

--089e08233b00204369055a2eecd2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div><div class=3D"gmail_signat=
ure"><div dir=3D"ltr"><div dir=3D"ltr">On Wed, Sep 27, 2017 at 4:23 PM, Mar=
tin Jansa <span dir=3D"ltr">&lt;<a href=3D"mailto:martin.jansa@gmail.com" t=
arget=3D"_blank">martin.jansa@gmail.com</a>&gt;</span> wrote:<br></div></di=
v></div></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">* this reverts commit 04b37dbdb79638b17a670280058400<wbr>ff=
af1b6ccb.<br>
* this makes qtbase and everything which depends on some qt* recipe to<br>
=C2=A0 be effectivelly MACHINE_ARCH<br>
<br>
Signed-off-by: Martin Jansa &lt;<a href=3D"mailto:Martin.Jansa@gmail.com">M=
artin.Jansa@gmail.com</a>&gt;<br>
---<br>
=C2=A0dynamic-layers/qt5-layer/<wbr>recipes-qt/qt5/qtbase_%.<wbr>bbappend |=
 3 ---<br>
=C2=A01 file changed, 3 deletions(-)<br>
=C2=A0delete mode 100644 dynamic-layers/qt5-layer/<wbr>recipes-qt/qt5/qtbas=
e_%.<wbr>bbappend<br>
<br>
diff --git a/dynamic-layers/qt5-layer/<wbr>recipes-qt/qt5/qtbase_%.<wbr>bba=
ppend b/dynamic-layers/qt5-layer/<wbr>recipes-qt/qt5/qtbase_%.<wbr>bbappend=
<br>
deleted file mode 100644<br>
index ae3f1d3..0000000<br>
--- a/dynamic-layers/qt5-layer/<wbr>recipes-qt/qt5/qtbase_%.<wbr>bbappend<b=
r>
+++ /dev/null<br>
@@ -1,3 +0,0 @@<br>
-# Copyright (C) 2017 O.S. Systems Software LTDA.<br>
-<br>
-PACKAGECONFIG_GL_rpi=C2=A0 =C2=A0=3D &quot;gles2 eglfs&quot;</blockquote><=
div><br></div><div>What would be the solution though?</div><div><br></div><=
div>--</div><div>Andrei Gherzan=C2=A0</div></div><br></div></div>

--089e08233b00204369055a2eecd2--
