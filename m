Return-Path: <PatrickTurley@gamestop.com>
Received: from gsironport2.gamestop.com (mail2.gamestop.com [12.25.107.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71C8EE00294
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2013 09:56:08 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.84,523,1355119200"; d="scan'208,217";a="7465836"
Received: from unknown (HELO GV1HQPEX02.babgsetc.pvt) ([172.22.1.244])
	by gsironport2.gamestop.com with ESMTP; 23 Jan 2013 11:56:07 -0600
Received: from GV1HQPEX03.babgsetc.pvt ([169.254.1.225]) by
	GV1HQPEX02.babgsetc.pvt ([172.22.1.192]) with mapi id 14.02.0318.004;
	Wed, 23 Jan 2013 11:56:07 -0600
From: Patrick Turley <PatrickTurley@gamestop.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Inconsistency in the SDK
Thread-Index: AQHN+YN/j5WxvTQO80yl7hPrQkausZhXfNyAgAAahwA=
Date: Wed, 23 Jan 2013 17:56:06 +0000
Message-ID: <5BEFD653CA8A8D47AA194ED30AB5968C37171E@GV1HQPEX03.babgsetc.pvt>
References: <5BEFD653CA8A8D47AA194ED30AB5968C3714A8@GV1HQPEX03.babgsetc.pvt>
	<CAMKF1sozFpyECQw4tDe=Muu3=epj-KTdYHHX+Bd21e0fwd-4ag@mail.gmail.com>
In-Reply-To: <CAMKF1sozFpyECQw4tDe=Muu3=epj-KTdYHHX+Bd21e0fwd-4ag@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.1.244]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Inconsistency in the SDK
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 23 Jan 2013 17:56:08 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5BEFD653CA8A8D47AA194ED30AB5968C37171EGV1HQPEX03babgset_"

--_000_5BEFD653CA8A8D47AA194ED30AB5968C37171EGV1HQPEX03babgset_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

On Jan 23, 2013, at 10:21 AM, Khem Raj <raj.khem@gmail.com<mailto:raj.khem@=
gmail.com>> wrote:

Did you source the env script before doing all that ?

Thank you for your question, but it doesn't apply.  All of this happens *be=
fore* I even tried to build anything.

The fundamental problem is that the SDK installation script puts the native=
 sysroot in one directory, but the tool chain believes the default location=
 for the native sysroot is in a *different* directory that doesn't exist.

On Wednesday, January 23, 2013, Patrick Turley <PatrickTurley@gamestop.com<=
mailto:PatrickTurley@gamestop.com>> wrote:
> Here's our machine in local.conf:
>
>     MACHINE =3D "dm8148-mpu"
>
> Naturally, then, we see a directly like this under tmp/work:
>
>     dm8148_mpu-poky-linux-gnueabi
>
> Also, under tmp/sysroots, we see these two:
>
>     dm8148-mpu
>     dm8148-mpu-tcbootstrap
>
> Finally, when I install the SDK, I see the following under sysroots:
>
>     dm8148_mpu-poky-linux-gnueabi
>     x86_64-pokysdk-linux
>
> However, if I ask the cross-compiler the path to its default sysroot, I s=
ee this:
>
>     $ cd /opt/poky/1.3/sysroots/x86_64-pokysdk-linux
>     $ cd usr/bin/armv7a-vfp-neon-poky-linux-gnueabi
>     $ ./arm-poky-linux-gnueabi-gcc -print-sysroot
>     /opt/poky/1.3/sysroots/armv7a-vfp-neon-poky-linux-gnueabi
>
> There is no such directory. That is, the default sysroot for the SDK does=
n't exist.
>
> Now, if I go back and look in tmp/work, I realize that I see *both* of th=
ese:
>
>     dm8148_mpu-poky-linux-gnueabi
>     armv7a-vfp-neon-poky-linux-gnueabi
>
> There are a number of work directories under both.
>
> It seems to me there are these possibilities:
>
>
> 1) There are at least two different (and disagreeing) methods to compute =
the architecture "tuple," and different pieces of the system are choosing d=
ifferent methods. These different methods usually agree, but sometimes they=
 don't. Thus, when they *do* agree, it's "luck."
>
>
> 2) These strings *should* agree, but something is missing from our machin=
e definition that causes them to disagree (we weren't using our own machine=
 definition until recently). In that case, the machine definition code shou=
ld change such that it's not *possible* for these strings to disagree. Also=
, I'd like to know what we missed, so we can fix it.
>
>
> 3) These strings, though similar, actually *mean* different things and ar=
e *both* correct. The only problem is that the build process for the tool c=
hain chooses the wrong one when defining the default sysroot path.
>
>
> In any case, I can fix the immediate problem with a symbolic link, but th=
at's not a long-term solution.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto
>


--_000_5BEFD653CA8A8D47AA194ED30AB5968C37171EGV1HQPEX03babgset_
Content-Type: text/html; charset="us-ascii"
Content-ID: <25B609A5E572474494F47C1CC2B40048@gamestop.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-lin=
e-break: after-white-space; ">
<div>
<div>On Jan 23, 2013, at 10:21 AM, Khem Raj &lt;<a href=3D"mailto:raj.khem@=
gmail.com">raj.khem@gmail.com</a>&gt; wrote:</div>
<br class=3D"Apple-interchange-newline">
<blockquote type=3D"cite">Did you source the env script before doing all th=
at ?<br>
</blockquote>
<div><br>
</div>
<div>Thank you for your question, but it doesn't apply. &nbsp;All of this h=
appens *before* I even tried to build anything.</div>
<div><br>
</div>
<div>The fundamental problem is that the SDK installation script puts the n=
ative sysroot in one directory, but the tool chain believes the default loc=
ation for the native sysroot is in a *different* directory that doesn't exi=
st.</div>
<div><br>
</div>
<blockquote type=3D"cite">On Wednesday, January 23, 2013, Patrick Turley &l=
t;<a href=3D"mailto:PatrickTurley@gamestop.com">PatrickTurley@gamestop.com<=
/a>&gt; wrote:<br>
&gt; Here's our machine in local.conf:<br>
&gt;<br>
&gt; &nbsp; &nbsp; MACHINE =3D &quot;dm8148-mpu&quot;<br>
&gt;<br>
&gt; Naturally, then, we see a directly like this under tmp/work:<br>
&gt;<br>
&gt; &nbsp; &nbsp; dm8148_mpu-poky-linux-gnueabi<br>
&gt;<br>
&gt; Also, under tmp/sysroots, we see these two:<br>
&gt;<br>
&gt; &nbsp; &nbsp; dm8148-mpu<br>
&gt; &nbsp; &nbsp; dm8148-mpu-tcbootstrap<br>
&gt;<br>
&gt; Finally, when I install the SDK, I see the following under sysroots:<b=
r>
&gt;<br>
&gt; &nbsp; &nbsp; dm8148_mpu-poky-linux-gnueabi<br>
&gt; &nbsp; &nbsp; x86_64-pokysdk-linux<br>
&gt;<br>
&gt; However, if I ask the cross-compiler the path to its default sysroot, =
I see this:<br>
&gt;<br>
&gt; &nbsp; &nbsp; $ cd /opt/poky/1.3/sysroots/x86_64-pokysdk-linux<br>
&gt; &nbsp; &nbsp; $ cd usr/bin/armv7a-vfp-neon-poky-linux-gnueabi<br>
&gt; &nbsp; &nbsp; $ ./arm-poky-linux-gnueabi-gcc -print-sysroot<br>
&gt; &nbsp; &nbsp; /opt/poky/1.3/sysroots/armv7a-vfp-neon-poky-linux-gnueab=
i<br>
&gt;<br>
&gt; There is no such directory. That is, the default sysroot for the SDK d=
oesn't exist.<br>
&gt;<br>
&gt; Now, if I go back and look in tmp/work, I realize that I see *both* of=
 these:<br>
&gt;<br>
&gt; &nbsp; &nbsp; dm8148_mpu-poky-linux-gnueabi<br>
&gt; &nbsp; &nbsp; armv7a-vfp-neon-poky-linux-gnueabi<br>
&gt;<br>
&gt; There are a number of work directories under both.<br>
&gt;<br>
&gt; It seems to me there are these possibilities:<br>
&gt;<br>
&gt;<br>
&gt; 1) There are at least two different (and disagreeing) methods to compu=
te the architecture &quot;tuple,&quot; and different pieces of the system a=
re choosing different methods. These different methods usually agree, but s=
ometimes they don't. Thus, when they *do* agree,
 it's &quot;luck.&quot;<br>
&gt;<br>
&gt;<br>
&gt; 2) These strings *should* agree, but something is missing from our mac=
hine definition that causes them to disagree (we weren't using our own mach=
ine definition until recently). In that case, the machine definition code s=
hould change such that it's not *possible*
 for these strings to disagree. Also, I'd like to know what we missed, so w=
e can fix it.<br>
&gt;<br>
&gt;<br>
&gt; 3) These strings, though similar, actually *mean* different things and=
 are *both* correct. The only problem is that the build process for the too=
l chain chooses the wrong one when defining the default sysroot path.<br>
&gt;<br>
&gt;<br>
&gt; In any case, I can fix the immediate problem with a symbolic link, but=
 that's not a long-term solution.<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
&gt; </blockquote>
</div>
<br>
</body>
</html>

--_000_5BEFD653CA8A8D47AA194ED30AB5968C37171EGV1HQPEX03babgset_--
