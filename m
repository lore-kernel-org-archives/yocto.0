Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E68FE00CC4; Thu, 10 Jan 2019 10:04:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com
	[209.85.217.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DA4FE00C46
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2019 10:04:58 -0800 (PST)
Received: by mail-vs1-f49.google.com with SMTP id p74so7602775vsc.0
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2019 10:04:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=I8/MJz7A6Ye1iYyR+USsF0b/abFqd8eOGXRosAUbqFg=;
	b=anU4tMwAuD0plzPycb2J3hYjOzsxWCq9z82VmljEWz9ENX6xKZj9ya6LIwhSq2X8xt
	+9N5WtdJlFtaJPzdx/tvm0pajduBKsIjO+/2nxJiJbh9Z/DudrydMavBwWEycXo00jFj
	8MJS1ASthIJ9vbCbgPj7Aq0Kag3Nby/164gyZxSBJGCOUw3uRcds3AtHmBkCHcfqWWj0
	tni0PE6jnba5WWytlJxX7ETsu5AAwvTfjsofp+QX7m2Dun392ae0XXJIPjXZ2VgWYs6y
	9U1DfafvurDFXGDTXGiBOIKlblTfVjdlvVQrwOsRL0xc608IFDim3i7uLRe9ejyi+ejv
	rSmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=I8/MJz7A6Ye1iYyR+USsF0b/abFqd8eOGXRosAUbqFg=;
	b=mksTFln2zJarFY4vFzwMUeHSJEthaMujMbbCwXeCE/nwYCFD/2Yey/9Rx6DVJtKefh
	nvKGSo/dFLuHhGfjapcK+Nh4cnTm7otB0ys/2QJ0wM8rkmK30hN9N9mJuFzUgtvmR7gd
	X1AEK97VIVuAznpeHK/LdvZwI4bs+aQI7Myv4c6UNMUUXFegH1dqQyo/EhnEKsIbWVy1
	KPO1bae83/RzgFgv+zjbn+vxhpcjVSKn9EJBVwLFBj10o5NKnXvV4z5AUE3QZl9Oa4/P
	uFTvaMumNKv5kQHhOBzVuoej76c3tMP8QtYGxsE7A8W2teXb4eK2uPz40G/wIcVBPGcU
	+Yfw==
X-Gm-Message-State: AJcUukfZQCs0V0njm2gvwjtS9yE2mY5O+ZiGqv4++KjzRAkro/D/98bA
	StzwcHKyIbf1erR6k5ILR7L+zmKOd4sq8mlAPy8=
X-Google-Smtp-Source: ALg8bN7o5IiF1PiSualcnvmRfzgbAOlrTYE+BSm94pkt8Fdwv+yuSgHPMelp0leljcgwUQLLSIS2b2z6ovgaZhnerZg=
X-Received: by 2002:a67:f114:: with SMTP id n20mr4723655vsk.90.1547143496763; 
	Thu, 10 Jan 2019 10:04:56 -0800 (PST)
MIME-Version: 1.0
References: <CAKRytNzSRPTnjXMO8Gajv5b20XtY++=jskWFWLTdMULSh++53w@mail.gmail.com>
	<CANNYZj_Oec5gWm=RuKnbU1yrEO67AFjv3bzpgTwidgTS=tMe2w@mail.gmail.com>
In-Reply-To: <CANNYZj_Oec5gWm=RuKnbU1yrEO67AFjv3bzpgTwidgTS=tMe2w@mail.gmail.com>
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Thu, 10 Jan 2019 19:04:43 +0100
Message-ID: <CAKRytNzUxrn+hPxUrNjJuXfw0hshLp+G-Es2HJUr0x1AzAcE4w@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Is it possible to upgrade Nodejs from 8 to 10 LTS?
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
X-List-Received-Date: Thu, 10 Jan 2019 18:04:59 -0000
Content-Type: multipart/alternative; boundary="0000000000008a8d42057f1e6aab"

--0000000000008a8d42057f1e6aab
Content-Type: text/plain; charset="UTF-8"

Thank u for the answer.

The problem is that I'm not expert in this stuff and Nodejs is not
something so easy to port like small softwares and so on. I think that
Nodejs is more appropriate for advanced users.
However, I'll try to do some other random experiments to understand how to
port the recipe and eventually I'll post my progress here also if not fully
working.

Another suggestion to the open-embedded community is to create two recipes,
one called nodejs and another one nodejs-lts. Generally speaking its easier
to do smaller upgrades if made step by step. In this way it is possible to
maintain the current lts and also the latest release (not lts). Probably
the porting from the latest non lts to the next lts wil be simpler then
skipping two versions in a single step. But these are only my suppositions.
I never ported complex softwares like this in yocto, so I could say stupid
things.

Il gio 10 gen 2019, 12:00 Alexander Kanavin <alex.kanavin@gmail.com> ha
scritto:

> On Wed, 9 Jan 2019 at 22:34, Stefano Cappa <stefano.cappa.ks89@gmail.com>
> wrote:
> > As explained here https://github.com/nodejs/Release, NodeJS 10 is the
> current active LTS and NodeJS 8 is right now in "Maintenance" (from January
> 2019).
> >
> > I saw that in master branch, Node has been updated from 8.12 to 8.14. Is
> there an official scheduling to release NodeJS 10 in open-embedded, for
> instance with yocto 2.7?
>
> In Yocto there is generally no official scheduling for version
> updates. That work is basically all volunteer-driven, so you are
> welcome to prepare the patches and send them for review and testing.
>
> Alex
>

--0000000000008a8d42057f1e6aab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank u for the answer.<div><br></div><div>The problem is that I&#39;m not =
expert in this stuff and Nodejs is not something so easy to port like small=
 softwares and so on. I think that Nodejs is more appropriate for advanced =
users.=C2=A0<div dir=3D"auto">However, I&#39;ll try to do some other random=
 experiments to understand how to port the recipe and eventually I&#39;ll p=
ost my progress here also if not fully working.=C2=A0</div><div dir=3D"auto=
"><br></div><div dir=3D"auto">Another suggestion to the open-embedded commu=
nity is to create two recipes, one called nodejs and another one nodejs-lts=
. Generally speaking its easier to do smaller upgrades if made step by step=
. In this way it is possible to maintain the current lts and also the lates=
t release (not lts). Probably the porting from the latest non lts to the ne=
xt lts wil be simpler then skipping two versions in a single step. But thes=
e are only my suppositions. I never ported complex softwares like this in y=
octo, so I could say stupid things.=C2=A0<br><br><div class=3D"gmail_quote"=
><div dir=3D"ltr">Il gio 10 gen 2019, 12:00 Alexander Kanavin &lt;<a href=
=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; ha scritt=
o:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">On Wed, 9 Jan 2019 at 22:34, Ste=
fano Cappa &lt;<a href=3D"mailto:stefano.cappa.ks89@gmail.com" target=3D"_b=
lank">stefano.cappa.ks89@gmail.com</a>&gt; wrote:<br>
&gt; As explained here <a href=3D"https://github.com/nodejs/Release" rel=3D=
"noreferrer" target=3D"_blank">https://github.com/nodejs/Release</a>, NodeJ=
S 10 is the current active LTS and NodeJS 8 is right now in &quot;Maintenan=
ce&quot; (from January 2019).<br>
&gt;<br>
&gt; I saw that in master branch, Node has been updated from 8.12 to 8.14. =
Is there an official scheduling to release NodeJS 10 in open-embedded, for =
instance with yocto 2.7?<br>
<br>
In Yocto there is generally no official scheduling for version<br>
updates. That work is basically all volunteer-driven, so you are<br>
welcome to prepare the patches and send them for review and testing.<br>
<br>
Alex<br>
</blockquote></div></div></div>

--0000000000008a8d42057f1e6aab--
