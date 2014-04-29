Return-Path: <mahyar@boundarydevices.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AC42E00C66; Tue, 29 Apr 2014 12:40:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C917E00C64
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 12:39:58 -0700 (PDT)
Received: by mail-la0-f50.google.com with SMTP id gl10so514318lab.37
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 12:39:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=+0aYGyoH0cDzW+yI1wuCaSKa2mwo+iCtxs55slFCo8o=;
	b=caHbt4hB8KbHlg8OBGfkeZc+6NifxA3LFg/ttkY5mmFDEWLYz0ugykKPbVdDZPpOIo
	8qmdGppKdExaSwfTGCZJJ6XMuc0LzJLigxuU4nQIPHiKJBD7bYORuuHNdODlH051DgD7
	g3Qj4FRr9+qDdXwVAF6v+8XPeaC1oUTM99Y41qriNKAQdBfu5LUo7Vv+q3f4Iem17MPY
	+3rt+MfuJTlZ7/XtVrUc4YHb2+tv14g/VBkZjI/W1zjOHPP9K7wT/SrqUhukyw4JSASv
	F7wPycjPqisl8RzCMc3Zt3A5c4knVqGTTBBTBx4vOrsvH2KPzzSdi2mXOgo9fKL9Q7eb
	pDPg==
X-Gm-Message-State: ALoCoQkjS4Ypz5F283VRZXAmrPZalxhXIHnoFW9AP7w+2fj0kHbCmwEGXZlHf6GYp95JE0Hi30S8
MIME-Version: 1.0
X-Received: by 10.112.118.198 with SMTP id ko6mr741082lbb.6.1398800397256;
	Tue, 29 Apr 2014 12:39:57 -0700 (PDT)
Received: by 10.112.88.164 with HTTP; Tue, 29 Apr 2014 12:39:57 -0700 (PDT)
Date: Tue, 29 Apr 2014 12:39:57 -0700
Message-ID: <CAOJo16WHnFc+aEfBX7jMSPELXUXzgpssv_QzD1RtkRkxEnP7rw@mail.gmail.com>
From: Mahyar Yaghmaee <mahyar@boundarydevices.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: fsl-image-multimedia-full build failure on master branch
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
X-List-Received-Date: Tue, 29 Apr 2014 19:40:03 -0000
Content-Type: multipart/alternative; boundary=047d7bfd022aca5f2b04f8339851

--047d7bfd022aca5f2b04f8339851
Content-Type: text/plain; charset=UTF-8

Hello,

I can not build fsl-image-multimedia-full as "fsl_debug.h" seems not to be
present.
here's the error log:


|
/home/mahyar/yocto/y02/build/tmp/work/nitrogen6x-poky-linux-gnueabi/gst-fsl-plugin/3.0.10-r0/gst-fsl-plugins-3.0.10/libs/vss/mfw_gst_vss_common.c:52:23:
fatal error: fsl_debug.h: No such file or directory
|  #include "fsl_debug.h"
|                        ^
| compilation terminated.
|
/home/mahyar/yocto/y02/build/tmp/work/nitrogen6x-poky-linux-gnueabi/gst-fsl-plugin/3.0.10-r0/gst-fsl-plugins-3.0.10/libs/vss/mfw_gst_video_surface.c:57:23:
fatal error: fsl_debug.h: No such file or directory
|  #include "fsl_debug.h"
|                        ^
| compilation terminated.
| make[1]: *** [libgstfsl_0.10_la-mfw_gst_video_surface.lo] Error 1
| make[1]: *** Waiting for unfinished jobs....
| make[1]: *** [libgstfsl_0.10_la-mfw_gst_vss_common.lo] Error 1
| make[1]: Leaving directory
`/home/mahyar/yocto/y02/build/tmp/work/nitrogen6x-poky-linux-gnueabi/gst-fsl-plugin/3.0.10-r0/build/libs'
| make: *** [all-recursive] Error 1
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.



Any idea what's the problem here?

Regards,
Mahyar

--047d7bfd022aca5f2b04f8339851
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello,<br><br></div>I can not build fsl-ima=
ge-multimedia-full as &quot;fsl_debug.h&quot; seems not to be present.<br><=
/div><div>here&#39;s the error log:<br><br></div><div><br>| /home/mahyar/yo=
cto/y02/build/tmp/work/nitrogen6x-poky-linux-gnueabi/gst-fsl-plugin/3.0.10-=
r0/gst-fsl-plugins-3.0.10/libs/vss/mfw_gst_vss_common.c:52:23: fatal error:=
 fsl_debug.h: No such file or directory<br>
|=C2=A0 #include &quot;fsl_debug.h&quot;<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^<br>| compilation terminated.<br>| /home=
/mahyar/yocto/y02/build/tmp/work/nitrogen6x-poky-linux-gnueabi/gst-fsl-plug=
in/3.0.10-r0/gst-fsl-plugins-3.0.10/libs/vss/mfw_gst_video_surface.c:57:23:=
 fatal error: fsl_debug.h: No such file or directory<br>
|=C2=A0 #include &quot;fsl_debug.h&quot;<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^<br>| compilation terminated.<br>| make[=
1]: *** [libgstfsl_0.10_la-mfw_gst_video_surface.lo] Error 1<br>| make[1]: =
*** Waiting for unfinished jobs....<br>| make[1]: *** [libgstfsl_0.10_la-mf=
w_gst_vss_common.lo] Error 1<br>
| make[1]: Leaving directory `/home/mahyar/yocto/y02/build/tmp/work/nitroge=
n6x-poky-linux-gnueabi/gst-fsl-plugin/3.0.10-r0/build/libs&#39;<br>| make: =
*** [all-recursive] Error 1<br>| ERROR: oe_runmake failed<br>| WARNING: exi=
t code 1 from a shell command.<br>
<br><br><br></div>Any idea what&#39;s the problem here?<br><br></div>Regard=
s,<br>Mahyar<br><div><div><div><br><br><div><div><div><br><br></div>
</div></div></div></div></div></div>

--047d7bfd022aca5f2b04f8339851--
