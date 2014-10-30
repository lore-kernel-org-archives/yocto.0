Return-Path: <mgloff@emacinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9674E0084D; Thu, 30 Oct 2014 12:47:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28CCDE007BA
	for <yocto@yoctoproject.org>; Thu, 30 Oct 2014 12:46:58 -0700 (PDT)
Received: by mail-ig0-f175.google.com with SMTP id h3so4028868igd.2
	for <yocto@yoctoproject.org>; Thu, 30 Oct 2014 12:46:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=0hszLbX+YPmWgqTDOs5dG25HUxtwRFShbMQFkSR5984=;
	b=YDIgy/mAAPiGVMfqnKzmfG21BL2AO6s0lxwhOhxxBltWAa7T04YG8PwKTYsD/r6Kmd
	xHVPCgJOEer+BxkAwcPituSL4asK7sPa/iQJal4NmTSTz0gWhYndtUmkBdeBDPFxKFEu
	zIvWLSI9SRic9hBmJdnZS67V+/f+5G9Wq8mLQv05I/AQeMC3z13rvytRD1gRfvQy90ww
	rOUR213wb8fpFNYztqvf9VAtEJ4vuwPIWj46Js+r77iqx25BSG1d7CQRdWQGrduOK7Hm
	eO4HlsYUtM39NP9cAcjeDG/R3cgj4SeBtEDPyti6m32Xtw7t74b9XzzK/zLZ8jI2/b2D
	RXKQ==
X-Gm-Message-State: ALoCoQnTMQTT3pJ81wXIPudVgSvK8Jd26yoSPLKYoBzP2CNPI2ihoTZtR/9fbhVuqESFkwBLis78
MIME-Version: 1.0
X-Received: by 10.51.16.99 with SMTP id fv3mr529298igd.31.1414698418262; Thu,
	30 Oct 2014 12:46:58 -0700 (PDT)
Received: by 10.107.148.145 with HTTP; Thu, 30 Oct 2014 12:46:58 -0700 (PDT)
Date: Thu, 30 Oct 2014 14:46:58 -0500
Message-ID: <CALXw4G7HBPGg-WPZf15Sg8Y7-cFKNK0_-bcKB=PFQZ40qpCuZQ@mail.gmail.com>
From: Michael Gloff <mgloff@emacinc.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Build warning chown/chmod
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
X-List-Received-Date: Thu, 30 Oct 2014 19:47:01 -0000
Content-Type: multipart/alternative; boundary=001a1134a522af94af0506a924f5

--001a1134a522af94af0506a924f5
Content-Type: text/plain; charset=UTF-8

I'm getting a lot of warnings of

copyfile: failed to chown/chmod
/opt/oe/build/tmp/work/core2-32-emac-linux/gcc-runtime/4.8.2-r0/gcc-4.8.2/build.i586-emac-linux.i586-emac-linux/gcc/config/sparc/linux64.h

I suspect it is something with my development machine as this doesn't
happen on the build server. For some reason when any patch is applied, the
ownership of the patched files gets changed to root, thus the warning. I've
cleared the build directory to no avail. I'm working with daisy branch of
both poky and meta-oe. Has anyone else seen this before or possibly know
what might be the cause?

Michael Gloff

--001a1134a522af94af0506a924f5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I&#39;m getting a lot of warnings of<br><br>copy=
file: failed to chown/chmod /opt/oe/build/tmp/work/core2-32-emac-linux/gcc-=
runtime/4.8.2-r0/gcc-4.8.2/build.i586-emac-linux.i586-emac-linux/gcc/config=
/sparc/linux64.h<br><br></div>I suspect it is something with my development=
 machine as this doesn&#39;t happen on the build server. For some reason wh=
en any patch is applied, the ownership of the patched files gets changed to=
 root, thus the warning. I&#39;ve cleared the build directory to no avail. =
I&#39;m working with daisy branch of both poky and meta-oe. Has anyone else=
 seen this before or possibly know what might be the cause?<br><br></div>Mi=
chael Gloff<br></div>

--001a1134a522af94af0506a924f5--
