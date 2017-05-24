Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F24E8E00B67; Wed, 24 May 2017 07:45:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.181 listed in dnsbl.sorbs.net]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.181 listed in list.dnswl.org]
Received: from mail-yw0-f181.google.com (mail-yw0-f181.google.com
	[209.85.161.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 777F2E00B27
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 07:45:09 -0700 (PDT)
Received: by mail-yw0-f181.google.com with SMTP id l14so90306693ywk.1
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 07:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lT1n/HDmgckwVrzpR1TOqB1yCjlTK3MZz7lQvYtvZvg=;
	b=hnepE7LsnAArE9PTVfYE3vsbPCsyCSUqh4ib6dFaRiYl2WqNNfEKeqxxwL9ABeE6UZ
	0Ho782SL1WHp5XXN8n96xh8cVKg53slrQw2Fq7AVFTcFa0H1slxm/V/6m7Xwm4OOh/nf
	e+N8ZVqdL/iuaI9I6LwtDjD4/O5q0AYq3IvyBVLAB6QAVLo0ud2y8K9e/FRZ1KTQLrjc
	qn/tRbDB+41Aaf+Rc/UH+qUx/iV1vLIwiqPahx1aAvF6i0etpgoxj6V1PHTF74V9SXOC
	SXHeiC623tr1+pgn9Hnhue4EFRb/57dxzPpCoE7baoyylj5cpGy3TM9VAct2VnZKyIaR
	8b9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lT1n/HDmgckwVrzpR1TOqB1yCjlTK3MZz7lQvYtvZvg=;
	b=jJh1l4/USw00todha80shNWwTBMSt/abBt1zLbDJQL7w+962sqbSAHSD2ZPHIpcZmT
	H6phH03JxhZwAfwiRwCf4KVg8jT3C5lHNJ1XvLwR8YYoUGHB0eXt6gMmhU9qcnSdUmB8
	buQZW5NC0dqN38SpWtCIWmrRQGSGOr+0AmwLHCgtCr5t+6q1ZkPBo8l52y8Pum4BAWr7
	piI4ePpWqx9Yn8T+QKljFA2V3F6wlFBljJoctESd8yZ/I50Yi3tdoCkoLLnjVyT1j+Rv
	tj7wF8QQwkkUaoTz/W0sbHhdzcFMxVZ4G6iCcY/SGJxtgQBb2v6PA8b7iwouI1wVoypv
	XJOQ==
X-Gm-Message-State: AODbwcABBYv4U84cd2m2X49pHWr56VD4MehFf/1DBx7BTpk5w3N0RNOl
	Dl6K76JQTNaHY8tdDgIoW5DGSak1qg==
X-Received: by 10.129.68.31 with SMTP id r31mr27064644ywa.2.1495637108411;
	Wed, 24 May 2017 07:45:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.162.38 with HTTP; Wed, 24 May 2017 07:45:07 -0700 (PDT)
In-Reply-To: <1495637202.4956.26.camel@linux.intel.com>
References: <1c18599c-5bf5-d382-0bba-fc7cebb4b2ce@mlbassoc.com>
	<1495637202.4956.26.camel@linux.intel.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 24 May 2017 16:45:07 +0200
Message-ID: <CA+chaQd+00QjnMRjjzNigP-+4ecGkxWgcdp5Azn9wGWS9yRqBw@mail.gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: webkitgtk2 progress bar
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
X-List-Received-Date: Wed, 24 May 2017 14:45:11 -0000
Content-Type: multipart/alternative; boundary="f403045eb89c8f6cce05504626b6"

--f403045eb89c8f6cce05504626b6
Content-Type: text/plain; charset="UTF-8"

You can try to use gold to save a bit of time linking the beast.

On Wed, May 24, 2017 at 4:46 PM, Leonardo Sandoval <
leonardo.sandoval.gonzalez@linux.intel.com> wrote:

> On Wed, 2017-05-24 at 16:23 +0200, Gary Thomas wrote:
> > I see that the latest master update has brought a progress bar
> > for this (and presumably other 'cmake' based packages) - very nice :-)
> >
> > Now [tongue-in-cheek], can someone do something about the horrendous
> > build times for such packages (webkitgtk2 can take up to 3 hours on
> > my [no so slow] build host!)?
>
>
> this is not easy and from my side what I have done some profiling based
> on the buildstats to figure out the top consumers recipes/tasks. As you
> mentioned, webkitgtk is the winner, at least for utimes!
>
> https://wiki.yoctoproject.org/wiki/MortyBuildstats
> https://wiki.yoctoproject.org/wiki/TipsAndTricks/InvestigatingBuildTime
>
> Leo
>
>
>
> >
> > --
> > ------------------------------------------------------------
> > Gary Thomas                 |  Consulting for the
> > MLB Associates              |    Embedded world
> > ------------------------------------------------------------
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f403045eb89c8f6cce05504626b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You can try to use gold to save a bit of time linking the =
beast.</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On We=
d, May 24, 2017 at 4:46 PM, Leonardo Sandoval <span dir=3D"ltr">&lt;<a href=
=3D"mailto:leonardo.sandoval.gonzalez@linux.intel.com" target=3D"_blank">le=
onardo.sandoval.gonzalez@linux.intel.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">On Wed, 2017-05-24 at 16:23 +0200, Gary Thomas wrote:=
<br>
&gt; I see that the latest master update has brought a progress bar<br>
&gt; for this (and presumably other &#39;cmake&#39; based packages) - very =
nice :-)<br>
&gt;<br>
&gt; Now [tongue-in-cheek], can someone do something about the horrendous<b=
r>
&gt; build times for such packages (webkitgtk2 can take up to 3 hours on<br=
>
&gt; my [no so slow] build host!)?<br>
<br>
<br>
this is not easy and from my side what I have done some profiling based<br>
on the buildstats to figure out the top consumers recipes/tasks. As you<br>
mentioned, webkitgtk is the winner, at least for utimes!<br>
<br>
<a href=3D"https://wiki.yoctoproject.org/wiki/MortyBuildstats" rel=3D"noref=
errer" target=3D"_blank">https://wiki.yoctoproject.org/<wbr>wiki/MortyBuild=
stats</a><br>
<a href=3D"https://wiki.yoctoproject.org/wiki/TipsAndTricks/InvestigatingBu=
ildTime" rel=3D"noreferrer" target=3D"_blank">https://wiki.yoctoproject.org=
/<wbr>wiki/TipsAndTricks/<wbr>InvestigatingBuildTime</a><br>
<br>
Leo<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
<br>
&gt;<br>
&gt; --<br>
&gt; ------------------------------<wbr>------------------------------<br>
&gt; Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0|=C2=A0 Consulting for the<br>
&gt; MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0=
 =C2=A0 Embedded world<br>
&gt; ------------------------------<wbr>------------------------------<br>
<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--f403045eb89c8f6cce05504626b6--
