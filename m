Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57553E00B68; Thu, 15 Oct 2015 08:39:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (valentin.lebescond[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-lb0-f181.google.com (mail-lb0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E9B6E00AC1
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 08:39:01 -0700 (PDT)
Received: by lbbpp2 with SMTP id pp2so44656286lbb.0
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 08:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-type; bh=6mfUF10PzzXYawZ+ArO5em/etSAyRW1KMoyIX0rTY3o=;
	b=JO9ed9EFQ3m5EHkcEZ9odnDlXFOemRzZgrV/d+pnA31LFq/IBhxeK6zsG4UdyJK3Z7
	VcGfGfjOhpVsG7gDvm8xQr3HW/oA4CKTq3hw9Hg0d5LQbeisr7k88BplKq8FTKUQxiSc
	nxENWup/yi7YpTkwniVnHNQ/KjQZ0gWc5AErGOTz1TP56fSjvjOZUzVdFuKmcG5/2bhY
	saMwpC9qFcaPw/sMGCKXNJLgpG8jV2er3x1HoLXDYBguq6DToZhX3XAN46r8NZdwZH4f
	1fiBfDhEvLoIVBh1tAgfV3nFBO3c2/pkf1U/L+xkb8ONDIyqO2Yrwg8e7Klz0yliUV4U
	ZGyg==
X-Received: by 10.112.145.232 with SMTP id sx8mr430802lbb.4.1444923539856;
	Thu, 15 Oct 2015 08:38:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAP2S6e4fF+JnZOhcyve8ACOWaNxbR6ZFLoyozR-4h57BOtiWCw@mail.gmail.com>
	<1d2fa93691cbe45f921e507c15f78dca.squirrel@webmail.xmsnet.nl>
	<CAF3SDA4=VmqYw7J3M2nR7cNfCEWZfvqTNP4ifnQJdAoxJ_NxCQ@mail.gmail.com>
	<CAP2S6e62xwV-sOU2xChjHZ0r7u6gtq16ArfQdqgw-rsSLxs2Lw@mail.gmail.com>
	<561FC1DA.2040500@mlbassoc.com>
	<CAP2S6e4OQxR-7do42Q0ONxA4F2P+AL29DS3dmwhA3H70qPauag@mail.gmail.com>
	<561FC6EA.20607@mlbassoc.com>
In-Reply-To: <561FC6EA.20607@mlbassoc.com>
From: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Thu, 15 Oct 2015 15:38:50 +0000
Message-ID: <CAP2S6e6uxmmLUF82MHTUa+1CYpawyVrCPuW-sOKuEyjT_MX0Zg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>, yocto@yoctoproject.org
Subject: Re: how to deploy gdbserver ?
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
X-List-Received-Date: Thu, 15 Oct 2015 15:39:06 -0000
Content-Type: multipart/alternative; boundary=047d7b3a87165223980522267a59

--047d7b3a87165223980522267a59
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good point.

But so far my experience with yocto forced me to go back and forth the 1.6
1.7 and 1.8 branches depending on the layers.

So I kind of stopped where it worked... without worrying about gdb that's
true.

I won't go updating everything for testing purpose right now so I'll leave
it like that

Thanks !


Le jeu. 15 oct. 2015 =C3=A0 17:31, Gary Thomas <gary@mlbassoc.com> a =C3=A9=
crit :

> On 2015-10-15 09:16, Valentin Le bescond wrote:
> > sure !
> >
> > something like this ?
> >
> > Build Configuration:
> > BB_VERSION =3D "1.24.0"
> > BUILD_SYS =3D "x86_64-linux"
> > NATIVELSBSTRING =3D "Fedora-22"
> > TARGET_SYS =3D "arm-poky-linux-gnueabi"
> > MACHINE =3D "raspberrypi"
> > DISTRO =3D "poky"
> > DISTRO_VERSION =3D "1.7.2"
> > TUNE_FEATURES =3D "arm armv6 vfp arm1176jzfs callconvention-hard"
> > TARGET_FPU =3D "vfp"
> > meta
> > meta-yocto
> > meta-yocto-bsp =3D "dizzy:85f6cf736b5ecf3af6d1596b782dae81b9ac1f11"
> > meta-raspberrypi =3D "fido:b896a7da70dd7a16ba7ffd664f7747cb37e1d142"
> > meta-networking
> > meta-ruby
> > meta-oe
> > meta-python =3D "dizzy:5b6f39ce325d490fc382d5d59c5b8b9d5fa38b38"
>
> I think you'd be better off by updating to later branches and also you
> should try
> to use corresponding branches (e.g. mixing dizzy and fido is probably a
> source
> for problems).
>
> >
> >
> >
> > Le jeu. 15 oct. 2015 =C3=A0 17:10, Gary Thomas <gary@mlbassoc.com <mail=
to:
> gary@mlbassoc.com>> a =C3=A9crit :
> >
> >     On 2015-10-15 08:39, Valentin Le bescond wrote:
> >     > Hello
> >     >
> >     > I believe tools-debug works but unfortunately I have errors
> building libaio and other stuff (it says
> "tmp/sysroots/raspberrypi/usr/include/gnu/stubs.h:10:29: fatal error:
> >     > gnu/stubs-hard.h: No such file or directory")
> >
> >     Can you send more details about this error (what version of Yocto
> meta-data you are using, etc)?
> >     I just built this for the RaspberryPi and RaspberryPi2 using
> Poky/Yocto master (jethro) with no problems.
> >
> >     >
> >     > Anyway, to stick with the initial question, thanks !
> >     >
> >     >
> >     > Le jeu. 15 oct. 2015 =C3=A0 15:58, Daniel. <danielhilst@gmail.com
> <mailto:danielhilst@gmail.com> <mailto:danielhilst@gmail.com <mailto:
> danielhilst@gmail.com>>> a =C3=A9crit :
> >     >
> >     >     Works fine with emacs also.
> >     >
> >     >     2015-10-15 10:44 GMT-03:00 <winfried.dobbe@xmsnet.nl <mailto:
> winfried.dobbe@xmsnet.nl> <mailto:winfried.dobbe@xmsnet.nl <mailto:
> winfried.dobbe@xmsnet.nl>>>:
> >     >
> >     >         > Hi everyone,
> >     >         >
> >     >         > I want to be able to debug my target machine
> (raspberrypi) remotely
> >     >         > through
> >     >         > qtcretor on host.
> >     >         >
> >     >         > I can't seem to find a way to deploy the gdbserver
> software though.
> >     >         > I built the gdb-cross-arm but don't see any gdbserver o=
n
> the target with
> >     >         > hob (poky 1.7.2) ?
> >     >         >
> >     >         > What am I missing ?
> >     >
> >     >         When I build my image with
> >     >
> >     >         EXTRA_IMAGE_FEATURES +=3D "tools-debug"
> >     >
> >     >         both gdb and gdbserver are installed in the target rootfs=
.
> Remote
> >     >         debugging worked out-of-the-box with QtCreator.
> >     >
> >     >
> >     >
> >     >
> >     >
> >     >         --
> >     >         _______________________________________________
> >     >         yocto mailing list
> >     >yocto@yoctoproject.org <mailto:yocto@yoctoproject.org> <mailto:
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
> >     >https://lists.yoctoproject.org/listinfo/yocto
> >     >
> >     >
> >     >
> >     >
> >     >     --
> >     >     /"Do or do not. There is no try"/
> >     >     ///*Yoda Master*/
> >     >     --
> >     >     _______________________________________________
> >     >     yocto mailing list
> >     >yocto@yoctoproject.org <mailto:yocto@yoctoproject.org> <mailto:
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
> >     >https://lists.yoctoproject.org/listinfo/yocto
> >     >
> >     > --
> >     > Valentin LE BESCOND
> >     >
> >     >
> >
> >     --
> >     ------------------------------------------------------------
> >     Gary Thomas                 |  Consulting for the
> >     MLB Associates              |    Embedded world
> >     ------------------------------------------------------------
> >     --
> >     _______________________________________________
> >     yocto mailing list
> >     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> >     https://lists.yoctoproject.org/listinfo/yocto
> >
> > --
> > Valentin LE BESCOND
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
>
--=20
Valentin LE BESCOND

--047d7b3a87165223980522267a59
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Good point.<br><br></div>But so far my=
 experience with yocto forced me to go back and forth the 1.6 1.7 and 1.8 b=
ranches depending on the layers. <br></div><div><br></div>So I kind of stop=
ped where it worked... without worrying about gdb that&#39;s true.<br><br><=
/div>I won&#39;t go updating everything for testing purpose right now so I&=
#39;ll leave it like that<br><br></div>Thanks !<br><div><div>=C2=A0<br></di=
v></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">Le=C2=A0jeu. =
15 oct. 2015 =C3=A0=C2=A017:31, Gary Thomas &lt;<a href=3D"mailto:gary@mlba=
ssoc.com">gary@mlbassoc.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">On 2015-10-15 09:16, Valentin Le bescond wrote:<br>
&gt; sure !<br>
&gt;<br>
&gt; something like this ?<br>
&gt;<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION =3D &quot;1.24.0&quot;<br>
&gt; BUILD_SYS =3D &quot;x86_64-linux&quot;<br>
&gt; NATIVELSBSTRING =3D &quot;Fedora-22&quot;<br>
&gt; TARGET_SYS =3D &quot;arm-poky-linux-gnueabi&quot;<br>
&gt; MACHINE =3D &quot;raspberrypi&quot;<br>
&gt; DISTRO =3D &quot;poky&quot;<br>
&gt; DISTRO_VERSION =3D &quot;1.7.2&quot;<br>
&gt; TUNE_FEATURES =3D &quot;arm armv6 vfp arm1176jzfs callconvention-hard&=
quot;<br>
&gt; TARGET_FPU =3D &quot;vfp&quot;<br>
&gt; meta<br>
&gt; meta-yocto<br>
&gt; meta-yocto-bsp =3D &quot;dizzy:85f6cf736b5ecf3af6d1596b782dae81b9ac1f1=
1&quot;<br>
&gt; meta-raspberrypi =3D &quot;fido:b896a7da70dd7a16ba7ffd664f7747cb37e1d1=
42&quot;<br>
&gt; meta-networking<br>
&gt; meta-ruby<br>
&gt; meta-oe<br>
&gt; meta-python =3D &quot;dizzy:5b6f39ce325d490fc382d5d59c5b8b9d5fa38b38&q=
uot;<br>
<br>
I think you&#39;d be better off by updating to later branches and also you =
should try<br>
to use corresponding branches (e.g. mixing dizzy and fido is probably a sou=
rce<br>
for problems).<br>
<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Le jeu. 15 oct. 2015 =C3=A0 17:10, Gary Thomas &lt;<a href=3D"mailto:g=
ary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a hre=
f=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;&=
gt; a =C3=A9crit :<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On 2015-10-15 08:39, Valentin Le bescond wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Hello<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; I believe tools-debug works but unfortunately =
I have errors building libaio and other stuff (it says &quot;tmp/sysroots/r=
aspberrypi/usr/include/gnu/stubs.h:10:29: fatal error:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; gnu/stubs-hard.h: No such file or directory&qu=
ot;)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Can you send more details about this error (what ve=
rsion of Yocto meta-data you are using, etc)?<br>
&gt;=C2=A0 =C2=A0 =C2=A0I just built this for the RaspberryPi and Raspberry=
Pi2 using Poky/Yocto master (jethro) with no problems.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Anyway, to stick with the initial question, th=
anks !<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Le jeu. 15 oct. 2015 =C3=A0 15:58, Daniel. &lt=
;<a href=3D"mailto:danielhilst@gmail.com" target=3D"_blank">danielhilst@gma=
il.com</a> &lt;mailto:<a href=3D"mailto:danielhilst@gmail.com" target=3D"_b=
lank">danielhilst@gmail.com</a>&gt; &lt;mailto:<a href=3D"mailto:danielhils=
t@gmail.com" target=3D"_blank">danielhilst@gmail.com</a> &lt;mailto:<a href=
=3D"mailto:danielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</=
a>&gt;&gt;&gt; a =C3=A9crit :<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0Works fine with emacs also.=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A02015-10-15 10:44 GMT-03:00 =
&lt;<a href=3D"mailto:winfried.dobbe@xmsnet.nl" target=3D"_blank">winfried.=
dobbe@xmsnet.nl</a> &lt;mailto:<a href=3D"mailto:winfried.dobbe@xmsnet.nl" =
target=3D"_blank">winfried.dobbe@xmsnet.nl</a>&gt; &lt;mailto:<a href=3D"ma=
ilto:winfried.dobbe@xmsnet.nl" target=3D"_blank">winfried.dobbe@xmsnet.nl</=
a> &lt;mailto:<a href=3D"mailto:winfried.dobbe@xmsnet.nl" target=3D"_blank"=
>winfried.dobbe@xmsnet.nl</a>&gt;&gt;&gt;:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Hi every=
one,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; I want t=
o be able to debug my target machine (raspberrypi) remotely<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; through<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; qtcretor=
 on host.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; I can&#3=
9;t seem to find a way to deploy the gdbserver software though.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; I built =
the gdb-cross-arm but don&#39;t see any gdbserver on the target with<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; hob (pok=
y 1.7.2) ?<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; What am =
I missing ?<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0When I build =
my image with<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0EXTRA_IMAGE_F=
EATURES +=3D &quot;tools-debug&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0both gdb and =
gdbserver are installed in the target rootfs. Remote<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0debugging wor=
ked out-of-the-box with QtCreator.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_____________=
__________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0yocto mailing=
 list<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<a href=3D"mailto:yocto@yoctoproject.org" targe=
t=3D"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@=
yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt; &lt;mail=
to:<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctop=
roject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org" target=
=3D"_blank">yocto@yoctoproject.org</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<a href=3D"https://lists.yoctoproject.org/listi=
nfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/listinfo/yocto</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0/&quot;Do or do not. There =
is no try&quot;/<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0///*Yoda Master*/<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0___________________________=
____________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0yocto mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<a href=3D"mailto:yocto@yoctoproject.org" targe=
t=3D"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@=
yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt; &lt;mail=
to:<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctop=
roject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org" target=
=3D"_blank">yocto@yoctoproject.org</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<a href=3D"https://lists.yoctoproject.org/listi=
nfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/listinfo/yocto</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Valentin LE BESCOND<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0---------------------------------------------------=
---------<br>
&gt;=C2=A0 =C2=A0 =C2=A0Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 Consulting for the<br>
&gt;=C2=A0 =C2=A0 =C2=A0MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 =C2=A0 Embedded world<br>
&gt;=C2=A0 =C2=A0 =C2=A0---------------------------------------------------=
---------<br>
&gt;=C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0_______________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0yocto mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:yocto@yoctoproject.org" target=3D=
"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoct=
oproject.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://lists.yoctoproject.org/listinfo/=
yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/=
listinfo/yocto</a><br>
&gt;<br>
&gt; --<br>
&gt; Valentin LE BESCOND<br>
<br>
--<br>
------------------------------------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------------------------------------<br>
</blockquote></div><div dir=3D"ltr">-- <br></div><div dir=3D"ltr"><div>Vale=
ntin LE BESCOND<br></div></div>

--047d7b3a87165223980522267a59--
