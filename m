Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D473E004F5; Wed,  3 Sep 2014 10:33:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (chmorgan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51DFBE0049D
	for <yocto@yoctoproject.org>; Wed,  3 Sep 2014 10:32:58 -0700 (PDT)
Received: by mail-ie0-f181.google.com with SMTP id rp18so10087159iec.12
	for <yocto@yoctoproject.org>; Wed, 03 Sep 2014 10:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=cqC0u3IUkvrZ7sbDm7FZW7ag2vR3APzNAH37tFKRpCg=;
	b=TnUiACyFHSeAN+UwehEz1Ln+W6qrq7CFGeJVWm1IowcYDxFlT3atUiRSlefoIab3bj
	ur++X9FHBZoAHXoJMF2jqQzphWHSePEgdeInaBWEi0jn0BzlOZaePanwJ6eBfyZmP5rC
	N7JLZc4Q6sO1h1QegInt+yOY4h+jAHzt34o90uGIVAq/YllaqGk3sVntHC3ERWttGlIx
	pwtN6j889RReYnvXpfgv/lE+2oJObxkFjK14jPgJJWyhclw0LhjpKJP5FQYv3NtnbrjS
	0iUwj2ZJjMPJt9+cqUWLb05dYPkhb/AZSuhtX44pmwWv7QRUnK3vS1q57DVf6uZa6apr
	RVug==
X-Received: by 10.42.40.144 with SMTP id l16mr22289413ice.27.1409765577660;
	Wed, 03 Sep 2014 10:32:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.113.134 with HTTP; Wed, 3 Sep 2014 10:32:37 -0700 (PDT)
From: Chris Morgan <chmorgan@gmail.com>
Date: Wed, 3 Sep 2014 13:32:37 -0400
Message-ID: <CAAPegz0J5vQ_3BrH+ge1o91oLsx0vGb5ysFaQoX96TTqj9J0tg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Building Android native packages with Yocto?
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
X-List-Received-Date: Wed, 03 Sep 2014 17:33:10 -0000
Content-Type: multipart/alternative; boundary=90e6ba212325791e6f05022ca05c

--90e6ba212325791e6f05022ca05c
Content-Type: text/plain; charset=UTF-8

Hello.

I'm working with a couple of different embedded systems. The current system
is pretty minimal in terms of resources, we expect to use Yocto to build
the Linux based distribution as well as packages for our internal software.
In the future however we expect to add on an Android system provided by a
3rd party.

Most of the software we are developing is system/platform related, outside
of the area of UI and above the level of kernel drivers.

It would be interesting, and helpful, if we could use all of the work we
are doing to put together Yocto recipes for our software when building for
both Yocto and Android.

I saw some posts about this from a year or more ago but nothing that
recent. Some ideas about plugging in the android ndk as the toolchain came
to mind and stubbing out dependencies.

Chris

--90e6ba212325791e6f05022ca05c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello.<div><br></div><div>I&#39;m working with a couple of=
 different embedded systems. The current system is pretty minimal in terms =
of resources, we expect to use Yocto to build the Linux based distribution =
as well as packages for our internal software. In the future however we exp=
ect to add on an Android system provided by a 3rd party.</div>

<div><br></div><div>Most of the software we are developing is system/platfo=
rm related, outside of the area of UI and above the level of kernel drivers=
.</div><div><br></div><div>It would be interesting, and helpful, if we coul=
d use all of the work we are doing to put together Yocto recipes for our so=
ftware when building for both Yocto and Android.</div>

<div><br></div><div>I saw some posts about this from a year or more ago but=
 nothing that recent. Some ideas about plugging in the android ndk as the t=
oolchain came to mind and stubbing out dependencies.</div><div><br></div>

<div>Chris</div><div><br></div></div>

--90e6ba212325791e6f05022ca05c--
