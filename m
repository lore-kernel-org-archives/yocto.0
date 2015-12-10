Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7890E00AD2; Thu, 10 Dec 2015 13:16:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A35D2E00718
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 13:16:06 -0800 (PST)
Received: by iouu10 with SMTP id u10so108548547iou.0
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 13:16:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=8bTOOnvn4t1O691870uYyvh0tWM+ged8Ode/3YVZjyI=;
	b=HUAaLHl1KHJ0FJrM96h2IKpSUThEMhbVfRKiXcG0VSTRYlaWjUs6kBMYS2ZxyBX+wJ
	Vi2M//ePhUFkJ2fO9eWmguLZ5DHPBpfEYOMurHqWOs6DB+BDstyJbSPGaTYPUZl3JLzB
	ISOFFieW565crhiA82MHdE5fa92mCU/bZXDnEW/u9W+YeMM7GPsDpuIwn5ZGIrG92Am4
	ZoTwMe+7T4QdszHdovZB5/YNayGJXGt5zW7Ct0MXyrin1USu0C9SKdyrzNU2od8uQp0A
	yfzkPhzGDq9WXU0cawBf3SJahNbOu/MQ6Bv9pwzlBL6JmwNIjkocbki+lVFqVALp2dif
	7UbA==
MIME-Version: 1.0
X-Received: by 10.107.149.9 with SMTP id x9mr15918718iod.170.1449782165730;
	Thu, 10 Dec 2015 13:16:05 -0800 (PST)
Received: by 10.79.91.134 with HTTP; Thu, 10 Dec 2015 13:16:05 -0800 (PST)
Date: Thu, 10 Dec 2015 15:16:05 -0600
Message-ID: <CAOsp8o9_bzZg5nYsPrqiCNOm+SBphZpwmY1eGqav2g2ULYCCSw@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: yocto@yoctoproject.org
Subject: Best practice for building a large amount of source files
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
X-List-Received-Date: Thu, 10 Dec 2015 21:16:10 -0000
Content-Type: multipart/alternative; boundary=001a1140fa06fd7c34052691b681

--001a1140fa06fd7c34052691b681
Content-Type: text/plain; charset=UTF-8

If I have some source I want to bring into my layer, for example:

Recipe dir:
meta-mylayer/recipes-management/myapplication/myapplication_1.0/<tons of
source files>

What is the best option for adding all of these and compiling? As far as I
know, you have to do one of the following:

1) Use a fetch that fetches a tarball with all your source, or a repo with
all of your source
2) Use a million-line long SRC_URI assignment to include every file that
your application uses.

Is there a third (or fourth) option that I may have missed?

Michael

--001a1140fa06fd7c34052691b681
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If I have some source I want to bring into my layer, for e=
xample:<div><br></div><div>Recipe dir:</div><div>meta-mylayer/recipes-manag=
ement/myapplication/myapplication_1.0/&lt;tons of source files&gt;</div><di=
v><br></div><div>What is the best option for adding all of these and compil=
ing? As far as I know, you have to do one of the following:</div><div><br><=
/div><div>1) Use a fetch that fetches a tarball with all your source, or a =
repo with all of your source</div><div>2) Use a million-line long SRC_URI a=
ssignment to include every file that your application uses.</div><div><br><=
/div><div>Is there a third (or fourth) option that I may have missed?</div>=
<div><br></div><div>Michael</div><div><br></div><div><br></div></div>

--001a1140fa06fd7c34052691b681--
