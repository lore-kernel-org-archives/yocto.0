Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DDF8E00AD0; Thu, 19 Jan 2017 19:08:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ticotimo[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
Received: from mail-ua0-f174.google.com (mail-ua0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2CDCE00ABE
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 19:08:09 -0800 (PST)
Received: by mail-ua0-f174.google.com with SMTP id i68so51539131uad.0
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 19:08:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4qniZrjH5okELNWPbWsIjvfeNs9TFuelArTfSdY+sCk=;
	b=fX3AlUTGJaw/o/fbaJugzc4MSAvC3SYLdBeGLnOIW/kHVOzcbErRMTiQTyA6CzFGEH
	Q5/Ef3m3zMkJz4/Ch6JTv0NIUAJW/3xR/IfUdg8DZPa5zEr153WxhxuvfWpY+qcbN+UH
	l81CO5ixRm3+3IffE1Uw7cFn3pD4ILgG6yGzjkMlXAknkKuCccV4Qlcxx6PDptbf6ok/
	LgHvL1YSgvOJWCVRPX3MTJouvJ9FLhw+8qYEfjqW6v0bEo85aqADgQbNHUsv7b10Hb/A
	VXUixPv2ZCMtDKIDMYz4VPhgcFZ3mZI8ndOKmNHIDgJ3OGUM7OpvboS+kb4fVk8tsWon
	XMCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4qniZrjH5okELNWPbWsIjvfeNs9TFuelArTfSdY+sCk=;
	b=nrKW2HOJSKlChEH5/rJSSM8Dd8wSh2+TMadRjdJM6SrT5ZH8S8TGkbvoPpH7dvNSQI
	s7WhVUNF/n6/ODQt274t2slDLx1EYhqNIfy9+wLlfTt1vtIPUb7QgqfaTdIK9FatnrPd
	W9+pT6wOUhhETmGEPriJF33SzvXBGT91WvWrlXCoKW6kjPdDtogVpNfLzQAry4adOeb7
	2vaDjnu4/VcsNgQhCtmDvoWgnh2lMMjm/iJXiaXdsTTU6LQcJnTkx1fXTqrLvbOeVE8R
	+U+DUZdhXwclXlPVnj04Hvn0zZWYwOMBPvfV1z1nyz0bMO57RgPmNjeI1OjO0vL6fVUk
	5LvA==
X-Gm-Message-State: AIkVDXKO8B65Nsl1h8d3F+wf6xlhOqFGjwNkKeM9SPv4ypFUCpP43xf8PHBDopV4bjK+5yTwaK2DoMLZeXDWFg==
X-Received: by 10.176.1.119 with SMTP id 110mr5785618uak.143.1484881689087;
	Thu, 19 Jan 2017 19:08:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.31.159.149 with HTTP; Thu, 19 Jan 2017 19:08:08 -0800 (PST)
In-Reply-To: <alpine.LFD.2.20.1701190656550.4070@uk63952.mitel.com>
References: <alpine.LFD.2.20.1701190656550.4070@uk63952.mitel.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Thu, 19 Jan 2017 19:08:08 -0800
Message-ID: <CANx9H-AGTK+0u5S=p9MD1HJQ7FPctjzQd8uK8g9EWrdqfZK9Cg@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: where does one find a OE/YP recipe for mod_auth_tkt?
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
X-List-Received-Date: Fri, 20 Jan 2017 03:08:14 -0000
Content-Type: multipart/alternative; boundary=001a114666869c969905467df587

--001a114666869c969905467df587
Content-Type: text/plain; charset=UTF-8

It's not a standard module from apache httpd. The original upstream is old
(2005) and on sourceforge. There is a newer upstream, by the same author
apparently, 2 years old at https://github.com/gavincarr/mod_auth_tkt

Why not just "devtool add https://github.com/gavincarr/mod_auth_tkt" and
see what comes out? Then submit it to meta-webserver as a patch.

On Thu, Jan 19, 2017 at 4:00 AM, Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

>
>   i was looking for this a while ago with no luck ... still
> interested ... am i just being clueless in not seeing where to get it?
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114666869c969905467df587
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It&#39;s not a standard module from apache httpd. The orig=
inal upstream is old (2005) and on sourceforge. There is a newer upstream, =
by the same author apparently, 2 years old at=C2=A0<a href=3D"https://githu=
b.com/gavincarr/mod_auth_tkt">https://github.com/gavincarr/mod_auth_tkt</a>=
<div><br></div><div>Why not just &quot;devtool add=C2=A0<a href=3D"https://=
github.com/gavincarr/mod_auth_tkt">https://github.com/gavincarr/mod_auth_tk=
t</a>&quot; and see what comes out? Then submit it to meta-webserver as a p=
atch.</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu=
, Jan 19, 2017 at 4:00 AM, Robert P. J. Day <span dir=3D"ltr">&lt;<a href=
=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
=C2=A0 i was looking for this a while ago with no luck ... still<br>
interested ... am i just being clueless in not seeing where to get it?<br>
<br>
rday<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>
Robert P. J. Day=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Ottawa, Ontario,=
 CANADA<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 <a href=3D"http://crashcourse.ca" rel=3D"noreferrer" target=3D"_=
blank">http://crashcourse.ca</a><br>
<br>
Twitter:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a=
 href=3D"http://twitter.com/rpjday" rel=3D"noreferrer" target=3D"_blank">ht=
tp://twitter.com/rpjday</a><br>
LinkedIn:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://ca.linkedin.=
com/in/rpjday" rel=3D"noreferrer" target=3D"_blank">http://ca.linkedin.com/=
in/<wbr>rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div></div>

--001a114666869c969905467df587--
