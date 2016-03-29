Return-Path: <matt.hoosier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19170E006AE; Tue, 29 Mar 2016 12:32:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matt.hoosier[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98C30E0048B
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 12:32:31 -0700 (PDT)
Received: by mail-vk0-f49.google.com with SMTP id e185so32797859vkb.1
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 12:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=Z6B+zXUqYm2LGpfuFOI9n8L2hK9jQ6A2a57922CUqkY=;
	b=wrIHqKZnJw9uopS0bIyHanzcQACY3TVpLM+9PAOcRe2SyYb4Mq9B/znHyhBaFem313
	ojP5oYnwdKPL5Hcf0+YYY/m3URzaXJ+CBVOKC5biIdh01MI5iFoOklwlbImCpp3BfOKm
	cS9EIAxljVc83f0xZ37vS2sf/DazTTNEqz0ZRb0b4QXfBlUXgKMO1JrQjx6vjOzw/Az7
	hRK3itQlo+AXDdfh5oPJLkAQeBby6ic1RmKtaKwHBrRKcLLt90ggeJf/ZPXqpVJOVOwz
	0NjpxmaCNX9a8FmnOCTKvu4MD7E8OehYL+v5ZWFfIOa21AbY8EuGy4rsmF7Ehg0YG+lp
	QGzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Z6B+zXUqYm2LGpfuFOI9n8L2hK9jQ6A2a57922CUqkY=;
	b=gGPN5lfAu2JEeqQnT5OZAK3AIcoVNHd/lL/OHZuvV+bXECBmpFBQtAYzGEWzYk0JVD
	+85bNKuy9uk3+ayrLTifqJAj8FSzmmdHiER/fP4zsKtHU5ETDW/zq4a2bsiLR4R2/Vny
	vuqIZolYTTkXnLLVHLIh3jctoBEJMCrzoC5yCLLqTMskPjyHjcyYGzKtupWoqnTEgBSE
	qhozwIZ/2S9ud8syqLNV+VknXbh41ayZoHTxRJ/mCruvEhjHbNCuJR+M3tT1q3rPnDPv
	c7kR544eB3C4XDd8RkOJIAOdmWHMns8CQT3I9EuKv4qhF3b1tY8fvkh/b1Aml/yNhrkU
	aP0w==
X-Gm-Message-State: AD7BkJKdlSM4zVCo2YGsk4L7Dev8Uf5dsFu/aW/BZX9ClHEwh4X3KMGXOSgvC3aMdEjYJ07fd1sDPYQEh9WEZQ==
X-Received: by 10.159.36.114 with SMTP id 105mr2555657uaq.12.1459279950471;
	Tue, 29 Mar 2016 12:32:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.69.209 with HTTP; Tue, 29 Mar 2016 12:31:50 -0700 (PDT)
From: Matt Hoosier <matt.hoosier@gmail.com>
Date: Tue, 29 Mar 2016 14:31:50 -0500
Message-ID: <CAJgxT3_RgCggA=AEFgu1hMhRxsVhkYbLQCJ58sKbqS13mX7+fA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: SRC_URI overrides and work-shared
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
X-List-Received-Date: Tue, 29 Mar 2016 19:32:32 -0000
Content-Type: multipart/alternative; boundary=001a113e30ec136697052f351743

--001a113e30ec136697052f351743
Content-Type: text/plain; charset=UTF-8

In my private layer, I'd like to apply the occasional patch to GCC only for
certain circumstances (e.g., a particular target architecture). I get some
strange behavior with quilt seeming to get confused during do_patch(),
though, which I imagine is due to the singular source directory in
build/tmp/work-shared/gcc-X.Y.Z being shared among all the various GCC
recipes.

Is it just expected that all GCC recipes must have exactly the same
SRC_URI, or is there perhaps some other more tricky thing I should do in
order not to confuse the work-shared setup?

-Matt

--001a113e30ec136697052f351743
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In my private layer, I&#39;d like to apply the occasional =
patch to GCC only for certain circumstances (e.g., a particular target arch=
itecture). I get some strange behavior with quilt seeming to get confused d=
uring do_patch(), though, which I imagine is due to the singular source dir=
ectory in build/tmp/work-shared/gcc-X.Y.Z being shared among all the variou=
s GCC recipes.<div><br></div><div>Is it just expected that all GCC recipes =
must have exactly the same SRC_URI, or is there perhaps some other more tri=
cky thing I should do in order not to confuse the work-shared setup?</div><=
div><br></div><div>-Matt</div></div>

--001a113e30ec136697052f351743--
