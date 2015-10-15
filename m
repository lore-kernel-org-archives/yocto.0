Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55510E00B04; Thu, 15 Oct 2015 08:16:32 -0700 (PDT)
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
	*      [209.85.217.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-lb0-f169.google.com (mail-lb0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17258E00978
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 08:16:26 -0700 (PDT)
Received: by lbcao8 with SMTP id ao8so72567562lbc.3
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 08:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-type; bh=7ocdCuceWUcbUpOIJYonOoi/eWomAFbhRmFPq/UurTY=;
	b=dfWDxRBKfbVuLEORvGxaR/2Cp7sFTEBqF2w3giAdLJryecpXAu5/fG/CRet3mjVAT7
	hn3CGigMbw5JChhMq3P+8Hnck97PZu00AAPAZu9X73f6ojE7ZcBpYZxvfLmQBnshwhb2
	8BSqR4FzXtvbY5Kf0Fs14lSxgr6UUi3WwqqVfL6ZtTUPO8XpljSNV0ULvKPuKD8uqYDL
	9qbcjEoCQwvwczX18ze5Uh+8ZmRUUdZe2w0m4atfd/VLndG6fr4R6aEPCyRvRut1lBzD
	1Dl5+nbcSFhIkKuB2xlliBggRXkb2WewOOk0UneOhfkj6RTHmm52fpqUmqt1RL0BCUde
	W85Q==
X-Received: by 10.112.205.138 with SMTP id lg10mr4759232lbc.74.1444922183453; 
	Thu, 15 Oct 2015 08:16:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAP2S6e4fF+JnZOhcyve8ACOWaNxbR6ZFLoyozR-4h57BOtiWCw@mail.gmail.com>
	<1d2fa93691cbe45f921e507c15f78dca.squirrel@webmail.xmsnet.nl>
	<CAF3SDA4=VmqYw7J3M2nR7cNfCEWZfvqTNP4ifnQJdAoxJ_NxCQ@mail.gmail.com>
	<CAP2S6e62xwV-sOU2xChjHZ0r7u6gtq16ArfQdqgw-rsSLxs2Lw@mail.gmail.com>
	<561FC1DA.2040500@mlbassoc.com>
In-Reply-To: <561FC1DA.2040500@mlbassoc.com>
From: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Thu, 15 Oct 2015 15:16:13 +0000
Message-ID: <CAP2S6e4OQxR-7do42Q0ONxA4F2P+AL29DS3dmwhA3H70qPauag@mail.gmail.com>
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
X-List-Received-Date: Thu, 15 Oct 2015 15:16:32 -0000
Content-Type: multipart/alternative; boundary=001a11c3cb407912bd0522262967

--001a11c3cb407912bd0522262967
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

sure !

something like this ?

Build Configuration:
BB_VERSION =3D "1.24.0"
BUILD_SYS =3D "x86_64-linux"
NATIVELSBSTRING =3D "Fedora-22"
TARGET_SYS =3D "arm-poky-linux-gnueabi"
MACHINE =3D "raspberrypi"
DISTRO =3D "poky"
DISTRO_VERSION =3D "1.7.2"
TUNE_FEATURES =3D "arm armv6 vfp arm1176jzfs callconvention-hard"
TARGET_FPU =3D "vfp"
meta
meta-yocto
meta-yocto-bsp =3D "dizzy:85f6cf736b5ecf3af6d1596b782dae81b9ac1f11"
meta-raspberrypi =3D "fido:b896a7da70dd7a16ba7ffd664f7747cb37e1d142"
meta-networking
meta-ruby
meta-oe
meta-python =3D "dizzy:5b6f39ce325d490fc382d5d59c5b8b9d5fa38b38"



Le jeu. 15 oct. 2015 =C3=A0 17:10, Gary Thomas <gary@mlbassoc.com> a =C3=A9=
crit :

> On 2015-10-15 08:39, Valentin Le bescond wrote:
> > Hello
> >
> > I believe tools-debug works but unfortunately I have errors building
> libaio and other stuff (it says
> "tmp/sysroots/raspberrypi/usr/include/gnu/stubs.h:10:29: fatal error:
> > gnu/stubs-hard.h: No such file or directory")
>
> Can you send more details about this error (what version of Yocto
> meta-data you are using, etc)?
> I just built this for the RaspberryPi and RaspberryPi2 using Poky/Yocto
> master (jethro) with no problems.
>
> >
> > Anyway, to stick with the initial question, thanks !
> >
> >
> > Le jeu. 15 oct. 2015 =C3=A0 15:58, Daniel. <danielhilst@gmail.com <mail=
to:
> danielhilst@gmail.com>> a =C3=A9crit :
> >
> >     Works fine with emacs also.
> >
> >     2015-10-15 10:44 GMT-03:00 <winfried.dobbe@xmsnet.nl <mailto:
> winfried.dobbe@xmsnet.nl>>:
> >
> >         > Hi everyone,
> >         >
> >         > I want to be able to debug my target machine (raspberrypi)
> remotely
> >         > through
> >         > qtcretor on host.
> >         >
> >         > I can't seem to find a way to deploy the gdbserver software
> though.
> >         > I built the gdb-cross-arm but don't see any gdbserver on the
> target with
> >         > hob (poky 1.7.2) ?
> >         >
> >         > What am I missing ?
> >
> >         When I build my image with
> >
> >         EXTRA_IMAGE_FEATURES +=3D "tools-debug"
> >
> >         both gdb and gdbserver are installed in the target rootfs. Remo=
te
> >         debugging worked out-of-the-box with QtCreator.
> >
> >
> >
> >
> >
> >         --
> >         _______________________________________________
> >         yocto mailing list
> >         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> >         https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> >
> >
> >     --
> >     /"Do or do not. There is no try"/
> >     ///*Yoda Master*/
> >     --
> >     _______________________________________________
> >     yocto mailing list
> >     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> >     https://lists.yoctoproject.org/listinfo/yocto
> >
> > --
> > Valentin LE BESCOND
> >
> >
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
--=20
Valentin LE BESCOND

--001a11c3cb407912bd0522262967
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>sure !<br><br></div>something like this ?<br><br><div=
></div>Build Configuration:

<br>BB_VERSION        =3D &quot;1.24.0&quot;<br>BUILD_SYS         =3D &quot=
;x86_64-linux&quot;<br>NATIVELSBSTRING   =3D &quot;Fedora-22&quot;<br>TARGE=
T_SYS        =3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE           =
=3D &quot;raspberrypi&quot;<br>DISTRO            =3D &quot;poky&quot;<br>DI=
STRO_VERSION    =3D &quot;1.7.2&quot;<br>TUNE_FEATURES     =3D &quot;arm ar=
mv6 vfp arm1176jzfs callconvention-hard&quot;<br>TARGET_FPU        =3D &quo=
t;vfp&quot;<br>meta<br>meta-yocto<br>meta-yocto-bsp    =3D &quot;dizzy:85f6=
cf736b5ecf3af6d1596b782dae81b9ac1f11&quot;<br>meta-raspberrypi  =3D &quot;f=
ido:b896a7da70dd7a16ba7ffd664f7747cb37e1d142&quot;<br>meta-networking<br>me=
ta-ruby<br>meta-oe<br>meta-python       =3D &quot;dizzy:5b6f39ce325d490fc38=
2d5d59c5b8b9d5fa38b38&quot;<br><br><br></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr">Le=C2=A0jeu. 15 oct. 2015 =C3=A0=C2=A017:10, Gary Thomas =
&lt;<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; a =C3=A9=
crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 2015-10-15 08:39, Va=
lentin Le bescond wrote:<br>
&gt; Hello<br>
&gt;<br>
&gt; I believe tools-debug works but unfortunately I have errors building l=
ibaio and other stuff (it says &quot;tmp/sysroots/raspberrypi/usr/include/g=
nu/stubs.h:10:29: fatal error:<br>
&gt; gnu/stubs-hard.h: No such file or directory&quot;)<br>
<br>
Can you send more details about this error (what version of Yocto meta-data=
 you are using, etc)?<br>
I just built this for the RaspberryPi and RaspberryPi2 using Poky/Yocto mas=
ter (jethro) with no problems.<br>
<br>
&gt;<br>
&gt; Anyway, to stick with the initial question, thanks !<br>
&gt;<br>
&gt;<br>
&gt; Le jeu. 15 oct. 2015 =C3=A0 15:58, Daniel. &lt;<a href=3D"mailto:danie=
lhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</a> &lt;mailto:<a=
 href=3D"mailto:danielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.=
com</a>&gt;&gt; a =C3=A9crit :<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Works fine with emacs also.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A02015-10-15 10:44 GMT-03:00 &lt;<a href=3D"mailto:wi=
nfried.dobbe@xmsnet.nl" target=3D"_blank">winfried.dobbe@xmsnet.nl</a> &lt;=
mailto:<a href=3D"mailto:winfried.dobbe@xmsnet.nl" target=3D"_blank">winfri=
ed.dobbe@xmsnet.nl</a>&gt;&gt;:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Hi everyone,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; I want to be able to debug my ta=
rget machine (raspberrypi) remotely<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; through<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; qtcretor on host.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; I can&#39;t seem to find a way t=
o deploy the gdbserver software though.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; I built the gdb-cross-arm but do=
n&#39;t see any gdbserver on the target with<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; hob (poky 1.7.2) ?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; What am I missing ?<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0When I build my image with<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0EXTRA_IMAGE_FEATURES +=3D &quot;tools=
-debug&quot;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0both gdb and gdbserver are installed =
in the target rootfs. Remote<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0debugging worked out-of-the-box with =
QtCreator.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_____________________________________=
__________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0yocto mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:yocto@yoctoproject.=
org" target=3D"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mai=
lto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://lists.yoctoproject=
.org/listinfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoc=
toproject.org/listinfo/yocto</a><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0/&quot;Do or do not. There is no try&quot;/<br>
&gt;=C2=A0 =C2=A0 =C2=A0///*Yoda Master*/<br>
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
&gt;<br>
&gt;<br>
<br>
--<br>
------------------------------------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------------------------------------<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><div dir=3D"ltr">-- <br></div><div dir=3D"ltr"><div>Vale=
ntin LE BESCOND<br></div></div>

--001a11c3cb407912bd0522262967--
