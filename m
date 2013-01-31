Return-Path: <r10kindsofpeople@gmail.com>
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFFC0E00294
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2013 12:59:31 -0800 (PST)
Received: by mail-wg0-f51.google.com with SMTP id 8so2324408wgl.6
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2013 12:59:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=E44GBD+J12XIyMYYxi1Krd0HrvWCm8petmeZbnGCeec=;
	b=gGUBy+tVM+W9cGmMwPVpa+to65QGCNcjN/gYOXSuWUrm1FmTz/k/zLYXUcwLs61sls
	ON3KrFXBaASxEoz4OMCPljQgO3VGwwQlbUb87V8qSSKeDUmaN27m7+0+C+poBEw+4gs8
	R44rzdmtnInjp5qSRiHABWupQTQRv//9Bb7nvThsaHRP0seqdQNuJERgd5TRGBxJ7GdK
	tPwh+kisvQAV311YViz6HL/yVsnUEZyu+1AafkLVXTRTozYn+GYiABMQ3KOM7vekdNE3
	1VKYIEHKheVxphs31c+x7t3CMmb6NTzXUajUJpMuN6V3lURcA3sXKy/xkA7x79Dq6hni
	LnAQ==
MIME-Version: 1.0
X-Received: by 10.180.108.236 with SMTP id hn12mr17610501wib.6.1359665889354; 
	Thu, 31 Jan 2013 12:58:09 -0800 (PST)
Received: by 10.194.169.5 with HTTP; Thu, 31 Jan 2013 12:58:09 -0800 (PST)
In-Reply-To: <87halxb1mt.fsf@sonatest.com>
References: <CAE8H0+XKiAGXzTTbLd67CqC32rYBK4iNaDTkoJyjUx8xzkBj+w@mail.gmail.com>
	<87halxb1mt.fsf@sonatest.com>
Date: Thu, 31 Jan 2013 15:58:09 -0500
Message-ID: <CAE8H0+UNaOBQp1nBuU4tRMXXcSyrtFxuPnQE+Ez4Z9atbpYXmQ@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: Marc Ferland <ferlandm@sonatest.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: lmsensors-apps builds, but not in final image?
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
X-List-Received-Date: Thu, 31 Jan 2013 20:59:32 -0000
Content-Type: multipart/alternative; boundary=e89a8f3ba7715924c604d49be2d5

--e89a8f3ba7715924c604d49be2d5
Content-Type: text/plain; charset=ISO-8859-1

Thanks, Marc, that's got me moving forward.  However, it may not be
strictly true that lmsensors-apps is empty or at least has no effect.  So
far, I'm up to "lmsensors lmsensors-scripts lmsensors-apps" with the last
being needed {sufficient?} to get strict.pm, needed to do "sensors-detect".


Now I'm off to find module cpuid.  Thanks again,

John


On Thu, Jan 31, 2013 at 2:20 PM, Marc Ferland <ferlandm@sonatest.com> wrote:

> r10kindsofpeople <r10kindsofpeople@gmail.com> writes:
>
> > I'm hoping someone can quickly spot my mistake.  I'm attempting to use
> > this recipe:
> >
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree/recipes-extended/lm_
> > sensors/lmsensors-apps_3.3.2.bb
> >
> > with my meta-intel/crownbay build under denzil 7.0.1.
> >
> > I put the recipe in my layer, and added "lmsensors-apps" to my
> > IMAGE_INSTALL_append in my layer's layer.conf.
> >
> > The software builds, and I can see the files in
> > tmp/work/crownbay-poky-linux/lmsensors-apps-3.3.2-r2.
> >
> > But it doesn't make it into tmp/work/core-image-minimal-1.0-r0/rootfs
> > or the .hddimage file.
> >
>
> You have to use one of the packages specified in the recipe. Like
> 'libsensors' or 'lmsensors-sensors'. lmsensors-apps is empty.
>
> Marc
>

--e89a8f3ba7715924c604d49be2d5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks, Marc, that&#39;s got me moving forward. =A0However=
, it may not be strictly true that lmsensors-apps is empty or at least has =
no effect. =A0So far, I&#39;m up to &quot;lmsensors lmsensors-scripts lmsen=
sors-apps&quot; with the last being needed {sufficient?} to get <a href=3D"=
http://strict.pm">strict.pm</a>, needed to do &quot;sensors-detect&quot;. =
=A0<div>
<br></div><div style>Now I&#39;m off to find module cpuid. =A0Thanks again,=
</div><div style><br></div><div style>John</div></div><div class=3D"gmail_e=
xtra"><br><br><div class=3D"gmail_quote">On Thu, Jan 31, 2013 at 2:20 PM, M=
arc Ferland <span dir=3D"ltr">&lt;<a href=3D"mailto:ferlandm@sonatest.com" =
target=3D"_blank">ferlandm@sonatest.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">r10k=
indsofpeople &lt;<a href=3D"mailto:r10kindsofpeople@gmail.com">r10kindsofpe=
ople@gmail.com</a>&gt; writes:<br>

<br>
&gt; I&#39;m hoping someone can quickly spot my mistake. =A0I&#39;m attempt=
ing to use<br>
&gt; this recipe:<br>
&gt; <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree=
/recipes-extended/lm_" target=3D"_blank">http://git.yoctoproject.org/cgit/c=
git.cgi/meta-fsl-ppc/tree/recipes-extended/lm_</a><br>
&gt; sensors/<a href=3D"http://lmsensors-apps_3.3.2.bb" target=3D"_blank">l=
msensors-apps_3.3.2.bb</a><br>
&gt;<br>
&gt; with my meta-intel/crownbay build under denzil 7.0.1. =A0<br>
&gt;<br>
&gt; I put the recipe in my layer, and added &quot;lmsensors-apps&quot; to =
my<br>
&gt; IMAGE_INSTALL_append in my layer&#39;s layer.conf. =A0<br>
&gt;<br>
&gt; The software builds, and I can see the files in<br>
&gt; tmp/work/crownbay-poky-linux/lmsensors-apps-3.3.2-r2.<br>
&gt;<br>
&gt; But it doesn&#39;t make it into tmp/work/core-image-minimal-1.0-r0/roo=
tfs<br>
&gt; or the .hddimage file.<br>
&gt;<br>
<br>
</div></div>You have to use one of the packages specified in the recipe. Li=
ke<br>
&#39;libsensors&#39; or &#39;lmsensors-sensors&#39;. lmsensors-apps is empt=
y.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Marc<br>
</font></span></blockquote></div><br></div>

--e89a8f3ba7715924c604d49be2d5--
