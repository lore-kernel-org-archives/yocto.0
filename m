Return-Path: <vidal.develone@gmail.com>
Received: from mail-ee0-f49.google.com (mail-ee0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC73FE01469
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 13:40:22 -0700 (PDT)
Received: by mail-ee0-f49.google.com with SMTP id l10so428087eei.8
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 13:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=qycVpk4IaZbRp472P8mZ1i2Xm8wvdERhXqdHnZe3e48=;
	b=W6tHFJBa9A3FcYn9ydvihG38D3g4iIlH0abqc04lmQNRhTywWPftqh1Io5a1WMJk8i
	AkOFwtZmS1QgGNeUtTsmIOdra3IhUrH+A9R2z8a6P7G4byJs4tCdyb7OpoGmt2q51eDh
	8I+8sBPxMQuH/z9SOSvOmHmBvrtj6Ee/FZNRMZgz5r3rB9BkU0cDz9aomoaykQmG/xhl
	vtTwM3S5JKMvE/3/jdRHC7NHqrmnVQ2wTjLeb8Ju1ovbBYxVSDsGsfF0h6yo9/Y2YcXP
	T4qIKGTmxlSmRWryEaZqd8/I1slaQHJe6EyYOttS88tVsy11gN/tu3mH8g2RYV5VmGyg
	pOcw==
MIME-Version: 1.0
X-Received: by 10.14.218.66 with SMTP id j42mr9987705eep.46.1366144821669;
	Tue, 16 Apr 2013 13:40:21 -0700 (PDT)
Received: by 10.223.168.6 with HTTP; Tue, 16 Apr 2013 13:40:21 -0700 (PDT)
In-Reply-To: <20130416195422.GU10628@jama.dyndns-home.com>
References: <CANwz6nwRC9D4KUa8BEJF3siCbu9KCf9khgpmH2kV_Rcp9esZKA@mail.gmail.com>
	<CAHUNapTftvQZHdtfqZ6orYoi2BsVHFVsO-yT-myS+daKxeQjEA@mail.gmail.com>
	<CANwz6nyiR-dOb2owu_dXV_kQNH4JZRWrgfO3Z0hnkKui_sJ-6g@mail.gmail.com>
	<20130416195422.GU10628@jama.dyndns-home.com>
Date: Tue, 16 Apr 2013 14:40:21 -0600
Message-ID: <CANwz6nxuc1SP_5hw-4E_u6of1f-XvFROKVfO3vxXkT1_zx4Pyg@mail.gmail.com>
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
X-List-Received-Date: Tue, 16 Apr 2013 20:40:23 -0000
Content-Type: multipart/alternative; boundary=047d7b62462acedfdc04da8060bf

--047d7b62462acedfdc04da8060bf
Content-Type: text/plain; charset=ISO-8859-1

Can you point me to where I can find

gnuradio is already in meta-oe and jenkins is building it every day with
it :).
I did a search meta-oe jenkins nothing seems to come up I have seen
meta-gnurado as part 0f Angstrom.  I believe that is for the processor
in the ettus research board.

Thanks



On Tue, Apr 16, 2013 at 1:54 PM, Martin Jansa <martin.jansa@gmail.com>wrote:

> On Tue, Apr 16, 2013 at 01:49:13PM -0600, Edward Vidal wrote:
> > With that said how does Angstrom which uses opkg upgrades images that are
> > build with Angstrom.   I prefer Yocto but I had some pre-built image that
>
> The same mechanism as Ross and Trevor said.
>
> > came with my beagleboard and I used opkg upgrade  and opkg install
> > gfortran.   Also has anyone built gfortran, libgfortran, and numpy?
> > Currently these are some dependencies that I need for GNURADIO?
> > Thanks Any and all help is appreciated
> > Ed
>
> gnuradio is already in meta-oe and jenkins is building it every day with
> it :).
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>

--047d7b62462acedfdc04da8060bf
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Can you point me to where I can find <br><pre>gnuradio is =
already in meta-oe and jenkins is building it every day with
it :).
I did a search meta-oe jenkins nothing seems to come up I have seen meta-gn=
urado as part 0f Angstrom.  I believe that is for the processor in the ettu=
s research board.<br><br></pre><pre>Thanks<br><br></pre></div><div class=3D=
"gmail_extra">
<br><br><div class=3D"gmail_quote">On Tue, Apr 16, 2013 at 1:54 PM, Martin =
Jansa <span dir=3D"ltr">&lt;<a href=3D"mailto:martin.jansa@gmail.com" targe=
t=3D"_blank">martin.jansa@gmail.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">
<div class=3D"im">On Tue, Apr 16, 2013 at 01:49:13PM -0600, Edward Vidal wr=
ote:<br>
&gt; With that said how does Angstrom which uses opkg upgrades images that =
are<br>
&gt; build with Angstrom. =A0 I prefer Yocto but I had some pre-built image=
 that<br>
<br>
</div>The same mechanism as Ross and Trevor said.<br>
<div class=3D"im"><br>
&gt; came with my beagleboard and I used opkg upgrade =A0and opkg install<b=
r>
&gt; gfortran. =A0 Also has anyone built gfortran, libgfortran, and numpy?<=
br>
&gt; Currently these are some dependencies that I need for GNURADIO?<br>
&gt; Thanks Any and all help is appreciated<br>
&gt; Ed<br>
<br>
</div>gnuradio is already in meta-oe and jenkins is building it every day w=
ith<br>
it :).<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Martin &#39;JaMa&#39; Jansa =A0 =A0 jabber: <a href=3D"mailto:Martin.Jansa@=
gmail.com">Martin.Jansa@gmail.com</a><br>
</font></span></blockquote></div><br></div>

--047d7b62462acedfdc04da8060bf--
