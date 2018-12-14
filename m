Return-Path: <tmichalski23@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CFD3E00D0B; Fri, 14 Dec 2018 01:47:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (tmichalski23[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.177 listed in list.dnswl.org]
Received: from mail-it1-f177.google.com (mail-it1-f177.google.com
	[209.85.166.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7137AE00CCC
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2018 01:47:41 -0800 (PST)
Received: by mail-it1-f177.google.com with SMTP id c9so8435178itj.1
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2018 01:47:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=lwbMmHZg3w0Ui5WOUSjWX7wMkDf4Ltr6i4aP7ECOMkg=;
	b=e2j05mAsEnzesnCyWHqQQNzcHOlkz1i7q0YtNteUUBJrNEpWgrcfUp9RiqG2+Yutf9
	TVTMWFtaiDH0h+nuGBjou+gSyl3DxfgwB3fXMM6zcFwKfMMYGLT4z8HN6S2e7WJ+d+e1
	wAQ7WJUZlOOty/IT4RyJnwjpVR56PoVmoG87FhldlS3ozWcxoss69XZDxkI+QZcoBZYw
	tYJJ16bfShnZHDsNvPCWV6ueO8I/blAOTVkXbHG656s3D35G/IQz1mnaLKlt27iL2bk/
	v0rnel6u1dCHM4umAWP4fs/V0gRFZCVAa3TJF/lbBM+rLRe2yG1r9WbbmPIRvunFRvdh
	9Ddg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=lwbMmHZg3w0Ui5WOUSjWX7wMkDf4Ltr6i4aP7ECOMkg=;
	b=P+5AoDiCXF1gh3B0g3sdD1Dk2tAg5v3GsFeOHmXh2DuF5S4J11UgYSzux87IpyNiV7
	QcYXczGJtS42Yy+Ndu+RSH1ADZP2dR/UnG/LVf2alrCpu5KJMtZsCl/mJ4T27Az83/7H
	cNfQez+xmfmd3vCv8HA9bPrzrNrGAIrchPSFQJeAumfbKJLZikpiu6j4pFNXACUEsuaJ
	qoTmPUey+nnogeLcqu493imb+5O7kpmOcgUwbMPZ/qbUmjJXbn299Stx011Ph8Y04Iuf
	EUZrqsFbrG/yR2i1YRkRwaUjMjJC8ZjD1/SObv9ukz9JJbaljaE/Pf820yiUfNlbWd4z
	M6Hw==
X-Gm-Message-State: AA+aEWY9Y+zxpkAEUvW+Q/GyCLMcmAQAu+ROiK0ILCK/77qvjfds4N+8
	E35yDKEpqY9WC+zFCZjCrQ4L4KXMRKdc/B7nyV+Sn/O3Bmg=
X-Google-Smtp-Source: AFSGD/XJZom7z8NQPPlnmmLka1HjlU+49XQlPGgvV3pqb03uwTjYdOv6NGwDo/6BkmcMfB43jPr5JLcS5d4DPva3exQ=
X-Received: by 2002:a02:4c9:: with SMTP id 192mr1978901jab.2.1544780860399;
	Fri, 14 Dec 2018 01:47:40 -0800 (PST)
MIME-Version: 1.0
References: <CAE5v_rLRcNZAGHA29xrcf_BYf7Y_4ihHJseXACEr8nMDQcfqRw@mail.gmail.com>
In-Reply-To: <CAE5v_rLRcNZAGHA29xrcf_BYf7Y_4ihHJseXACEr8nMDQcfqRw@mail.gmail.com>
From: Tomasz Michalski <tmichalski23@gmail.com>
Date: Fri, 14 Dec 2018 10:47:29 +0100
Message-ID: <CAE5v_rJrokB6N24Y0TrA4+8=-C3Uta8Ky4-9b5J7sTZGvj=gqQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 14 Dec 2018 08:21:49 -0800
Subject: Re: THISDIR variable in another meta-layer
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
X-List-Received-Date: Fri, 14 Dec 2018 09:47:42 -0000
Content-Type: multipart/alternative; boundary="00000000000070a668057cf85264"

--00000000000070a668057cf85264
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

One additional thing, in fact I define do_install in .inc file in
meta-layer-B/recipes-X/componentB and meta-layer-A/recipes-X/componentB
directory. Those inc files are appended to corresponding .bb and .bbappend
files. I will try to debug how THISDIR behaves.

pt., 14 gru 2018 o 10:26 Tomasz Michalski <tmichalski23@gmail.com>
napisa=C5=82(a):

> Hi
> I have structure of files:
>
> meta-layer-A
>     recipes-X
>         componentB
>              default
>                  script.sh
>              componentB.bb
> meta-layer-B
>     recipes-X
>         componentB
>              files
>                  script.sh
>              componentB.bbappend
>
> In componentB.bb I have function do_install:
> do_install () {
>     install -m 0755 -d ${D}/usr/share
>     cmake_do_install
>     install -m 0755 ${THISDIR}/default/script.sh  ${D}/usr/share
> }
>
> In componentB.bbapend I overwrite function in order to install other
> script instead:
> do_install () {
>     install -m 0755 -d ${D}/usr/share
>     cmake_do_install
>     install -m 0755 ${THISDIR}/files/script.sh  ${D}/usr/share
> }
>
>
> The problem is that ${THISDIR} indicates IN BOTH CASES to path
> meta-layer-A/recipes-X/componentB.
> So how to tell bitbake in componentB.bbappend to install my script from
> path meta-layer-B/recipes-X/componentB/files? It is really frustrating th=
at
> variable THISDIR doesn't indicates to path
> meta-layer-B/recipes-X/componentB when I used it in componentB.bbapend.
>

--00000000000070a668057cf85264
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">One additional thing, in fact I define do_install in .inc =
file in=C2=A0

meta-layer-B/recipes-X/componentB and=C2=A0meta-layer-A/recipes-X/component=
B directory. Those inc files are appended to corresponding .bb and .bbappen=
d files. I will try to debug how THISDIR behaves.</div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr">pt., 14 gru 2018 o 10:26=C2=A0Tomasz Michalski =
&lt;<a href=3D"mailto:tmichalski23@gmail.com">tmichalski23@gmail.com</a>&gt=
; napisa=C5=82(a):<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div dir=3D"ltr">Hi</div><div dir=3D"ltr">I have struct=
ure of files:</div><div dir=3D"ltr"><br></div><div>meta-layer-A</div><div>=
=C2=A0 =C2=A0 recipes-X</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 componentB</d=
iv><div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0default</div><=
div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0script.sh=
</div></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0componentB=
.bb</div><div>meta-layer-B</div><div dir=3D"ltr"><div>=C2=A0 =C2=A0 recipes=
-X</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 componentB</div><div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0files</div><div>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0script.sh</div></div><div>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0componentB.bbappend</div><div>=
<br></div><div>In componentB.bb I have function do_install:</div><div><div>=
do_install () {</div><div>=C2=A0 =C2=A0 install -m 0755 -d ${D}/usr/share</=
div><div>=C2=A0 =C2=A0 cmake_do_install</div><div>=C2=A0 =C2=A0 install -m =
0755 ${THISDIR}/default/script.sh=C2=A0=C2=A0${D}/usr/share</div><div>}</di=
v></div><div><br></div><div>In componentB.bbapend I overwrite function in o=
rder to install other script instead:</div><div><div>do_install () {</div><=
div>=C2=A0 =C2=A0 install -m 0755 -d ${D}/usr/share</div><div>=C2=A0 =C2=A0=
 cmake_do_install</div><div>=C2=A0 =C2=A0 install -m 0755 ${THISDIR}/files/=
script.sh=C2=A0=C2=A0${D}/usr/share</div><div>}</div></div><div><br></div><=
div><br></div><div>The problem is that ${THISDIR} indicates IN BOTH CASES t=
o path meta-layer-A/recipes-X/componentB.</div><div>So how to tell bitbake =
in componentB.bbappend to install my script from path meta-layer-B/recipes-=
X/componentB/files? It is really frustrating that variable THISDIR doesn&#3=
9;t indicates to path meta-layer-B/recipes-X/componentB when I used it in c=
omponentB.bbapend.</div></div></div>
</blockquote></div>

--00000000000070a668057cf85264--
