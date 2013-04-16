Return-Path: <vidal.develone@gmail.com>
Received: from mail-ea0-f180.google.com (mail-ea0-f180.google.com
	[209.85.215.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0074E014DD
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 15:51:07 -0700 (PDT)
Received: by mail-ea0-f180.google.com with SMTP id d10so454249eaj.39
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 15:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=W2dT8xCD/td+z30/rBVJtqMhKEpOTPDtHQVW959EGnc=;
	b=JaWQ7O2k+OWb38mNQ+8ofp924VYjM37myCa+R5JkFCjQbSjo6dBWeuUZ8w50k8y4Hi
	kUShELc7k/57LEz8un1uE1icj9G5wcWbmIyoHnq3VCR1Ukm1LTdxmuBjAWx3kpoo9AY1
	3ZLx1f9eQzVPydsuoXbTB1ap+oBkFlEARF5mb822oWQJhOamkhGL4mY/uC0kKvydBnWM
	q1+WdNTDxOZXw1yntINwKMIfARYmAZMUr3hck0jECC48qYRP4Z3XB1tktTZtPA34Ddeh
	QJB0A+7NO56CTQCkSNhy4vC2JU63CWu3Bj/APbxUPEARd+BYtt3pNXIc6LwAT/tNvmMh
	M0bA==
MIME-Version: 1.0
X-Received: by 10.14.149.141 with SMTP id x13mr11264261eej.31.1366152666588;
	Tue, 16 Apr 2013 15:51:06 -0700 (PDT)
Received: by 10.223.168.6 with HTTP; Tue, 16 Apr 2013 15:51:06 -0700 (PDT)
In-Reply-To: <20130416210616.GC29302@jama.dyndns-home.com>
References: <CANwz6nwRC9D4KUa8BEJF3siCbu9KCf9khgpmH2kV_Rcp9esZKA@mail.gmail.com>
	<CAHUNapTftvQZHdtfqZ6orYoi2BsVHFVsO-yT-myS+daKxeQjEA@mail.gmail.com>
	<CANwz6nyiR-dOb2owu_dXV_kQNH4JZRWrgfO3Z0hnkKui_sJ-6g@mail.gmail.com>
	<20130416195422.GU10628@jama.dyndns-home.com>
	<CANwz6nxuc1SP_5hw-4E_u6of1f-XvFROKVfO3vxXkT1_zx4Pyg@mail.gmail.com>
	<20130416210616.GC29302@jama.dyndns-home.com>
Date: Tue, 16 Apr 2013 16:51:06 -0600
Message-ID: <CANwz6nzHjD3y2-XD-M+s3i1yPW9GBUtsvz6NuY8qPkFcDb2DpQ@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Repository to upgrade images
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
X-List-Received-Date: Tue, 16 Apr 2013 22:51:08 -0000
Content-Type: multipart/alternative; boundary=089e0163449866cb5504da823459

--089e0163449866cb5504da823459
Content-Type: text/plain; charset=ISO-8859-1

Martin,
I should be able to add meta-openembedded like I added meta-ti by adding to
bblayers.conf is that correct?
I fetch with git clone git://openembedded.org/meta-openembedded
Thanks


On Tue, Apr 16, 2013 at 3:06 PM, Martin Jansa <martin.jansa@gmail.com>wrote:

> On Tue, Apr 16, 2013 at 02:40:21PM -0600, Edward Vidal wrote:
> > Can you point me to where I can find
> >
> > gnuradio is already in meta-oe and jenkins is building it every day with
> > it :).
> > I did a search meta-oe jenkins nothing seems to come up I have seen
> > meta-gnurado as part 0f Angstrom.  I believe that is for the processor
> > in the ettus research board.
>
> I meant this:
>
> http://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-connectivity/gnuradio/gnuradio_git.bb
> not sure what you're looking for.
>
> > On Tue, Apr 16, 2013 at 1:54 PM, Martin Jansa <martin.jansa@gmail.com
> >wrote:
> >
> > > On Tue, Apr 16, 2013 at 01:49:13PM -0600, Edward Vidal wrote:
> > > > With that said how does Angstrom which uses opkg upgrades images
> that are
> > > > build with Angstrom.   I prefer Yocto but I had some pre-built image
> that
> > >
> > > The same mechanism as Ross and Trevor said.
> > >
> > > > came with my beagleboard and I used opkg upgrade  and opkg install
> > > > gfortran.   Also has anyone built gfortran, libgfortran, and numpy?
> > > > Currently these are some dependencies that I need for GNURADIO?
> > > > Thanks Any and all help is appreciated
> > > > Ed
> > >
> > > gnuradio is already in meta-oe and jenkins is building it every day
> with
> > > it :).
> > >
> > > --
> > > Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
> > >
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>

--089e0163449866cb5504da823459
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><br></div>Martin,<br></div>I should be=
 able to add meta-openembedded like I added meta-ti by adding to bblayers.c=
onf is that correct?<br></div>I fetch with git clone git://<a href=3D"http:=
//openembedded.org/meta-openembedded">openembedded.org/meta-openembedded</a=
><br>
</div>Thanks<br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmai=
l_quote">On Tue, Apr 16, 2013 at 3:06 PM, Martin Jansa <span dir=3D"ltr">&l=
t;<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@=
gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Tue, Apr 16, 2013 at 02=
:40:21PM -0600, Edward Vidal wrote:<br>
&gt; Can you point me to where I can find<br>
&gt;<br>
&gt; gnuradio is already in meta-oe and jenkins is building it every day wi=
th<br>
&gt; it :).<br>
&gt; I did a search meta-oe jenkins nothing seems to come up I have seen<br=
>
&gt; meta-gnurado as part 0f Angstrom. =A0I believe that is for the process=
or<br>
&gt; in the ettus research board.<br>
<br>
</div>I meant this:<br>
<a href=3D"http://git.openembedded.org/meta-openembedded/tree/meta-oe/recip=
es-connectivity/gnuradio/gnuradio_git.bb" target=3D"_blank">http://git.open=
embedded.org/meta-openembedded/tree/meta-oe/recipes-connectivity/gnuradio/g=
nuradio_git.bb</a><br>

not sure what you&#39;re looking for.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; On Tue, Apr 16, 2013 at 1:54 PM, Martin Jansa &lt;<a href=3D"mailto:ma=
rtin.jansa@gmail.com">martin.jansa@gmail.com</a>&gt;wrote:<br>
&gt;<br>
&gt; &gt; On Tue, Apr 16, 2013 at 01:49:13PM -0600, Edward Vidal wrote:<br>
&gt; &gt; &gt; With that said how does Angstrom which uses opkg upgrades im=
ages that are<br>
&gt; &gt; &gt; build with Angstrom. =A0 I prefer Yocto but I had some pre-b=
uilt image that<br>
&gt; &gt;<br>
&gt; &gt; The same mechanism as Ross and Trevor said.<br>
&gt; &gt;<br>
&gt; &gt; &gt; came with my beagleboard and I used opkg upgrade =A0and opkg=
 install<br>
&gt; &gt; &gt; gfortran. =A0 Also has anyone built gfortran, libgfortran, a=
nd numpy?<br>
&gt; &gt; &gt; Currently these are some dependencies that I need for GNURAD=
IO?<br>
&gt; &gt; &gt; Thanks Any and all help is appreciated<br>
&gt; &gt; &gt; Ed<br>
&gt; &gt;<br>
&gt; &gt; gnuradio is already in meta-oe and jenkins is building it every d=
ay with<br>
&gt; &gt; it :).<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; Martin &#39;JaMa&#39; Jansa =A0 =A0 jabber: <a href=3D"mailto:Mar=
tin.Jansa@gmail.com">Martin.Jansa@gmail.com</a><br>
&gt; &gt;<br>
<br>
--<br>
Martin &#39;JaMa&#39; Jansa =A0 =A0 jabber: <a href=3D"mailto:Martin.Jansa@=
gmail.com">Martin.Jansa@gmail.com</a><br>
</div></div></blockquote></div><br></div>

--089e0163449866cb5504da823459--
