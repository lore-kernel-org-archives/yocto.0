Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF8E2E00848; Mon, 27 Oct 2014 13:08:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qa0-f46.google.com (mail-qa0-f46.google.com
	[209.85.216.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33148E007A0
	for <yocto@yoctoproject.org>; Mon, 27 Oct 2014 13:07:56 -0700 (PDT)
Received: by mail-qa0-f46.google.com with SMTP id s7so4362209qap.5
	for <yocto@yoctoproject.org>; Mon, 27 Oct 2014 13:07:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=3n4HTwbGMRDyvmECd9kd3YuYPZbxZ7ywa0RsLXlEytw=;
	b=eTGJk2eXDHXOG0ChRX5JlqIw518ReAfFmyAwg/QdW3oK/BDs7E2PTJfKrt8FIAxOGw
	PFZIljBoc2cOO7V1LxGQ7eDf+F4+0OQ/yZcBKMXcNO+29GH+AKavzYN/E6q4pjUAgDRT
	JFo4cL8pp5aAp/prGdaHEXKWJzWrHJVK0NceX4PT61N46DAb32nxuk6RG5VP4YcXQrkQ
	6W2UzeCA6t4foZmUo/r5CujUcoouw/lbVW2iguhUd55smBxAWTpstSG5QGeJQ+TGQd7g
	a0KHNhlNTxG9kt+H5SBc/xb72UNoirJwWe0g5QfwJWz3eJ3NYR4eFtRTAlvXnnQd/nbp
	J1hQ==
X-Gm-Message-State: ALoCoQlIv7jv+6yKB3L1jBWu5o/0V5pLVmATV4a46ECUUuct09JQDieuD6YM1jl0CDzzH7IrcCwC
X-Received: by 10.224.79.79 with SMTP id o15mr36555989qak.93.1414440475740;
	Mon, 27 Oct 2014 13:07:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.92.179 with HTTP; Mon, 27 Oct 2014 13:07:22 -0700 (PDT)
In-Reply-To: <544E9F93.1050808@mlbassoc.com>
References: <544E77DC.5080408@mlbassoc.com> <544E890A.5000402@linux.intel.com>
	<544E9F93.1050808@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 27 Oct 2014 20:07:22 +0000
Message-ID: <CAJTo0Lb1SdFRQizn9dGGo45y-m5wPh9jd8C6KxYnkx-NvtJAPg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Is the build system SCM sensitive?
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
X-List-Received-Date: Mon, 27 Oct 2014 20:08:02 -0000
Content-Type: multipart/alternative; boundary=047d7bdc78f81ce14505066d1671

--047d7bdc78f81ce14505066d1671
Content-Type: text/plain; charset=UTF-8

On 27 October 2014 19:40, Gary Thomas <gary@mlbassoc.com> wrote:

> I think I know what triggered this - a recent change in bitbake.conf
> redefined BUILD_CPP (and others).  I had merged this change some six
> hours before my strange build and had been building many other recipes
> (also python with a similar set of dependencies) a number of times
> before I touched the python-pygtk recipe.  Some dependency in that
> recipe set off the rebuild storm that my other recipes had not.
>

Ah yes, welcome back to master.  There's been stuff building up for a
while.  :)

This is where I point out that master between a release and M1 is known to
be "volatile".  Whilst we obviously endeavour for it to be always
buildable, deep and fundamental changes will be going in sooner rather than
later.

(ie this might be time to dust of my libexecdir-changing series)

Ross

--047d7bdc78f81ce14505066d1671
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 27 October 2014 19:40, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mail=
to:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div id=3D":24d" class=3D"a3s" style=
=3D"overflow:hidden">I think I know what triggered this - a recent change i=
n bitbake.conf<br>
redefined BUILD_CPP (and others).=C2=A0 I had merged this change some six<b=
r>
hours before my strange build and had been building many other recipes<br>
(also python with a similar set of dependencies) a number of times<br>
before I touched the python-pygtk recipe.=C2=A0 Some dependency in that<br>
recipe set off the rebuild storm that my other recipes had not.</div></bloc=
kquote></div><br>Ah yes, welcome back to master.=C2=A0 There&#39;s been stu=
ff building up for a while. =C2=A0:)</div><div class=3D"gmail_extra"><br></=
div><div class=3D"gmail_extra">This is where I point out that master betwee=
n a release and M1 is known to be &quot;volatile&quot;.=C2=A0 Whilst we obv=
iously endeavour for it to be always buildable, deep and fundamental change=
s will be going in sooner rather than later.</div><div class=3D"gmail_extra=
"><br></div><div class=3D"gmail_extra">(ie this might be time to dust of my=
 libexecdir-changing series)</div><div class=3D"gmail_extra">=C2=A0</div><d=
iv class=3D"gmail_extra">Ross</div></div>

--047d7bdc78f81ce14505066d1671--
