Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f47.google.com (mail-pb0-f47.google.com
	[209.85.160.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DA3CE014E0
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 19:20:54 -0700 (PDT)
Received: by mail-pb0-f47.google.com with SMTP id rq13so612711pbb.34
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 19:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:message-id:references:to:x-mailer;
	bh=8GfQMfVM6MA5G1XI+Lxed1TUfbp9N45l4gToMxZUFnA=;
	b=OUsiY1iLwjQYTUh+8vcnHpoc2W3QIn26aNoAbwFXbafJp/LcizEzffwTppnuqCy+qu
	0Nd5TW5r2uhaBKxTovnBe6yagByAt3rkPQ1JZAa3YP6x0FVjhq5wmCA9J9FcrU6GaSat
	YAn01OwPcjj0pewZGJOE07BnIIWeRXgd095rdZ9L8dLFg/lZJV9Qaszu3m53vw4tra6x
	uoWdcIPY9fAHgrY42yMeNM/2yCzlsNcxwlG9yjVWIB4/dNV+jACZ7qsn5s09hn7VCcvs
	74u2VUyMjVg04ro2rbyF23mipc6eq1Cnask1973fvrQZ+yOqsdj2qNjsX0jm43LmSM2Q
	o5qA==
X-Received: by 10.66.117.196 with SMTP id kg4mr6256077pab.95.1366165254181;
	Tue, 16 Apr 2013 19:20:54 -0700 (PDT)
Received: from jchheda-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPS id to7sm5022930pab.0.2013.04.16.19.20.52
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 16 Apr 2013 19:20:53 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CANwz6nzHjD3y2-XD-M+s3i1yPW9GBUtsvz6NuY8qPkFcDb2DpQ@mail.gmail.com>
Date: Tue, 16 Apr 2013 19:20:54 -0700
Message-Id: <7DBC9C62-8E55-407C-8594-813FB57E0712@gmail.com>
References: <CANwz6nwRC9D4KUa8BEJF3siCbu9KCf9khgpmH2kV_Rcp9esZKA@mail.gmail.com>
	<CAHUNapTftvQZHdtfqZ6orYoi2BsVHFVsO-yT-myS+daKxeQjEA@mail.gmail.com>
	<CANwz6nyiR-dOb2owu_dXV_kQNH4JZRWrgfO3Z0hnkKui_sJ-6g@mail.gmail.com>
	<20130416195422.GU10628@jama.dyndns-home.com>
	<CANwz6nxuc1SP_5hw-4E_u6of1f-XvFROKVfO3vxXkT1_zx4Pyg@mail.gmail.com>
	<20130416210616.GC29302@jama.dyndns-home.com>
	<CANwz6nzHjD3y2-XD-M+s3i1yPW9GBUtsvz6NuY8qPkFcDb2DpQ@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
X-Mailer: Apple Mail (2.1503)
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
X-List-Received-Date: Wed, 17 Apr 2013 02:20:54 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_8E72191A-6C27-42C2-A4FA-36F69D6B4829"

--Apple-Mail=_8E72191A-6C27-42C2-A4FA-36F69D6B4829
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On Apr 16, 2013, at 3:51 PM, Edward Vidal <vidal.develone@gmail.com> =
wrote:

>=20
> Martin,
> I should be able to add meta-openembedded like I added meta-ti by =
adding to bblayers.conf is that correct?
> I fetch with git clone git://openembedded.org/meta-openembedded

use the github mirrors always

e.g.

https://github.com/openembedded/meta-oe

> Thanks
>=20
>=20
> On Tue, Apr 16, 2013 at 3:06 PM, Martin Jansa <martin.jansa@gmail.com> =
wrote:
> On Tue, Apr 16, 2013 at 02:40:21PM -0600, Edward Vidal wrote:
> > Can you point me to where I can find
> >
> > gnuradio is already in meta-oe and jenkins is building it every day =
with
> > it :).
> > I did a search meta-oe jenkins nothing seems to come up I have seen
> > meta-gnurado as part 0f Angstrom.  I believe that is for the =
processor
> > in the ettus research board.
>=20
> I meant this:
> =
http://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-connect=
ivity/gnuradio/gnuradio_git.bb
> not sure what you're looking for.
>=20
> > On Tue, Apr 16, 2013 at 1:54 PM, Martin Jansa =
<martin.jansa@gmail.com>wrote:
> >
> > > On Tue, Apr 16, 2013 at 01:49:13PM -0600, Edward Vidal wrote:
> > > > With that said how does Angstrom which uses opkg upgrades images =
that are
> > > > build with Angstrom.   I prefer Yocto but I had some pre-built =
image that
> > >
> > > The same mechanism as Ross and Trevor said.
> > >
> > > > came with my beagleboard and I used opkg upgrade  and opkg =
install
> > > > gfortran.   Also has anyone built gfortran, libgfortran, and =
numpy?
> > > > Currently these are some dependencies that I need for GNURADIO?
> > > > Thanks Any and all help is appreciated
> > > > Ed
> > >
> > > gnuradio is already in meta-oe and jenkins is building it every =
day with
> > > it :).
> > >
> > > --
> > > Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
> > >
>=20
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_8E72191A-6C27-42C2-A4FA-36F69D6B4829
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv="Content-Type" content="text/html charset=iso-8859-1"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><br><div><div>On Apr 16, 2013, at 3:51 PM, Edward Vidal &lt;<a href="mailto:vidal.develone@gmail.com">vidal.develone@gmail.com</a>&gt; wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite"><div dir="ltr"><div><div><div><div><br></div>Martin,<br></div>I should be able to add meta-openembedded like I added meta-ti by adding to bblayers.conf is that correct?<br></div>I fetch with git clone git://<a href="http://openembedded.org/meta-openembedded">openembedded.org/meta-openembedded</a><br></div></div></blockquote><div><br></div><div>use the github mirrors always</div><div><br></div><div>e.g.</div><div><br></div><div><a href="https://github.com/openembedded/meta-oe">https://github.com/openembedded/meta-oe</a></div><br><blockquote type="cite"><div dir="ltr"><div>
</div>Thanks<br></div><div class="gmail_extra"><br><br><div class="gmail_quote">On Tue, Apr 16, 2013 at 3:06 PM, Martin Jansa <span dir="ltr">&lt;<a href="mailto:martin.jansa@gmail.com" target="_blank">martin.jansa@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class="im">On Tue, Apr 16, 2013 at 02:40:21PM -0600, Edward Vidal wrote:<br>
&gt; Can you point me to where I can find<br>
&gt;<br>
&gt; gnuradio is already in meta-oe and jenkins is building it every day with<br>
&gt; it :).<br>
&gt; I did a search meta-oe jenkins nothing seems to come up I have seen<br>
&gt; meta-gnurado as part 0f Angstrom. &nbsp;I believe that is for the processor<br>
&gt; in the ettus research board.<br>
<br>
</div>I meant this:<br>
<a href="http://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-connectivity/gnuradio/gnuradio_git.bb" target="_blank">http://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-connectivity/gnuradio/gnuradio_git.bb</a><br>

not sure what you're looking for.<br>
<div class="HOEnZb"><div class="h5"><br>
&gt; On Tue, Apr 16, 2013 at 1:54 PM, Martin Jansa &lt;<a href="mailto:martin.jansa@gmail.com">martin.jansa@gmail.com</a>&gt;wrote:<br>
&gt;<br>
&gt; &gt; On Tue, Apr 16, 2013 at 01:49:13PM -0600, Edward Vidal wrote:<br>
&gt; &gt; &gt; With that said how does Angstrom which uses opkg upgrades images that are<br>
&gt; &gt; &gt; build with Angstrom. &nbsp; I prefer Yocto but I had some pre-built image that<br>
&gt; &gt;<br>
&gt; &gt; The same mechanism as Ross and Trevor said.<br>
&gt; &gt;<br>
&gt; &gt; &gt; came with my beagleboard and I used opkg upgrade &nbsp;and opkg install<br>
&gt; &gt; &gt; gfortran. &nbsp; Also has anyone built gfortran, libgfortran, and numpy?<br>
&gt; &gt; &gt; Currently these are some dependencies that I need for GNURADIO?<br>
&gt; &gt; &gt; Thanks Any and all help is appreciated<br>
&gt; &gt; &gt; Ed<br>
&gt; &gt;<br>
&gt; &gt; gnuradio is already in meta-oe and jenkins is building it every day with<br>
&gt; &gt; it :).<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; Martin 'JaMa' Jansa &nbsp; &nbsp; jabber: <a href="mailto:Martin.Jansa@gmail.com">Martin.Jansa@gmail.com</a><br>
&gt; &gt;<br>
<br>
--<br>
Martin 'JaMa' Jansa &nbsp; &nbsp; jabber: <a href="mailto:Martin.Jansa@gmail.com">Martin.Jansa@gmail.com</a><br>
</div></div></blockquote></div><br></div>
_______________________________________________<br>yocto mailing list<br><a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>https://lists.yoctoproject.org/listinfo/yocto<br></blockquote></div><br></body></html>

--Apple-Mail=_8E72191A-6C27-42C2-A4FA-36F69D6B4829--
