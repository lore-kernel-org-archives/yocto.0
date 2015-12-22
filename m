Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C7A7E00C7F; Tue, 22 Dec 2015 06:22:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CBE4E00457
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 06:22:39 -0800 (PST)
Received: by mail-ig0-f175.google.com with SMTP id mv3so50485431igc.0
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 06:22:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-type; bh=qnabP6wDcJwPfYju3AaiQAKlEHrw6r0krQdZlxEONyU=;
	b=nB4BECBG1MaQEOUXMBQGPYZcM0rBMMXkpgUKqzTb/9SltRjy8BotcEoi5iqxG+XMm/
	l9hFttygWKU1A3ud4LgQdX/CuQSiF1b4kgowPSJULyYkj5lAUXbfJ06oNTP8poofL0Ne
	926zlefpzVPyMP/VlTdmF6gKAkq7L8Te8kcqZBzUK0o9WlLTMqR9VveuP+VDg1/dy84l
	ndVxxtBCPNO9kdWYll1FeJN3iI57S9Ds7NA+lyuN0BcZkl2Hxl+yQmMqPhyqgc1hIN8T
	0LvBYOqyZzp3ppGE7ED2/jph+4RC1+1ZTuL3nYGo7qeJ3wcvm8F0rrNGtYzvprPi94Tw
	IaKQ==
X-Received: by 10.50.61.98 with SMTP id o2mr24411141igr.79.1450794159120; Tue,
	22 Dec 2015 06:22:39 -0800 (PST)
MIME-Version: 1.0
References: <CAFzUWG=iGCKx=crQv_TvMFBXDUytgv2Aq0FTH+0ug5veV1PGKg@mail.gmail.com>
In-Reply-To: <CAFzUWG=iGCKx=crQv_TvMFBXDUytgv2Aq0FTH+0ug5veV1PGKg@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Tue, 22 Dec 2015 14:22:28 +0000
Message-ID: <CAFzUWGnYAXdw7GtBzYwckZ1ykZy9K95UD-F7AV384WTg8nbD4A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Trying to add a recipe for ROOT
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
X-List-Received-Date: Tue, 22 Dec 2015 14:22:43 -0000
Content-Type: multipart/alternative; boundary=001a1134958a7f2d0b05277d565b

--001a1134958a7f2d0b05277d565b
Content-Type: text/plain; charset=UTF-8

Hi,

I've not heard a response yet on this?

Giordon

On Wed, Dec 9, 2015 at 3:00 PM Giordon Stark <kratsg@gmail.com> wrote:

> Hi all,
>
> I'm trying to add a recipe for ROOT (from CERN) but I'm running into
> various issues with just trying to get compilers working.
>
> Current recipe:
> https://github.com/kratsg/meta-l1calo/blob/master/recipes-core/root/root_6.04.12.bb
>
> Current log: https://gist.github.com/kratsg/cd3184a167676eb69067
>
> Note that the goal is to have the bare-minimum with PyROOT (enable python
> support). So I'm following:
> - https://root.cern.ch/building-root
> - https://root.cern.ch/build-prerequisites
>
> Thanks,
>
> Giordon
>

--001a1134958a7f2d0b05277d565b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;ve not heard a response yet o=
n this?</div><div><br></div><div>Giordon</div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr">On Wed, Dec 9, 2015 at 3:00 PM Giordon Stark &lt;<=
a href=3D"mailto:kratsg@gmail.com">kratsg@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi all,<div><br></div><div=
>I&#39;m trying to add a recipe for ROOT (from CERN) but I&#39;m running in=
to various issues with just trying to get compilers working.</div><div><br>=
</div><div>Current recipe:=C2=A0<a href=3D"https://github.com/kratsg/meta-l=
1calo/blob/master/recipes-core/root/root_6.04.12.bb" target=3D"_blank">http=
s://github.com/kratsg/meta-l1calo/blob/master/recipes-core/root/root_6.04.1=
2.bb</a></div><div><br></div><div>Current log:=C2=A0<a href=3D"https://gist=
.github.com/kratsg/cd3184a167676eb69067" target=3D"_blank">https://gist.git=
hub.com/kratsg/cd3184a167676eb69067</a></div><div><br></div><div>Note that =
the goal is to have the bare-minimum with PyROOT (enable python support). S=
o I&#39;m following:</div><div>-=C2=A0<a href=3D"https://root.cern.ch/build=
ing-root" target=3D"_blank">https://root.cern.ch/building-root</a></div><di=
v>-=C2=A0<a href=3D"https://root.cern.ch/build-prerequisites" target=3D"_bl=
ank">https://root.cern.ch/build-prerequisites</a>=C2=A0</div><div><br></div=
><div>Thanks,</div><div><br></div><div>Giordon</div></div></blockquote></di=
v>

--001a1134958a7f2d0b05277d565b--
