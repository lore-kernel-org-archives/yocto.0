Return-Path: <sarayu@tanmic.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FB66E009B8; Wed,  5 Aug 2015 08:12:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16983E009A7
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 08:12:00 -0700 (PDT)
Received: by iodd187 with SMTP id d187so52185720iod.2
	for <yocto@yoctoproject.org>; Wed, 05 Aug 2015 08:11:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=SbnInUuq9Ee0QQN5MTZjh/2PK1pHOigo/XZzJfatKQg=;
	b=YHc6a5d43yJpAjerd/EhPdlMOq7sQ5n7B90Lr9wwqWwpnTP6AU9VOasKrQK4I9O5JQ
	u7t8/JUHjwZOAW+YyxSxYRdsMlIgOaawhZciZTEjKgmzPBn13YKwEJ48+lIdZlKg6xYk
	eUvSeBz/DgIZqt4JdQOaV+fBVeeHpACB1zKA63rgxXrg8WzK0/g8WCQ32+5ut/lghu2/
	P1OrFCf7dt6Tqd1LtvQkB7Ks51fPI7Je3B+HA/XftAT3ojidtTMgLehQk8trQW6c3Uam
	1HS2fyBEgogJp+RXi8WtoLPbEV2u5jddW/D/jJToN1/7LagItQfxCv9ol98zBinXJfZT
	zgLw==
X-Gm-Message-State: ALoCoQkJNnAz50V/HkUfQVHLvEzlQuR7tcdviSa0uFixHTnd3JT3xTWUG1Bi/fIPzuJybNegsZqb
MIME-Version: 1.0
X-Received: by 10.107.132.19 with SMTP id g19mr10278047iod.3.1438787519523;
	Wed, 05 Aug 2015 08:11:59 -0700 (PDT)
Sender: sarayu@tanmic.co.in
Received: by 10.107.186.10 with HTTP; Wed, 5 Aug 2015 08:11:59 -0700 (PDT)
In-Reply-To: <BN3PR03MB1367948110F93EB2C59A8343E4750@BN3PR03MB1367.namprd03.prod.outlook.com>
References: <CAF5S8SM0xn7SGrdTa6iRyN1SPxZDXy15ctPYrDuu0AFzxw0zcw@mail.gmail.com>
	<55C0A75F.1000701@mlbassoc.com>
	<CAF5S8SMdfH8rNHznXCLJ_yt7PDGnKDujiu9=dpZce8eMzH4DrA@mail.gmail.com>
	<CAMKF1sq8GDP9fbZyyN7cJzM4ByMvd6p4xuKY-tyOd-VFe8=CLg@mail.gmail.com>
	<BN3PR03MB1367948110F93EB2C59A8343E4750@BN3PR03MB1367.namprd03.prod.outlook.com>
Date: Wed, 5 Aug 2015 20:41:59 +0530
X-Google-Sender-Auth: nWt23Mvq8K3DSG1N7cTGkcd_rj8
Message-ID: <CAF5S8SMDs7Pkq5UZsLSpO5bBY3J83-BNs=HU3i=PePOHRCKUUw@mail.gmail.com>
From: Sarayu Krishna Sivanandam <sarayu@zaikenn.com>
To: Luo Zhenhua <zhenhua.luo@freescale.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: ADD GDB in FSL toolchain
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
X-List-Received-Date: Wed, 05 Aug 2015 15:12:04 -0000
Content-Type: multipart/alternative; boundary=001a113eca100259e2051c91d3f0

--001a113eca100259e2051c91d3f0
Content-Type: text/plain; charset=UTF-8

Thanks for the reply . That worked for me . I was able to add gdb to my
toolchain.

Thanks and Regards,
Sarayu K S
Tech Lead
Zaikenn Technologies

On Wed, Aug 5, 2015 at 2:47 PM, Luo Zhenhua <zhenhua.luo@freescale.com>
wrote:

> Hi Sarayu,
>
> Do you want the gdb utility which can be executed on host machine or gdb
> stuffs of target machine? If the former, the utility is already
> included(<toolchain-install-dir>/sysroots/x86_64-fslsdk-linux/usr/bin/arm-fsl-linux-gnueabi/arm-fsl-linux-gnueabi-gdb),
> if the latter, you can follow Khem's suggestion.
>
>
> Best Regards,
>
> Zhenhua
>
> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org [mailto:yocto-
> > bounces@yoctoproject.org] On Behalf Of Khem Raj
> > Sent: Wednesday, August 05, 2015 4:14 AM
> > To: Sarayu Krishna Sivanandam
> > Cc: yocto@yoctoproject.org; Gary Thomas
> > Subject: Re: [yocto] ADD GDB in FSL toolchain
> >
> > On Tue, Aug 4, 2015 at 5:42 AM, Sarayu Krishna Sivanandam
> > <sarayu@zaikenn.com> wrote:
> > > hi Gary ,
> > >
> > > Thanks for the quick response. I still see the below error .
> > >
> > > NOTE: Resolving any missing task queue dependencies
> > > ERROR: Nothing RPROVIDES 'gdb-cross-arm'
> > > NOTE: Runtime target 'gdb-cross-arm' is unbuildable, removing...
> > > Missing or unbuildable dependency chain was: ['gdb-cross-arm']
> > > ERROR: Required build target 'fsl-toolchain' has no buildable
> providers.
> > > Missing or unbuildable dependency chain was: ['fsl-toolchain',
> > > 'gdb-cross-arm']
> >
> > this is not a target task. Its a host-x-target tool you should add
> db-cross-
> > canadian-${TRANSLATED_TARGET_ARCH}  to TOOLCHAIN_HOST_TASK
> >
> > if you want gdb on target then you would add 'gdb' to
> > TOOLCHAIN_TARGET_TASK
> >
> > > -----
> > >
> > > Below is how the change ,
> > > TOOLCHAIN_TARGET_TASK += " \
> > >     glib-2.0 \
> > >     glib-2.0-dev \
> > >     dtc-staticdev \
> > >     libgomp \
> > >     libgomp-dev \
> > >     libgomp-staticdev \
> > >     libstdc++-staticdev \
> > >     ${TCLIBC}-staticdev \
> > >     util-linux-dev \
> > >     gdb-cross-arm \
> > > "
> > >
> > >
> > > Thanks and Regards,
> > > Sarayu K S
> > > Tech Lead
> > > Zaikenn Technologies
> > >
> > > On Tue, Aug 4, 2015 at 5:21 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> > >>
> > >> On 2015-08-04 03:31, Sarayu Krishna Sivanandam wrote:
> > >>>
> > >>> Hi all ,
> > >>>
> > >>> I am using the QorIQ-SDK-V1.8 SDK for the toolchain generation for
> > >>> my ARM board .  I wanted to build gdb along with the toolchain . I
> > >>> got some ideas from google to add the gdb-cross in the
> > >>> fsl-toolchain.bb <http://fsl-toolchain.bb> but on doing the same it
> > >>> gave me some errors when trying to build .
> > >>>
> > >>> Can you please let me know the right method to add gdb in the
> toolchain ?
> > >>>
> > >>> Below is the error i got ,
> > >>> *ERROR: gdb-cross not found in the base feeds (ls1021atwr
> > >>> cortexa7hf-vfp-neon cortexa7hf-vfp armv7ahf-vfp-neon armv7ahf-vfp
> > >>> armv6hf-vfp armv5ehf-vfp armv5hf-vfp noarch any all).*
> > >>
> > >>
> > >> Use gdb-cross-arm
> > >>
> > >> --
> > >> ------------------------------------------------------------
> > >> Gary Thomas                 |  Consulting for the
> > >> MLB Associates              |    Embedded world
> > >> ------------------------------------------------------------
> > >> --
> > >> _______________________________________________
> > >> yocto mailing list
> > >> yocto@yoctoproject.org
> > >> https://lists.yoctoproject.org/listinfo/yocto
> > >
> > >
> > >
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> > >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--001a113eca100259e2051c91d3f0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sa=
ns ms,sans-serif">Thanks for the reply . That worked for me . I was able to=
 add gdb to my toolchain.</div></div><div class=3D"gmail_extra"><br clear=
=3D"all"><div><div class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=
=3D"ltr"><font face=3D"comic sans ms, sans-serif">Thanks and Regards,</font=
><div><font face=3D"comic sans ms, sans-serif">Sarayu K S=C2=A0</font></div=
><div><font face=3D"comic sans ms, sans-serif">Tech Lead=C2=A0</font></div>=
<div><font face=3D"comic sans ms, sans-serif">Zaikenn Technologies</font></=
div></div></div></div></div></div>
<br><div class=3D"gmail_quote">On Wed, Aug 5, 2015 at 2:47 PM, Luo Zhenhua =
<span dir=3D"ltr">&lt;<a href=3D"mailto:zhenhua.luo@freescale.com" target=
=3D"_blank">zhenhua.luo@freescale.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">Hi Sarayu,<br>
<br>
Do you want the gdb utility which can be executed on host machine or gdb st=
uffs of target machine? If the former, the utility is already included(&lt;=
toolchain-install-dir&gt;/sysroots/x86_64-fslsdk-linux/usr/bin/arm-fsl-linu=
x-gnueabi/arm-fsl-linux-gnueabi-gdb), if the latter, you can follow Khem&#3=
9;s suggestion.<br>
<br>
<br>
Best Regards,<br>
<br>
Zhenhua<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; -----Original Message-----<br>
&gt; From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-">yocto-</a><br>
&gt; <a href=3D"mailto:bounces@yoctoproject.org">bounces@yoctoproject.org</=
a>] On Behalf Of Khem Raj<br>
&gt; Sent: Wednesday, August 05, 2015 4:14 AM<br>
&gt; To: Sarayu Krishna Sivanandam<br>
&gt; Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a>; Gary Thomas<br>
&gt; Subject: Re: [yocto] ADD GDB in FSL toolchain<br>
&gt;<br>
&gt; On Tue, Aug 4, 2015 at 5:42 AM, Sarayu Krishna Sivanandam<br>
&gt; &lt;<a href=3D"mailto:sarayu@zaikenn.com">sarayu@zaikenn.com</a>&gt; w=
rote:<br>
&gt; &gt; hi Gary ,<br>
&gt; &gt;<br>
&gt; &gt; Thanks for the quick response. I still see the below error .<br>
&gt; &gt;<br>
&gt; &gt; NOTE: Resolving any missing task queue dependencies<br>
&gt; &gt; ERROR: Nothing RPROVIDES &#39;gdb-cross-arm&#39;<br>
&gt; &gt; NOTE: Runtime target &#39;gdb-cross-arm&#39; is unbuildable, remo=
ving...<br>
&gt; &gt; Missing or unbuildable dependency chain was: [&#39;gdb-cross-arm&=
#39;]<br>
&gt; &gt; ERROR: Required build target &#39;fsl-toolchain&#39; has no build=
able providers.<br>
&gt; &gt; Missing or unbuildable dependency chain was: [&#39;fsl-toolchain&=
#39;,<br>
&gt; &gt; &#39;gdb-cross-arm&#39;]<br>
&gt;<br>
&gt; this is not a target task. Its a host-x-target tool you should add db-=
cross-<br>
&gt; canadian-${TRANSLATED_TARGET_ARCH}=C2=A0 to TOOLCHAIN_HOST_TASK<br>
&gt;<br>
&gt; if you want gdb on target then you would add &#39;gdb&#39; to<br>
&gt; TOOLCHAIN_TARGET_TASK<br>
&gt;<br>
&gt; &gt; -----<br>
&gt; &gt;<br>
&gt; &gt; Below is how the change ,<br>
&gt; &gt; TOOLCHAIN_TARGET_TASK +=3D &quot; \<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0glib-2.0 \<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0glib-2.0-dev \<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0dtc-staticdev \<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0libgomp \<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0libgomp-dev \<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0libgomp-staticdev \<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0libstdc++-staticdev \<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0${TCLIBC}-staticdev \<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0util-linux-dev \<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0gdb-cross-arm \<br>
&gt; &gt; &quot;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Thanks and Regards,<br>
&gt; &gt; Sarayu K S<br>
&gt; &gt; Tech Lead<br>
&gt; &gt; Zaikenn Technologies<br>
&gt; &gt;<br>
&gt; &gt; On Tue, Aug 4, 2015 at 5:21 PM, Gary Thomas &lt;<a href=3D"mailto=
:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; wrote:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; On 2015-08-04 03:31, Sarayu Krishna Sivanandam wrote:<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; Hi all ,<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; I am using the QorIQ-SDK-V1.8 SDK for the toolchain gener=
ation for<br>
&gt; &gt;&gt;&gt; my ARM board .=C2=A0 I wanted to build gdb along with the=
 toolchain . I<br>
&gt; &gt;&gt;&gt; got some ideas from google to add the gdb-cross in the<br=
>
&gt; &gt;&gt;&gt; <a href=3D"http://fsl-toolchain.bb" rel=3D"noreferrer" ta=
rget=3D"_blank">fsl-toolchain.bb</a> &lt;<a href=3D"http://fsl-toolchain.bb=
" rel=3D"noreferrer" target=3D"_blank">http://fsl-toolchain.bb</a>&gt; but =
on doing the same it<br>
&gt; &gt;&gt;&gt; gave me some errors when trying to build .<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; Can you please let me know the right method to add gdb in=
 the toolchain ?<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; Below is the error i got ,<br>
&gt; &gt;&gt;&gt; *ERROR: gdb-cross not found in the base feeds (ls1021atwr=
<br>
&gt; &gt;&gt;&gt; cortexa7hf-vfp-neon cortexa7hf-vfp armv7ahf-vfp-neon armv=
7ahf-vfp<br>
&gt; &gt;&gt;&gt; armv6hf-vfp armv5ehf-vfp armv5hf-vfp noarch any all).*<br=
>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Use gdb-cross-arm<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; --<br>
&gt; &gt;&gt; ------------------------------------------------------------<=
br>
&gt; &gt;&gt; Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 Consulting for the<br>
&gt; &gt;&gt; MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 =C2=A0 Embedded world<br>
&gt; &gt;&gt; ------------------------------------------------------------<=
br>
&gt; &gt;&gt; --<br>
&gt; &gt;&gt; _______________________________________________<br>
&gt; &gt;&gt; yocto mailing list<br>
&gt; &gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a><br>
&gt; &gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/y=
octo</a><br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"=
noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto=
</a><br>
&gt; &gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--001a113eca100259e2051c91d3f0--
