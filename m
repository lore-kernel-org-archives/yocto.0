Return-Path: <gigitekwork@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1619DE005BB; Mon,  5 Feb 2018 03:25:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gigitekwork[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CA95E005BB
	for <yocto@yoctoproject.org>; Mon,  5 Feb 2018 03:25:46 -0800 (PST)
Received: by mail-lf0-f45.google.com with SMTP id a204so41208493lfa.2
	for <yocto@yoctoproject.org>; Mon, 05 Feb 2018 03:25:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=1x1lInKTwk/8ANFLl+6LPSRvFsUA74KdshtVwfd8Kgo=;
	b=qYI0wSXb/BXv2lugLli3ynwb75Dm8olCgjwYxtpODzJkNFRKX2FMuwx+/hc94m3z/T
	upohuAqcImrFBsXJ2PyhtlYq6wSSoCHS3JjrsuqxioDvID8fnEioRUZlUVCbifburq75
	jrMArtwpABd8KF6vTKaJFLdY/PEnjl1qHIvpoRZRjjvEWvYB4nbRMdta2ROjVw8yYWIN
	vhvU4xgYWhR7CV7MVrLZCstXxQcujQ4dCqici2ESxeWnssOUNnW3Bci2++SS5EV0CZgd
	3lmLoMywx1bXn8yM4qVO9MmqWexD1vaGk/oY1ze1WjknYyQYTNAVTlt2R3xuhhMFkS9Y
	12Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=1x1lInKTwk/8ANFLl+6LPSRvFsUA74KdshtVwfd8Kgo=;
	b=XGtM5m773T9FO3mmw+/VukXWIiYG3q63eGlSViQcw3zHr4KEYPOw+J5XnN5zlyFEhi
	1ujfRRQKJ4InpGIQZitGWSLDCIP9+Pa42AaGa1HZ+q2XwDyuJ71Et80RjnLD7Fwn02f1
	01e/sVbvByHpxboVE+VHqx/0xsQPc/OHRi1csrisgX1h+2IgWq0ke607tqv4fe04YqSz
	2sQvt3PgEz2X7iexJDisSFyDy4CTA1gMjfYBoPkyS+bT2iHkYqpU7ZuZiSB3HVi4pgHL
	K5ZppnW5pdbJTPhauJn+abN/CXmoy+a/F/Xuc9RCI4gfNkgMSZkolGDlqiz6mhg7cKAf
	4ZTw==
X-Gm-Message-State: APf1xPAcbRCsR/N/UCMvqTB7rf9ko/gBb0EYjCzlN1Rs29fMGh0Iq54v
	Bp7bS+75b26Kvek4iQ2FB6Y8utT1zhWmfvDUS0Qp9A==
X-Google-Smtp-Source: AH8x2244DABsn3AvNI3ND/NpK1vllc9Cabo07b4Ijb0iqAJ73ye2Eke6JQFoMWZ/7g56GyMlndfFjM6zYqhpWYaI0Ps=
X-Received: by 10.46.84.2 with SMTP id i2mr3657680ljb.83.1517829945108; Mon,
	05 Feb 2018 03:25:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.46.31.1 with HTTP; Mon, 5 Feb 2018 03:25:44 -0800 (PST)
From: Gigi Work <gigitekwork@gmail.com>
Date: Mon, 5 Feb 2018 13:25:44 +0200
Message-ID: <CAAm399QPwZssmXYXCh7RYQeZ7O3+1RobA5oRFOzXh-HcGOCjSg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Build directory toolchain
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
X-List-Received-Date: Mon, 05 Feb 2018 11:25:47 -0000
Content-Type: multipart/alternative; boundary="f403045fb994b52af80564755232"

--f403045fb994b52af80564755232
Content-Type: text/plain; charset="UTF-8"

What is the correct/official way to setup a toolchain derived from the
build directory - if it has everything in there and my app compiles fine
using bitbake, I don't want to create a toolchain installer and install
separately.

My recipe compiles successfully using "bitbake my-recipe", but compiling
outside, fails:

First I run "bitbake meta-ide-support" and then source the environment
(build/tmp/environment-setup-cortexa5hf-neon-poky-linux-gnueabi)
It fails because it cannot find cmake.

I'm using the rocko branch.

Any help is appreciated !
Thanks

--f403045fb994b52af80564755232
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>What is the correct/official way to setup a toolchain=
 derived from the build directory - if it has everything in there and my ap=
p compiles fine using bitbake, I don&#39;t want to create a toolchain insta=
ller and install separately.<br><br>My recipe compiles successfully using &=
quot;bitbake my-recipe&quot;, but compiling outside, fails:<br><br>First I =
run &quot;bitbake meta-ide-support&quot; and then source the environment (b=
uild/tmp/environment-setup-cortexa5hf-neon-poky-linux-gnueabi)<br>It fails =
because it cannot find cmake.<br><br></div><div>I&#39;m using the rocko bra=
nch.<br></div><div><br></div><div>Any help is appreciated !<br></div><div>T=
hanks<br></div></div>

--f403045fb994b52af80564755232--
