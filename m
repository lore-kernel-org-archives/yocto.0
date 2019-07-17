Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D305EE00D67; Wed, 17 Jul 2019 04:42:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (praveen.vatt[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.50 listed in list.dnswl.org]
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AE49E00CD5
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 04:42:30 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id 207so21842110wma.1
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 04:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Ly3IdKzG2yMp59hBIecLcwbe43GvSuSLGcvr5p9Rm84=;
	b=cCt4tutDM6n/avN66ENvlMBzzR0MsICIBo6KuKLAuKxUdsi5E05Jtm4UJhQtN8940/
	FMXvKLNzVdKqXF9QPbXQvbOaf9wh75eAdkUxi9kUYofT52zT3kqpyVlE+kwLtaIk5tuD
	opASzd3PQJrnMSQBKlU5JqX8JcmC1MLMAfq4+M9wJ+srq/ZJSbzhHXPQiMnXjQj8GS/D
	xtIJhsP3STgztjsYBC8y3IbZVlbOde3NQZs9zEJDjjHelZh6kOG5iGv7PKvhtkBNk1ro
	jwcxy/ZslTqNriq+/a883h6nla19lIYqqhfHcQPbd9emdjiOISWPnQPhVVeoZPtE4vIe
	u8hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Ly3IdKzG2yMp59hBIecLcwbe43GvSuSLGcvr5p9Rm84=;
	b=j9yapOFi7yj9ADRhW2ul1F/drN6mDremBYhwY4DLF+tiLhNbi4bxhrSO2+/N9nVqAZ
	RzGsU2+ZReaEGzu0WG/23wOjfGUdIJeI/cZ8CWSA/2/uAD+fnSL1dmEiz6wQ8NLMttKK
	emO1GdPBWFmQpwOvPV+NmUw1eHTvSHKQ04vQJFmwv6bE0RmZq/hFyVKOemf5iWMpBoCB
	4xbiqVhJKU62QUpm0RSf0IgX/VJppczM1p7VadVqOwICduuCEy5lO5odDpcc7u3O7iyf
	xdGLr4/N9cZIQx0q5wvTxN+/hE1wxUPvOE0con3FsaMevjE1wgFx61b3ujFz+FdPLXQp
	8l3Q==
X-Gm-Message-State: APjAAAXaj1fcQIDjUzG7Za3NV9WLh9wtuZPkhsOkkXMWBJrKoX94zeey
	CJT3kh5vtFrELlCSyQXzmA3gtHU1mnip8+N6sR8NR13U
X-Google-Smtp-Source: APXvYqxXhKbNpCQ483plv8OgJAhCkwgmZPcovnp7HeMUTvPfSkQr9qKCKdzhMsr1/Kp/QdXKzalBpfDqrUzq1mVQsag=
X-Received: by 2002:a1c:99c6:: with SMTP id b189mr26358470wme.57.1563363749019;
	Wed, 17 Jul 2019 04:42:29 -0700 (PDT)
MIME-Version: 1.0
From: praveen vattipalli <praveen.vatt@gmail.com>
Date: Wed, 17 Jul 2019 17:12:17 +0530
Message-ID: <CA+pXca1VC_m+5VgUtE4MqTXBMhJ=aL8cJZfk43FxJwgnN-2gQA@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: getting error in "make-mod-scripts-1.0-r0" while building meta-altera kernel as local source
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
X-List-Received-Date: Wed, 17 Jul 2019 11:42:31 -0000
Content-Type: multipart/alternative; boundary="000000000000ea4337058ddefc59"

--000000000000ea4337058ddefc59
Content-Type: text/plain; charset="UTF-8"

Hi All,
we are upgrading Yocto from Krogath to Sumo version.
while using meta-altera kernel source as local source,

if i use  EXTERNALSRC_BUILD variable
EXTERNALSRC =
"${TOPDIR}/../meta-altera/recipes-kernel/linux/files/kernel-source"
EXTERNALSRC_BUILD =
"${TOPDIR}/../meta-altera/recipes-kernel/linux/files/kernel-source"
getting make-mod-scripts-1.0-r0 error.

if i comment EXTERNALSRC_BUILD =
"${TOPDIR}/../meta-altera/recipes-kernel/linux/files/kernel-source" i could
able to build the image.

any suggestion, if i miss anything.
Thanks in advance

logs:
ERROR: make-mod-scripts-1.0-r0 do_configure: oe_runmake failed

 Using
/home/pkumar/tp4100_sumo/sumo/yocto_platform/platform/meta-altera/recipes-kernel/linux/files/kernel-source
as source for kernel
|
/home/pkumar/tp4100_sumo/sumo/yocto_platform/platform/meta-altera/recipes-kernel/linux/files/kernel-source
is not clean, please run 'make mrproper'
|   in the
'/home/pkumar/tp4100_sumo/sumo/yocto_platform/platform/meta-altera/recipes-kernel/linux/files/kernel-source'
directory.
|
/home/pkumar/tp4100_sumo/sumo/yocto_platform/platform/meta-altera/recipes-kernel/linux/files/kernel-source/Makefile:1064:
recipe for target 'prepare3' failed
| make[1]: *** [prepare3] Error 1
| make[1]: Leaving directory
'/home/pkumar/tp4100_sumo/sumo/yocto_platform/platform/build/tmp/work-shared/cyclone5/kernel-build-artifacts'
| Makefile:146: recipe for target 'sub-make' failed
| make: *** [sub-make] Error 2

Thanks,
Praveen

--000000000000ea4337058ddefc59
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div>we are upgrading Yocto from Krogath to Sumo ve=
rsion.</div><div>while using meta-altera kernel source as local source,</di=
v><div><br></div><div>if i use=C2=A0 EXTERNALSRC_BUILD variable=C2=A0</div>=
<div>EXTERNALSRC =3D &quot;${TOPDIR}/../meta-altera/recipes-kernel/linux/fi=
les/kernel-source&quot;<br>EXTERNALSRC_BUILD =3D &quot;${TOPDIR}/../meta-al=
tera/recipes-kernel/linux/files/kernel-source&quot;<br></div><div>getting=
=C2=A0make-mod-scripts-1.0-r0 error.</div><div><br></div><div>if i comment =
EXTERNALSRC_BUILD =3D &quot;${TOPDIR}/../meta-altera/recipes-kernel/linux/f=
iles/kernel-source&quot; i could able to build the image.</div><div><br></d=
iv><div>any suggestion, if i miss anything.</div><div>Thanks in advance</di=
v><div><br></div><div>logs:</div><div>ERROR: make-mod-scripts-1.0-r0 do_con=
figure: oe_runmake failed<br></div><div><br></div><div>=C2=A0Using /home/pk=
umar/tp4100_sumo/sumo/yocto_platform/platform/meta-altera/recipes-kernel/li=
nux/files/kernel-source as source for kernel<br>| =C2=A0 /home/pkumar/tp410=
0_sumo/sumo/yocto_platform/platform/meta-altera/recipes-kernel/linux/files/=
kernel-source is not clean, please run &#39;make mrproper&#39;<br>| =C2=A0 =
in the &#39;/home/pkumar/tp4100_sumo/sumo/yocto_platform/platform/meta-alte=
ra/recipes-kernel/linux/files/kernel-source&#39; directory.<br>| /home/pkum=
ar/tp4100_sumo/sumo/yocto_platform/platform/meta-altera/recipes-kernel/linu=
x/files/kernel-source/Makefile:1064: recipe for target &#39;prepare3&#39; f=
ailed<br>| make[1]: *** [prepare3] Error 1<br>| make[1]: Leaving directory =
&#39;/home/pkumar/tp4100_sumo/sumo/yocto_platform/platform/build/tmp/work-s=
hared/cyclone5/kernel-build-artifacts&#39;<br>| Makefile:146: recipe for ta=
rget &#39;sub-make&#39; failed<br>| make: *** [sub-make] Error 2<br></div><=
div><br></div><div>Thanks,</div><div>Praveen</div><div><br></div></div>

--000000000000ea4337058ddefc59--
