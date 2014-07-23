Return-Path: <amatthew@3drobotics.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8CC7E0078E; Wed, 23 Jul 2014 16:14:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-pd0-f178.google.com (mail-pd0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50B0AE006F1
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 16:14:31 -0700 (PDT)
Received: by mail-pd0-f178.google.com with SMTP id w10so2453606pde.37
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 16:14:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=P6RY5mfppkuGugD2B0FS4TsAIT0TEH8TX65pI0AO9O4=;
	b=fW/90e39ymK6GW3LCdM97IFdeBRyiw3+Gs45WD9bbnkmWgY6fO1Az5J/MJsLb/gwLr
	ekXrQna5N3Nv6GFR8tEsIeQFLy1hiqJMl2jARGZ6u6lmqqeEYbDkZCn48Ni0gjCfXArU
	6AoS33cLkCzyMrgmQgKQXjBx8dtmgbncx8XzrfXWDLjbfwv5Tzeq6Xms0y46r9FdseI5
	IAW5L5iGZMuZeTrH3A90I2fsGwhaebc/1tE7nRq3CstJKWNLt6W5Tn+i003OPxOHNVx1
	mUJhbxc4hapy667QHWtL6y15BOshdPWb0mmagblSYNFIkkNygquJvyVaq16Cu8lhhTUv
	AVLg==
X-Gm-Message-State: ALoCoQkGhB84Z+T/gFMajp8aHROPRkXYIwNArmMKuFiFse6GDFN06KiRnRcJcNp4+S62OjmsB16o
X-Received: by 10.66.226.100 with SMTP id rr4mr6017562pac.48.1406157271376;
	Wed, 23 Jul 2014 16:14:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.66.251.35 with HTTP; Wed, 23 Jul 2014 16:14:11 -0700 (PDT)
In-Reply-To: <CAP71Wjwu0T=2Cn-41FXBy15f2ka=m1iK+N1g7ROZbtpqKCSdoQ@mail.gmail.com>
References: <CAPHXWevvh+YjeCThqNUmAdc5yaoSnXm8e2KvTmaNpSQ0Vh0X_w@mail.gmail.com>
	<CAP71Wjwu0T=2Cn-41FXBy15f2ka=m1iK+N1g7ROZbtpqKCSdoQ@mail.gmail.com>
From: Allan Matthew <amatthew@3drobotics.com>
Date: Wed, 23 Jul 2014 16:14:11 -0700
Message-ID: <CAPHXWeu+Uzob-=KmDRyjFEKdDPtsxntcvwJFFs802iyDrU=RFg@mail.gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: interfaces file on a per-image basis
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
X-List-Received-Date: Wed, 23 Jul 2014 23:14:47 -0000
Content-Type: multipart/alternative; boundary=047d7b15a769a8b75f04fee48072

--047d7b15a769a8b75f04fee48072
Content-Type: text/plain; charset=UTF-8

Thanks Nicolas!  Option 3 worked perfectly.  I just added two interfaces
files (interfaces-client, interfaces-server) to my init-ifupdown bbappend,
and using a ROOTFS_POSTPROCESS_COMMAND in my image recipe I replace the
/etc/network/interfaces file with one of the two depending on the image.

*Allan Matthew*
Embedded Software Engineer, 3DRx
*3D Robotics*
(858) 225-1414
website <http://www.3dr.com/> | facebook
<http://www.facebook.com/3drobotics> | instagram
<http://www.instagram.com/3drobotics>


On Wed, Jul 23, 2014 at 3:38 PM, Nicolas Dechesne <
nicolas.dechesne@linaro.org> wrote:

> On Thu, Jul 24, 2014 at 12:25 AM, Allan Matthew <amatthew@3drobotics.com>
> wrote:
> > I have two separate images, call them server and client.  The client will
> > have one /network/interfaces file and the server will have another.  I
> can
> > successfully override the init-ifupdown in my own bbappend in my layer
> and
> > use one of my interface files, but I can't figure out how to pick between
> > two interface files depending on the image I'm building.  Is there a
> > variable I should be able to examine to determine which interfaces file I
> > should use in my .bbappend?
>
> nope you can't really do that. each recipe (.bb file) is built
> independently. it's true for 'normal' recipe (component, libs, ..) but
> also images which are .bb files too. so when you build init-ifupdown,
> bitbake doesn't know if the package will be installed in image-server
> or image-client.
>
> >
> > The only other option I've found is to use two separate machines, which
> is
> > not a great option for me because the hardware and almost all of the
> > packages are identical between my client and server, so I'd like to just
> be
> > able to build two separate images instead of changing machine types as
> well.
>
> well, machine conf are used to identify h/w settings. so in your case,
> it would be wrong as you guessed. if the underlying h/w is the same,
> you should use the same machine.
>
> i can see a couple of options:
> - create multiple init-ifupdown packages (duplicate them) and pick one
> or the other in the image recipe. or maybe you can split the network
> interface config from init-ifdown (e.g. remove the file from this
> package), and create 2 new packages that provide this file and pick
> the one you need in your image.
> - you can use  ROOTFS_POSTPROCESS_COMMAND to run a custom script that
> will modify the image accordingly
>
> there are certainly other options ...
>

--047d7b15a769a8b75f04fee48072
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Nicolas! =C2=A0Option 3 worked perfectly. =C2=A0I j=
ust added two interfaces files (interfaces-client, interfaces-server) to my=
 init-ifupdown bbappend, and using a ROOTFS_POSTPROCESS_COMMAND in my image=
 recipe I replace the /etc/network/interfaces file with one of the two depe=
nding on the image.</div>

<div class=3D"gmail_extra"><br clear=3D"all"><div><div dir=3D"ltr"><div sty=
le=3D"color:rgb(136,136,136)"><b><font size=3D"4" color=3D"#000000">Allan M=
atthew</font></b></div><div style=3D"color:rgb(136,136,136)"><font color=3D=
"#666666">Embedded Software Engineer, 3DRx</font></div>

<div style=3D"color:rgb(136,136,136)"><b><font color=3D"#666666">3D Robotic=
s</font></b></div><div style=3D"color:rgb(136,136,136)"><font color=3D"#666=
666" size=3D"1"><a value=3D"+15124706664" style=3D"color:rgb(17,85,204)">(8=
58) 225-1414</a></font></div>

<div style=3D"color:rgb(136,136,136)"><font color=3D"#666666" size=3D"1"><a=
 href=3D"http://www.3dr.com/" style=3D"color:rgb(17,85,204)" target=3D"_bla=
nk">website</a>=C2=A0|=C2=A0<a href=3D"http://www.facebook.com/3drobotics" =
style=3D"color:rgb(17,85,204)" target=3D"_blank">facebook</a>=C2=A0|=C2=A0<=
/font><font size=3D"1" face=3D"Arial"><a href=3D"http://www.instagram.com/3=
drobotics" style=3D"color:rgb(17,85,204)" target=3D"_blank">instagram</a></=
font></div>

</div></div>
<br><br><div class=3D"gmail_quote">On Wed, Jul 23, 2014 at 3:38 PM, Nicolas=
 Dechesne <span dir=3D"ltr">&lt;<a href=3D"mailto:nicolas.dechesne@linaro.o=
rg" target=3D"_blank">nicolas.dechesne@linaro.org</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">

<div class=3D"">On Thu, Jul 24, 2014 at 12:25 AM, Allan Matthew &lt;<a href=
=3D"mailto:amatthew@3drobotics.com">amatthew@3drobotics.com</a>&gt; wrote:<=
br>
&gt; I have two separate images, call them server and client. =C2=A0The cli=
ent will<br>
&gt; have one /network/interfaces file and the server will have another. =
=C2=A0I can<br>
&gt; successfully override the init-ifupdown in my own bbappend in my layer=
 and<br>
&gt; use one of my interface files, but I can&#39;t figure out how to pick =
between<br>
&gt; two interface files depending on the image I&#39;m building. =C2=A0Is =
there a<br>
&gt; variable I should be able to examine to determine which interfaces fil=
e I<br>
&gt; should use in my .bbappend?<br>
<br>
</div>nope you can&#39;t really do that. each recipe (.bb file) is built<br=
>
independently. it&#39;s true for &#39;normal&#39; recipe (component, libs, =
..) but<br>
also images which are .bb files too. so when you build init-ifupdown,<br>
bitbake doesn&#39;t know if the package will be installed in image-server<b=
r>
or image-client.<br>
<div class=3D""><br>
&gt;<br>
&gt; The only other option I&#39;ve found is to use two separate machines, =
which is<br>
&gt; not a great option for me because the hardware and almost all of the<b=
r>
&gt; packages are identical between my client and server, so I&#39;d like t=
o just be<br>
&gt; able to build two separate images instead of changing machine types as=
 well.<br>
<br>
</div>well, machine conf are used to identify h/w settings. so in your case=
,<br>
it would be wrong as you guessed. if the underlying h/w is the same,<br>
you should use the same machine.<br>
<br>
i can see a couple of options:<br>
- create multiple init-ifupdown packages (duplicate them) and pick one<br>
or the other in the image recipe. or maybe you can split the network<br>
interface config from init-ifdown (e.g. remove the file from this<br>
package), and create 2 new packages that provide this file and pick<br>
the one you need in your image.<br>
- you can use =C2=A0ROOTFS_POSTPROCESS_COMMAND to run a custom script that<=
br>
will modify the image accordingly<br>
<br>
there are certainly other options ...<br>
</blockquote></div><br></div>

--047d7b15a769a8b75f04fee48072--
