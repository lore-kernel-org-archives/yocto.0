Return-Path: <jfabernathy@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85561E004D2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 06:30:26 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vbbfc21 with SMTP id fc21so1439030vbb.35
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 06:30:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=NDYlKiy0g/RpF+OP5umIPv+312VBRfd8zX+XnOjD/Cg=;
	b=Oe1ZI2JtjFU7qtzORqJ16sdRGdbQbCLYwnQFKqJPW5cuRy6Y3WaM/qqJkbi53nUlgu
	ZEATgMXw/G7chDWsXPQH2B+iV9D0wo7x1P9jZ/qi9A7iVvrP3P8x6oHHEe07o+sBpvIA
	fY21NlJCXmSI379XTdnBu8urjGRjEUOJM3HSo=
MIME-Version: 1.0
Received: by 10.52.29.7 with SMTP id f7mr10433412vdh.130.1326897025750; Wed,
	18 Jan 2012 06:30:25 -0800 (PST)
Received: by 10.52.180.69 with HTTP; Wed, 18 Jan 2012 06:30:25 -0800 (PST)
In-Reply-To: <CANFv2EmGr9fZOPbi1G+sWbWp0t6B-mijZ6z8iLLw7ZGN9OZy9Q@mail.gmail.com>
References: <CANFv2EmGr9fZOPbi1G+sWbWp0t6B-mijZ6z8iLLw7ZGN9OZy9Q@mail.gmail.com>
Date: Wed, 18 Jan 2012 09:30:25 -0500
Message-ID: <CANFv2E=WCVdtHMrf9VBC0JX+GjTRk+NZr+ZwA4F-x0SAnc3L1g@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: build failure on ubuntu 64bits development system
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
X-List-Received-Date: Wed, 18 Jan 2012 14:30:26 -0000
Content-Type: multipart/alternative; boundary=20cf307813e6df96ae04b6ce49f8

--20cf307813e6df96ae04b6ce49f8
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jan 18, 2012 at 7:55 AM, James Abernathy <jfabernathy@gmail.com>wrote:

> I just built a new development pc and installed Ubuntu 11.10 x64.  I
> wonder if there are any new requirements to building Yocto in that
> environment?  I got an error right off, but then it complete the first 63
> task and stopped successfully.  error below:
>
> jim@ubuntu:~/poky/build-cdv$ bitbake core-image-sato
> Pseudo is not present but is required, building this first before the main
> build
> Parsing recipes: 100% |#################################################|
> Time: 00:00:25
> Parsing of 797 .bb files complete (0 cached, 797 parsed). 1037 targets, 22
> skipped, 0 masked, 0 errors.
> ERROR: Execution of event handler 'run_buildstats' failed
> Traceback (most recent call last):
>   File "run_buildstats(e)", line 18, in
> run_buildstats(e=<bb.event.BuildStarted object at 0x4c338d0>)
>   File "buildstats.bbclass", line 21, in
> set_device(e=<bb.event.BuildStarted object at 0x4c338d0>)
> UnboundLocalError: local variable 'rdev' referenced before assignment
>
>
> Any ideas?
>
> JIm A
>

I went back and tried using the tarballs for poky edison and cedartrail bsp
and the errors don't occur.  So I'm guessing the issue isn't related to
Ubuntu 32 vs. 64 bit.

Jim A

--20cf307813e6df96ae04b6ce49f8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Wed, Jan 18, 2012 at 7:55 AM, James A=
bernathy <span dir=3D"ltr">&lt;<a href=3D"mailto:jfabernathy@gmail.com">jfa=
bernathy@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
I just built a new development pc and installed Ubuntu 11.10 x64.=A0 I wond=
er if there are any new requirements to building Yocto in that environment?=
=A0 I got an error right off, but then it complete the first 63 task and st=
opped successfully.=A0 error below:<br>

<br>jim@ubuntu:~/poky/build-cdv$ bitbake core-image-sato<br>Pseudo is not p=
resent but is required, building this first before the main build<br>Parsin=
g recipes: 100% |#################################################| Time: 0=
0:00:25<br>

Parsing of 797 .bb files complete (0 cached, 797 parsed). 1037 targets, 22 =
skipped, 0 masked, 0 errors.<br>ERROR: Execution of event handler &#39;run_=
buildstats&#39; failed<br>Traceback (most recent call last):<br>=A0 File &q=
uot;run_buildstats(e)&quot;, line 18, in run_buildstats(e=3D&lt;bb.event.Bu=
ildStarted object at 0x4c338d0&gt;)<br>

=A0 File &quot;buildstats.bbclass&quot;, line 21, in set_device(e=3D&lt;bb.=
event.BuildStarted object at 0x4c338d0&gt;)<br>UnboundLocalError: local var=
iable &#39;rdev&#39; referenced before assignment<br><br><br>Any ideas?<br>

<br>JIm A<br>
</blockquote></div><br>I went back and tried using the tarballs for poky ed=
ison and cedartrail bsp and the errors don&#39;t occur.=A0 So I&#39;m guess=
ing the issue isn&#39;t related to Ubuntu 32 vs. 64 bit.<br><br>Jim A<br>
<br>

--20cf307813e6df96ae04b6ce49f8--
