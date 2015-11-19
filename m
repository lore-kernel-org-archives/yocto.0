Return-Path: <mar.krzeminski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DAA2E00985; Wed, 18 Nov 2015 23:17:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mar.krzeminski[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 355E6E008B8
	for <yocto@yoctoproject.org>; Wed, 18 Nov 2015 23:17:09 -0800 (PST)
Received: by vkfr145 with SMTP id r145so11340575vkf.1
	for <yocto@yoctoproject.org>; Wed, 18 Nov 2015 23:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=s3Sgi031U/5Rnx95oSv2ozjPMuLAJVwxC20SpB54TYY=;
	b=mN4GnUWLarw98b25HnnMSnYOWBNbfc+fDdo6dECkzgNLs1pZaA9KIGoSCgSHfiz/UY
	5yOwv8A0WAzJ/5aYbUGYdXLb74aPMExALX9g9G841CKn0xN2piWQJcT6qVz8YKAQw7O1
	stqVSz6HpXaLFFREeqZJXn02MncOu8pGaxkSFsf6tk8ikWTglS8Brjw0VJroOFdPLQH0
	unfk77hznm2S0MjNfWA915VJEGJyAp9vFYLy9nOJIXrCzgzfIH0CA6/kmVVX8WcVdD9t
	HvIksndWp2KxTsWSYE3K64Dtc0BtHicSlspAIdxOw+UqVj0RV/PxzgVF5TvH00le30Bs
	P8Ug==
MIME-Version: 1.0
X-Received: by 10.31.178.202 with SMTP id b193mr3228576vkf.37.1447917428589;
	Wed, 18 Nov 2015 23:17:08 -0800 (PST)
Received: by 10.31.153.1 with HTTP; Wed, 18 Nov 2015 23:17:08 -0800 (PST)
In-Reply-To: <CAMKF1soaWKZUnR5RBP2UewT_Z4B2p3Kck+qfCnuJiFM9TtY3Hw@mail.gmail.com>
References: <CABc_YGDdnOuMuJChr8K32PZsfpDtMhGW5XQ7T2BCoqng0CLsFQ@mail.gmail.com>
	<CAMKF1soaWKZUnR5RBP2UewT_Z4B2p3Kck+qfCnuJiFM9TtY3Hw@mail.gmail.com>
Date: Thu, 19 Nov 2015 08:17:08 +0100
Message-ID: <CABc_YGDwhQbjaLJvWsQKQDKx+Yeyn_NysHsfmYvHCbESiPG80w@mail.gmail.com>
From: =?UTF-8?Q?Marcin_Krzemi=C5=84ski?= <mar.krzeminski@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gcc cross canadian i n yocto 2.0 QA warning
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
X-List-Received-Date: Thu, 19 Nov 2015 07:17:11 -0000
Content-Type: multipart/alternative; boundary=001a1143f456fecbd80524df8ba3

--001a1143f456fecbd80524df8ba3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

2015-11-19 7:58 GMT+01:00 Khem Raj <raj.khem@gmail.com>:

> On Wed, Nov 18, 2015 at 5:20 AM, Marcin Krzemi=C5=84ski
> <mar.krzeminski@gmail.com> wrote:
> > Hello,
> >
> > I have just switched to yocto 2.0 from 1.8 and got this warning when I
> try
> > to build SDK for 32-bit machine on x64 host.
> >
> > export SDKMACHINE=3D"i686"
> > bitbake meta-toolchain
> >
> >
> > WARNING: QA Issue: gcc-cross-canadian-arm: found library in wrong
> location:
> >
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/liblto_plugin.so
> > gcc-cross-canadian-arm: found library in wrong location:
> >
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1plugin.so
> > gcc-cross-canadian-arm: found library in wrong location:
> >
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1.so.0.0.0
> > gcc-cross-canadian-arm: found library in wrong location:
> >
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/liblto_plugin.so.0.0.0
> > gcc-cross-canadian-arm: found library in wrong location:
> >
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1plugin.so.0
> > gcc-cross-canadian-arm: found library in wrong location:
> >
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1plugin.so.0.0.0
> > gcc-cross-canadian-arm: found library in wrong location:
> >
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1.so.0
> > gcc-cross-canadian-arm: found library in wrong location:
> >
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/liblto_plugin.so.0
> > gcc-cross-canadian-arm: found library in wrong location:
> >
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1.so
> > gcc-cross-canadian-arm-dbg: found library in wrong location:
> >
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/.debug/libcc1.so.0.0.0
> > gcc-cross-canadian-arm-dbg: found library in wrong location:
> >
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/.debug/liblto_plugin.so.0.0.0
> > gcc-cross-canadian-arm-dbg: found library in wrong location:
> >
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/.debug/libcc1plugin.so.0.0.0
> > [libdir]
> >
> > I am using my custom layer, but I haven't seen this in 1.8. My question
> is
> > that the problem is releated with my layer or something changed in yoct=
o?
>
> a lot changed between 1.8 and 2.0 especially the version of gcc went
> up from 4.9 to 5.2
> these are new plugins in gcc and they are in correct location from
> gcc's point of view but we flag them
> since it finds target libraries in cross sdk sysroot., do you see any
> problems due to this ?
>
> Beside those warnings I haven't observed anything wrong yet with SDK, but
it is still not fully tested.

Thanks,
Marcin

> >
> > Regards,
> > Marcin
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--001a1143f456fecbd80524df8ba3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
2015-11-19 7:58 GMT+01:00 Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:=
raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span>:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">On Wed, Nov 18, 2015 at 5:20 AM, Marcin Krz=
emi=C5=84ski<br>
&lt;<a href=3D"mailto:mar.krzeminski@gmail.com">mar.krzeminski@gmail.com</a=
>&gt; wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I have just switched to yocto 2.0 from 1.8 and got this warning when I=
 try<br>
&gt; to build SDK for 32-bit machine on x64 host.<br>
&gt;<br>
&gt; export SDKMACHINE=3D&quot;i686&quot;<br>
&gt; bitbake meta-toolchain<br>
&gt;<br>
&gt;<br>
&gt; WARNING: QA Issue: gcc-cross-canadian-arm: found library in wrong loca=
tion:<br>
&gt; /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/5.2.0/liblto_plugin.so<br>
&gt; gcc-cross-canadian-arm: found library in wrong location:<br>
&gt; /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1plugin.so<br>
&gt; gcc-cross-canadian-arm: found library in wrong location:<br>
&gt; /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1.so.0.0.0<br>
&gt; gcc-cross-canadian-arm: found library in wrong location:<br>
&gt; /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/5.2.0/liblto_plugin.so.0.0.0<br>
&gt; gcc-cross-canadian-arm: found library in wrong location:<br>
&gt; /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1plugin.so.0<br>
&gt; gcc-cross-canadian-arm: found library in wrong location:<br>
&gt; /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1plugin.so.0.0.0<br>
&gt; gcc-cross-canadian-arm: found library in wrong location:<br>
&gt; /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1.so.0<br>
&gt; gcc-cross-canadian-arm: found library in wrong location:<br>
&gt; /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/5.2.0/liblto_plugin.so.0<br>
&gt; gcc-cross-canadian-arm: found library in wrong location:<br>
&gt; /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1.so<br>
&gt; gcc-cross-canadian-arm-dbg: found library in wrong location:<br>
&gt; /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/5.2.0/.debug/libcc1.so.0.0.0<br>
&gt; gcc-cross-canadian-arm-dbg: found library in wrong location:<br>
&gt; /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/5.2.0/.debug/liblto_plugin.so.0.0.0<br>
&gt; gcc-cross-canadian-arm-dbg: found library in wrong location:<br>
&gt; /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/5.2.0/.debug/libcc1plugin.so.0.0.0<br>
&gt; [libdir]<br>
&gt;<br>
&gt; I am using my custom layer, but I haven&#39;t seen this in 1.8. My que=
stion is<br>
&gt; that the problem is releated with my layer or something changed in yoc=
to?<br>
<br>
a lot changed between 1.8 and 2.0 especially the version of gcc went<br>
up from 4.9 to 5.2<br>
these are new plugins in gcc and they are in correct location from<br>
gcc&#39;s point of view but we flag them<br>
since it finds target libraries in cross sdk sysroot., do you see any<br>
problems due to this ?<br>
<br></blockquote><div>Beside those warnings I haven&#39;t observed anything=
 wrong yet with SDK, but it is still not fully tested.</div><div><br></div>=
<div>Thanks,</div><div>Marcin</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
&gt;<br>
&gt; Regards,<br>
&gt; Marcin<br>
<span class=3D"HOEnZb"><font color=3D"#888888">&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--001a1143f456fecbd80524df8ba3--
