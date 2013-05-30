Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00793E0151D
	for <yocto@yoctoproject.org>; Thu, 30 May 2013 16:03:52 -0700 (PDT)
Received: by mail-ie0-f172.google.com with SMTP id 17so2148851iea.17
	for <yocto@yoctoproject.org>; Thu, 30 May 2013 16:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=9gPu0nTzaiyJ0ir1chpJF2/vaR+iPBuHMivp/6s0r1A=;
	b=ml2Vyvss/uSTb41HK7epHJqmKSGg4WVmrNW9S+bfDeTLpbSHEN7WkB5YibeqUIqqWZ
	OE5iRcxe5OTyd3MepDbF4PEnAukvujxlKClzqywhSI+vjEYUqIL/eV6mdaBO2ELG3BA0
	yO8bUNyDeJ+YLbYU3vXMaaAN/7ikPuvyhUX/KztBaT7yh+HucNrrsytKkCkbonn/8BJ/
	8cJa/lHiYq4kfaalmxdDTkjTqDYirJuWuYr50Dh+Lsuwg+mnvUWTjCl+c2b4kd1YfeA9
	vMim/9JEmJDfy4FrkOmIUfJ8V8pfv+fUl1XeyqKZ78lv6LhGPmOR/u7nwHF6UMNXmzJP
	LGAQ==
MIME-Version: 1.0
X-Received: by 10.50.134.136 with SMTP id pk8mr440806igb.32.1369955032343;
	Thu, 30 May 2013 16:03:52 -0700 (PDT)
Received: by 10.50.34.163 with HTTP; Thu, 30 May 2013 16:03:52 -0700 (PDT)
In-Reply-To: <E4B5B49B-D218-4FF7-8A5A-D54E466E3EB1@gmail.com>
References: <CAM1ZcoV_9+XL=Xef62zSo8y7LTLtfYj9DyRhy5dqpcW84=sy_g@mail.gmail.com>
	<20130529143948.GM3192@jama> <2809625.nUpYsyq62m@helios>
	<CAM1ZcoX-oZUqGky3NjVy5OZnGonwDS9RyJ59AnE2B8dDW=ujsA@mail.gmail.com>
	<51A6200C.6030904@windriver.com>
	<CAM1ZcoX5H=qsUt6Dg=0OMT3-5xYvt4JrZpFfsvMEWnU9yEGggQ@mail.gmail.com>
	<20130529161447.GP3192@jama>
	<CAM1ZcoU5-YGrxQnYZQLHS7Ej-7t0C0yTuOYj-BCPDYd=H4FU_w@mail.gmail.com>
	<E4B5B49B-D218-4FF7-8A5A-D54E466E3EB1@gmail.com>
Date: Fri, 31 May 2013 00:03:52 +0100
Message-ID: <CAM1ZcoUsK95oQ5+2mucT1WoawVAUHxaC+Ep=bkgHCVeUNGf1wQ@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: using module_autoload
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
X-List-Received-Date: Thu, 30 May 2013 23:03:53 -0000
Content-Type: multipart/alternative; boundary=047d7b3a9c160ff84404ddf7831a

--047d7b3a9c160ff84404ddf7831a
Content-Type: text/plain; charset=ISO-8859-1

Hi,
not exactly, I added module_autoload_foo = "foo" to the machine.conf file.
Where foo is the module created with the recipe that inherits module and
kernel-module-split. And it's working perfectly now.
thanks,
Katu


2013/5/30 Khem Raj <raj.khem@gmail.com>

>
> On May 30, 2013, at 1:49 AM, Katu Txakur <katutxakurra@gmail.com> wrote:
>
> Thanks again Martin,
> I tried with that kernel-module-split.bbclass but although I got no
> errors, it didn't work :(
> Can I create the file spike.conf and tell the recipe or the Makefile to
> copy it to /etc/modules-load.d ?
> how can I do that?
>
>
> Did you add the module_autoload_foo = "foo" where kernel-module-foo is the
> module you are interested in
> to your recipe after inheriting module-split class ?
> if not try that
>
> Thanks again, I would be completely stuck without your help
> Katu
>
>
> 2013/5/29 Martin Jansa <martin.jansa@gmail.com>
>
>> On Wed, May 29, 2013 at 04:48:58PM +0100, Katu Txakur wrote:
>> > Guys,
>> > I'm using the gumstix repo
>> > https://github.com/gumstix/Gumstix-YoctoProject-Repo and I don't have
>> any
>> > module-split bbclass.
>> > The module.bbclass inherits module-base.bbclass and
>> module_strip.bbclass,
>> > but the latest is empty.
>> > Do you think my problem could be related with that? module_strip is also
>> > inherited by kernel.bbclass
>>
>> That looks like danny release, so you don't have this commit
>>
>> http://git.openembedded.org/openembedded-core/commit/meta/classes/kernel-module-split.bbclass?id=51928b6b5ca0a46a9dcd754483a19af58b95fa18
>>
>> You can backport it if you want, but without this module_autoload won't
>> work for external modules.
>>
>> > 2013/5/29 Bruce Ashfield <bruce.ashfield@windriver.com>
>> >
>> > > On 13-05-29 11:32 AM, Katu Txakur wrote:
>> > >
>> > >> Martin, Paul, thanks for your help.
>> > >> Yes, the recipe does inherit module.
>> > >> Any other problem that you can think off?
>> > >>
>> > >
>> > > Note: if you are on master, Martin said "module-split", not
>> > > "module".
>> > >
>> > > Cheers,
>> > >
>> > > Bruce
>> > >
>> > >
>> > >> Thanks a lot in advance,
>> > >> Katu
>> > >>
>> > >>
>> > >> 2013/5/29 Paul Eggleton <paul.eggleton@linux.intel.com
>> > >> <mailto:paul.eggleton@linux.**intel.com <
>> paul.eggleton@linux.intel.com>>>
>> > >>
>> > >>
>> > >>     On Wednesday 29 May 2013 16:39:48 Martin Jansa wrote:
>> > >>      > On Wed, May 29, 2013 at 02:01:11PM +0100, Katu Txakur wrote:
>> > >>      > > Hi,
>> > >>      > > I'm failing to load a kernel module named spike doing this:
>> > >>      > > 1) add the recipe (inherit module), based in a Makefile with
>> > >>      > > modules_install:
>> > >>      > > $(MAKE) INSTALL_MOD_DIR=kernel/**drivers/spike -C
>> $(KERNEL_SRC)
>> > >>     M=$(SRC)
>> > >>      > > modules_install
>> > >>      > > 2) Add the package to the image with IMAGE_INSTALL +=
>> "spike"
>> > >>     in the
>> > >>      > > local.conf file
>> > >>      > > 3) In the machine/mymachine.conf I've added
>> > >>      > >
>> > >>      > >         MACHINE_ESSENTIAL_EXTRA_**RRECOMMENDS += "spike"
>> > >>      > >         module_autoload_spike = "spike"
>> > >>      > >
>> > >>      > > The driver gets added to the image and I can load it with
>> > >>     insmod spike,
>> > >>      > > however, I would like to load it at boot time.
>> > >>      > > A workaround is to create a file with the name spike.conf
>> and
>> > >>     write spike
>> > >>      > > inside. Copying that file to /etc/modules-load.d/spike.conf
>> > >>      > > loads the driver correctly, but I need to do it from a
>> recipe.
>> > >>      > >
>> > >>      > > Can anyone spot what am I doing wrong?
>> > >>      >
>> > >>      > module_autoload won't work with external module unless you
>> > >>     inherit also
>> > >>      > kernel-module-split
>> > >>
>> > >>     Note that module.bbclass already does this, so if the external
>> > >>     module recipe
>> > >>     already does "inherit module" then that is not the problem.
>> > >>
>> > >>     Cheers,
>> > >>     Paul
>> > >>
>> > >>     --
>> > >>
>> > >>     Paul Eggleton
>> > >>     Intel Open Source Technology Centre
>> > >>
>> > >>
>> > >>
>> > >>
>> > >> ______________________________**_________________
>> > >> yocto mailing list
>> > >> yocto@yoctoproject.org
>> > >> https://lists.yoctoproject.**org/listinfo/yocto<
>> https://lists.yoctoproject.org/listinfo/yocto>
>> > >>
>> > >>
>> > >
>>
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>> --
>> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>

--047d7b3a9c160ff84404ddf7831a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br></div>not exactly, I added module_au=
toload_foo =3D &quot;foo&quot; to the machine.conf file. Where foo is the m=
odule created with the recipe that inherits module and kernel-module-split.=
 And it&#39;s working perfectly now.<br>
thanks,<br></div></div>Katu<br></div><div class=3D"gmail_extra"><br><br><di=
v class=3D"gmail_quote">2013/5/30 Khem Raj <span dir=3D"ltr">&lt;<a href=3D=
"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</s=
pan><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-word"><br><div=
><div class=3D"im"><div>On May 30, 2013, at 1:49 AM, Katu Txakur &lt;<a hre=
f=3D"mailto:katutxakurra@gmail.com" target=3D"_blank">katutxakurra@gmail.co=
m</a>&gt; wrote:</div>
<br><blockquote type=3D"cite"><div dir=3D"ltr">Thanks again Martin,<div>I t=
ried with that=A0kernel-module-split.bbclass but although I got no errors, =
it didn&#39;t work :(</div><div>Can I create the file spike.conf and tell t=
he recipe or the Makefile to copy it to /etc/modules-load.d ?</div>

<div>how can I do that?</div><div><br></div></div></blockquote><div><br></d=
iv></div><div>Did you add the=A0module_autoload_foo =3D &quot;foo&quot; whe=
re kernel-module-foo is the module you are interested in</div><div>to your =
recipe after inheriting module-split class ?</div>
<div>if not try that</div><div><div class=3D"h5"><br><blockquote type=3D"ci=
te"><div dir=3D"ltr"><div>Thanks again, I would be completely stuck without=
 your help</div><div>Katu</div></div><div class=3D"gmail_extra"><br><br><di=
v class=3D"gmail_quote">
2013/5/29 Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"mailto:martin.jansa=
@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On Wed, May 29, 2013 at 04:48:58PM +010=
0, Katu Txakur wrote:<br>
&gt; Guys,<br>
&gt; I&#39;m using the gumstix repo<br>
&gt; <a href=3D"https://github.com/gumstix/Gumstix-YoctoProject-Repo" targe=
t=3D"_blank">https://github.com/gumstix/Gumstix-YoctoProject-Repo</a> and I=
 don&#39;t have any<br>
&gt; module-split bbclass.<br>
&gt; The module.bbclass inherits module-base.bbclass and module_strip.bbcla=
ss,<br>
&gt; but the latest is empty.<br>
&gt; Do you think my problem could be related with that? module_strip is al=
so<br>
&gt; inherited by kernel.bbclass<br>
<br>
</div>That looks like danny release, so you don&#39;t have this commit<br>
<a href=3D"http://git.openembedded.org/openembedded-core/commit/meta/classe=
s/kernel-module-split.bbclass?id=3D51928b6b5ca0a46a9dcd754483a19af58b95fa18=
" target=3D"_blank">http://git.openembedded.org/openembedded-core/commit/me=
ta/classes/kernel-module-split.bbclass?id=3D51928b6b5ca0a46a9dcd754483a19af=
58b95fa18</a><br>


<br>
You can backport it if you want, but without this module_autoload won&#39;t=
<br>
work for external modules.<br>
<div><br>
&gt; 2013/5/29 Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@windrive=
r.com" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;<br>
&gt;<br>
&gt; &gt; On 13-05-29 11:32 AM, Katu Txakur wrote:<br>
&gt; &gt;<br>
&gt; &gt;&gt; Martin, Paul, thanks for your help.<br>
&gt; &gt;&gt; Yes, the recipe does inherit module.<br>
&gt; &gt;&gt; Any other problem that you can think off?<br>
&gt; &gt;&gt;<br>
&gt; &gt;<br>
&gt; &gt; Note: if you are on master, Martin said &quot;module-split&quot;,=
 not<br>
&gt; &gt; &quot;module&quot;.<br>
&gt; &gt;<br>
&gt; &gt; Cheers,<br>
&gt; &gt;<br>
&gt; &gt; Bruce<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;&gt; Thanks a lot in advance,<br>
&gt; &gt;&gt; Katu<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; 2013/5/29 Paul Eggleton &lt;<a href=3D"mailto:paul.eggleton@l=
inux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a><br>
</div>&gt; &gt;&gt; &lt;mailto:<a href=3D"mailto:paul.eggleton@linux." targ=
et=3D"_blank">paul.eggleton@linux.</a>**<a href=3D"http://intel.com/" targe=
t=3D"_blank">intel.com</a> &lt;<a href=3D"mailto:paul.eggleton@linux.intel.=
com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;&gt;&gt;<br>


<div>&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; =A0 =A0 On Wednesday 29 May 2013 16:39:48 Martin Jansa wrote:=
<br>
&gt; &gt;&gt; =A0 =A0 =A0&gt; On Wed, May 29, 2013 at 02:01:11PM +0100, Kat=
u Txakur wrote:<br>
&gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; Hi,<br>
&gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; I&#39;m failing to load a kernel module =
named spike doing this:<br>
&gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; 1) add the recipe (inherit module), base=
d in a Makefile with<br>
&gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; modules_install:<br>
</div>&gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; $(MAKE) INSTALL_MOD_DIR=3Dkernel/*=
*drivers/spike -C $(KERNEL_SRC)<br>
<div>&gt; &gt;&gt; =A0 =A0 M=3D$(SRC)<br>
&gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; modules_install<br>
&gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; 2) Add the package to the image with IMA=
GE_INSTALL +=3D &quot;spike&quot;<br>
&gt; &gt;&gt; =A0 =A0 in the<br>
&gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; local.conf file<br>
&gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; 3) In the machine/mymachine.conf I&#39;v=
e added<br>
&gt; &gt;&gt; =A0 =A0 =A0&gt; &gt;<br>
</div>&gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; =A0 =A0 =A0 =A0 MACHINE_ESSENTIAL_=
EXTRA_**RRECOMMENDS +=3D &quot;spike&quot;<br>
<div>&gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; =A0 =A0 =A0 =A0 module_autoload_spi=
ke =3D &quot;spike&quot;<br>
&gt; &gt;&gt; =A0 =A0 =A0&gt; &gt;<br>
&gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; The driver gets added to the image and I=
 can load it with<br>
&gt; &gt;&gt; =A0 =A0 insmod spike,<br>
&gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; however, I would like to load it at boot=
 time.<br>
&gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; A workaround is to create a file with th=
e name spike.conf and<br>
&gt; &gt;&gt; =A0 =A0 write spike<br>
&gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; inside. Copying that file to /etc/module=
s-load.d/spike.conf<br>
&gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; loads the driver correctly, but I need t=
o do it from a recipe.<br>
&gt; &gt;&gt; =A0 =A0 =A0&gt; &gt;<br>
&gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; Can anyone spot what am I doing wrong?<b=
r>
&gt; &gt;&gt; =A0 =A0 =A0&gt;<br>
&gt; &gt;&gt; =A0 =A0 =A0&gt; module_autoload won&#39;t work with external =
module unless you<br>
&gt; &gt;&gt; =A0 =A0 inherit also<br>
&gt; &gt;&gt; =A0 =A0 =A0&gt; kernel-module-split<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; =A0 =A0 Note that module.bbclass already does this, so if the=
 external<br>
&gt; &gt;&gt; =A0 =A0 module recipe<br>
&gt; &gt;&gt; =A0 =A0 already does &quot;inherit module&quot; then that is =
not the problem.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; =A0 =A0 Cheers,<br>
&gt; &gt;&gt; =A0 =A0 Paul<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; =A0 =A0 --<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; =A0 =A0 Paul Eggleton<br>
&gt; &gt;&gt; =A0 =A0 Intel Open Source Technology Centre<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
</div>&gt; &gt;&gt; ______________________________**_________________<br>
&gt; &gt;&gt; yocto mailing list<br>
&gt; &gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a><br>
&gt; &gt;&gt; <a href=3D"https://lists.yoctoproject./" target=3D"_blank">ht=
tps://lists.yoctoproject.</a>**org/listinfo/yocto&lt;<a href=3D"https://lis=
ts.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctopr=
oject.org/listinfo/yocto</a>&gt;<br>


<div>&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;<br>
<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
<br>
</div><div><div>--<br>
Martin &#39;JaMa&#39; Jansa =A0 =A0 jabber: <a href=3D"mailto:Martin.Jansa@=
gmail.com" target=3D"_blank">Martin.Jansa@gmail.com</a><br>
</div></div></blockquote></div><br></div>
_______________________________________________<br>yocto mailing list<br><a=
 href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoprojec=
t.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" targ=
et=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div></div><br></div></blockquote></div><br></div>

--047d7b3a9c160ff84404ddf7831a--
