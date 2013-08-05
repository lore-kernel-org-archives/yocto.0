Return-Path: <andrei@gherzan.ro>
Received: from mail-we0-f181.google.com (mail-we0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CF36E003D4
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2013 03:12:50 -0700 (PDT)
Received: by mail-we0-f181.google.com with SMTP id p58so2203253wes.26
	for <yocto@yoctoproject.org>; Mon, 05 Aug 2013 03:12:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=AfCOX4L42smGUoUnqddWJHrY1vwtr4Klv1XgYpHWVMA=;
	b=MY36OB4IvC6l96Zv8qZvzWsvbJexcGChc0OYRi6H56Bm32SvKxylFoaCK7p8dBWArL
	AaPcdil5K76+L17ZE/mJ1DwJ4QBKOrKvY0JFEfmX8Aso9PjrFTHSVd1FiIM0nM2l9KvE
	+FPbmqLmvbQAjf2PN6uhXLrwd6KBcXAPzj1DJT/QNIeuXkh4Pdsp9yc9Pg2J4+/0Bbde
	g8IKcCApzND5VBYS4yxrC0jTn13VwC3v/qat8Zrb0OyiMmzZriFjiVVSi4nO9rtadFLp
	18fUap5QzW5HPlwKFveCx0T52EpxmvG+swWfIdf2ICPwFJefsQqrj/0BFAnB23eGQvgC
	Cigw==
X-Received: by 10.194.192.1 with SMTP id hc1mr9679899wjc.39.1375697569534;
	Mon, 05 Aug 2013 03:12:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.51.201 with HTTP; Mon, 5 Aug 2013 03:12:29 -0700 (PDT)
X-Originating-IP: [5.14.140.223]
In-Reply-To: <CAHLvMfb9FStHeLgHTzTGf13XWDqbLeoQi6BKXW=f5UV1S1w0EA@mail.gmail.com>
References: <CAHLvMfbjrLfbxt-9oa+WRgobux+o5B8RM6uDeLh+wB4GKN_nfQ@mail.gmail.com>
	<11658953.R2RoUsbsuX@helios>
	<CAHLvMfZwQj6B9uzZC9wPbSqr+n8609FA90tAy7jPHp9mqDjPfw@mail.gmail.com>
	<1680213.YPjXP0RsTC@helios>
	<CAHLvMfb9FStHeLgHTzTGf13XWDqbLeoQi6BKXW=f5UV1S1w0EA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 5 Aug 2013 13:12:29 +0300
Message-ID: <CAK18fxGgq4EjVZjr=1K6qTveoer6NedsRs0DyXDfBUdHvfz+6Q@mail.gmail.com>
To: Rich Bayliss <richbayliss@gmail.com>
X-Gm-Message-State: ALoCoQnuoki40ErGgmWU2MsslRsCFSkWi/ZwSJ0tVQfMlUc9BYpA9cvLRzVB+9e0f8Qk8RWhTgOS
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Read-Only RootFS is not read only
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
X-List-Received-Date: Mon, 05 Aug 2013 10:12:51 -0000
Content-Type: multipart/alternative; boundary=047d7bacc154f3661e04e3308c00

--047d7bacc154f3661e04e3308c00
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Aug 5, 2013 at 2:51 AM, Rich Bayliss <richbayliss@gmail.com> wrote:

> Sorry Paul - I am new to all this. I have checked and I am using Poky (1.4)
>
> Rich
>
> On 4 August 2013 23:35, Paul Eggleton <paul.eggleton@linux.intel.com>
> wrote:
> > On Sunday 04 August 2013 01:27:01 Rich Bayliss wrote:
> >> On 2 August 2013 13:47, Paul Eggleton <paul.eggleton@linux.intel.com>
> wrote:
> >> > On Tuesday 30 July 2013 11:43:43 Rich Bayliss wrote:
> >> >> I am trying to build for Raspberry Pi including "read-only-rootfs" in
> >> >> my image features. My aim is to have my SD Card read-only and at some
> >> >> point add a read-write overlay to certain directories. This should
> >> >> enable my system to boot fresh each time, and have some persistent
> >> >> storage for user files etc.
> >> >>
> >> >> However, after building my image I can SSH into the system and issue
> >> >> "touch test" to create a file in my home directory, then after a
> >> >> reboot it is still there. That isn't very read-only :)
> >> >>
> >> >> Am I missing something, or is this working incorrectly?
> >> >
> >> > It sounds like it's working incorrectly. Since meta-raspberrypi
> constructs
> >> > the SD card image using its own custom class I wonder if it has
> anything
> >> > to do with that. Andrei, do you know anything about this?
> >> >
> >> > BTW, are you using sysvinit or systemd in this image?
> >>
> >> I am using the standard sysvinit/systemd - I haven't specified either,
> >> so whichever is default.
> >
> > Except the default depends upon what DISTRO you are using. Which DISTRO
> are
> > you using - "poky" or something else?
> >
> > Cheers,
> > Paul
> >
> > --
> >
> > Paul Eggleton
> > Intel Open Source Technology Centre
>

Will check on this tomorrow. I've been on the roads these days.

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--047d7bacc154f3661e04e3308c00
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Mon, Aug 5, 2013 at 2:51 AM, Rich Bayliss <span dir=3D"ltr">&lt;=
<a href=3D"mailto:richbayliss@gmail.com" target=3D"_blank">richbayliss@gmai=
l.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Sorry Paul - I am new to all this. I have ch=
ecked and I am using Poky (1.4)<br>
<br>
Rich<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On 4 August 2013 23:35, Paul Eggleton &lt;<a href=3D"mailto:paul.eggleton@l=
inux.intel.com">paul.eggleton@linux.intel.com</a>&gt; wrote:<br>
&gt; On Sunday 04 August 2013 01:27:01 Rich Bayliss wrote:<br>
&gt;&gt; On 2 August 2013 13:47, Paul Eggleton &lt;<a href=3D"mailto:paul.e=
ggleton@linux.intel.com">paul.eggleton@linux.intel.com</a>&gt; wrote:<br>
&gt;&gt; &gt; On Tuesday 30 July 2013 11:43:43 Rich Bayliss wrote:<br>
&gt;&gt; &gt;&gt; I am trying to build for Raspberry Pi including &quot;rea=
d-only-rootfs&quot; in<br>
&gt;&gt; &gt;&gt; my image features. My aim is to have my SD Card read-only=
 and at some<br>
&gt;&gt; &gt;&gt; point add a read-write overlay to certain directories. Th=
is should<br>
&gt;&gt; &gt;&gt; enable my system to boot fresh each time, and have some p=
ersistent<br>
&gt;&gt; &gt;&gt; storage for user files etc.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; However, after building my image I can SSH into the syste=
m and issue<br>
&gt;&gt; &gt;&gt; &quot;touch test&quot; to create a file in my home direct=
ory, then after a<br>
&gt;&gt; &gt;&gt; reboot it is still there. That isn&#39;t very read-only :=
)<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Am I missing something, or is this working incorrectly?<b=
r>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; It sounds like it&#39;s working incorrectly. Since meta-raspb=
errypi constructs<br>
&gt;&gt; &gt; the SD card image using its own custom class I wonder if it h=
as anything<br>
&gt;&gt; &gt; to do with that. Andrei, do you know anything about this?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; BTW, are you using sysvinit or systemd in this image?<br>
&gt;&gt;<br>
&gt;&gt; I am using the standard sysvinit/systemd - I haven&#39;t specified=
 either,<br>
&gt;&gt; so whichever is default.<br>
&gt;<br>
&gt; Except the default depends upon what DISTRO you are using. Which DISTR=
O are<br>
&gt; you using - &quot;poky&quot; or something else?<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Paul<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt; Paul Eggleton<br>
&gt; Intel Open Source Technology Centre<br></div></div></blockquote><div><=
br></div><div style>Will check on this tomorrow. I&#39;ve been on the roads=
 these days.=A0</div></div><div><br></div>-- <br><div dir=3D"ltr"><div styl=
e=3D"text-align:center">

</div><div style=3D"text-align:center"><div align=3D"left" style=3D"font-fa=
mily:&#39;Times New Roman&#39;;font-size:medium"><b style=3D"color:rgb(51,5=
1,51);font-family:Arial;font-size:small;text-align:center">Andrei Gherzan</=
b><font face=3D"Arial" color=3D"#333333" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--047d7bacc154f3661e04e3308c00--
