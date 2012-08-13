Return-Path: <andrei@gherzan.ro>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CEBAE002AB
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 06:51:39 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so3470759ghb.35
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 06:51:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=z4sJNWR1yBgdwwCY/B8+HskcLeQ3dSHcKmxKgkzf+KU=;
	b=IA/VVA9H/B+Vmg8JAJBze6h3F9Lkg84TRczannvsLHIL9lj0/M+rR4774bJWhhcjNd
	wz1ZxdYCQpoN2VSPIQcXyGmnuUw+zLvtpMJZ7MNiW+qYoKOHt9y03YhROlGx8svWmHWY
	wrDRKTQQrH0btt+AJIpj4Lc3+SxITzieRXdvOG7B4gGemBfgHsXyqL19PNYQEcW/047D
	TY8xSzwvkkDHOpR9hoExS8WoLNXlFN7TFJL+rJTBPvj65/o6BamPHS4gvlnh5SOp6ZSL
	GTxDjzdyPV6Fuw9nGIYoAOQn0Gvbw8VNEDF3ioPk9uGFfjy49Ui8puTAoq3GGc8JDqEO
	VsuA==
Received: by 10.42.97.70 with SMTP id m6mr4598857icn.27.1344865898640; Mon, 13
	Aug 2012 06:51:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.63.50 with HTTP; Mon, 13 Aug 2012 06:51:18 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <5029026B.90602@communistcode.co.uk>
References: <5029026B.90602@communistcode.co.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 13 Aug 2012 16:51:18 +0300
Message-ID: <CAK18fxEWCkDGeG=TWnS-YKUQdwp+bQLkFGDD3cPwWp96ghRt6w@mail.gmail.com>
To: ml@communistcode.co.uk
X-Gm-Message-State: ALoCoQm8Lhk/AeVnlG1wV8zAWeEQqP0KLrXMiZjmS8K3ws24WJLlvGah9SbUgYHlm1UuzbbrLO2u
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
X-List-Received-Date: Mon, 13 Aug 2012 13:51:39 -0000
Content-Type: multipart/alternative; boundary=20cf303bfbe028b46104c725feee

--20cf303bfbe028b46104c725feee
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Aug 13, 2012 at 4:34 PM, Jack Mitchell <ml@communistcode.co.uk>wrote:

> Good afternoon everyone,
>
> I am trying (yet again) to get yocto to build for the Raspberry Pi and I
> am falling at the do_fetch hurdle on the RasPi kernel.
>
>    ERROR: Fetcher failure: Fetch command export HOME="/home/jack";
>    export SSH_AGENT_PID="1350"; export
>    SSH_AUTH_SOCK="/home/jack/.**cache/keyring-fjEm9a/ssh"; export
>    GIT_CONFIG="/home/jack/**Projects/poky-rasp/raspberry/**
> tmp/sysroots/x86_64-linux/etc/**gitconfig";
>    export
>    PATH="/home/jack/Projects/**poky-rasp/scripts:/home/jack/**
> Projects/poky-rasp/raspberry/**tmp/sysroots/x86_64-linux/usr/**
> bin/armv6-vfp-poky-linux-**gnueabi:/home/jack/Projects/**
> poky-rasp/raspberry/tmp/**sysroots/raspberrypi/usr/bin/**
> crossscripts:/home/jack/**Projects/poky-rasp/raspberry/**
> tmp/sysroots/x86_64-linux/usr/**sbin:/home/jack/Projects/poky-**
> rasp/raspberry/tmp/sysroots/**x86_64-linux/usr/bin:/home/**
> jack/Projects/poky-rasp/**raspberry/tmp/sysroots/x86_64-**
> linux/sbin:/home/jack/**Projects/poky-rasp/raspberry/**
> tmp/sysroots/x86_64-linux//**bin:/home/jack/Projects/poky-**
> rasp/scripts:/home/jack/**Projects/poky-rasp/bitbake/**
> bin/:/usr/local/bin:/usr/bin:/**bin:/usr/local/sbin:/usr/sbin:**
> /sbin:/usr/bin/core_perl";
>    git clone --bare --mirror git://github.com/raspberrypi/**linux.git<http://github.com/raspberrypi/linux.git>


Does this work in a shell? Just try to clone it on your computer.

ag

--20cf303bfbe028b46104c725feee
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><div class=3D"gmail_quote">On Mon, Aug 13, 2012 at 4:34 PM, Jack Mitche=
ll <span dir=3D"ltr">&lt;<a href=3D"mailto:ml@communistcode.co.uk" target=
=3D"_blank">ml@communistcode.co.uk</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">

Good afternoon everyone,<br>
<br>
I am trying (yet again) to get yocto to build for the Raspberry Pi and I am=
 falling at the do_fetch hurdle on the RasPi kernel.<br>
<br>
=A0 =A0ERROR: Fetcher failure: Fetch command export HOME=3D&quot;/home/jack=
&quot;;<br>
=A0 =A0export SSH_AGENT_PID=3D&quot;1350&quot;; export<br>
=A0 =A0SSH_AUTH_SOCK=3D&quot;/home/jack/.<u></u>cache/keyring-fjEm9a/ssh&qu=
ot;; export<br>
=A0 =A0GIT_CONFIG=3D&quot;/home/jack/<u></u>Projects/poky-rasp/raspberry/<u=
></u>tmp/sysroots/x86_64-linux/etc/<u></u>gitconfig&quot;;<br>
=A0 =A0export<br>
=A0 =A0PATH=3D&quot;/home/jack/Projects/<u></u>poky-rasp/scripts:/home/jack=
/<u></u>Projects/poky-rasp/raspberry/<u></u>tmp/sysroots/x86_64-linux/usr/<=
u></u>bin/armv6-vfp-poky-linux-<u></u>gnueabi:/home/jack/Projects/<u></u>po=
ky-rasp/raspberry/tmp/<u></u>sysroots/raspberrypi/usr/bin/<u></u>crossscrip=
ts:/home/jack/<u></u>Projects/poky-rasp/raspberry/<u></u>tmp/sysroots/x86_6=
4-linux/usr/<u></u>sbin:/home/jack/Projects/poky-<u></u>rasp/raspberry/tmp/=
sysroots/<u></u>x86_64-linux/usr/bin:/home/<u></u>jack/Projects/poky-rasp/<=
u></u>raspberry/tmp/sysroots/x86_64-<u></u>linux/sbin:/home/jack/<u></u>Pro=
jects/poky-rasp/raspberry/<u></u>tmp/sysroots/x86_64-linux//<u></u>bin:/hom=
e/jack/Projects/poky-<u></u>rasp/scripts:/home/jack/<u></u>Projects/poky-ra=
sp/bitbake/<u></u>bin/:/usr/local/bin:/usr/bin:/<u></u>bin:/usr/local/sbin:=
/usr/sbin:<u></u>/sbin:/usr/bin/core_perl&quot;;<br>


=A0 =A0git clone --bare --mirror git://<a href=3D"http://github.com/raspber=
rypi/linux.git" target=3D"_blank">github.com/raspberrypi/<u></u>linux.git</=
a></blockquote><div><br></div><div>Does this work in a shell? Just try to c=
lone it on your computer.=A0</div>

<div><br></div><div>ag</div></div>

--20cf303bfbe028b46104c725feee--
