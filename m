Return-Path: <challinan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB71AE00862; Tue, 21 Oct 2014 06:34:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (challinan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.173 listed in list.dnswl.org]
Received: from mail-ob0-f173.google.com (mail-ob0-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49514E007C1
	for <yocto@yoctoproject.org>; Tue, 21 Oct 2014 06:34:53 -0700 (PDT)
Received: by mail-ob0-f173.google.com with SMTP id wp4so989726obc.4
	for <yocto@yoctoproject.org>; Tue, 21 Oct 2014 06:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=lKtu44+bSYPycmMS/r+f8sNQV+oyUtZxZ2sd69A79lk=;
	b=oZAUYry8RCbXgB/UU4sI7ZnjVuNa/1QwAiwjCtcyUN3MAYKD/EkGUEhyH3Bja3dGdu
	jVtTeMNsTcDA8UuD+V2YLh65B/ovyIw8hjipxCWacSuQ0sHzCBzm7XDMsQ4+l2BcxfuD
	Qdbzrnt9pLnQoqw3gGH+kI/v2udIatWpXq21TDIqFoU2z8bBf3393YiOPPeEW1B0y/E3
	Nt/AMjHXphuZ0IgMx/s7D6rkzzMK8+kJxOxxPhTYWOqYO7WP49KcMgC+GUJM8USLMLGF
	mIfO8YFLctAU9cucNhIsStIyXut6bdUWPuRGqvl0TR8iXS0TrFsf6yZ0CDdgEYq/ltIJ
	ETxQ==
MIME-Version: 1.0
X-Received: by 10.182.125.34 with SMTP id mn2mr1938911obb.80.1413898492408;
	Tue, 21 Oct 2014 06:34:52 -0700 (PDT)
Received: by 10.202.17.1 with HTTP; Tue, 21 Oct 2014 06:34:52 -0700 (PDT)
Date: Tue, 21 Oct 2014 09:34:52 -0400
Message-ID: <CAME0jBQi5P-G74G-G9zK1mmqYt3_GCSUrH9++c2QvksXDLHn+Q@mail.gmail.com>
From: Chris Hallinan <challinan@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: qemuarm built from daisy has no mouse pointer display when run on darwin
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
X-List-Received-Date: Tue, 21 Oct 2014 13:34:58 -0000
Content-Type: multipart/alternative; boundary=089e0122fa246377a80505eee514

--089e0122fa246377a80505eee514
Content-Type: text/plain; charset=ISO-8859-1

Greetings,

I'm playing around with core-image-sato built for MACHINE=qemuarm, and
running under qemu-system-arm on Mavericks.  I'm using qemu version 2.1.2
from macports, and the qemuarm images were built from YP 1.6/Daisy.

My core-image-sato binaries (kernel/rootfs) run perfectly on the host on
which it was built (U12.04) and in fact, runs fine on my Mavericks platform
except there is no mouse pointer visible.  When I move the mouse into the
qemu window and click once, the mouse pointer disappears.  I am getting
mouse events from /dev/input/event1, and in fact, clicking around blindly I
have determined that I can actually click on stuff and cause them to
execute, it's just that there is no visible mouse pointer.

While I realize this is likely not a supported scenario, it would be hugely
convenient for me in my workflow.  I travel with a MB Air, and it's just
too lightweight for a VM.  Can anyone suggest how I might go about
troubleshooting and/or discovering a possible workaround?  Anyone have any
ideas?  Is there a better list where I might ask this question?

Thanks,

Chris Hallinan

-- 
Life is like Linux - it never stands still.

--089e0122fa246377a80505eee514
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Greetings,<div><br></div><div>I&#39;m playing around with =
core-image-sato built for MACHINE=3Dqemuarm, and running under qemu-system-=
arm on Mavericks.=A0 I&#39;m using qemu version 2.1.2 from macports, and th=
e qemuarm images were built from YP 1.6/Daisy.</div><div><br></div><div>My =
core-image-sato binaries (kernel/rootfs) run perfectly on the host on which=
 it was built (U12.04) and in fact, runs fine on my Mavericks platform exce=
pt there is no mouse pointer visible.=A0 When I move the mouse into the qem=
u window and click once, the mouse pointer disappears.=A0 I am getting mous=
e events from /dev/input/event1, and in fact, clicking around blindly I hav=
e determined that I can actually click on stuff and cause them to execute, =
it&#39;s just that there is no visible mouse pointer.</div><div><br></div><=
div>While I realize this is likely not a supported scenario, it would be hu=
gely convenient for me in my workflow.=A0 I travel with a MB Air, and it&#3=
9;s just too lightweight for a VM.=A0 Can anyone suggest how I might go abo=
ut troubleshooting and/or discovering a possible workaround?=A0 Anyone have=
 any ideas?=A0 Is there a better list where I might ask this question?</div=
><div><br></div><div>Thanks,</div><div><br></div><div>Chris Hallinan</div><=
div><br>-- <br>Life is like Linux - it never stands still.<br><br>
</div></div>

--089e0122fa246377a80505eee514--
