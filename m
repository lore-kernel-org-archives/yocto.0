Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C064E00C41; Mon, 28 Nov 2016 15:21:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 057E0E00C2D
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 15:21:51 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id 3so14385861pgd.0
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 15:21:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=+4j8krtAE4PQdIboSYwgvP64Z4o97ORw3nIT2DtpitU=;
	b=SDXP/s78+F2VIbYKW54vnUiOMhVTHPHwInG0u/CNn05ZzmSNMg4znjxlpinrMcF3hS
	UpG2+L5ERHqkaMaqGd1iRY1H8q4mGpdUqcaYZjkQ2lM8GB8T8YajasbeifQBO+FqEjEb
	GhY7hbnM/qmH5P8DkI0r/GLfafgczA43/NZhIl02w94U6RbYZjADXfK7zPodgS/cYsWt
	WHGJhJXmlzCYzxzuaUorRpLVWBrJUXl5xSmVIsQmn1ku/9X1LlKeaq/YwJ8A7nuvu8D5
	4N4npUAkH3xiBG6YrlI2VJuwsm18ac+fKi+dP2pXz1X4PKc18ERZLU7ZK0xYahebrxk2
	mahQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=+4j8krtAE4PQdIboSYwgvP64Z4o97ORw3nIT2DtpitU=;
	b=KAgCRHyTUJWS+0u3KT8UQ2vSADOCP+AC7drIfa6ddxOcMz8obH2+grgW6dldZSstVo
	C9T7np2KMvNMrZ49bV9tr9JyYIDX6R75k26FNl0HJB1NNqwYTz9DeRfMwXu0t7ieeyKi
	ayHBRe9/4bkUBG1Ot2rZ9wmKP9JEhCnKzqFuj4R1liYncuwapJTGgJZ2xs6b2HJGX3FP
	xXK+IzQwI8nSKFAnOBvIatxJZWB0PYQoszdLjjtydI9rtr8CygHQ3eV14iEQP2Un61MI
	SSmftdwMNu9IVDAMARfa5NRjWRd8AbMLqsudeH4XjPZryjEEFKhax4P/MAbicC3fyo0V
	f6iw==
X-Gm-Message-State: AKaTC03J0HIyFGPsRy4ZSc9zhj6nY8NDoNAuMdoRTrOk//KdGVH9Z2PTVarF+Fq+HV9wsw==
X-Received: by 10.98.98.66 with SMTP id w63mr24620860pfb.84.1480375311495;
	Mon, 28 Nov 2016 15:21:51 -0800 (PST)
Received: from ?IPv6:2601:646:8882:b8c:f08c:19b4:e718:7b0b?
	([2601:646:8882:b8c:f08c:19b4:e718:7b0b])
	by smtp.gmail.com with ESMTPSA id
	z9sm71919317pge.44.2016.11.28.15.21.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 28 Nov 2016 15:21:50 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
Message-Id: <9045CDB4-3095-4352-A4A3-04EAC676F466@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
Date: Mon, 28 Nov 2016 15:21:50 -0800
In-Reply-To: <20161128151233.8861-1-twoerner@gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
References: <20161128151233.8861-1-twoerner@gmail.com>
X-Mailer: Apple Mail (2.3251)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi_4.4.bb: upgrade to 4.4.32
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
X-List-Received-Date: Mon, 28 Nov 2016 23:21:53 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_0CB2805B-6EE4-4588-B355-64236DD0FA08"

--Apple-Mail=_0CB2805B-6EE4-4588-B355-64236DD0FA08
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

its at 4.4.35 now see
https://github.com/kraj/meta-raspberrypi/commits/kraj/master =
<https://github.com/kraj/meta-raspberrypi/commits/kraj/master>

> On Nov 28, 2016, at 7:12 AM, Trevor Woerner <twoerner@gmail.com> =
wrote:
>=20
> This helps align the raspberry pi 4.4.y kernel with the latest 4.4.y
> PREEMPT_RT patch.
>=20
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
> recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb =
b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> index 19e8552..0724ac1 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> @@ -1,8 +1,8 @@
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
>=20
> -LINUX_VERSION ?=3D "4.4.28"
> +LINUX_VERSION ?=3D "4.4.32"
>=20
> -SRCREV =3D "5afda48c3408e15742d4569459a4ff668e2857f7"
> +SRCREV =3D "f779cabf56bc88319d582db58969ba6f7184a775"
> SRC_URI =3D =
"git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-4.4.y =
\
>            file://0001-fix-dtbo-rules.patch \
> "
> --=20
> 2.10.2
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_0CB2805B-6EE4-4588-B355-64236DD0FA08
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">its at 4.4.35 now see<div class=3D""><a =
href=3D"https://github.com/kraj/meta-raspberrypi/commits/kraj/master" =
class=3D"">https://github.com/kraj/meta-raspberrypi/commits/kraj/master</a=
></div><div class=3D""><br class=3D""><div><blockquote type=3D"cite" =
class=3D""><div class=3D"">On Nov 28, 2016, at 7:12 AM, Trevor Woerner =
&lt;<a href=3D"mailto:twoerner@gmail.com" =
class=3D"">twoerner@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div class=3D"">This =
helps align the raspberry pi 4.4.y kernel with the latest 4.4.y<br =
class=3D"">PREEMPT_RT patch.<br class=3D""><br class=3D"">Signed-off-by: =
Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com" =
class=3D"">twoerner@gmail.com</a>&gt;<br class=3D"">---<br class=3D""> =
recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--<br class=3D""> 1 =
file changed, 2 insertions(+), 2 deletions(-)<br class=3D""><br =
class=3D"">diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb =
b/recipes-kernel/linux/linux-raspberrypi_4.4.bb<br class=3D"">index =
19e8552..0724ac1 100644<br class=3D"">--- =
a/recipes-kernel/linux/linux-raspberrypi_4.4.bb<br class=3D"">+++ =
b/recipes-kernel/linux/linux-raspberrypi_4.4.bb<br class=3D"">@@ -1,8 =
+1,8 @@<br class=3D""> FILESEXTRAPATHS_prepend :=3D =
"${THISDIR}/${PN}-${PV}:"<br class=3D""><br class=3D"">-LINUX_VERSION ?=3D=
 "4.4.28"<br class=3D"">+LINUX_VERSION ?=3D "4.4.32"<br class=3D""><br =
class=3D"">-SRCREV =3D "5afda48c3408e15742d4569459a4ff668e2857f7"<br =
class=3D"">+SRCREV =3D "f779cabf56bc88319d582db58969ba6f7184a775"<br =
class=3D""> SRC_URI =3D "<a =
href=3D"git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi=
-4.4.y" =
class=3D"">git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3D=
rpi-4.4.y</a> \<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a =
href=3D"file:///0001-fix-dtbo-rules.patch" =
class=3D"">file://0001-fix-dtbo-rules.patch</a> \<br class=3D""> "<br =
class=3D"">-- <br class=3D"">2.10.2<br class=3D""><br class=3D"">-- <br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></div></blockquote></div><br =
class=3D""></div></body></html>=

--Apple-Mail=_0CB2805B-6EE4-4588-B355-64236DD0FA08--
