Return-Path: <wjn740@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61BBFE0059B
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 23:23:19 -0800 (PST)
Received: by pbcc11 with SMTP id c11so2285272pbc.35
	for <yocto@yoctoproject.org>; Wed, 01 Feb 2012 23:23:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=97w8eVZDeW048JDpu9/V2NSWnXntBF2iqtK9XRWfHcA=;
	b=VQ1ZnyS0ahGuAAHB/Byw3uA9iHPQf1ekKuca2V4f8mh7L+TU2lRrV3SjvRIsVOMnil
	FcRstNur1hzoKAKtL9zlKgk+gHqKk4Sz15emQtcvnU5gbvCxAPbfTC46pKASiCyK1QEF
	yT7hWZ6P0+hUoWRlaavLTtsGQ6cukxhLenX+8=
MIME-Version: 1.0
Received: by 10.68.74.72 with SMTP id r8mr5606100pbv.8.1328167398750; Wed, 01
	Feb 2012 23:23:18 -0800 (PST)
Received: by 10.142.158.5 with HTTP; Wed, 1 Feb 2012 23:23:18 -0800 (PST)
In-Reply-To: <CANJvwR-+LgCHHd+SywzD2yri6h_dg-a7rnQfdGN7UT=LxQy-yw@mail.gmail.com>
References: <CA+FcS-zVQJq=r-Fgn1Y8NC0M3EAobMwYPoDK2V7Q0jD40b_n6Q@mail.gmail.com>
	<4F28DBE3.4010107@linux.intel.com>
	<CANJvwR-+LgCHHd+SywzD2yri6h_dg-a7rnQfdGN7UT=LxQy-yw@mail.gmail.com>
Date: Thu, 2 Feb 2012 15:23:18 +0800
Message-ID: <CA+FcS-wto0rJFj-sjtwkJKkzmTfL7fb1BfaK5L10B4zE+qV1Vg@mail.gmail.com>
From: "James W." <wjn740@gmail.com>
To: Sathishkumar Duraisamy <bewithsathish@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Build Error
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 02 Feb 2012 07:23:19 -0000
Content-Type: multipart/alternative; boundary=f46d040f9ca2013ba804b7f612d3

--f46d040f9ca2013ba804b7f612d3
Content-Type: text/plain; charset=UTF-8

thank you for everybody.

On Wed, Feb 1, 2012 at 6:14 PM, Sathishkumar Duraisamy <
bewithsathish@gmail.com> wrote:

> On Wed, Feb 1, 2012 at 11:59 AM, Joshua Lock <josh@linux.intel.com> wrote:
> > Hi James,
> >
> >
> > On 31/01/12 22:20, James W. wrote:
> >>
> >> hi all:
> >> i am new comer.
> >> i meet  a error:
> >>
> >> NOTE: package pciutils-3.1.9-r0: task do_configure: Started
> >> ERROR: Function failed: do_configure (see
> >>
> >>
> /home/jwang5/poky-build/tmp/work/i586-poky-linux/pciutils-3.1.9-r0/temp/log.do_configure.9978
> >> for further information)
> >> ERROR: Logfile of failure stored in:
> >>
> >>
> /home/jwang5/poky-build/tmp/work/i586-poky-linux/pciutils-3.1.9-r0/temp/log.do_configure.9978
> >> Log data follows:
> >> | ERROR: Function failed: do_configure (see
> >>
> >>
> /home/jwang5/poky-build/tmp/work/i586-poky-linux/pciutils-3.1.9-r0/temp/log.do_configure.9978
> >> for further information)
> >> | Configuring libpci for your system..../configure: 1: Syntax error:
> >> Unterminated quoted string
> >
> >
> > I cam across this error today also, I'd be willing to bet the OS you're
> > building on is using the dash shell (Ubuntu)?
>
> Well, if this error is because of dash, please use the following
> comments to change to bash,
>
> $sudo rm /usr/bin/sh
> $sudo ln -s /usr/bin/bash /usr/bin/sh
>
> There is also, other way to change to dash to bash through package
> configure. But any way, above will done through automated scripts. So,
> above is good. You can also make sure you are working on bash shell,
> by simply, ls -al /usr/bin/sh, which shows whether the link is
> pointing to bash or dash.
> --
> Regards,
> Sathishkumar D
> http://flowersopenlab.weebly.com/
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f46d040f9ca2013ba804b7f612d3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

thank you for everybody.<br><br><div class=3D"gmail_quote">On Wed, Feb 1, 2=
012 at 6:14 PM, Sathishkumar Duraisamy <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:bewithsathish@gmail.com">bewithsathish@gmail.com</a>&gt;</span> wrote:<=
br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Wed, Feb 1, 2012 at 11:=
59 AM, Joshua Lock &lt;<a href=3D"mailto:josh@linux.intel.com">josh@linux.i=
ntel.com</a>&gt; wrote:<br>

&gt; Hi James,<br>
&gt;<br>
&gt;<br>
&gt; On 31/01/12 22:20, James W. wrote:<br>
&gt;&gt;<br>
&gt;&gt; hi all:<br>
&gt;&gt; i am new comer.<br>
&gt;&gt; i meet =C2=A0a error:<br>
&gt;&gt;<br>
&gt;&gt; NOTE: package pciutils-3.1.9-r0: task do_configure: Started<br>
&gt;&gt; ERROR: Function failed: do_configure (see<br>
&gt;&gt;<br>
&gt;&gt; /home/jwang5/poky-build/tmp/work/i586-poky-linux/pciutils-3.1.9-r0=
/temp/log.do_configure.9978<br>
&gt;&gt; for further information)<br>
&gt;&gt; ERROR: Logfile of failure stored in:<br>
&gt;&gt;<br>
&gt;&gt; /home/jwang5/poky-build/tmp/work/i586-poky-linux/pciutils-3.1.9-r0=
/temp/log.do_configure.9978<br>
&gt;&gt; Log data follows:<br>
&gt;&gt; | ERROR: Function failed: do_configure (see<br>
&gt;&gt;<br>
&gt;&gt; /home/jwang5/poky-build/tmp/work/i586-poky-linux/pciutils-3.1.9-r0=
/temp/log.do_configure.9978<br>
&gt;&gt; for further information)<br>
&gt;&gt; | Configuring libpci for your system..../configure: 1: Syntax erro=
r:<br>
&gt;&gt; Unterminated quoted string<br>
&gt;<br>
&gt;<br>
&gt; I cam across this error today also, I&#39;d be willing to bet the OS y=
ou&#39;re<br>
&gt; building on is using the dash shell (Ubuntu)?<br>
<br>
</div>Well, if this error is because of dash, please use the following<br>
comments to change to bash,<br>
<br>
$sudo rm /usr/bin/sh<br>
$sudo ln -s /usr/bin/bash /usr/bin/sh<br>
<br>
There is also, other way to change to dash to bash through package<br>
configure. But any way, above will done through automated scripts. So,<br>
above is good. You can also make sure you are working on bash shell,<br>
by simply, ls -al /usr/bin/sh, which shows whether the link is<br>
pointing to bash or dash.<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
Regards,<br>
Sathishkumar D<br>
<a href=3D"http://flowersopenlab.weebly.com/" target=3D"_blank">http://flow=
ersopenlab.weebly.com/</a><br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5">_____________________=
__________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br>

--f46d040f9ca2013ba804b7f612d3--
