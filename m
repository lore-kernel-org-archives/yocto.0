Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F19CE0078E; Mon, 11 Aug 2014 08:09:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7417E004F2
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 08:09:39 -0700 (PDT)
Received: by mail-lb0-f182.google.com with SMTP id z11so5865917lbi.41
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 08:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=QaqVS/szuy8NeHCDy6EmYXo7v1YoYMzTvjFF1Cj0l40=;
	b=j+5I3dbA8+/4Kekw0d4e+5A7fZLixzYwlQmRtquil/bGPrMOwvvDOkXsQ6yWlbYZsK
	g3id1B+RFp6DSN/AG48I9zf0m3YTntVEJvXZViOJ1CIu+jwW16lcY33IjZrVIWeomB0g
	TbyjRyvfGvRzd0mi+g8gNXWmBClgKli4yKk/IpN8y2yjMasPfsZAuIfBQisP3DDJmhVB
	XXGvzmIP8p+hYd0MEA3uzvJrp6jziVRcMmws0ENtWLTDESQA5a7Q/kagsafZcwlO4Kgb
	haTGbDc7hbWFHNJ/1g9FSOPWLU8bF5eIf4k6/lIo+1o8WImeq8MnvZDIy0YxvPpLE03u
	1htA==
X-Received: by 10.153.4.6 with SMTP id ca6mr39414763lad.32.1407769778151; Mon,
	11 Aug 2014 08:09:38 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.43.42 with HTTP; Mon, 11 Aug 2014 08:09:18 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1408110738270.8322@localhost>
References: <alpine.LFD.2.11.1408110738270.8322@localhost>
From: Christopher Larson <clarson@kergoth.com>
Date: Mon, 11 Aug 2014 08:09:18 -0700
X-Google-Sender-Auth: z-AhPwhvlqFztG4Rr4rcvjDE_rk
Message-ID: <CABcZANkG1ja_EGNAqCbUGKXhY5Ugm9DV+mnEyW__THHOuRyNPg@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: anyone know of a single OE/yocto recipe that uses BBVERSIONS?
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
X-List-Received-Date: Mon, 11 Aug 2014 15:09:43 -0000
Content-Type: multipart/alternative; boundary=001a1133ee5a8d683b05005bf1a7

--001a1133ee5a8d683b05005bf1a7
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 11, 2014 at 4:40 AM, Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

>   collecting examples of recipe design and variants, and bitbake user
> manual refers to BBVERSIONS variable to allow a recipe file to build
> multiple versions from one file, but in the dozen or so layers i have
> checked out, i've seen not a single example of usage of that variable.
>
>   are there any?
>

Nope, as far as I know, it's not being used at all at the moment. The idea
was we could use it to avoid having multiple recipes with different
versions and .inc includes all over the place, but then policy changed to
tend to prefer having just a single recipe version around, so it's of less
use. If you'd like to see an example of a prototyped recipe using it, which
I created while implementing BBVERSIONS, see
https://gist.github.com/kergoth/338382. This was an attempt, at the time
(2010) to have a single m4 recipe that was capable of building every m4
version that existed. It was mostly to see if it could be done :)
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a1133ee5a8d683b05005bf1a7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Aug 11, 2014 at 4:40 AM, Robert P. J. Day <span dir=3D"ltr">&lt;<a =
href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.=
ca</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div id=3D":251" class=3D=
"" style=3D"overflow:hidden">=C2=A0 collecting examples of recipe design an=
d variants, and bitbake user<br>


manual refers to BBVERSIONS variable to allow a recipe file to build<br>
multiple versions from one file, but in the dozen or so layers i have<br>
checked out, i&#39;ve seen not a single example of usage of that variable.<=
br>
<br>
=C2=A0 are there any?</div></blockquote></div><br></div><div class=3D"gmail=
_extra">Nope, as far as I know, it&#39;s not being used at all at the momen=
t. The idea was we could use it to avoid having multiple recipes with diffe=
rent versions and .inc includes all over the place, but then policy changed=
 to tend to prefer having just a single recipe version around, so it&#39;s =
of less use. If you&#39;d like to see an example of a prototyped recipe usi=
ng it, which I created while implementing BBVERSIONS, see <a href=3D"https:=
//gist.github.com/kergoth/338382">https://gist.github.com/kergoth/338382</a=
>. This was an attempt, at the time (2010) to have a single m4 recipe that =
was capable of building every m4 version that existed. It was mostly to see=
 if it could be done :)<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a1133ee5a8d683b05005bf1a7--
