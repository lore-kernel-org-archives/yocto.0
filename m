Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BEBCE00D32; Mon,  9 Oct 2017 08:09:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.45 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05548E00CEF
	for <yocto@yoctoproject.org>; Mon,  9 Oct 2017 08:08:55 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id g125so22799954oib.12
	for <yocto@yoctoproject.org>; Mon, 09 Oct 2017 08:08:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=k5XdusJX+gRfz/9lKHc5YsYaWyBisimOHz1oksoZzR8=;
	b=gUK+AHFFIRmZ4ESVSZIo3gcLNW2bIMF5/5KAMhAkDJDt2Q0LDN80w7iRkELhGOwJCc
	JXiGMjQyDON9ZkDkqSCKRASGL9QnEEu3mgQtLB5/a6i+hRls5n7OlpPekr4nsxGWayLk
	xUy6MSVXfBuHJQucIsFmET9WDTtRbbdbstm3bnqgsR2N9GuNzkIr7q9Iq5jG+y8MZQ7x
	VlzqV07syj5VzQTsVIi8M10sZZwPcJNMCg2BTx6rDg/6K+xGMKqsv7OHjqOptMAI38mQ
	57VI5mrXt/LeokC73ArWU7xEZ3gbouQm9L25wTFok7jI0BfuB/H4u72p2CsYFVix7vcS
	yTgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=k5XdusJX+gRfz/9lKHc5YsYaWyBisimOHz1oksoZzR8=;
	b=CdmzRFtzctel7k4YDKl69Hve7PRMCqyem4Ws2KBuQjTOQa1zbrYahWdbMMbRf+JD+x
	uIaPmRnGpT4pHVAahQQnHhZT+6rCGtEyy1CR8Qh612x8l/PWrZhFfCiP/M5/H4l/7o9Y
	A512sVTi9GLJqnYaToNdjr2sK55+ESA7jWm5i886xqaqiYG3dgguGcuWoECCpaMpIbms
	io9rFgod10uHXO9SUcCnyMBMpmEmo1zMHryp/qSIdhQ8hJ+FmtZEjKYQ/i7gqKORitSW
	EXosb+7XTvYWLbl2l8HjdUr2cs9LiOrfJay6x8UQoJwzuvMFjLDhNnG1q7iuVio8rhDm
	8Nmg==
X-Gm-Message-State: AMCzsaU2BuNcoaZEgkvSSKndicioK3JyiVK/W0x/B0+lYcMfSAezzW9n
	W/ocRLmVeb1RBB9TWSipVLYUAkuSImaQNvqZ5sEnrA==
X-Google-Smtp-Source: AOwi7QBShmpaW7DuIaH9LOwWcs78Cj7+9+9D5yMTZX0A4JEx7WS3EaPeQ5b/unOf+Kd1fVjYGSW3r5cfOBQtgwZw5oM=
X-Received: by 10.157.25.143 with SMTP id k15mr2909347otk.201.1507561734761;
	Mon, 09 Oct 2017 08:08:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.14.100 with HTTP; Mon, 9 Oct 2017 08:08:54 -0700 (PDT)
From: Jerry Lian <jerry.lian@gmail.com>
Date: Mon, 9 Oct 2017 11:08:54 -0400
Message-ID: <CAE0QtjN9VykaHZUQrkdmBjbnWFGtriW9zYnADBiWvNptT3APCw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 10 Oct 2017 11:53:50 -0700
Subject: Basic question: "core-image-minimal" v.s "core-image-base" ?
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
X-List-Received-Date: Mon, 09 Oct 2017 15:09:00 -0000
Content-Type: multipart/alternative; boundary="94eb2c091670ad71f5055b1e9162"

--94eb2c091670ad71f5055b1e9162
Content-Type: text/plain; charset="UTF-8"

Hi, all:

I have a basic question: how to tell the difference between
"core-image-minimal" and "core-image-base"?
* If we look at file* \poky\meta\recipes-core\images\core-image-base.bb
<http://core-image-base.bb>*
============================================================
=======================
SUMMARY = "A console-only image that fully supports the target device
hardware."

IMAGE_FEATURES += "splash"

LICENSE = "MIT"

inherit core-image
============================================================
=======================
* how can we tell that "core-image-base" will include "support for a
variety of hardware such as WIFI, bluetooth...", as compare to
"core-image-minimal"?
* Do I miss any other document that I need to read?

Thanks!

--94eb2c091670ad71f5055b1e9162
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi, all:<br><br></div>I have a ba=
sic question: how to tell the difference between &quot;core-image-minimal&q=
uot; and &quot;core-image-base&quot;?<br></div>* If we look at file<b> \pok=
y\meta\recipes-core\<wbr>images\<a href=3D"http://core-image-base.bb" targe=
t=3D"_blank">core-image-base.bb</a></b><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br><div style=3D"margin-left:40px">SUMMARY =3D &quot;A console-only =
image that fully supports the target device hardware.&quot;<br><br>IMAGE_FE=
ATURES +=3D &quot;splash&quot;<br><br>LICENSE =3D &quot;MIT&quot;<br><br>in=
herit core-image<br></div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></div>*
 how can we tell that &quot;core-image-base&quot; will include &quot;suppor=
t for a=20
variety of hardware such as WIFI, bluetooth...&quot;, as compare to=20
&quot;core-image-minimal&quot;?<br></div>* Do I miss any other document tha=
t I need to read?<br><br></div>Thanks!</div>

--94eb2c091670ad71f5055b1e9162--
