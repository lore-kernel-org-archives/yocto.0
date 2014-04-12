Return-Path: <fede.vitali@gmail.com>
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7344E00AB5
	for <yocto@yoctoproject.org>; Sat, 12 Apr 2014 09:27:54 -0700 (PDT)
Received: by mail-ob0-f179.google.com with SMTP id va2so7498399obc.10
	for <yocto@yoctoproject.org>; Sat, 12 Apr 2014 09:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=gfgOT0QvWAMomkbCDmRWojtbTogz78fdb5D74dACQOE=;
	b=AJELLkZJeoK1HYKpjIgHJC/6fkkT8rQEJjxmv7zHbBItrnIfdq3SQsWxoV++BpuALx
	H9pMi0/WRY5Dy+NYgNbdOwXZ1v/q/tT34l0iTiLL6ACHTRzeksmLmQCukjYjQ8wD8vs9
	tJwMO/lOYtqjqxwH5PWoYe6v+Bt17/amuJzTHzxHxiGMg2UH2DegovC6ScLv5AahpsoG
	I946AI9fbzk9qpd0++k4UViqRzwuiQ0/08ltnHhTFn2Opi6fIhUQL/GDgRRzFU3BLLHA
	cWGRmJqp3/BJPMbpZj+RhvCJG+5gzt8VwNxNTGkMIpF/v3nnraOzdJQY5oPvPB8FfBjR
	UU7g==
MIME-Version: 1.0
X-Received: by 10.60.51.69 with SMTP id i5mr24941470oeo.17.1397320074271; Sat,
	12 Apr 2014 09:27:54 -0700 (PDT)
Received: by 10.76.101.112 with HTTP; Sat, 12 Apr 2014 09:27:54 -0700 (PDT)
Date: Sat, 12 Apr 2014 18:27:54 +0200
Message-ID: <CAD78y+6HxrYWCyVh6xbGS=4MXB1WSBzQLSpBo2kKakJ8TZgghA@mail.gmail.com>
From: Federico Vitali <fede.vitali@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Question about remote debugging via gdbserver
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
X-List-Received-Date: Sat, 12 Apr 2014 16:27:56 -0000
Content-Type: multipart/alternative; boundary=001a11c300deaa21a504f6daee40

--001a11c300deaa21a504f6daee40
Content-Type: text/plain; charset=ISO-8859-1

Hi everyone,

I'm wondering if it is possible to debug an installed library on the target
via gdbserver.
I try to explain: suppose that I'm developing an application using
gstreamel libraries.

I set up eclipse / gdb to work with my target on the network. When I reach
a gst funciont
(e.g. gst_init) I would like to jump into the line of code of gstreamer
which implements
that function. Is there a way to instruct eclipse to fetch symbols and
sources from local filesystem,
eg:

symbols:
/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/.debug/libgstbase-0.10.so.0.30.0
sources: /usr/src/debug/gstreamer/0.10.36-r2/gstreamer-0.10.36/


Thank you in advance!

Federico

--001a11c300deaa21a504f6daee40
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<div><br></div><div>I&#39;m wondering if it is=
 possible to debug an installed library on the target via gdbserver.</div><=
div>I try to explain: suppose that I&#39;m developing an application using =
gstreamel libraries.</div>
<div><br></div><div>I set up eclipse / gdb to work with my target on the ne=
twork. When I reach a gst funciont</div><div>(e.g. gst_init) I would like t=
o jump into the line of code of gstreamer which implements</div><div>that f=
unction. Is there a way to instruct eclipse to fetch symbols and sources fr=
om local filesystem,</div>
<div>eg:</div><div><br></div><div>symbols: /opt/poky/1.5.1/sysroots/armv6-v=
fp-poky-linux-gnueabi/usr/lib/.debug/libgstbase-0.10.so.0.30.0<br></div><di=
v>sources:=A0/usr/src/debug/gstreamer/0.10.36-r2/gstreamer-0.10.36/</div>
<div><br></div><div><br></div><div>Thank you in advance!</div><div><br></di=
v><div>Federico</div><div><br></div></div>

--001a11c300deaa21a504f6daee40--
