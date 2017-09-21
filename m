Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3B53E00CC2; Thu, 21 Sep 2017 03:08:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3911FE00C14
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 03:08:12 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id i197so9643636ioe.9
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 03:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=P03V2MVcjWF5wWbm7zyLucY0zwf55x631vZ148Cqk1Q=;
	b=NAfHtgLzkeDkGAB1zCdiISrbxqGT5NDNrxZr6KD2OfXj3HEO4z9OAfy51s7E8gdHVf
	P47GT7gvFqse0E34XbSg7yJAW41csxlsWgLChiDUDlZ/HpN47HbuCGnpO5dEu0FrxaCp
	1FI8AU5y+djT3Gj1jTZHsIz7BuPS3UgKZ4ipio3a+YTIQlvdhJ6syT3Wz9a3t/3ofmvA
	m9KyUOJwV+v10Ejkug0vXgECg3UGOvk/DKB5RLFGWgUH4DMPT5CxWMlX/ns5igvLD0Ji
	lGE0RDX0mMeyldEqw1j5m+qDWCzkKwVyxQBl6JgGmWXBZvqqMNA1J+Jcl6nyDiSOHCNU
	7T6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=P03V2MVcjWF5wWbm7zyLucY0zwf55x631vZ148Cqk1Q=;
	b=uOBaIW/8salNtwRL++W3+vOBdnGLAx6NQtZntDSybOI1br/XCuxdNHGiFqkC8aBbdk
	BA1AYysO6tWoKHgKEL+SRroB0BQU5Q9dNaatS6x9AJRn8BmGjWLAIA5+oE7SloaQJmwB
	V+/JX1JpCshS3EZ+32ShDqXGqEGFrkBw+jj83MGgAi8ZFs0Xh4PwDQb/ncn+Q83YGB99
	cJRCWl4Avj7Agce1iWj0sKsbZJ0J9ls2goQ6sPXn0QfPqm/fJQupsGD4wxvo2+wpG2eg
	92HZP1IDCAn3U9Y46xVeO7VoWaWFB+iJ0Gg9FNaqPyY022zW7MKfI0twINqsbVhZBzox
	0LMw==
X-Gm-Message-State: AHPjjUiSK4DQLnjRa432SOZsqWY6hfwSY0YztynmqYgOdY9JM3Kvzzap
	hBtaQZz5T7FJ9G4CWs3dPa/l19XuXxssnj+XQOMBLw==
X-Google-Smtp-Source: AOwi7QAKwcNwRmkgRvMsV5yJKVdwvZFSeWyLUQQVBcLrQ9+5MEBLr2n4VPPKkCvoso53NCI6ZWWpNsTYq6ywbDgO74k=
X-Received: by 10.107.164.28 with SMTP id n28mr1946366ioe.175.1505988491975;
	Thu, 21 Sep 2017 03:08:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.19.68 with HTTP; Thu, 21 Sep 2017 03:07:51 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.21.1709210557260.19879@localhost.localdomain>
References: <alpine.LFD.2.21.1709210557260.19879@localhost.localdomain>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 21 Sep 2017 11:07:51 +0100
Message-ID: <CAJTo0LZqvCZ3a37krzj4rYZ+g+BEuWPYm5yncYP3keWf2nGwiQ@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: which is the official(?) OE/YP openbmc layer?
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
X-List-Received-Date: Thu, 21 Sep 2017 10:08:16 -0000
Content-Type: multipart/alternative; boundary="001a114223ac19bc060559b0451b"

--001a114223ac19bc060559b0451b
Content-Type: text/plain; charset="UTF-8"

On 21 September 2017 at 11:01, Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

>   colleague just yesterday asked me a couple questions about openbmc,
> so i investigated the OE/YP layer, and i'm a bit confused ... the
> official OE layers page here:
>
> https://layers.openembedded.org/layerindex/branch/master/layers/
>
> refers to a meta-openbmc layer at https://github.com/facebook/openbmc,
> implying it's a facebook project, but github also hosts:
>
> https://github.com/openbmc
>
>   can anyone clarify the relationship between those two? if there is
> any?
>

Oh I really hope that isn't a Google/IBM vs Facebook fork war.

I think the best way to get an answer is to email both maintainers...

Ross

--001a114223ac19bc060559b0451b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 21 September 2017 at 11:01, Robert P. J. Day <span dir=
=3D"ltr">&lt;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpj=
day@crashcourse.ca</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div=
 class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=C2=A0 colleague just=
 yesterday asked me a couple questions about openbmc,<br>
so i investigated the OE/YP layer, and i&#39;m a bit confused ... the<br>
official OE layers page here:<br>
<br>
<a href=3D"https://layers.openembedded.org/layerindex/branch/master/layers/=
" rel=3D"noreferrer" target=3D"_blank">https://layers.openembedded.<wbr>org=
/layerindex/branch/master/<wbr>layers/</a><br>
<br>
refers to a meta-openbmc layer at <a href=3D"https://github.com/facebook/op=
enbmc" rel=3D"noreferrer" target=3D"_blank">https://github.com/facebook/<wb=
r>openbmc</a>,<br>
implying it&#39;s a facebook project, but github also hosts:<br>
<br>
<a href=3D"https://github.com/openbmc" rel=3D"noreferrer" target=3D"_blank"=
>https://github.com/openbmc</a><br>
<br>
=C2=A0 can anyone clarify the relationship between those two? if there is<b=
r>
any?<br></blockquote><div><br></div><div>Oh I really hope that isn&#39;t a =
Google/IBM vs Facebook fork war.</div><div><br></div><div>I think the best =
way to get an answer is to email both maintainers...</div><div><br></div><d=
iv>Ross=C2=A0</div></div></div></div>

--001a114223ac19bc060559b0451b--
