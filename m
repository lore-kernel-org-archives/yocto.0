Return-Path: <katutxakurra@gmail.com>
Received: from mail-we0-f177.google.com (mail-we0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E885E004CF
	for <yocto@yoctoproject.org>; Thu, 30 May 2013 09:44:08 -0700 (PDT)
Received: by mail-we0-f177.google.com with SMTP id n57so441512wev.22
	for <yocto@yoctoproject.org>; Thu, 30 May 2013 09:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=LoUuehgH9PRKM4dDa0cvfGlIioZuBfjxfi5IXo//gUo=;
	b=b9lxpAvcq34h7bUY80oJq9murtGQ5qv+dgfSYePcXw3Uwsk4Pie22lBjmspYrN1mkc
	A9lQdQKNf3Q2dVQdv6bWU8wgcYJ9bl6ec+ep3i/9g1IvlIKO6PAQICK2s7SLskRnfEYX
	uJvu6xSehjWGw8gV00WSZXqbYElh0tNTuAzPa05giQv7NkgB9Q+5VCvbXnb3APWdfCuV
	dlDuUU+k9S6GJGygwQjqrZBJ+i308fqLkDq6B+n/1q8IQNCAfh3skxMYHqcK+ryxJZ30
	vxF1C+gghnmb/2gK2dOdJ5HzQNQzUK7FdGUdpzJmyNWEV+yKy7sP7KYEbE8LnZ9KTmGn
	ning==
MIME-Version: 1.0
X-Received: by 10.194.216.105 with SMTP id op9mr5662860wjc.17.1369932247734;
	Thu, 30 May 2013 09:44:07 -0700 (PDT)
Received: by 10.194.143.114 with HTTP; Thu, 30 May 2013 09:44:07 -0700 (PDT)
In-Reply-To: <20130530113405.GA24725@jama>
References: <CAM1ZcoV_9+XL=Xef62zSo8y7LTLtfYj9DyRhy5dqpcW84=sy_g@mail.gmail.com>
	<20130529143948.GM3192@jama> <2809625.nUpYsyq62m@helios>
	<CAM1ZcoX-oZUqGky3NjVy5OZnGonwDS9RyJ59AnE2B8dDW=ujsA@mail.gmail.com>
	<51A6200C.6030904@windriver.com>
	<CAM1ZcoX5H=qsUt6Dg=0OMT3-5xYvt4JrZpFfsvMEWnU9yEGggQ@mail.gmail.com>
	<20130529161447.GP3192@jama>
	<CAM1ZcoU5-YGrxQnYZQLHS7Ej-7t0C0yTuOYj-BCPDYd=H4FU_w@mail.gmail.com>
	<20130530113405.GA24725@jama>
Date: Thu, 30 May 2013 17:44:07 +0100
Message-ID: <CAM1ZcoU_F=_FHT72ROzQPU5+UpJSMcuDW7exdbYXomSrDSgLiw@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
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
X-List-Received-Date: Thu, 30 May 2013 16:44:09 -0000
Content-Type: multipart/alternative; boundary=089e013cc304fe21e104ddf23443

--089e013cc304fe21e104ddf23443
Content-Type: text/plain; charset=ISO-8859-1

Hi,
yes, I copied the file directly and you're right, it didn't work.
I did the same thing with the danny compatible file and now it's working :)
so, the solution was:

1) copy the kernel-module-split.bbclass<https://github.com/openwebos/meta-webos/blob/c5a3676e69ab54d62f29d7bbeb6a4ac517eb1c33/classes/kernel-module-split.bbclass>
to
your layer
2) add inherit module kernel-module-split to the recipe of your driver
3) in the machine.conf file add
MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "mydriver"
module_autoload_mydriver += "mydriver"

Thanks a lot for your help, I can now jump to the next problem! :)
Katu



2013/5/30 Martin Jansa <martin.jansa@gmail.com>

> On Thu, May 30, 2013 at 09:49:13AM +0100, Katu Txakur wrote:
> > Thanks again Martin,
> > I tried with that kernel-module-split.bbclass but although I got no
> errors,
> > it didn't work :(
>
> Did you just copy that file from master/dylan to danny? It wont work,
> because it depends also on other changes, e.g.
>
>
> http://git.openembedded.org/openembedded-core/commit/meta/classes/package.bbclass?id=5aa52c6882d2929b2e530c4fa297c6d3e97d4f9f
>
> This version of that class is compatible with danny:
>
> https://github.com/openwebos/meta-webos/commit/c5a3676e69ab54d62f29d7bbeb6a4ac517eb1c33
>
> and this is the usage:
>
> https://github.com/openwebos/meta-webos/commit/c9f91ecf31ebb602a8a86c8e2017ca431e2623e8
>
> > Can I create the file spike.conf and tell the recipe or the Makefile to
> > copy it to /etc/modules-load.d ?
> > how can I do that?
>
> Yes you can do the same in recipe as what that bbclass does in more
> generic way, depends on how many modules you need to fix..
>
>
> >
> > Thanks again, I would be completely stuck without your help
> > Katu
> >
> >
> > 2013/5/29 Martin Jansa <martin.jansa@gmail.com>
> >
> > > On Wed, May 29, 2013 at 04:48:58PM +0100, Katu Txakur wrote:
> > > > Guys,
> > > > I'm using the gumstix repo
> > > > https://github.com/gumstix/Gumstix-YoctoProject-Repo and I don't
> have
> > > any
> > > > module-split bbclass.
> > > > The module.bbclass inherits module-base.bbclass and
> module_strip.bbclass,
> > > > but the latest is empty.
> > > > Do you think my problem could be related with that? module_strip is
> also
> > > > inherited by kernel.bbclass
> > >
> > > That looks like danny release, so you don't have this commit
> > >
> > >
> http://git.openembedded.org/openembedded-core/commit/meta/classes/kernel-module-split.bbclass?id=51928b6b5ca0a46a9dcd754483a19af58b95fa18
> > >
> > > You can backport it if you want, but without this module_autoload won't
> > > work for external modules.
> > >
> > > > 2013/5/29 Bruce Ashfield <bruce.ashfield@windriver.com>
> > > >
> > > > > On 13-05-29 11:32 AM, Katu Txakur wrote:
> > > > >
> > > > >> Martin, Paul, thanks for your help.
> > > > >> Yes, the recipe does inherit module.
> > > > >> Any other problem that you can think off?
> > > > >>
> > > > >
> > > > > Note: if you are on master, Martin said "module-split", not
> > > > > "module".
> > > > >
> > > > > Cheers,
> > > > >
> > > > > Bruce
> > > > >
> > > > >
> > > > >> Thanks a lot in advance,
> > > > >> Katu
> > > > >>
> > > > >>
> > > > >> 2013/5/29 Paul Eggleton <paul.eggleton@linux.intel.com
> > > > >> <mailto:paul.eggleton@linux.**intel.com <
> > > paul.eggleton@linux.intel.com>>>
> > > > >>
> > > > >>
> > > > >>     On Wednesday 29 May 2013 16:39:48 Martin Jansa wrote:
> > > > >>      > On Wed, May 29, 2013 at 02:01:11PM +0100, Katu Txakur
> wrote:
> > > > >>      > > Hi,
> > > > >>      > > I'm failing to load a kernel module named spike doing
> this:
> > > > >>      > > 1) add the recipe (inherit module), based in a Makefile
> with
> > > > >>      > > modules_install:
> > > > >>      > > $(MAKE) INSTALL_MOD_DIR=kernel/**drivers/spike -C
> > > $(KERNEL_SRC)
> > > > >>     M=$(SRC)
> > > > >>      > > modules_install
> > > > >>      > > 2) Add the package to the image with IMAGE_INSTALL +=
> "spike"
> > > > >>     in the
> > > > >>      > > local.conf file
> > > > >>      > > 3) In the machine/mymachine.conf I've added
> > > > >>      > >
> > > > >>      > >         MACHINE_ESSENTIAL_EXTRA_**RRECOMMENDS += "spike"
> > > > >>      > >         module_autoload_spike = "spike"
> > > > >>      > >
> > > > >>      > > The driver gets added to the image and I can load it with
> > > > >>     insmod spike,
> > > > >>      > > however, I would like to load it at boot time.
> > > > >>      > > A workaround is to create a file with the name
> spike.conf and
> > > > >>     write spike
> > > > >>      > > inside. Copying that file to
> /etc/modules-load.d/spike.conf
> > > > >>      > > loads the driver correctly, but I need to do it from a
> > > recipe.
> > > > >>      > >
> > > > >>      > > Can anyone spot what am I doing wrong?
> > > > >>      >
> > > > >>      > module_autoload won't work with external module unless you
> > > > >>     inherit also
> > > > >>      > kernel-module-split
> > > > >>
> > > > >>     Note that module.bbclass already does this, so if the external
> > > > >>     module recipe
> > > > >>     already does "inherit module" then that is not the problem.
> > > > >>
> > > > >>     Cheers,
> > > > >>     Paul
> > > > >>
> > > > >>     --
> > > > >>
> > > > >>     Paul Eggleton
> > > > >>     Intel Open Source Technology Centre
> > > > >>
> > > > >>
> > > > >>
> > > > >>
> > > > >> ______________________________**_________________
> > > > >> yocto mailing list
> > > > >> yocto@yoctoproject.org
> > > > >> https://lists.yoctoproject.**org/listinfo/yocto<
> > > https://lists.yoctoproject.org/listinfo/yocto>
> > > > >>
> > > > >>
> > > > >
> > >
> > > > _______________________________________________
> > > > yocto mailing list
> > > > yocto@yoctoproject.org
> > > > https://lists.yoctoproject.org/listinfo/yocto
> > >
> > >
> > > --
> > > Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
> > >
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>

--089e013cc304fe21e104ddf23443
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi,</div><div class=3D"gmail_ex=
tra">yes, I copied the file directly and you&#39;re right, it didn&#39;t wo=
rk.</div><div class=3D"gmail_extra">I did the same thing with the danny com=
patible file and now it&#39;s working :)</div>
<div class=3D"gmail_extra">so, the solution was:</div><div class=3D"gmail_e=
xtra" style><br></div><div class=3D"gmail_extra" style>1) copy the <a href=
=3D"https://github.com/openwebos/meta-webos/blob/c5a3676e69ab54d62f29d7bbeb=
6a4ac517eb1c33/classes/kernel-module-split.bbclass">kernel-module-split.bbc=
lass</a>=A0to your layer</div>
<div class=3D"gmail_extra" style>2) add=A0inherit module kernel-module-spli=
t to the recipe of your driver</div><div class=3D"gmail_extra" style>3) in =
the machine.conf file add</div><div class=3D"gmail_extra" style>MACHINE_ESS=
ENTIAL_EXTRA_RRECOMMENDS +=3D &quot;mydriver&quot;<br>
</div><div class=3D"gmail_extra">module_autoload_mydriver=A0+=3D &quot;mydr=
iver&quot;</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ex=
tra" style>Thanks a lot for your help, I can now jump to the next problem! =
:)</div>
<div class=3D"gmail_extra" style>Katu</div><div class=3D"gmail_extra"><div>=
<br></div><div><br></div><br><div class=3D"gmail_quote">2013/5/30 Martin Ja=
nsa <span dir=3D"ltr">&lt;<a href=3D"mailto:martin.jansa@gmail.com" target=
=3D"_blank">martin.jansa@gmail.com</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D"im">On Thu, May 30, 2013 at 09:49:13AM +0100=
, Katu Txakur wrote:<br>

&gt; Thanks again Martin,<br>
&gt; I tried with that kernel-module-split.bbclass but although I got no er=
rors,<br>
&gt; it didn&#39;t work :(<br>
<br>
</div>Did you just copy that file from master/dylan to danny? It wont work,=
<br>
because it depends also on other changes, e.g.<br>
<br>
<a href=3D"http://git.openembedded.org/openembedded-core/commit/meta/classe=
s/package.bbclass?id=3D5aa52c6882d2929b2e530c4fa297c6d3e97d4f9f" target=3D"=
_blank">http://git.openembedded.org/openembedded-core/commit/meta/classes/p=
ackage.bbclass?id=3D5aa52c6882d2929b2e530c4fa297c6d3e97d4f9f</a><br>

<br>
This version of that class is compatible with danny:<br>
<a href=3D"https://github.com/openwebos/meta-webos/commit/c5a3676e69ab54d62=
f29d7bbeb6a4ac517eb1c33" target=3D"_blank">https://github.com/openwebos/met=
a-webos/commit/c5a3676e69ab54d62f29d7bbeb6a4ac517eb1c33</a><br>
<br>
and this is the usage:<br>
<a href=3D"https://github.com/openwebos/meta-webos/commit/c9f91ecf31ebb602a=
8a86c8e2017ca431e2623e8" target=3D"_blank">https://github.com/openwebos/met=
a-webos/commit/c9f91ecf31ebb602a8a86c8e2017ca431e2623e8</a><br>
<div class=3D"im"><br>
&gt; Can I create the file spike.conf and tell the recipe or the Makefile t=
o<br>
&gt; copy it to /etc/modules-load.d ?<br>
&gt; how can I do that?<br>
<br>
</div>Yes you can do the same in recipe as what that bbclass does in more<b=
r>
generic way, depends on how many modules you need to fix..<br>
<div class=3D""><div class=3D"h5"><br>
<br>
&gt;<br>
&gt; Thanks again, I would be completely stuck without your help<br>
&gt; Katu<br>
&gt;<br>
&gt;<br>
&gt; 2013/5/29 Martin Jansa &lt;<a href=3D"mailto:martin.jansa@gmail.com">m=
artin.jansa@gmail.com</a>&gt;<br>
&gt;<br>
&gt; &gt; On Wed, May 29, 2013 at 04:48:58PM +0100, Katu Txakur wrote:<br>
&gt; &gt; &gt; Guys,<br>
&gt; &gt; &gt; I&#39;m using the gumstix repo<br>
&gt; &gt; &gt; <a href=3D"https://github.com/gumstix/Gumstix-YoctoProject-R=
epo" target=3D"_blank">https://github.com/gumstix/Gumstix-YoctoProject-Repo=
</a> and I don&#39;t have<br>
&gt; &gt; any<br>
&gt; &gt; &gt; module-split bbclass.<br>
&gt; &gt; &gt; The module.bbclass inherits module-base.bbclass and module_s=
trip.bbclass,<br>
&gt; &gt; &gt; but the latest is empty.<br>
&gt; &gt; &gt; Do you think my problem could be related with that? module_s=
trip is also<br>
&gt; &gt; &gt; inherited by kernel.bbclass<br>
&gt; &gt;<br>
&gt; &gt; That looks like danny release, so you don&#39;t have this commit<=
br>
&gt; &gt;<br>
&gt; &gt; <a href=3D"http://git.openembedded.org/openembedded-core/commit/m=
eta/classes/kernel-module-split.bbclass?id=3D51928b6b5ca0a46a9dcd754483a19a=
f58b95fa18" target=3D"_blank">http://git.openembedded.org/openembedded-core=
/commit/meta/classes/kernel-module-split.bbclass?id=3D51928b6b5ca0a46a9dcd7=
54483a19af58b95fa18</a><br>

&gt; &gt;<br>
&gt; &gt; You can backport it if you want, but without this module_autoload=
 won&#39;t<br>
&gt; &gt; work for external modules.<br>
&gt; &gt;<br>
&gt; &gt; &gt; 2013/5/29 Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfiel=
d@windriver.com">bruce.ashfield@windriver.com</a>&gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; On 13-05-29 11:32 AM, Katu Txakur wrote:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;&gt; Martin, Paul, thanks for your help.<br>
&gt; &gt; &gt; &gt;&gt; Yes, the recipe does inherit module.<br>
&gt; &gt; &gt; &gt;&gt; Any other problem that you can think off?<br>
&gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Note: if you are on master, Martin said &quot;module-sp=
lit&quot;, not<br>
&gt; &gt; &gt; &gt; &quot;module&quot;.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Cheers,<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Bruce<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;&gt; Thanks a lot in advance,<br>
&gt; &gt; &gt; &gt;&gt; Katu<br>
&gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt; &gt;&gt; 2013/5/29 Paul Eggleton &lt;<a href=3D"mailto:paul.=
eggleton@linux.intel.com">paul.eggleton@linux.intel.com</a><br>
&gt; &gt; &gt; &gt;&gt; &lt;mailto:<a href=3D"mailto:paul.eggleton@linux.">=
paul.eggleton@linux.</a>**<a href=3D"http://intel.com" target=3D"_blank">in=
tel.com</a> &lt;<br>
&gt; &gt; <a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@li=
nux.intel.com</a>&gt;&gt;&gt;<br>
&gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 On Wednesday 29 May 2013 16:39:48 Martin Ja=
nsa wrote:<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; On Wed, May 29, 2013 at 02:01:11PM =
+0100, Katu Txakur wrote:<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; Hi,<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; I&#39;m failing to load a kern=
el module named spike doing this:<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; 1) add the recipe (inherit mod=
ule), based in a Makefile with<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; modules_install:<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; $(MAKE) INSTALL_MOD_DIR=3Dkern=
el/**drivers/spike -C<br>
&gt; &gt; $(KERNEL_SRC)<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 M=3D$(SRC)<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; modules_install<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; 2) Add the package to the imag=
e with IMAGE_INSTALL +=3D &quot;spike&quot;<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 in the<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; local.conf file<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; 3) In the machine/mymachine.co=
nf I&#39;ve added<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; &gt;<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; =A0 =A0 =A0 =A0 MACHINE_ESSENT=
IAL_EXTRA_**RRECOMMENDS +=3D &quot;spike&quot;<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; =A0 =A0 =A0 =A0 module_autoloa=
d_spike =3D &quot;spike&quot;<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; &gt;<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; The driver gets added to the i=
mage and I can load it with<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 insmod spike,<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; however, I would like to load =
it at boot time.<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; A workaround is to create a fi=
le with the name spike.conf and<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 write spike<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; inside. Copying that file to /=
etc/modules-load.d/spike.conf<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; loads the driver correctly, bu=
t I need to do it from a<br>
&gt; &gt; recipe.<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; &gt;<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; &gt; Can anyone spot what am I doin=
g wrong?<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt;<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; module_autoload won&#39;t work with=
 external module unless you<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 inherit also<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 =A0&gt; kernel-module-split<br>
&gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 Note that module.bbclass already does this,=
 so if the external<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 module recipe<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 already does &quot;inherit module&quot; the=
n that is not the problem.<br>
&gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 Cheers,<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 Paul<br>
&gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 --<br>
&gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 Paul Eggleton<br>
&gt; &gt; &gt; &gt;&gt; =A0 =A0 Intel Open Source Technology Centre<br>
&gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt; &gt;&gt; ______________________________**_________________<b=
r>
&gt; &gt; &gt; &gt;&gt; yocto mailing list<br>
&gt; &gt; &gt; &gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoc=
toproject.org</a><br>
&gt; &gt; &gt; &gt;&gt; <a href=3D"https://lists.yoctoproject." target=3D"_=
blank">https://lists.yoctoproject.</a>**org/listinfo/yocto&lt;<br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a>&gt;<br>
&gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; &gt; _______________________________________________<br>
&gt; &gt; &gt; yocto mailing list<br>
&gt; &gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject=
.org</a><br>
&gt; &gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" ta=
rget=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; Martin &#39;JaMa&#39; Jansa =A0 =A0 jabber: <a href=3D"mailto:Mar=
tin.Jansa@gmail.com">Martin.Jansa@gmail.com</a><br>
&gt; &gt;<br>
<br>
--<br>
Martin &#39;JaMa&#39; Jansa =A0 =A0 jabber: <a href=3D"mailto:Martin.Jansa@=
gmail.com">Martin.Jansa@gmail.com</a><br>
</div></div></blockquote></div><br></div></div>

--089e013cc304fe21e104ddf23443--
