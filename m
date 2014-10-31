Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EEB8E0084D; Thu, 30 Oct 2014 17:19:18 -0700 (PDT)
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
	*      [209.85.192.45 listed in list.dnswl.org]
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25157E007BA
	for <yocto@yoctoproject.org>; Thu, 30 Oct 2014 17:19:05 -0700 (PDT)
Received: by mail-qg0-f45.google.com with SMTP id z107so4879630qgd.32
	for <yocto@yoctoproject.org>; Thu, 30 Oct 2014 17:19:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=NqWO81/3spR239xT/vWEcZMGsCCZHP4WCWUOguMBvNU=;
	b=N5J+BvLH8hyYDC4GBqIwCV1txfkZ8Ozb7vuMMIAPvdnAWX+51PrTYK7BOieTM9LgwX
	KjFKzh6I/Pl+DqMsPGaOoybVKjLriyKP3ZJreZXMLUEdIXHqJS9esshmnVYkdQxJNkCh
	Y6fahP2ACIEyw2gLnUKmcpL8LK6uyaU/0f3qTCwHbqBC6pOoQ2VmcNF4EFM0icb/0led
	RRxnDyy22vCvsO775jKQtkVxZbyeBh1SPMTg4qCZYYYVf8YK8pE45yo305NU8QTIU3VO
	Qgs5BgRiheg1WgJgxWdofbiVjUN79BcZXFfPfCgu1UOtT2rwZoCbskIu4NsnypIFOS2E
	6g9w==
X-Gm-Message-State: ALoCoQnuCXfluUv1SnPQbZ9pzL1bB877dULJ/eTAmaG5JCRDz4L8awHtEZTWZLCePaAvd34xf/1B
X-Received: by 10.224.2.135 with SMTP id 7mr32411529qaj.64.1414714438215; Thu,
	30 Oct 2014 17:13:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.98.213 with HTTP; Thu, 30 Oct 2014 17:13:38 -0700 (PDT)
In-Reply-To: <CALXw4G7HBPGg-WPZf15Sg8Y7-cFKNK0_-bcKB=PFQZ40qpCuZQ@mail.gmail.com>
References: <CALXw4G7HBPGg-WPZf15Sg8Y7-cFKNK0_-bcKB=PFQZ40qpCuZQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 31 Oct 2014 00:13:38 +0000
Message-ID: <CAJTo0LamCUm7qwjM0rAdtUw=fJhkXYzDKUtg79HN+YS+9LGxJw@mail.gmail.com>
To: Michael Gloff <mgloff@emacinc.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Build warning chown/chmod
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
X-List-Received-Date: Fri, 31 Oct 2014 00:19:18 -0000
Content-Type: multipart/alternative; boundary=001a11c3defa8c8bbe0506acdf8c

--001a11c3defa8c8bbe0506acdf8c
Content-Type: text/plain; charset=UTF-8

On 30 October 2014 19:46, Michael Gloff <mgloff@emacinc.com> wrote:

> copyfile: failed to chown/chmod
> /opt/oe/build/tmp/work/core2-32-emac-linux/gcc-runtime/4.8.2-r0/gcc-4.8.2/build.i586-emac-linux.i586-emac-linux/gcc/config/sparc/linux64.h
>
> I suspect it is something with my development machine as this doesn't
> happen on the build server. For some reason when any patch is applied, the
> ownership of the patched files gets changed to root, thus the warning. I've
> cleared the build directory to no avail. I'm working with daisy branch of
> both poky and meta-oe. Has anyone else seen this before or possibly know
> what might be the cause?
>

Check for sticky bits on directories such as /opt or /opt/oe.

Ross

--001a11c3defa8c8bbe0506acdf8c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 30 October 2014 19:46, Michael Gloff <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:mgloff@emacinc.com" target=3D"_blank">mgloff@emacinc.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div>copyfile: failed to chown/c=
hmod /opt/oe/build/tmp/work/core2-32-emac-linux/gcc-runtime/4.8.2-r0/gcc-4.=
8.2/build.i586-emac-linux.i586-emac-linux/gcc/config/sparc/linux64.h<br><br=
></div>I suspect it is something with my development machine as this doesn&=
#39;t happen on the build server. For some reason when any patch is applied=
, the ownership of the patched files gets changed to root, thus the warning=
. I&#39;ve cleared the build directory to no avail. I&#39;m working with da=
isy branch of both poky and meta-oe. Has anyone else seen this before or po=
ssibly know what might be the cause?<span class=3D"HOEnZb"><font color=3D"#=
888888"><br></font></span></blockquote></div><br>Check for sticky bits on d=
irectories such as /opt or /opt/oe.</div><div class=3D"gmail_extra"><br></d=
iv><div class=3D"gmail_extra">Ross</div></div>

--001a11c3defa8c8bbe0506acdf8c--
