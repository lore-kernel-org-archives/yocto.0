Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35E67E0034C
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2013 08:21:10 -0800 (PST)
Received: by mail-ie0-f174.google.com with SMTP id k11so8185651iea.33
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2013 08:21:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=vQehSadp6Nx6TiGbL9C3IqmB+nb4uoeHI5zkimwGTJs=;
	b=AAN96tquuvhojGILYT9S2fSrovCZOkx7JPT7hi+jzmvzdAuY3bYp5gtppjJytO4Jda
	44qse8F6M7O8QQJBZDfJZhG250brCnjHu589pheaNh5lJ1iKM6PIv9ulKn8HCgSPC/xw
	xH90JPmGwwFlMaHgwWUAuVxV28rs2/FXFkcd+3EQ6E1kT9wZy5Db6uIbNOlIinEv6GOB
	glC6JkH3YY/oTGBmshwLZjv/wxJj2vv1EM/LQvhbbSyjkEsybY+BcqN0ESGBPSGCoHce
	DSJ4z+NNEYhvpCwja8/oTdHAmwodpl36YZczzwdR26n/cZEZTQ1+zrDEgpjgT+T8diny
	khrg==
MIME-Version: 1.0
X-Received: by 10.50.13.173 with SMTP id i13mr15217322igc.93.1358958069886;
	Wed, 23 Jan 2013 08:21:09 -0800 (PST)
Received: by 10.64.18.169 with HTTP; Wed, 23 Jan 2013 08:21:09 -0800 (PST)
In-Reply-To: <5BEFD653CA8A8D47AA194ED30AB5968C3714A8@GV1HQPEX03.babgsetc.pvt>
References: <5BEFD653CA8A8D47AA194ED30AB5968C3714A8@GV1HQPEX03.babgsetc.pvt>
Date: Wed, 23 Jan 2013 08:21:09 -0800
Message-ID: <CAMKF1sozFpyECQw4tDe=Muu3=epj-KTdYHHX+Bd21e0fwd-4ag@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Patrick Turley <PatrickTurley@gamestop.com>
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
X-List-Received-Date: Wed, 23 Jan 2013 16:21:10 -0000
Content-Type: multipart/alternative; boundary=f46d0444017e052f1204d3f71574

--f46d0444017e052f1204d3f71574
Content-Type: text/plain; charset=UTF-8

Did you source the env script before doing all that ?

On Wednesday, January 23, 2013, Patrick Turley <PatrickTurley@gamestop.com>
wrote:
> Here's our machine in local.conf:
>
>     MACHINE = "dm8148-mpu"
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
> However, if I ask the cross-compiler the path to its default sysroot, I
see this:
>
>     $ cd /opt/poky/1.3/sysroots/x86_64-pokysdk-linux
>     $ cd usr/bin/armv7a-vfp-neon-poky-linux-gnueabi
>     $ ./arm-poky-linux-gnueabi-gcc -print-sysroot
>     /opt/poky/1.3/sysroots/armv7a-vfp-neon-poky-linux-gnueabi
>
> There is no such directory. That is, the default sysroot for the SDK
doesn't exist.
>
> Now, if I go back and look in tmp/work, I realize that I see *both* of
these:
>
>     dm8148_mpu-poky-linux-gnueabi
>     armv7a-vfp-neon-poky-linux-gnueabi
>
> There are a number of work directories under both.
>
> It seems to me there are these possibilities:
>
>
> 1) There are at least two different (and disagreeing) methods to compute
the architecture "tuple," and different pieces of the system are choosing
different methods. These different methods usually agree, but sometimes
they don't. Thus, when they *do* agree, it's "luck."
>
>
> 2) These strings *should* agree, but something is missing from our
machine definition that causes them to disagree (we weren't using our own
machine definition until recently). In that case, the machine definition
code should change such that it's not *possible* for these strings to
disagree. Also, I'd like to know what we missed, so we can fix it.
>
>
> 3) These strings, though similar, actually *mean* different things and
are *both* correct. The only problem is that the build process for the tool
chain chooses the wrong one when defining the default sysroot path.
>
>
> In any case, I can fix the immediate problem with a symbolic link, but
that's not a long-term solution.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f46d0444017e052f1204d3f71574
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br>Did you source the env script before doing all that ?<br><br>On Wednesd=
ay, January 23, 2013, Patrick Turley &lt;<a href=3D"mailto:PatrickTurley@ga=
mestop.com">PatrickTurley@gamestop.com</a>&gt; wrote:<br>&gt; Here&#39;s ou=
r machine in local.conf:<br>
&gt;<br>&gt; =C2=A0 =C2=A0 MACHINE =3D &quot;dm8148-mpu&quot;<br>&gt;<br>&g=
t; Naturally, then, we see a directly like this under tmp/work:<br>&gt;<br>=
&gt; =C2=A0 =C2=A0 dm8148_mpu-poky-linux-gnueabi<br>&gt;<br>&gt; Also, unde=
r tmp/sysroots, we see these two:<br>
&gt;<br>&gt; =C2=A0 =C2=A0 dm8148-mpu<br>&gt; =C2=A0 =C2=A0 dm8148-mpu-tcbo=
otstrap<br>&gt;<br>&gt; Finally, when I install the SDK, I see the followin=
g under sysroots:<br>&gt;<br>&gt; =C2=A0 =C2=A0 dm8148_mpu-poky-linux-gnuea=
bi<br>&gt; =C2=A0 =C2=A0 x86_64-pokysdk-linux<br>
&gt;<br>&gt; However, if I ask the cross-compiler the path to its default s=
ysroot, I see this:<br>&gt;<br>&gt; =C2=A0 =C2=A0 $ cd /opt/poky/1.3/sysroo=
ts/x86_64-pokysdk-linux<br>&gt; =C2=A0 =C2=A0 $ cd usr/bin/armv7a-vfp-neon-=
poky-linux-gnueabi<br>
&gt; =C2=A0 =C2=A0 $ ./arm-poky-linux-gnueabi-gcc -print-sysroot<br>&gt; =
=C2=A0 =C2=A0 /opt/poky/1.3/sysroots/armv7a-vfp-neon-poky-linux-gnueabi<br>=
&gt;<br>&gt; There is no such directory. That is, the default sysroot for t=
he SDK doesn&#39;t exist.<br>
&gt;<br>&gt; Now, if I go back and look in tmp/work, I realize that I see *=
both* of these:<br>&gt;<br>&gt; =C2=A0 =C2=A0 dm8148_mpu-poky-linux-gnueabi=
<br>&gt; =C2=A0 =C2=A0 armv7a-vfp-neon-poky-linux-gnueabi<br>&gt;<br>&gt; T=
here are a number of work directories under both.<br>
&gt;<br>&gt; It seems to me there are these possibilities:<br>&gt;<br>&gt;<=
br>&gt; 1) There are at least two different (and disagreeing) methods to co=
mpute the architecture &quot;tuple,&quot; and different pieces of the syste=
m are choosing different methods. These different methods usually agree, bu=
t sometimes they don&#39;t. Thus, when they *do* agree, it&#39;s &quot;luck=
.&quot;<br>
&gt;<br>&gt;<br>&gt; 2) These strings *should* agree, but something is miss=
ing from our machine definition that causes them to disagree (we weren&#39;=
t using our own machine definition until recently). In that case, the machi=
ne definition code should change such that it&#39;s not *possible* for thes=
e strings to disagree. Also, I&#39;d like to know what we missed, so we can=
 fix it.<br>
&gt;<br>&gt;<br>&gt; 3) These strings, though similar, actually *mean* diff=
erent things and are *both* correct. The only problem is that the build pro=
cess for the tool chain chooses the wrong one when defining the default sys=
root path.<br>
&gt;<br>&gt;<br>&gt; In any case, I can fix the immediate problem with a sy=
mbolic link, but that&#39;s not a long-term solution.<br>&gt;<br>&gt; _____=
__________________________________________<br>&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://li=
sts.yoctoproject.org/listinfo/yocto</a><br>&gt;

--f46d0444017e052f1204d3f71574--
