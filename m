Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FA6AE006EA; Wed,  9 Jul 2014 08:19:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f47.google.com (mail-la0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3640E006B9
	for <yocto@yoctoproject.org>; Wed,  9 Jul 2014 08:18:51 -0700 (PDT)
Received: by mail-la0-f47.google.com with SMTP id s18so5208814lam.34
	for <yocto@yoctoproject.org>; Wed, 09 Jul 2014 08:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=0qxVb/3EyoHuFKWA4HrxK9nkvjxmvpXwvytddwCf07I=;
	b=gXjWgMJvGNnav2ylGGq8pDkGPhvrh3oXXSVjsqdr678VK2bI1udGislXoKbffANh26
	fjWbsVqp2FmVeUvlYuAI3dbb0c1h7BlcTAz4vDPqNmEZbzevfGl+4NRnK+RYuufDaYiL
	9zgoBZ60A16TIass1vSIvEpxjHzDiS5eV/NfunnmwSc/9jVsFaW6r+N8IUkz37lQv+MD
	dfgAUUE31aR2LhbwnP26aiM4f18H0jgEUTTbhvBTqGBFX2k1TQ2zoun+DrWcrt5UKA9d
	jbt2/OVp+xTlxA6CDz5Nv53XUTP2LvEITMBHtZRRHeIYmIih0bEjMzagsfrlsXY4V0vj
	INHQ==
X-Received: by 10.112.144.104 with SMTP id sl8mr12962059lbb.52.1404919130227; 
	Wed, 09 Jul 2014 08:18:50 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.168.66 with HTTP; Wed, 9 Jul 2014 08:18:30 -0700 (PDT)
In-Reply-To: <CFE2BDED.98CE%seth.bollinger@digi.com>
References: <CFE2BDED.98CE%seth.bollinger@digi.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Wed, 9 Jul 2014 08:18:30 -0700
X-Google-Sender-Auth: 8hdkjqoyqgfMJFDtVbuoq7HKmvE
Message-ID: <CABcZANmVHcuH+rOp11gDLdSovq+_tDRohqEeZZbZHSuGXr0wRg@mail.gmail.com>
To: "Bollinger, Seth" <Seth.Bollinger@digi.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Inadvertent RootFS permission pollution
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
X-List-Received-Date: Wed, 09 Jul 2014 15:19:03 -0000
Content-Type: multipart/alternative; boundary=047d7b3441ecb2118304fdc439ec

--047d7b3441ecb2118304fdc439ec
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 9, 2014 at 7:37 AM, Bollinger, Seth <Seth.Bollinger@digi.com>
wrote:

> I recently ran into a problem where I had trouble determining why the
> setgid bit was set in my rootfs.  It turns out that debian has this bit set
> on /usr/local (where I was building from), and thus inherited this bit from
> that directory tree.  This surprised me, so I thought I would pass it along
> in case it saves anyone else some time.


Ah, yes, I've hit this in the past too, thanks for bringing it up, we'll
have to resolve that -- perhaps have bitbake chmod g-s ${TMPDIR} when it's
created?
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--047d7b3441ecb2118304fdc439ec
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Jul 9, 2014 at 7:37 AM, Bollinger, Seth <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:Seth.Bollinger@digi.com" target=3D"_blank">Seth.Bollinger@digi=
.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">I recently ran into a problem where I had tr=
ouble determining why the setgid bit was set in my rootfs. =C2=A0It turns o=
ut that debian has this bit set on /usr/local (where I was building from), =
and thus inherited this bit from that directory tree. =C2=A0This surprised =
me, so I thought I would pass it along in case it saves anyone else some ti=
me.</blockquote>

</div><br></div><div class=3D"gmail_extra">Ah, yes, I&#39;ve hit this in th=
e past too, thanks for bringing it up, we&#39;ll have to resolve that -- pe=
rhaps have bitbake chmod g-s ${TMPDIR} when it&#39;s created?<br>-- <br>
Christopher Larson<br>
clarson at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<b=
r>Maintainer - Tslib<br>Senior Software Engineer, Mentor Graphics
</div></div>

--047d7b3441ecb2118304fdc439ec--
