Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52A83E008CF; Tue, 18 Nov 2014 13:57:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED284E0087D
	for <yocto@yoctoproject.org>; Tue, 18 Nov 2014 13:57:51 -0800 (PST)
Received: by mail-qc0-f178.google.com with SMTP id b13so21503177qcw.9
	for <yocto@yoctoproject.org>; Tue, 18 Nov 2014 13:57:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=JXw4L6Nw8A+N6/qJfxqYTu3BDAD3uLY5vCm1fGrAMWo=;
	b=UU4fcGzMHm+cHp19op6sEuOnp4Uq/mqsPL9WgfVDb2EqnFX0iATPtPRRIks4dhtJ4s
	oJWE+1VQ4wUdarG/nccdTHIMcfJfgIavMjIfmi+prnIpqFfc+SFRyj4SBnVsOaFzTgqw
	q71eeIvFjqB/yoExy4PiWHQp6FEG6pKWJWahlw2gRMCBE11UOeSuqEk9Lo3YXoGLrDLj
	3vUTZhSADzmxWnuc9xXBqWrHO3DGGAf9W/mUhO0q1CcrT/LM6fM+8IG8Jqc0XDEyoXEk
	wKeaDnAl6XUhf9koV8avXEH8NAvaDLA7AvGy11FHl6hAGzg2eHfVXW+1hSAG/0AIYEa1
	dAfA==
X-Gm-Message-State: ALoCoQnyKirhZbxLyflRCcJ/CFyxdCFW/eEh9ciZ//H1VsyviTXX7epbv9+/mayWVtBoTuF/f/vZ
X-Received: by 10.140.38.136 with SMTP id t8mr46667576qgt.15.1416347870998;
	Tue, 18 Nov 2014 13:57:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.48.231 with HTTP; Tue, 18 Nov 2014 13:57:30 -0800 (PST)
In-Reply-To: <546BB9EF.4040807@balister.org>
References: <546BB9EF.4040807@balister.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 18 Nov 2014 21:57:30 +0000
Message-ID: <CAJTo0LaKHeK+hL_s9z-pPT6dnzCR5mw4MgOkg4Zch=S=dWWGMA@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Layer model doomed, unless we all work together
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
X-List-Received-Date: Tue, 18 Nov 2014 21:57:59 -0000
Content-Type: multipart/alternative; boundary=001a11c12db2bacda20508292f16

--001a11c12db2bacda20508292f16
Content-Type: text/plain; charset=UTF-8

Hi Philip,

Yes.  What you said.  Some comments:

On 18 November 2014 21:28, Philip Balister <philip@balister.org> wrote:
>
> 1) recipes that need to move closer to core because a range of other
> packages use them.
>

alsa-plugins is one of these - meta-multimedia or maybe oe-core is an
obvious home for this.  As a "maintainer" (ha!) of meta-guacamayo I can
take a look at this but I'm fairly busy at the moment so this may take a
while.

In an attempt to balance karma, I have submitted several new recipes that
were in meta-guacamayo and needed elsewhere to meta-multimedia in the last
week. :)


> 2) people feel they have to remove recipes from layers and make local
> copies.
>

Making local copies if fine if required, but I agree that there's bound to
be a high number of recipes which are forked because that was easier than
writing a bbappend, and the reason for this fork was needed is never
resolved in the original layer.

Looking over the duplicate list, there's some obvious low-hanging fruit.
Angstrom duplicates recipes that are in meta-multimedia. meta-webos and
meta-webos-ports seem to be full of duplicates.  meta-guacamayo has some
recipes that were version bumps two years ago when oe-core was frozen.  The
dpdk duplicates are a bug in the tool with regards to sub-layers.

It's a shame that we can't make this some form of offense.  Maybe we should
spend some time researching
https://nctritech.files.wordpress.com/2008/11/tcpip_punch1.jpg?

Ross

--001a11c12db2bacda20508292f16
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi Philip,</div><div class=3D"g=
mail_extra"><br></div><div class=3D"gmail_extra">Yes.=C2=A0 What you said.=
=C2=A0 Some comments:</div><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">On 18 November 2014 21:28, Philip Balister <span dir=3D"ltr">&lt;=
<a href=3D"mailto:philip@balister.org" target=3D"_blank">philip@balister.or=
g</a>&gt;</span> wrote:<blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bo=
rder-left-style:solid;padding-left:1ex"><div id=3D":227" class=3D"" style=
=3D"overflow:hidden">
1) recipes that need to move closer to core because a range of other<br>
packages use them.<br></div></blockquote><div><br></div><div>alsa-plugins i=
s one of these - meta-multimedia or maybe oe-core is an obvious home for th=
is.=C2=A0 As a &quot;maintainer&quot; (ha!) of meta-guacamayo I can take a =
look at this but I&#39;m fairly busy at the moment so this may take a while=
.</div><div><br></div><div>In an attempt to balance karma, I have submitted=
 several new recipes that were in meta-guacamayo and needed elsewhere to me=
ta-multimedia in the last week. :)</div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">=
<div id=3D":227" class=3D"" style=3D"overflow:hidden">
2) people feel they have to remove recipes from layers and make local<br>
copies.</div></blockquote></div><br>Making local copies if fine if required=
, but I agree that there&#39;s bound to be a high number of recipes which a=
re forked because that was easier than writing a bbappend, and the reason f=
or this fork was needed is never resolved in the original layer.</div><div =
class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Looking over the=
 duplicate list, there&#39;s some obvious low-hanging fruit.=C2=A0 Angstrom=
 duplicates recipes that are in meta-multimedia. meta-webos and meta-webos-=
ports seem to be full of duplicates. =C2=A0meta-guacamayo has some recipes =
that were version bumps two years ago when oe-core was frozen.=C2=A0 The dp=
dk duplicates are a bug in the tool with regards to sub-layers.</div><div c=
lass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">It&#39;s a shame =
that we can&#39;t make this some form of offense.=C2=A0 Maybe we should spe=
nd some time researching=C2=A0<a href=3D"https://nctritech.files.wordpress.=
com/2008/11/tcpip_punch1.jpg">https://nctritech.files.wordpress.com/2008/11=
/tcpip_punch1.jpg</a>?</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></div>

--001a11c12db2bacda20508292f16--
