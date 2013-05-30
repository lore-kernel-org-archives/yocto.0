Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f175.google.com (mail-pd0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABA14E004CF
	for <yocto@yoctoproject.org>; Thu, 30 May 2013 10:12:07 -0700 (PDT)
Received: by mail-pd0-f175.google.com with SMTP id 6so710385pdd.34
	for <yocto@yoctoproject.org>; Thu, 30 May 2013 10:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=JzJFw1q5Atch6qB79n4n8QJXi29sJRRgbp4Ue7n9rXc=;
	b=b5E0h81uvkqOM8OUHAEuZASsvOdoOReK+8N9N5QoztjRIc9C6/sQGSK1B0izODUtoh
	iDhvZsvIwH3WCVe+ZhudCghUrtd52WlyGoKpvJyz5vru28xv8eLHAh72Jl9uECsYUw1c
	t4VMV/6vGeWMIWvqJBdZN7xnFKwuTi7fKqtbsq0CP2e0Yau5OspjA54C8P042eI4poER
	6K1ixk4XxfmXBxiScOC8gc/83onUjs7UT1iUTsG5hjtUbu2EPsCBm9tMtcG8jyUgXNkg
	+GJT8ET6nKmWTzSL1XFnda6H5oGLGPFrgU3uSIfPUz4GuGD9yTjyYHewNbFn52FOlePh
	4qzw==
X-Received: by 10.66.240.41 with SMTP id vx9mr9431870pac.93.1369933927510;
	Thu, 30 May 2013 10:12:07 -0700 (PDT)
Received: from ramanathan-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPSA id gi2sm42816497pbb.2.2013.05.30.10.12.05
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 30 May 2013 10:12:06 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAM1ZcoU5-YGrxQnYZQLHS7Ej-7t0C0yTuOYj-BCPDYd=H4FU_w@mail.gmail.com>
Date: Thu, 30 May 2013 10:12:03 -0700
Message-Id: <E4B5B49B-D218-4FF7-8A5A-D54E466E3EB1@gmail.com>
References: <CAM1ZcoV_9+XL=Xef62zSo8y7LTLtfYj9DyRhy5dqpcW84=sy_g@mail.gmail.com>
	<20130529143948.GM3192@jama> <2809625.nUpYsyq62m@helios>
	<CAM1ZcoX-oZUqGky3NjVy5OZnGonwDS9RyJ59AnE2B8dDW=ujsA@mail.gmail.com>
	<51A6200C.6030904@windriver.com>
	<CAM1ZcoX5H=qsUt6Dg=0OMT3-5xYvt4JrZpFfsvMEWnU9yEGggQ@mail.gmail.com>
	<20130529161447.GP3192@jama>
	<CAM1ZcoU5-YGrxQnYZQLHS7Ej-7t0C0yTuOYj-BCPDYd=H4FU_w@mail.gmail.com>
To: Katu Txakur <katutxakurra@gmail.com>
X-Mailer: Apple Mail (2.1503)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 30 May 2013 17:12:07 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_FE70984D-91B2-4859-8BB2-77586D25D920"

--Apple-Mail=_FE70984D-91B2-4859-8BB2-77586D25D920
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On May 30, 2013, at 1:49 AM, Katu Txakur <katutxakurra@gmail.com> wrote:

> Thanks again Martin,
> I tried with that kernel-module-split.bbclass but although I got no =
errors, it didn't work :(
> Can I create the file spike.conf and tell the recipe or the Makefile =
to copy it to /etc/modules-load.d ?
> how can I do that?
>=20

Did you add the module_autoload_foo =3D "foo" where kernel-module-foo is =
the module you are interested in
to your recipe after inheriting module-split class ?
if not try that

> Thanks again, I would be completely stuck without your help
> Katu
>=20
>=20
> 2013/5/29 Martin Jansa <martin.jansa@gmail.com>
> On Wed, May 29, 2013 at 04:48:58PM +0100, Katu Txakur wrote:
> > Guys,
> > I'm using the gumstix repo
> > https://github.com/gumstix/Gumstix-YoctoProject-Repo and I don't =
have any
> > module-split bbclass.
> > The module.bbclass inherits module-base.bbclass and =
module_strip.bbclass,
> > but the latest is empty.
> > Do you think my problem could be related with that? module_strip is =
also
> > inherited by kernel.bbclass
>=20
> That looks like danny release, so you don't have this commit
> =
http://git.openembedded.org/openembedded-core/commit/meta/classes/kernel-m=
odule-split.bbclass?id=3D51928b6b5ca0a46a9dcd754483a19af58b95fa18
>=20
> You can backport it if you want, but without this module_autoload =
won't
> work for external modules.
>=20
> > 2013/5/29 Bruce Ashfield <bruce.ashfield@windriver.com>
> >
> > > On 13-05-29 11:32 AM, Katu Txakur wrote:
> > >
> > >> Martin, Paul, thanks for your help.
> > >> Yes, the recipe does inherit module.
> > >> Any other problem that you can think off?
> > >>
> > >
> > > Note: if you are on master, Martin said "module-split", not
> > > "module".
> > >
> > > Cheers,
> > >
> > > Bruce
> > >
> > >
> > >> Thanks a lot in advance,
> > >> Katu
> > >>
> > >>
> > >> 2013/5/29 Paul Eggleton <paul.eggleton@linux.intel.com
> > >> <mailto:paul.eggleton@linux.**intel.com =
<paul.eggleton@linux.intel.com>>>
> > >>
> > >>
> > >>     On Wednesday 29 May 2013 16:39:48 Martin Jansa wrote:
> > >>      > On Wed, May 29, 2013 at 02:01:11PM +0100, Katu Txakur =
wrote:
> > >>      > > Hi,
> > >>      > > I'm failing to load a kernel module named spike doing =
this:
> > >>      > > 1) add the recipe (inherit module), based in a Makefile =
with
> > >>      > > modules_install:
> > >>      > > $(MAKE) INSTALL_MOD_DIR=3Dkernel/**drivers/spike -C =
$(KERNEL_SRC)
> > >>     M=3D$(SRC)
> > >>      > > modules_install
> > >>      > > 2) Add the package to the image with IMAGE_INSTALL +=3D =
"spike"
> > >>     in the
> > >>      > > local.conf file
> > >>      > > 3) In the machine/mymachine.conf I've added
> > >>      > >
> > >>      > >         MACHINE_ESSENTIAL_EXTRA_**RRECOMMENDS +=3D =
"spike"
> > >>      > >         module_autoload_spike =3D "spike"
> > >>      > >
> > >>      > > The driver gets added to the image and I can load it =
with
> > >>     insmod spike,
> > >>      > > however, I would like to load it at boot time.
> > >>      > > A workaround is to create a file with the name =
spike.conf and
> > >>     write spike
> > >>      > > inside. Copying that file to =
/etc/modules-load.d/spike.conf
> > >>      > > loads the driver correctly, but I need to do it from a =
recipe.
> > >>      > >
> > >>      > > Can anyone spot what am I doing wrong?
> > >>      >
> > >>      > module_autoload won't work with external module unless you
> > >>     inherit also
> > >>      > kernel-module-split
> > >>
> > >>     Note that module.bbclass already does this, so if the =
external
> > >>     module recipe
> > >>     already does "inherit module" then that is not the problem.
> > >>
> > >>     Cheers,
> > >>     Paul
> > >>
> > >>     --
> > >>
> > >>     Paul Eggleton
> > >>     Intel Open Source Technology Centre
> > >>
> > >>
> > >>
> > >>
> > >> ______________________________**_________________
> > >> yocto mailing list
> > >> yocto@yoctoproject.org
> > >> =
https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject=
.org/listinfo/yocto>
> > >>
> > >>
> > >
>=20
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_FE70984D-91B2-4859-8BB2-77586D25D920
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv="Content-Type" content="text/html charset=iso-8859-1"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><br><div><div>On May 30, 2013, at 1:49 AM, Katu Txakur &lt;<a href="mailto:katutxakurra@gmail.com">katutxakurra@gmail.com</a>&gt; wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite"><div dir="ltr">Thanks again Martin,<div style="">I tried with that&nbsp;kernel-module-split.bbclass but although I got no errors, it didn't work :(</div><div style="">Can I create the file spike.conf and tell the recipe or the Makefile to copy it to /etc/modules-load.d ?</div>
<div style="">how can I do that?</div><div style=""><br></div></div></blockquote><div><br></div><div>Did you add the&nbsp;module_autoload_foo = "foo" where kernel-module-foo is the module you are interested in</div><div>to your recipe after inheriting module-split class ?</div><div>if not try that</div><br><blockquote type="cite"><div dir="ltr"><div style="">Thanks again, I would be completely stuck without your help</div><div style="">Katu</div></div><div class="gmail_extra"><br><br><div class="gmail_quote">2013/5/29 Martin Jansa <span dir="ltr">&lt;<a href="mailto:martin.jansa@gmail.com" target="_blank">martin.jansa@gmail.com</a>&gt;</span><br>
<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class="im">On Wed, May 29, 2013 at 04:48:58PM +0100, Katu Txakur wrote:<br>
&gt; Guys,<br>
&gt; I'm using the gumstix repo<br>
&gt; <a href="https://github.com/gumstix/Gumstix-YoctoProject-Repo" target="_blank">https://github.com/gumstix/Gumstix-YoctoProject-Repo</a> and I don't have any<br>
&gt; module-split bbclass.<br>
&gt; The module.bbclass inherits module-base.bbclass and module_strip.bbclass,<br>
&gt; but the latest is empty.<br>
&gt; Do you think my problem could be related with that? module_strip is also<br>
&gt; inherited by kernel.bbclass<br>
<br>
</div>That looks like danny release, so you don't have this commit<br>
<a href="http://git.openembedded.org/openembedded-core/commit/meta/classes/kernel-module-split.bbclass?id=51928b6b5ca0a46a9dcd754483a19af58b95fa18" target="_blank">http://git.openembedded.org/openembedded-core/commit/meta/classes/kernel-module-split.bbclass?id=51928b6b5ca0a46a9dcd754483a19af58b95fa18</a><br>

<br>
You can backport it if you want, but without this module_autoload won't<br>
work for external modules.<br>
<div class="im"><br>
&gt; 2013/5/29 Bruce Ashfield &lt;<a href="mailto:bruce.ashfield@windriver.com">bruce.ashfield@windriver.com</a>&gt;<br>
&gt;<br>
&gt; &gt; On 13-05-29 11:32 AM, Katu Txakur wrote:<br>
&gt; &gt;<br>
&gt; &gt;&gt; Martin, Paul, thanks for your help.<br>
&gt; &gt;&gt; Yes, the recipe does inherit module.<br>
&gt; &gt;&gt; Any other problem that you can think off?<br>
&gt; &gt;&gt;<br>
&gt; &gt;<br>
&gt; &gt; Note: if you are on master, Martin said "module-split", not<br>
&gt; &gt; "module".<br>
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
&gt; &gt;&gt; 2013/5/29 Paul Eggleton &lt;<a href="mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.intel.com</a><br>
</div>&gt; &gt;&gt; &lt;mailto:<a href="mailto:paul.eggleton@linux.">paul.eggleton@linux.</a>**<a href="http://intel.com/" target="_blank">intel.com</a> &lt;<a href="mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.intel.com</a>&gt;&gt;&gt;<br>

<div class="im">&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; &nbsp; &nbsp; On Wednesday 29 May 2013 16:39:48 Martin Jansa wrote:<br>
&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; On Wed, May 29, 2013 at 02:01:11PM +0100, Katu Txakur wrote:<br>
&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; &gt; Hi,<br>
&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; &gt; I'm failing to load a kernel module named spike doing this:<br>
&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; &gt; 1) add the recipe (inherit module), based in a Makefile with<br>
&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; &gt; modules_install:<br>
</div>&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; &gt; $(MAKE) INSTALL_MOD_DIR=kernel/**drivers/spike -C $(KERNEL_SRC)<br>
<div class="im">&gt; &gt;&gt; &nbsp; &nbsp; M=$(SRC)<br>
&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; &gt; modules_install<br>
&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; &gt; 2) Add the package to the image with IMAGE_INSTALL += "spike"<br>
&gt; &gt;&gt; &nbsp; &nbsp; in the<br>
&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; &gt; local.conf file<br>
&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; &gt; 3) In the machine/mymachine.conf I've added<br>
&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; &gt;<br>
</div>&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; MACHINE_ESSENTIAL_EXTRA_**RRECOMMENDS += "spike"<br>
<div class="im">&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; module_autoload_spike = "spike"<br>
&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; &gt;<br>
&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; &gt; The driver gets added to the image and I can load it with<br>
&gt; &gt;&gt; &nbsp; &nbsp; insmod spike,<br>
&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; &gt; however, I would like to load it at boot time.<br>
&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; &gt; A workaround is to create a file with the name spike.conf and<br>
&gt; &gt;&gt; &nbsp; &nbsp; write spike<br>
&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; &gt; inside. Copying that file to /etc/modules-load.d/spike.conf<br>
&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; &gt; loads the driver correctly, but I need to do it from a recipe.<br>
&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; &gt;<br>
&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; &gt; Can anyone spot what am I doing wrong?<br>
&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt;<br>
&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; module_autoload won't work with external module unless you<br>
&gt; &gt;&gt; &nbsp; &nbsp; inherit also<br>
&gt; &gt;&gt; &nbsp; &nbsp; &nbsp;&gt; kernel-module-split<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; &nbsp; &nbsp; Note that module.bbclass already does this, so if the external<br>
&gt; &gt;&gt; &nbsp; &nbsp; module recipe<br>
&gt; &gt;&gt; &nbsp; &nbsp; already does "inherit module" then that is not the problem.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; &nbsp; &nbsp; Cheers,<br>
&gt; &gt;&gt; &nbsp; &nbsp; Paul<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; &nbsp; &nbsp; --<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; &nbsp; &nbsp; Paul Eggleton<br>
&gt; &gt;&gt; &nbsp; &nbsp; Intel Open Source Technology Centre<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
</div>&gt; &gt;&gt; ______________________________**_________________<br>
&gt; &gt;&gt; yocto mailing list<br>
&gt; &gt;&gt; <a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt; &gt;&gt; <a href="https://lists.yoctoproject./" target="_blank">https://lists.yoctoproject.</a>**org/listinfo/yocto&lt;<a href="https://lists.yoctoproject.org/listinfo/yocto" target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a>&gt;<br>

<div class="im HOEnZb">&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;<br>
<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt; <a href="https://lists.yoctoproject.org/listinfo/yocto" target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
<br>
</div><div class="HOEnZb"><div class="h5">--<br>
Martin 'JaMa' Jansa &nbsp; &nbsp; jabber: <a href="mailto:Martin.Jansa@gmail.com">Martin.Jansa@gmail.com</a><br>
</div></div></blockquote></div><br></div>
_______________________________________________<br>yocto mailing list<br><a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>https://lists.yoctoproject.org/listinfo/yocto<br></blockquote></div><br></body></html>

--Apple-Mail=_FE70984D-91B2-4859-8BB2-77586D25D920--
