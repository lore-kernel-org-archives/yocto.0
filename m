Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B09E7E01458
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 07:14:44 -0700 (PDT)
Received: by mail-ob0-f174.google.com with SMTP id wd20so2850833obb.33
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 07:14:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=n5RE8NZa2DZTo5DwWIZz8BHBiOaBtNq9kp0g92Dyofw=;
	b=SU32c7zFgy3FJ9b51+Gy4c/oNmiF95FROQxIBO+c3veJdvGEaRi2H+bxf0RPDT+cDF
	v3PB10bzDfE35CDzq6j2nrCWIbs84vcMA18p76lEecbodFSyvV/g+14wEVUsWZomXUwN
	uYYILuJs6C+r+HFN/vwKEl/6c5KuT2XSGMNZ50OFGdmgfZ6dzC0/TOUn6WIo2C3nXMG/
	BD8XWXq7SRdtoxuNuk+3y1wUSBYpyd08yn9UzohUCp9x7A/FVNUFtqWo/5TqeX/8Cv7k
	lcFeHX9qQbg16xHrwp8XZwZfHMl/poPbe/sAr/9KzUqp25Q8tRT8S8i27HKREf7ggwRg
	O6SA==
X-Received: by 10.60.47.200 with SMTP id f8mr17778523oen.33.1369750483895;
	Tue, 28 May 2013 07:14:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.27.165 with HTTP; Tue, 28 May 2013 07:14:23 -0700 (PDT)
In-Reply-To: <loom.20130528T152012-210@post.gmane.org>
References: <loom.20130525T145157-762@post.gmane.org>
	<5394411.Nd6qyTtVKA@helios>
	<CAP71Wjx3xV7t5WUA_rEraDd3p0R2OE1mkZtOGkXFEk1hjEf2pg@mail.gmail.com>
	<loom.20130528T152012-210@post.gmane.org>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 28 May 2013 16:14:23 +0200
Message-ID: <CAP71WjzDQOJLzWUttV+gk6sqZqT4b636jNCc3ChCgcvLzpJH2Q@mail.gmail.com>
To: Jack <jackrubby2010@gmail.com>
X-Gm-Message-State: ALoCoQkH0gNnhTj3ptnZrvki/CqJN8GfpaMY1yus9K2G5qhOkoWlJFfKobTX8TRtAZHpnj03JQ6d
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: How can I remove packages from rootfs file ?
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
X-List-Received-Date: Tue, 28 May 2013 14:14:44 -0000
Content-Type: multipart/alternative; boundary=001a11c2d6820616e904ddc7e393

--001a11c2d6820616e904ddc7e393
Content-Type: text/plain; charset=ISO-8859-1

On Tue, May 28, 2013 at 3:49 PM, Jack <jackrubby2010@gmail.com> wrote:

> > on top of that, i wanted to remind that there is a dedicated chapter in
> the Yocto manual about building 'tiny' systems [1]. Also you don't mention
> which 'DISTRO' you are using, so make sure that you are aware that Yocto
> comes with Poky, and Poky-tiny as well, which according to
> conf/distro/poky-tiny.conf says:
> >
>
> My MACHINE is p1022ds and DISTRO is fsl. When I changed fsl to poky I got
> error.
> What should I do ?


ok, i was assuming you might be using DISTRO=poky... if you use another
DISTRO, then i suggest that you study the differences between poky and
poky-tiny to understand how the 'reference' DISTRO is building its 'tiny'
variant. there are certainly things you can reused from poky-tiny to
optimize your own build.

--001a11c2d6820616e904ddc7e393
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, May 28, 2013 at 3:49 PM, Jack <span dir=3D"ltr">&lt;<a href=3D"mail=
to:jackrubby2010@gmail.com" target=3D"_blank">jackrubby2010@gmail.com</a>&g=
t;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div class=3D"im">&gt; on top of that, =
i wanted to remind that there is a dedicated chapter in<br>
the Yocto manual about building &#39;tiny&#39; systems [1]. Also you don&#3=
9;t mention<br>
which &#39;DISTRO&#39; you are using, so make sure that you are aware that =
Yocto<br>
comes with Poky, and Poky-tiny as well, which according to<br>
conf/distro/poky-tiny.conf says:<br>
&gt;<br>
<br>
</div></div>My MACHINE is p1022ds and DISTRO is fsl. When I changed fsl to =
poky I got<br>
error.<br>
What should I do ?</blockquote></div><br>ok, i was assuming you might be us=
ing DISTRO=3Dpoky... if you use another DISTRO, then i suggest that you stu=
dy the differences between poky and poky-tiny to understand how the &#39;re=
ference&#39; DISTRO is building its &#39;tiny&#39; variant. there are certa=
inly things you can reused from poky-tiny to optimize your own build.</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br></div><=
/div>

--001a11c2d6820616e904ddc7e393--
