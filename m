Return-Path: <andrei@gherzan.ro>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 693F6E002AB
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 11:59:13 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so4167202yhf.35
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 11:59:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=5a8Sis7iWHREJh61R62vmbi5MI+tEHJS4AYLCkIHgqc=;
	b=IvBj5CXbdgDGkVF16YsnHdh/V9NRaRQ00iSMigdV0IN172DWiuOlWxVrKZFtJxZcZY
	W9XW9KpjSnskjfYFue8LG1/2KcMUBTdSJ1IxOYsYNtH0tc7bSqi2yMZL8Nt42Stb9oN5
	MSDthGk2IcbQqTO6rVMyAdT/QO4pBVQ7uL6DqhMHbijxKKQsL7/kbjU1tsEbScl2R+Ln
	YmBmyGtJdU1jgSr2Th17DEOfxCA6p8mOLve+RWAxt2o4xqb6IBUAQuqN3i/op44To3V7
	ixGggkWl09hTh/4zM1IJhDn/R5e990UYzows71rMOsjSPGRl706oyd9nswiNQMZ3rajA
	ZMXQ==
Received: by 10.50.46.232 with SMTP id y8mr6813291igm.57.1344884352516; Mon,
	13 Aug 2012 11:59:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.63.50 with HTTP; Mon, 13 Aug 2012 11:58:52 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <7CF86E24-B6F0-4B99-BBB2-7E9BB4C96F0B@keylevel.com>
References: <5029026B.90602@communistcode.co.uk>
	<CAK18fxEWCkDGeG=TWnS-YKUQdwp+bQLkFGDD3cPwWp96ghRt6w@mail.gmail.com>
	<5029088A.4030909@communistcode.co.uk>
	<7CF86E24-B6F0-4B99-BBB2-7E9BB4C96F0B@keylevel.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 13 Aug 2012 21:58:52 +0300
Message-ID: <CAK18fxHooAxhXxLBgytn5RuyxT2_UqoVoyMk6v+3uO73_xBrwg@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
X-Gm-Message-State: ALoCoQlJcNfJEY6mSmsuZ/+nc7hlzfH8Wlh08C22N1oVBvwK4YXXziOzZjWaZLWZYyngk3ZpCdoM
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Raspberry Pi do_fetch failure
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
X-List-Received-Date: Mon, 13 Aug 2012 18:59:13 -0000
Content-Type: multipart/alternative; boundary=14dae9340cbb18824504c72a4a7c

--14dae9340cbb18824504c72a4a7c
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 13, 2012 at 7:38 PM, Chris Tapp <opensource@keylevel.com> wrote=
:

> On 13 Aug 2012, at 15:00, Jack Mitchell wrote:
>
> > On 13/08/12 14:51, Andrei Gherzan wrote:
> >>
> >> On Mon, Aug 13, 2012 at 4:34 PM, Jack Mitchell <ml@communistcode.co.uk=
<mailto:
> ml@communistcode.co.uk>> wrote:
> >>
> >>    Good afternoon everyone,
> >>
> >>    I am trying (yet again) to get yocto to build for the Raspberry Pi
> >>    and I am falling at the do_fetch hurdle on the RasPi kernel.
> >>
> >>       ERROR: Fetcher failure: Fetch command export HOME=3D"/home/jack"=
;
> >>       export SSH_AGENT_PID=3D"1350"; export
> >>       SSH_AUTH_SOCK=3D"/home/jack/.cache/keyring-fjEm9a/ssh"; export
> >>
>  GIT_CONFIG=3D"/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_6=
4-linux/etc/gitconfig";
> >>       export
> >>
>  PATH=3D"/home/jack/Projects/poky-rasp/scripts:/home/jack/Projects/poky-r=
asp/raspberry/tmp/sysroots/x86_64-linux/usr/bin/armv6-vfp-poky-linux-gnueab=
i:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/raspberrypi/usr/bin/=
crossscripts:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-li=
nux/usr/sbin:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-li=
nux/usr/bin:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-lin=
ux/sbin:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-linux//=
bin:/home/jack/Projects/poky-rasp/scripts:/home/jack/Projects/poky-rasp/bit=
bake/bin/:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr=
/bin/core_perl";
> >>       git clone --bare --mirror
> >>    git://github.com/raspberrypi/linux.git
> >>    <http://github.com/raspberrypi/linux.git>
> >>
> >>
> >> Does this work in a shell? Just try to clone it on your computer.
> >>
> >> ag
> >
> > Yes, cloning it now without issues - it took a while to get going and
> someone has suggested that it might be timing out within bitbake...
>
>
> I've had similar issues in the past that seemed to be caused by Github. I=
f
> I ran a manual fetch I could see errors relating to compressed folders (I
> think - was a while back) that couldn't be found. It sorted itself after =
a
> day or so.
>
>
I sent an email to github. Will keep you posted.

ag

--14dae9340cbb18824504c72a4a7c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><div class=3D"gmail_quote">On Mon, Aug 13, 2012 at 7:38 PM, Chris Tapp =
<span dir=3D"ltr">&lt;<a href=3D"mailto:opensource@keylevel.com" target=3D"=
_blank">opensource@keylevel.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">

<div class=3D"im">On 13 Aug 2012, at 15:00, Jack Mitchell wrote:<br>
<br>
&gt; On 13/08/12 14:51, Andrei Gherzan wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Mon, Aug 13, 2012 at 4:34 PM, Jack Mitchell &lt;<a href=3D"mail=
to:ml@communistcode.co.uk">ml@communistcode.co.uk</a> &lt;mailto:<a href=3D=
"mailto:ml@communistcode.co.uk">ml@communistcode.co.uk</a>&gt;&gt; wrote:<b=
r>


&gt;&gt;<br>
&gt;&gt; =A0 =A0Good afternoon everyone,<br>
&gt;&gt;<br>
&gt;&gt; =A0 =A0I am trying (yet again) to get yocto to build for the Raspb=
erry Pi<br>
&gt;&gt; =A0 =A0and I am falling at the do_fetch hurdle on the RasPi kernel=
.<br>
&gt;&gt;<br>
&gt;&gt; =A0 =A0 =A0 ERROR: Fetcher failure: Fetch command export HOME=3D&q=
uot;/home/jack&quot;;<br>
&gt;&gt; =A0 =A0 =A0 export SSH_AGENT_PID=3D&quot;1350&quot;; export<br>
&gt;&gt; =A0 =A0 =A0 SSH_AUTH_SOCK=3D&quot;/home/jack/.cache/keyring-fjEm9a=
/ssh&quot;; export<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0GIT_CONFIG=3D&quot;/home/jack/Projects/poky-ras=
p/raspberry/tmp/sysroots/x86_64-linux/etc/gitconfig&quot;;<br>
&gt;&gt; =A0 =A0 =A0 export<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0PATH=3D&quot;/home/jack/Projects/poky-rasp/scri=
pts:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-linux/usr/b=
in/armv6-vfp-poky-linux-gnueabi:/home/jack/Projects/poky-rasp/raspberry/tmp=
/sysroots/raspberrypi/usr/bin/crossscripts:/home/jack/Projects/poky-rasp/ra=
spberry/tmp/sysroots/x86_64-linux/usr/sbin:/home/jack/Projects/poky-rasp/ra=
spberry/tmp/sysroots/x86_64-linux/usr/bin:/home/jack/Projects/poky-rasp/ras=
pberry/tmp/sysroots/x86_64-linux/sbin:/home/jack/Projects/poky-rasp/raspber=
ry/tmp/sysroots/x86_64-linux//bin:/home/jack/Projects/poky-rasp/scripts:/ho=
me/jack/Projects/poky-rasp/bitbake/bin/:/usr/local/bin:/usr/bin:/bin:/usr/l=
ocal/sbin:/usr/sbin:/sbin:/usr/bin/core_perl&quot;;<br>


&gt;&gt; =A0 =A0 =A0 git clone --bare --mirror<br>
&gt;&gt; =A0 =A0git://<a href=3D"http://github.com/raspberrypi/linux.git" t=
arget=3D"_blank">github.com/raspberrypi/linux.git</a><br>
&gt;&gt; =A0 =A0&lt;<a href=3D"http://github.com/raspberrypi/linux.git" tar=
get=3D"_blank">http://github.com/raspberrypi/linux.git</a>&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Does this work in a shell? Just try to clone it on your computer.<=
br>
&gt;&gt;<br>
&gt;&gt; ag<br>
&gt;<br>
&gt; Yes, cloning it now without issues - it took a while to get going and =
someone has suggested that it might be timing out within bitbake...<br>
<br>
<br>
</div>I&#39;ve had similar issues in the past that seemed to be caused by G=
ithub. If I ran a manual fetch I could see errors relating to compressed fo=
lders (I think - was a while back) that couldn&#39;t be found. It sorted it=
self after a day or so.<br>

<br></blockquote><div>=A0</div><div>I sent an email to github. Will keep yo=
u posted.=A0</div><div><br></div><div>ag</div></div>

--14dae9340cbb18824504c72a4a7c--
