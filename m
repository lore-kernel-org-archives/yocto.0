Return-Path: <diego.sueiro@gmail.com>
Received: from mail-qa0-f53.google.com (mail-qa0-f53.google.com
	[209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F10F1E00B4C
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 04:29:47 -0700 (PDT)
Received: by mail-qa0-f53.google.com with SMTP id w8so2032876qac.12
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 04:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=V11so7i8Gzv4bQMSOFBNOxkAA3KJ5vjd5nr4PxJvbnI=;
	b=KB2VLQoEet1ViB5RAIxl1oRyCU8qZg5VelKje5YOo0zYHdVXhV9uVMZbtRBc3SyZf3
	sDDwSOZvr7KmmSlberxmJ2hzOGD0aX9e8v77vLgqdheY6id4HGTb8hWRqqNBt9H1kxq3
	tcem1k/EH1g2OnDkhBAZVzzWgWxrswK/d6uIrkU+P96CnDJitsHimYP3E5qiiv99i5DH
	Oriubc0ND5+rfStutbmP2YwQbC9KmPqNKay0S1Sgr6HTojy3QTCCINvNF/inOj6PkiDI
	wZ3HabRXg4ZhMOSstQfZRH7WaxQNaEvGIw1A5G9Cd11Txoz/6gByzIQmZ/a5OnfA7scO
	SdsQ==
X-Received: by 10.140.91.228 with SMTP id z91mr84279640qgd.32.1395833386792;
	Wed, 26 Mar 2014 04:29:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.48 with HTTP; Wed, 26 Mar 2014 04:29:26 -0700 (PDT)
In-Reply-To: <CANyK_8fBM+cR3GZ71PFpvrVkhDWzp4bWrQvCk7bxhuUGnEUASQ@mail.gmail.com>
References: <CAMCfZKG3ku29ztup_Dc0HLrnTBB9SirC+VM2QFjChX6Pwv=oZQ@mail.gmail.com>
	<CANyK_8fBM+cR3GZ71PFpvrVkhDWzp4bWrQvCk7bxhuUGnEUASQ@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Wed, 26 Mar 2014 08:29:26 -0300
Message-ID: <CAMCfZKEr6gZkQ0Mvr6+YWjB_9wpD_aH4EoanvB61Q=UdG-Zk4g@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Get rid of opkg install error
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
X-List-Received-Date: Wed, 26 Mar 2014 11:29:48 -0000
Content-Type: multipart/alternative; boundary=001a113a7b1e2fcd7304f580c922

--001a113a7b1e2fcd7304f580c922
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Mar 26, 2014 at 8:16 AM, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 26 March 2014 09:47, Diego Sueiro <diego.sueiro@gmail.com> wrote:
> > Folks,
> >
> > I have a image recipe which installs some custom files on rootfs.
> > Instead of having a bbappend for each package that provides those files I
> > want to concentrate it on image recipe.
>
> Why do you want to merge all your custom files into one recipe? With
> them separated into the packages they affect you can add/remove
> packages a lot easier in the future.
>

Because I want to have different image recipes for different proposes.
For example: One image with eth0 on dhcp and another one with static ip. Or
some different images for product variations.


>
> >
> > The problem is that I'm receiving the following error:
> >
> > "But that file is already provided by package"
> >
> >
> > Is there a way to get rid of this error?
>
> The only thing I can think of is to use bbappends to prevent the
> original files from installing but not to add the replacement files.
> Then have a single recipe which packages all the replacement files.
> That way only one package provides each file.


This is a possible solution. But if I build an image without these custom
files (core-image-minimal for example) the original ones will not be
shipped. Am I correct?
Or maybe I can check for a custom variable defined at local.conf and check
for it on bbappend to know if I have to remove or not the original files.



Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a113a7b1e2fcd7304f580c922
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Mar 26, 2014 at 8:16 AM, Paul Barker <span dir=3D"ltr">&lt;<a href=
=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.me.uk</=
a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On 26 March 2014 09:47, Dieg=
o Sueiro &lt;<a href=3D"mailto:diego.sueiro@gmail.com">diego.sueiro@gmail.c=
om</a>&gt; wrote:<br>


&gt; Folks,<br>
&gt;<br>
&gt; I have a image recipe which installs some custom files on rootfs.<br>
&gt; Instead of having a bbappend for each package that provides those file=
s I<br>
&gt; want to concentrate it on image recipe.<br>
<br>
</div>Why do you want to merge all your custom files into one recipe? With<=
br>
them separated into the packages they affect you can add/remove<br>
packages a lot easier in the future.<br></blockquote><div><br></div><div st=
yle>Because I want to have different image recipes for different=A0proposes=
.</div><div style>For example: One image with eth0 on dhcp and another one =
with static ip. Or some different images for product variations.</div>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">
<div class=3D""><br>
&gt;<br>
&gt; The problem is that I&#39;m receiving the following error:<br>
&gt;<br>
&gt; &quot;But that file is already provided by package&quot;<br>
&gt;<br>
&gt;<br>
&gt; Is there a way to get rid of this error?<br>
<br>
</div>The only thing I can think of is to use bbappends to prevent the<br>
original files from installing but not to add the replacement files.<br>
Then have a single recipe which packages all the replacement files.<br>
That way only one package provides each file.</blockquote><div style><br></=
div><div style>This is a possible solution. But if I build an image without=
 these custom files (core-image-minimal for example) the original ones will=
 not be shipped. Am I correct?</div>

<div style>Or maybe I can check for a custom variable defined at local.conf=
 and check for it on bbappend to know if I have to remove or not the origin=
al files.</div><div style><br></div><div style><br></div></div><br clear=3D=
"all">

<div><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego =
Sueiro<br><br>Administrador do Embarcados<br><a href=3D"http://www.embarcad=
os.com.br/?utm_source=3Dassinatura_diego&amp;utm_medium=3De-mail&amp;utm_ca=
mpaign=3DAssinatura%20Email%20Diego" target=3D"_blank">www.embarcados.com.b=
r</a><br>

<br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--001a113a7b1e2fcd7304f580c922--
