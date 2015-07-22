Return-Path: <sleepylight@jive-turkey.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D2D5E00927; Wed, 22 Jul 2015 07:16:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
Received: from mail-lb0-f170.google.com (mail-lb0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81C21E008EC
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 07:15:58 -0700 (PDT)
Received: by lbbqi7 with SMTP id qi7so57261694lbb.3
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 07:15:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=95Qu2Iud6Hg5142z4f374kvnwoJpwWFf5QeloJl9zuA=;
	b=XbHkXDIbgpoxLdoOVS9hOy5ZXU3oA6w6XBH6XcN+hcAZA9uauFFrtGS3UpVVtffrlL
	Sov1nTeuJroeYyZj2vz6tEV9V1tSLhJwNxDS6WGkyo18r9LTMjmS/ru4cyDGPf6ZUJk8
	gex1Zf9PSAG3r0c44nttCRuAxfFnO+HY8CiCfEAXIAUeeKpyVAjkhh9yl2+kKKnngbKI
	gfQ0E8Nc3kOjUpqsQStcxN4BUoWEHNlItuTPz7E3fwdex+/h3Xtg7DoVLsJHxEbciJjV
	8mIlOnO/03H5AyB1IAtoXvEW1jBeqKwCnSOQ1irpdB6J9n4JaOsg6V/tWA2yXT9mdcnx
	QogQ==
X-Gm-Message-State: ALoCoQmH75h+FrUvfEFDypKZWHmfo4Z+h5LzlHisVFUlp4CPYhO8Sevymm+uR5k9se6gmi4SIM8f
MIME-Version: 1.0
X-Received: by 10.112.164.35 with SMTP id yn3mr2576581lbb.91.1437574556014;
	Wed, 22 Jul 2015 07:15:56 -0700 (PDT)
Received: by 10.25.156.65 with HTTP; Wed, 22 Jul 2015 07:15:55 -0700 (PDT)
Date: Wed, 22 Jul 2015 10:15:55 -0400
Message-ID: <CADi-vsyPaW_XJ+0_im=jtEdnqRT2=bHv7xO96rU05-TmMbTKgw@mail.gmail.com>
From: Maxwell Bottiger <sleepylight@jive-turkey.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Missing _bsddb.so from python build
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
X-List-Received-Date: Wed, 22 Jul 2015 14:16:01 -0000
Content-Type: multipart/alternative; boundary=001a11c33530bff271051b7768ac

--001a11c33530bff271051b7768ac
Content-Type: text/plain; charset=UTF-8

Hi,

I'm trying to build python in yocto, and I'm hung up on a missing library.
I've built python-bsddb, and I see all of the .py and .pyc libraries, but I
don't have _bsddb.so in lib-dynload.  I see the python-2.7-mainfest.inc
either installs it or expects to install it, but I can't get anything to
build it.

Does anyone know how to generate _bsddb.so?

-Max

--001a11c33530bff271051b7768ac
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br></div>I&#39;m trying to build py=
thon in yocto, and I&#39;m hung up on a missing library.=C2=A0 I&#39;ve bui=
lt python-bsddb, and I see all of the .py and .pyc libraries, but I don&#39=
;t have _bsddb.so in lib-dynload.=C2=A0 I see the python-2.7-mainfest.inc e=
ither installs it or expects to install it, but I can&#39;t get anything to=
 build it.<br><br></div>Does anyone know how to generate _bsddb.so?<br><br>=
</div>-Max<br></div>

--001a11c33530bff271051b7768ac--
