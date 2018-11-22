Return-Path: <rzcharger@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A71F1E00C95; Wed, 21 Nov 2018 20:29:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rzcharger[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.180 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EC0DE00C7C
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2018 20:29:41 -0800 (PST)
Received: by mail-qk1-f180.google.com with SMTP id o125so6216688qkf.3
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2018 20:29:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=S1P/PoxbqMTrfZk35fgGqCJIF+tzbwTL3EC+hSs65wA=;
	b=mTVgE4g92hJCCTy35M6CZBOoc+TU74C3F53jBg2mivKmH3a7DeQGE6i6j0++0Nv3Dv
	Y144AsuOHQgBQXZdfDVg7tQWJVqKvEivPA0gnTsVvHdDRZ7+q97hufwewpTvm8gY7xyl
	uBLl4hfuJUMnZIH4XrlzryEWJIkvkVjkPDzovgQcXlrz5hOyHJEsdlqTJowuac0uVG6T
	y1ISRP1MynsG9B2x1mMAN0Zb0LN9cKIcy/UnlFl+s/NvE82B9BhG3IRTjO0wqS/D/vGP
	H+GpB2MwB2GO32OqpTxQRNNTR2DI240Yu0aWwox3pk3wiqwJhU7GlMbP45ejkvv9ke+U
	8SfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=S1P/PoxbqMTrfZk35fgGqCJIF+tzbwTL3EC+hSs65wA=;
	b=dmpVH6pp59lq4htheor+6NpZAR4o3sulNjFHMCVhUgbw+VChXz0tL9ZJf2YOAxc44x
	z787paV7u3DtaEP2oQP5J5alt7Ny+RYxL1vGgARjVRE6LH8HYS2plRe79PDvPhk6/FaD
	9nYUq8eZ0AVVBVJOwwU+wz91jLq5sI2Ouqyh9xSLWGRV6xBRKMLAhzfsdH2R5Ohg8ulu
	9B4gdK+P+aXnbTx9DMHfHwo/0iaF43QnTzdWBobtaN+/vw66w+K7Qx+mDs6O7CukK6d+
	WUK0xJYgOh/03e4LzdqUjH2NABo508yCg8nqxv8GimtxR9SzFZlREG3xrJq7kxhlqpzm
	8VcA==
X-Gm-Message-State: AA+aEWaDvtPlUMKh3G9+P5C7jgzYhGdbaonPY9K2W+89r+HThZZF88l8
	1FDDnqk+Vi8GXeAdJjWLWYJRII/AyiwpwDMd76Va5Dk1
X-Google-Smtp-Source: AFSGD/WoIDzWyQ/WrvxQit2ey5BB9Kq9GKLcgy81jXUaDbK/MZpsUUzX6WGgRoJxb+dS2f5UsQQaBcMKY1+loZYJ400=
X-Received: by 2002:a37:e84:: with SMTP id 126mr7951901qko.177.1542860980424; 
	Wed, 21 Nov 2018 20:29:40 -0800 (PST)
MIME-Version: 1.0
From: rz charger <rzcharger@gmail.com>
Date: Thu, 22 Nov 2018 12:29:30 +0800
Message-ID: <CAKfv=rdAwxX3JSBkf_Q78h_+Wt5qgW=c01AwFNdHHX7DcJAwyg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto on Atmel SAME70?
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
X-List-Received-Date: Thu, 22 Nov 2018 04:29:41 -0000
Content-Type: multipart/alternative; boundary="000000000000ad1389057b395034"

--000000000000ad1389057b395034
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

Good day.

Currently our team is using Yocto on CM3 Raspberry Pi. We are planning to
port our current Yocto project into Atmel SAME70. However we are not sure
whether it is possible or not. We have few questions hopefully someone has
some experience with this can enlighten us.

1. Is it possible and recommended to implement Yocto into Atmel SAME70 for
IoT application? (Single core CPU:300MHz, RAM: 384KB, Program Memory Size:
2048 KB)
2. Any example/past project of Yocto running on Atmel SAME70?

 Appreciate your time.Thank you

Regards,
Rz Charger
Malaysia

--000000000000ad1389057b395034
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi everyone,<div><br></div><div>Good day.=
</div><div><br></div><div>Currently our team is using Yocto on CM3 Raspberr=
y Pi. We are planning to port our current Yocto project into Atmel SAME70. =
However we are not sure whether it is possible or not. We have few question=
s hopefully someone has some experience with this can enlighten us.</div><d=
iv><br></div><div>1. Is it possible and recommended to implement Yocto into=
 Atmel SAME70 for IoT application? (Single core CPU:300MHz, RAM: 384KB, Pro=
gram Memory Size: 2048 KB)</div><div>2. Any example/past project of Yocto r=
unning on Atmel SAME70?</div><div><br></div><div>=C2=A0Appreciate your time=
.Thank you</div><div><br></div><div>Regards,</div><div>Rz Charger</div><div=
>Malaysia</div></div></div>

--000000000000ad1389057b395034--
