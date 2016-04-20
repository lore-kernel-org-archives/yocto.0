Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56927E00F5C; Wed, 20 Apr 2016 14:05:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96A20E00F46
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 14:05:06 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id n3so101890894wmn.0
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 14:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=8w7M3bDBUd//BgjVFNdArkg6HrLE+WJysa5ZrwM9eUo=;
	b=0JZgtQtVpB8o82dmSpf3rMZE8c/sDyPmluFGjERPsxlfB4PIl46FFeWWsJGirH31q4
	o9z4hWugIJt2dsg5d3NPZsU+crI7Xiws4UMBw46oDQxytU6PA8jjM0XRXuitN6OMV+F2
	s12KBMEWiPUrok4EKoinw9fD6qcJeEgQGcY6xy+XOtAWcZ3+2XXBnXzaxVUQVAiSjYiy
	Hom0n1grzVYmEukTNztARLkbPcJbLxppQZpF3Golubb0XUaD3JVFG0JGxMxPJA+6O+Nt
	TJGk8SuinaBrNZDs1eaW/losb+AMhmOkQETnUMkRCLV+QR290c69LSEdnOUJlvw7midb
	mcJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=8w7M3bDBUd//BgjVFNdArkg6HrLE+WJysa5ZrwM9eUo=;
	b=XI66dszUGLHdhkagl3uNfBbZ7t2wKk/G6zWlOlrRNoSf2WoeGE8uDZQUY46bhT9u3G
	Sy0IPr9E6pbwnb7fbNY1i0TSf4lg0/OvEtlU6SAW4vDydqzZ5UCK8LJco3yBsHfzOVjc
	mz9+XS6VyWp+cmdrOwrf9MAUxsUBwqhsL0MoX+sjFIYS8ThRk3zwL/9XvGYtBjAC3lq9
	Sa2k4rJxDri2bE+A1NTzd4pEAcu7TdDUOst2Au1fN59O9l8LRKLSIa2GElhe8AMuTuxX
	W1pynEejxIIhVHF5bF8QoQwKBv936nE750wrzKHHWf/5snIA8E62Bu0gmQ0AvAMcpEQd
	v5Sw==
X-Gm-Message-State: AOPr4FXb0CNjVMMnqMKhK6pzuJNlBYSJZYw41nZMK9niI2o8jluXhY/B66Z5ra4f86M9Kw==
X-Received: by 10.194.86.129 with SMTP id p1mr6086362wjz.117.1461186304732;
	Wed, 20 Apr 2016 14:05:04 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	ln7sm2747411wjb.40.2016.04.20.14.05.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 20 Apr 2016 14:05:03 -0700 (PDT)
Date: Wed, 20 Apr 2016 23:05:01 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Julien Gueytat <contact@jgueytat.fr>
Message-ID: <20160420210501.GK1588@resin>
References: <5715F053.8040801@jgueytat.fr>
MIME-Version: 1.0
In-Reply-To: <5715F053.8040801@jgueytat.fr>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-qt5][meta-raspberrypi]: Qt5 with EGL support for the Raspberry through linux-oe-g++
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
X-List-Received-Date: Wed, 20 Apr 2016 21:05:26 -0000
X-Groupsio-MsgNum: 29531
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sdEQJo40s7ofW8iR"
Content-Disposition: inline

--sdEQJo40s7ofW8iR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 19, 2016 at 10:46:11AM +0200, Julien Gueytat wrote:
> Hi,
>
> I still can't figure out the patch to apply in meta-qt5 to get EGL support
> with the Raspberry.
>
> The test to check EGL does not pass and fails with the following command:
>
> arm-poky-linux-gnueabi-g++  -march=armv7-a -marm  -mthumb-interwork
> -mfloat-abi=hard -mfpu=neon-vfpv4 -mtune=cortex-a7 --sysroot=/home/jgueytat/projects/LightPixels/poky/build/tmp/sysroots/lightpixels
> -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -Wl,-O1 -o egl egl.o -lGLESv2
> -lbcm_host -lvchostif -lvcos -lvchiq_arm -pthread -lEGL
>
>
> Here is the content of the file egl.pro:
>
> $ cat egl.pro
> SOURCES = egl.cpp
>
> for(p, QMAKE_LIBDIR_EGL) {
>     exists($$p):LIBS += -L$$p
> }
>
> message("In egl.pro - 1: QMAKE_LIBS_EGL = $$QMAKE_LIBS_EGL")
> message("In egl.pro - 1: LIBS = $$LIBS")
>
> !isEmpty(QMAKE_INCDIR_EGL): INCLUDEPATH += $$QMAKE_INCDIR_EGL
> !isEmpty(QMAKE_LIBS_EGL): LIBS += $$QMAKE_LIBS_EGL
>
> message("In egl.pro - 2: QMAKE_LIBS_EGL = $$QMAKE_LIBS_EGL")
> message("In egl.pro - 2: LIBS = $$LIBS")
>
> CONFIG -= qt
>
> In the main ./configure file of qtbase:
>
> | In configure #1: QMAKE_LIBS_EGL =
> | In configure #2: QMAKE_LIBS_EGL = -lEGL -lGLESv2 -lbcm_host -lvchostif
> -lbcm_host -lvcos -lvchiq_arm -pthread
>
> The variable QMAKE_LIBS_EGL is set properly.
>
>
> In the ./config.tests/qpa/egl/egl.pro file:
>
> | Project MESSAGE: In egl.pro - 1: QMAKE_LIBS_EGL = -lEGL
> | Project MESSAGE: In egl.pro - 1: LIBS = -lEGL -lGLESv2 -lbcm_host
> -lvchostif -lvcos -lvchiq_arm -pthread
> | Project MESSAGE: In egl.pro - 2: QMAKE_LIBS_EGL = -lEGL
> | Project MESSAGE: In egl.pro - 2: LIBS = -lEGL -lGLESv2 -lbcm_host
> -lvchostif -lvcos -lvchiq_arm -pthread -lEGL
>
>
> *What I see is that:*
> In the configure file the variable QMAKE_LIBS_EGL is properly set through
> pkg-config.
> In the egl.pro file... The variable LIBS gets the content of QMAKE_LIBS_EGL
> and the variable QMAKE_LIBS_EGL gets back to its default -lEGL.
>
> In the end with have -lGLESv2 before -lEGL and this does not link.
>
> I checked also the content of .qmake.vars:
> grep QMAKE_LIBS_EGL .qmake.vars
> QMAKE_LIBS_EGL = -lEGL -lGLESv2 -lbcm_host -lvchostif -lbcm_host -lvcos
> -lvchiq_arm -pthread
>
>
> The command QMakeVar set QMAKE_LIBS_EGL "$QMAKE_LIBS_EGL" seems to have his
> job done too late...
>
> If someone has an idea to get the proper correction done...
>
> Best Regards,
> Julien
>

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks.

--
Andrei Gherzan

--sdEQJo40s7ofW8iR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXF+79AAoJEHO76Gt+erfPyYMQAJooerVLaFYxR7BPlwzc+zwV
WxdN05bJqnOPtsIvfyC6gVnWvwWnI+YBSd/lrtMGvw4EajWV8MRqqerNOYHkFNHI
JpGXfO4FVDywvh13U1zogilLZhhBxdU3C5LtvfDQPiUvDaKrhbFd4P9S9rntDg8x
iOp/d9UDEwyaNeCSP+0fS1iwQJ3Mt/QgDE6n5fwRrOgsRlq1ES4h2Hy7criNPw8Y
e5CBDCpNgS8ur/dDzWde+VSJ2iLj20vI36iJRg3qhSrMgFM9nb/g/38IZZDrRotP
0ocVlkM/SWVGbMV5iDijcNN5EMaevD1B+Z2J5BjqHAf8ETELZfRzlNiyJRd8zcxt
TvLqe+Jw5cHJvZWMGMnc1w/nOAyLrPLf3VA0Lh02ZBZYvDXeY4MJ2x9JBm2gqFLA
RXv3t66EXjDjSM8DJBbw79RajHqW0+DXcaa0fpZ+U5QIkNX6lBwNLaMP6kI0ZlZY
KdM0275E9L0Oa7hZbiRyP+Bo59nyru66AJBP/GxCZt7E8zvrzx3xxGvzacC2ItbK
7iA+8w7/zH2Drn7AUpAHRTqzlNYtlRbCJ57fhXeKNtnWhRMhN4+AgULzcUscnHjb
UwPt3MWX1U4nC/lq012Uj47GH/HmrICzXWOgGjNP/eltv9Kw8ROCRnrTU+dssL24
Xk63NCQeM4oIbYPjoNQV
=mcQL
-----END PGP SIGNATURE-----

--sdEQJo40s7ofW8iR--
