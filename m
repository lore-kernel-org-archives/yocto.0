Return-Path: <varun292006@gmail.com>
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28CE5E01206
	for <yocto@yoctoproject.org>; Sat, 29 Jun 2013 11:35:58 -0700 (PDT)
Received: by mail-pa0-f51.google.com with SMTP id lf11so3601841pab.10
	for <yocto@yoctoproject.org>; Sat, 29 Jun 2013 11:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=NGtDQ1RTqxWUSZsTyJ3wDTgxY6u0G/xrMmkhxSjOoTc=;
	b=SNfJ6w2w6WgAYA/24I1iK/PDXE4/mHx6sL+aqe1e50ZFoRPoq4p/xUxnQtYewvM/Bu
	A5GHkku8A9IE2ERAcn4eudray5FnjyxI0wvk5YkEGAPA22XJ739D0WKIAGmnHnSg22g3
	3f2a6ydBojn8PainwO8vQgFwbR/lG3TQ3EEjzyTkDnnnaU6Q/flVxHCEySU27DMj1R89
	JYTZ40OJeniRNsvk3dJLB0Um2RYFyLDg39WDx7iTfl12eSWDtZwsmmQxU76agXoKWscl
	rVpHMK1XFicpq+gkZdEkcBMkI9XVCRFJ5Fq+/TmLU0zjnqkYXhjJ1bdu60haczpT8Us9
	GJ+w==
MIME-Version: 1.0
X-Received: by 10.68.224.136 with SMTP id rc8mr16944284pbc.109.1372530958314; 
	Sat, 29 Jun 2013 11:35:58 -0700 (PDT)
Received: by 10.68.129.134 with HTTP; Sat, 29 Jun 2013 11:35:58 -0700 (PDT)
In-Reply-To: <2897880.FC0dZLhceG@helios>
References: <CAGxOggHpJNSb6vetbD40+ww-iyVxS3cUaZVhOF1t_OFCfQ4zSw@mail.gmail.com>
	<51C9EBCE.40501@linux.intel.com>
	<CAGxOggG7R-5rLHg3H_WH9wtgSnf0EZfRAYs2jtQvGK+DeQfTiA@mail.gmail.com>
	<2897880.FC0dZLhceG@helios>
Date: Sun, 30 Jun 2013 00:05:58 +0530
Message-ID: <CAGxOggHBwsZ5f5f9x12-pOLGJY9bRNkAu6G27kz4Qgp-4ztdqA@mail.gmail.com>
From: varun bhatnagar <varun292006@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Layers not getting recognized by bitbake
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
X-List-Received-Date: Sat, 29 Jun 2013 18:35:59 -0000
Content-Type: multipart/alternative; boundary=e89a8ff2438b36b08704e04f4495

--e89a8ff2438b36b08704e04f4495
Content-Type: text/plain; charset=ISO-8859-1

Yes Paul that was the entry was there in CORE_IMAGE_EXTRA_INSTALL. I have
removed it from there but I need to add the command provided by these
packages in my image. So I have added one line in my layer.conf file
"IMAGE_INSTALL_append= test-ea ". Now if I try to run bitbake -k
core-image-minimal, it gives me a message saying "Nothing provides
test-ea". What shall I do? (I have build the recipe file of test-ea without
any error.)


On Fri, Jun 28, 2013 at 1:55 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Thursday 27 June 2013 23:28:05 varun bhatnagar wrote:
> >  Thanks a ton Paul and Saul for the reply. Your suggestion worked. :)
> > But after building my recipe file I executed bitbake -k
> core-image-minimal
> > and I got the following error:
> >
> > NOTE: Resolving any missing task queue dependencies
> > Missing or unbuildable dependency chain was: ['app-ea']
> > ERROR: Nothing RPROVIDES 'app-ea' (but
> > /local/varun/poky-yocto-1.4-m3/meta/recipes-core/images/
> > core-image-minimal.bb RDEPENDS on or otherwise requires it)
> > NOTE: Runtime target 'com-ea' is unbuildable, removing...
> > Missing or unbuildable dependency chain was: ['test-ea']
> > ERROR: Nothing RPROVIDES 'tipcutils' (but
> > /local/varun/poky-yocto-1.4-m3/meta/recipes-core/images/
> > core-image-minimal.bb RDEPENDS on or otherwise requires it)
> > NOTE: Runtime target 'tipcutils' is unbuildable, removing...
> > Missing or unbuildable dependency chain was: ['tipcutils']
> > NOTE: Preparing runqueue
> > ERROR: All buildable tasks have been run but the build is incomplete
> > (--continue mode). Errors for the tasks that failed will have been
> printed
> > above.
> >
> > Summary: There were 3 ERROR messages shown, returning a non-zero exit
> code.
> >
> >
> > Any idea how to resolve this one?
>
> None of "com-ea", "test-ea" or "tipcutils" are normally in
> core-image-minimal
> nor are they in any OE layer that I am aware of. I can only suggest that
> you
> might have added these to CORE_IMAGE_EXTRA_INSTALL, is that correct? If so,
> either remove these or ensure they actually exist somewhere in an enabled
> layer where that layer has BBFILES correctly set up in its conf/layer.conf
> file
> to match the directory structure of the layer.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--e89a8ff2438b36b08704e04f4495
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes Paul that was the entry was there in CORE_IMAGE_EXTRA_=
INSTALL. I have removed it from there but I need to add the command provide=
d by these packages in my image. So I have added one line in my layer.conf =
file &quot;IMAGE_INSTALL_append=3D test-ea &quot;. Now if I try to run bitb=
ake -k core-image-minimal, it gives me a message saying &quot;Nothing provi=
des test-ea&quot;. What shall I do? (I have build the recipe file of test-e=
a without any error.)</div>
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Fri, Jun 2=
8, 2013 at 1:55 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:p=
aul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.c=
om</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On T=
hursday 27 June 2013 23:28:05 varun bhatnagar wrote:<br>
&gt; =A0Thanks a ton Paul and Saul for the reply. Your suggestion worked. :=
)<br>
&gt; But after building my recipe file I executed bitbake -k core-image-min=
imal<br>
&gt; and I got the following error:<br>
&gt;<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt; Missing or unbuildable dependency chain was: [&#39;app-ea&#39;]<br>
&gt; ERROR: Nothing RPROVIDES &#39;app-ea&#39; (but<br>
&gt; /local/varun/poky-yocto-1.4-m3/meta/recipes-core/images/<br>
&gt; <a href=3D"http://core-image-minimal.bb" target=3D"_blank">core-image-=
minimal.bb</a> RDEPENDS on or otherwise requires it)<br>
&gt; NOTE: Runtime target &#39;com-ea&#39; is unbuildable, removing...<br>
&gt; Missing or unbuildable dependency chain was: [&#39;test-ea&#39;]<br>
&gt; ERROR: Nothing RPROVIDES &#39;tipcutils&#39; (but<br>
&gt; /local/varun/poky-yocto-1.4-m3/meta/recipes-core/images/<br>
&gt; <a href=3D"http://core-image-minimal.bb" target=3D"_blank">core-image-=
minimal.bb</a> RDEPENDS on or otherwise requires it)<br>
&gt; NOTE: Runtime target &#39;tipcutils&#39; is unbuildable, removing...<b=
r>
&gt; Missing or unbuildable dependency chain was: [&#39;tipcutils&#39;]<br>
&gt; NOTE: Preparing runqueue<br>
&gt; ERROR: All buildable tasks have been run but the build is incomplete<b=
r>
&gt; (--continue mode). Errors for the tasks that failed will have been pri=
nted<br>
&gt; above.<br>
&gt;<br>
&gt; Summary: There were 3 ERROR messages shown, returning a non-zero exit =
code.<br>
&gt;<br>
&gt;<br>
&gt; Any idea how to resolve this one?<br>
<br>
</div></div>None of &quot;com-ea&quot;, &quot;test-ea&quot; or &quot;tipcut=
ils&quot; are normally in core-image-minimal<br>
nor are they in any OE layer that I am aware of. I can only suggest that yo=
u<br>
might have added these to CORE_IMAGE_EXTRA_INSTALL, is that correct? If so,=
<br>
either remove these or ensure they actually exist somewhere in an enabled<b=
r>
layer where that layer has BBFILES correctly set up in its conf/layer.conf =
file<br>
to match the directory structure of the layer.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--e89a8ff2438b36b08704e04f4495--
