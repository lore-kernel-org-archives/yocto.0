Return-Path: <errordeveloper@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C67BE007B7; Sat, 24 Jan 2015 14:01:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (errordeveloper[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f47.google.com (mail-la0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC991E007B7
	for <yocto@yoctoproject.org>; Sat, 24 Jan 2015 14:00:49 -0800 (PST)
Received: by mail-la0-f47.google.com with SMTP id hz20so2727860lab.6
	for <yocto@yoctoproject.org>; Sat, 24 Jan 2015 14:00:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:from:date:message-id:subject:to:cc
	:content-type; bh=gSin1mBsg7FOcC0qDwwV8ys0+04dYsVMBRGr5oJdJuQ=;
	b=wC+lZWFTOmeDpUG10Vej8bV/Z1uU7u4RUx0MW64CaqmF93e+RgVAoWdQn1/fjO+7OJ
	2UHYOk2iISbq0seIjuaild+ajgVmH1vgN/Wxz7zzTsqEwb2GAXcdYyskErZfI+buUxWE
	zWbtSTSJ/cSE9hGYiTxCQbtrdeP6WSWz8zL+xfdT27ZdFQUSnPe9ioJdAOWdEqFwU8qW
	B+Ql7EQRkRDu6aGycpqQI1VCmDuMjoMh1XnISx+0gXP/8deejpSSc9exoO5W/JAuoOYz
	H1RGiBMDmdPom3Uzqux++/o/6O2iasVS6p8Om153ie6dReT0rSDjwULMBi3ogLEus8am
	Do3g==
X-Received: by 10.152.8.11 with SMTP id n11mr13732881laa.38.1422136847863;
	Sat, 24 Jan 2015 14:00:47 -0800 (PST)
MIME-Version: 1.0
References: <CAPhDKbHip+UWSpfckRBo+=QBWGnMg+Bq55DcUS77zkxNmZHd2A@mail.gmail.com>
From: Ilya Dmitrichenko <errordeveloper@gmail.com>
Date: Sat, 24 Jan 2015 22:00:47 +0000
Message-ID: <CAPhDKbHJ9uXeuJ0O3Eg2v2zHGS5AZvL4cTYVoJFbd6VOkZQ8jA@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Cc: =?UTF-8?B?4oCccm9iZXJ0LmJlcmdlckByZWxpYWJsZWVtYmVkZGVkc3lzdGVtcy5jb23igJ0=?=
	<robert.berger@reliableembeddedsystems.com>
Subject: Re: Build appliance
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
X-List-Received-Date: Sat, 24 Jan 2015 22:01:01 -0000
Content-Type: multipart/alternative; boundary=001a11c366e2a399a1050d6d09bb

--001a11c366e2a399a1050d6d09bb
Content-Type: text/plain; charset=UTF-8

Adding Robert to CC list...

On Sat Jan 24 2015 at 9:53:32 PM Ilya Dmitrichenko <errordeveloper@gmail.com>
wrote:

> Hi List,
>
> I have attempted to define a custom build appliance image, with some
> degree of success. The only problem is that I have noticed is there is
> still a whole lot of `*-native` packages being pulled in when trying to
> build something. So I have attempted adding all of those to my image and
> set `ASSUME_PROVIDED` accordingly, it was still trying to build
> pseudo-native and sqlite3-native for some reason... Ideally, I'd like to
> have all of the `*-native` deps pre-installed on my build appliance's base
> filesystem, I believe this should work and I shouldn't have to bootstrap
> `tmp/work/sysroots/` and use the sysroot in `/usr` instead.
>
> More specifically, I am trying to build a container image that would cover
> the purpose of the build appliance and SDKs/ADTs, I think container could
> simplify a lot for Yocto... I haven't fully figured it out yet, still
> exploring the options, so hope the idea makes sense overall.
>
> Cheers,
> Ilya
>

--001a11c366e2a399a1050d6d09bb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Adding Robert to CC list...<br><br><div class=3D"gmail_quote">On Sat Jan 24=
 2015 at 9:53:32 PM Ilya Dmitrichenko &lt;<a href=3D"mailto:errordeveloper@=
gmail.com">errordeveloper@gmail.com</a>&gt; wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">Hi List,<div><br></div><div>I have attempted to define a custom b=
uild appliance image, with some degree of success. The only problem is that=
 I have noticed is there is still a whole lot of `*-native` packages being =
pulled in when trying to build something. So I have attempted adding all of=
 those to my image and set `ASSUME_PROVIDED` accordingly, it was still tryi=
ng to build pseudo-native and sqlite3-native for some reason... Ideally, I&=
#39;d like to have all of the `*-native` deps pre-installed on my build app=
liance&#39;s base filesystem, I believe this should work and I shouldn&#39;=
t have to bootstrap `tmp/work/sysroots/` and use the sysroot in `/usr` inst=
ead.</div><div><br></div><div>More specifically, I am trying to build a con=
tainer image that would cover the purpose of the build appliance and SDKs/A=
DTs, I think container could simplify a lot for Yocto... I haven&#39;t full=
y figured it out yet, still exploring the options, so hope the idea makes s=
ense overall.</div><div><br></div><div>Cheers,</div><div>Ilya=C2=A0</div></=
blockquote></div>

--001a11c366e2a399a1050d6d09bb--
