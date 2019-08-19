Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85018E0096F; Mon, 19 Aug 2019 04:20:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
	[209.85.208.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00A38E00920
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 04:20:30 -0700 (PDT)
Received: by mail-lj1-f170.google.com with SMTP id m24so1385308ljg.8
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 04:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=/WA0utYg3VwKVbnM7VtCF63zB71fYdjwIzgHbByxo+I=;
	b=WcogzuSVfpjjvJ5VJKGzKg7xExT0sW4jrbgskTXK2nkMUEGkpdb1Ihe3BiPeUtSVx7
	/WH8n8nD42zl1OzwsRpEI5Rt9R8BPV4eqhdbx6IfsxGwzPBdF5hcIEZ84DyadSImOCoJ
	Yt1Tc3bpNQkJ9ihgEpeNcTbM77oyKLN/JeIneCns7ydQmTlhXUbn83ZgPg0qGasSN6/m
	+b9nKw7BWEQkezFlvfK0zvvAMAxYKr1TeduEVTy4ZLlF22iQ0Sl1HlkjizB/+sUjl3jj
	4A0LQ65keAGV3xjJHLhfWwvwbpuObW9rWEPF0ZRvSTEzS4xsXc2LrQF2ynRK6T2gT1xL
	wYTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=/WA0utYg3VwKVbnM7VtCF63zB71fYdjwIzgHbByxo+I=;
	b=tcwaBfJqILsvTEwZhRNgOcne0kA7eQH6agRc2Q1wxn9eoXtDZtMtLs2PQYNWMiHCKN
	nCBOyvTCMDM6q2785g6Xba/M2FwXu2vakh5W8Th+fmROu5MSarPGEYfNWNN8mZsUhWyA
	oHPznIBFiM4srxIdY0rOyK4RNgsLSGSlReSI4QHX57SjHFGtu7ygAjhcju+gGS6Z8CJU
	WRw5kMP95+KyNkYhxLoHZgDlRCIfrMPOGPS4nqriA12UqlEO/JWTdVoGByBw9Kp/NUF+
	xNyNfNIvfyqldHkfNuJGjcA4c92l/GYHNv2yzmPSWAJILDcQLZtbHjmvEHGO4CerHDSk
	QVJw==
X-Gm-Message-State: APjAAAUgNj/HZ81hXyIBBr5bJAVgwH8bby7/PswZN6yRPEahkpINhvLc
	n4LbsSRa0F/oi5zVBHYU6hyXgni7Cqgf6BvbRbo=
X-Google-Smtp-Source: APXvYqyr6yqnUtWzc2kbfL0XPTRhOTIKSlMHRDwSMxMVWCxBhSRDlgoEewgvyHEyW5SnUZEpYSwTj704yG9LEIycaOI=
X-Received: by 2002:a2e:9903:: with SMTP id v3mr10841681lji.37.1566213629420; 
	Mon, 19 Aug 2019 04:20:29 -0700 (PDT)
MIME-Version: 1.0
References: <62464e60-54da-b8fb-a0c5-864eee5b7e4a@di.uoa.gr>
In-Reply-To: <62464e60-54da-b8fb-a0c5-864eee5b7e4a@di.uoa.gr>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Mon, 19 Aug 2019 13:20:17 +0200
Message-ID: <CAAx3WaD-DRxKveFH769ZW0ayi23AT+LRKborBP2mxH1iySVcqg@mail.gmail.com>
To: Ekaterini Voulgari <sdi1100002@di.uoa.gr>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Opencv headers
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
X-List-Received-Date: Mon, 19 Aug 2019 11:20:31 -0000
Content-Type: multipart/alternative; boundary="000000000000062990059076871d"

--000000000000062990059076871d
Content-Type: text/plain; charset="UTF-8"

Hi,

you need to add
DEPENDS = "opencv"
to your recipe. This will import the needed header in your recipe sysroot.

Best regards,
Gabriele

Il giorno lun 19 ago 2019 alle ore 13:09 Ekaterini Voulgari <
sdi1100002@di.uoa.gr> ha scritto:

> Hello all,
> I'm trying to add a program to my image that uses opencv (#include
> <opencv2/opencv.hpp>), but I get compile error "fatal error:
> opencv2/opencv.hpp: No such file or directory"
>
> The file opencv.hpp exists in workdir
> /build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-musleabi/opencv/3.4.5-r0/image/usr/include/opencv2/opencv.hpp.
>
> Can anyone help on where are the headers located in crossbuilds? Any
> help appreciated.
> The recipe:
>
> SRC_URI = "file://capture.cpp"
>
> do_compile () {
>      ${CC} capture.cpp  -lopencv_core -lopencv_imgproc -lopencv_highgui
> -lopencv_videoio
> }
>
> do_install () {
>
>          install -d -m 0755 ${D}/${bindir}
>          install -m 0755 prog_kameras ${D}/${bindir}/prog_kameras
> }
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000062990059076871d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, <br></div><div><br></div><div>you need to add</di=
v><div style=3D"margin-left:40px">DEPENDS =3D &quot;opencv&quot;</div><div>=
to your recipe. This will import the needed header in your recipe sysroot.<=
/div><div><br></div><div>Best regards,<br></div><div>Gabriele<br></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il g=
iorno lun 19 ago 2019 alle ore 13:09 Ekaterini Voulgari &lt;<a href=3D"mail=
to:sdi1100002@di.uoa.gr">sdi1100002@di.uoa.gr</a>&gt; ha scritto:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">Hello all,<br>
I&#39;m trying to add a program to my image that uses opencv (#include <br>
&lt;opencv2/opencv.hpp&gt;), but I get compile error &quot;fatal error: <br=
>
opencv2/opencv.hpp: No such file or directory&quot;<br>
<br>
The file opencv.hpp exists in workdir <br>
/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-musleabi/opencv/3.4.5-r0=
/image/usr/include/opencv2/opencv.hpp. <br>
Can anyone help on where are the headers located in crossbuilds? Any <br>
help appreciated.<br>
The recipe:<br>
<br>
SRC_URI =3D &quot;file://capture.cpp&quot;<br>
<br>
do_compile () {<br>
=C2=A0=C2=A0=C2=A0=C2=A0 ${CC} capture.cpp=C2=A0 -lopencv_core -lopencv_img=
proc -lopencv_highgui <br>
-lopencv_videoio<br>
}<br>
<br>
do_install () {<br>
<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -d -m 0755 ${D}/${=
bindir}<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -m 0755 prog_kamer=
as ${D}/${bindir}/prog_kameras<br>
}<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000062990059076871d--
