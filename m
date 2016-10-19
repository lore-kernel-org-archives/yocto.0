Return-Path: <davis.roman84@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D798FE00DAF; Tue, 18 Oct 2016 20:15:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (davis.roman84[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19AF8E00DA9
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 20:15:08 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id f5so18590079ioj.2
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 20:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=z8QFsaKkTjXYugWH4Kkw+wEJMQ0CEV0TnD9Fv4eCSf0=;
	b=NYA6XQ/r/YhQBMhbWUjgYaRfU7PUm2E1g51bc5B4uUN6yTfU/12dhuqFWIn4JIgLjE
	rrin43TO+wmuYkXtTUxLK2jfytWb81p9+wdNYOL/74zOSv7f99TCIRteOz+MLljQeiW5
	4V37GLppZowQnTADLNGk7w3NqSCsoLO6/bRNG4GLKV5hfqeTyMieUSpXyNiu9bZQklgv
	0eNjy5mtHUZX3fsChwYOHqASt2TabkOH9eMY9kFcXn1adGqzi3btug+0bCCdJ336MdWX
	iDo2NZhhfBvCiR4IU1T0h79vcWEiFOC6q+NDbpuywC7RR35ArDAzh+8ISmsUb0VhA09e
	sWew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=z8QFsaKkTjXYugWH4Kkw+wEJMQ0CEV0TnD9Fv4eCSf0=;
	b=JeEqBf9RDm6F7bkewJgfiNQnpD9g9NuMuAqnIgVj7uKBpzZmkCuAhkUCo86dCPEa6E
	6l09metuqJqBIH3ju8aR907sBUtTILGDUCmcKT3Ajsj8LagFnIKmbcDgmO9BrKKsxH1l
	fOzIbxMiBP6PbOP04Hh2sb7NXq4LLhUAII/igReoyAlfPJJZ+eOBQ3nKkC3XF6mL2rNP
	pDIc62hkZI0JNErAIuv8nuwzrNQIw1XFdOVYmfNRE9TttTgEjPgOu/JkHU6iw7BcSwu/
	mNEC/B70T+ZHoTJXujebkjoGno1TOJJUxMpovAWRJBHxtD1riazAk3ibVueJyEO3W3xl
	H0tg==
X-Gm-Message-State: AA6/9RmfdLyXEJQBFI82AMLpEfpw+OOYVFF4M8bKdgwd80bnQCT9ytVNjnOcC3NZ8rSQCcR6eThLCneFsHDYyw==
X-Received: by 10.107.31.78 with SMTP id f75mr4733899iof.141.1476846908302;
	Tue, 18 Oct 2016 20:15:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.54.36 with HTTP; Tue, 18 Oct 2016 20:15:07 -0700 (PDT)
In-Reply-To: <2230276.qBQjo1O2fV@peggleto-mobl.ger.corp.intel.com>
References: <CACfi_Z1gqXxGMgqwvs0YwT73VBWb4-GXsjKkkUxRZ5HehwL7-Q@mail.gmail.com>
	<2230276.qBQjo1O2fV@peggleto-mobl.ger.corp.intel.com>
From: Davis Roman <davis.roman84@gmail.com>
Date: Tue, 18 Oct 2016 23:15:07 -0400
Message-ID: <CACfi_Z1=wHVxTnL3piwbr_TRrTK3X69Z-KSeH+Km2DzGZBs0qg@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Difference between bitbake inclusion and inheritance
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
X-List-Received-Date: Wed, 19 Oct 2016 03:15:09 -0000
Content-Type: multipart/alternative; boundary=001a114043cc5b6d7b053f2f3708

--001a114043cc5b6d7b053f2f3708
Content-Type: text/plain; charset=UTF-8

Hi Khem, Paul

I understand now.

Thank you both for your answers!

- Davis

On Tue, Oct 18, 2016 at 10:00 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi Davis,
>
> On Tue, 18 Oct 2016 18:37:50 Davis Roman wrote:
> > I'm a yocto newbie and so I'm becoming familiar with the documentation.
> >
> > I came across a bitbake feature that is somewhat confusing to me
> regarding
> > the difference between optional/required inclusion versus inheritance.
> >
> > As far as optional/required inclusion is concerned, the documentation
> > states quite clearly that the main difference is that the former will not
> > issue an error message if the specified file is not found while the
> latter
> > will so there is no issue here.
> >
> > My issue has to do with the 'inherit' command. Sounds to me like
> 'include'
> > and 'require' already do the trick so I'm curious to know what value does
> > 'inherit' bring ?
>
> The answer is that they are very similar - but tend to be used for slightly
> different purposes. inherit is for where you have some functionality that
> you
> expect to be applicable across a number of recipes, so it should show up
> in a
> standard location in a reasonably standard format. The technical
> differences
> really stem from that:
>
> * Classes must appear in a classes subdirectory somewhere along BBPATH
> * Classes must be named <something>.bbclass
> * Classes can use EXPORT_FUNCTIONS so you can still call the original
> function
> from your overridden version
> * It's easy to query from python code whether a recipe inherits a class
> (and
> it's something we do in quite a number of places); it's technically
> possible
> to do the same for include/require but more difficult
>
> include/require are much more generic and applicable for any other kind of
> shared or encapsulated functionality or configuration that doesn't suit a
> .bbclass.
>
> Note that not all classes are typically inherited from individual recipes
> with
> inherit - there are classes that are usually applied globally by adding
> their
> names to INHERIT (e.g. buildhistory).
>
> Hope that helps.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a114043cc5b6d7b053f2f3708
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">Hi Khem, Paul</span><div =
style=3D"font-size:12.8px"><br></div><div style=3D"font-size:12.8px">I unde=
rstand now.</div><div style=3D"font-size:12.8px"><br></div><div style=3D"fo=
nt-size:12.8px">Thank you both for your answers!</div><div style=3D"font-si=
ze:12.8px"><br></div><div style=3D"font-size:12.8px">- Davis</div><div clas=
s=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Oct 18, 2016 at 10=
:00 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton=
@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">Hi Davis,<br>
<span class=3D""><br>
On Tue, 18 Oct 2016 18:37:50 Davis Roman wrote:<br>
&gt; I&#39;m a yocto newbie and so I&#39;m becoming familiar with the docum=
entation.<br>
&gt;<br>
&gt; I came across a bitbake feature that is somewhat confusing to me regar=
ding<br>
&gt; the difference between optional/required inclusion versus inheritance.=
<br>
&gt;<br>
&gt; As far as optional/required inclusion is concerned, the documentation<=
br>
&gt; states quite clearly that the main difference is that the former will =
not<br>
&gt; issue an error message if the specified file is not found while the la=
tter<br>
&gt; will so there is no issue here.<br>
&gt;<br>
&gt; My issue has to do with the &#39;inherit&#39; command. Sounds to me li=
ke &#39;include&#39;<br>
&gt; and &#39;require&#39; already do the trick so I&#39;m curious to know =
what value does<br>
&gt; &#39;inherit&#39; bring ?<br>
<br>
</span>The answer is that they are very similar - but tend to be used for s=
lightly<br>
different purposes. inherit is for where you have some functionality that y=
ou<br>
expect to be applicable across a number of recipes, so it should show up in=
 a<br>
standard location in a reasonably standard format. The technical difference=
s<br>
really stem from that:<br>
<br>
* Classes must appear in a classes subdirectory somewhere along BBPATH<br>
* Classes must be named &lt;something&gt;.bbclass<br>
* Classes can use EXPORT_FUNCTIONS so you can still call the original funct=
ion<br>
from your overridden version<br>
* It&#39;s easy to query from python code whether a recipe inherits a class=
 (and<br>
it&#39;s something we do in quite a number of places); it&#39;s technically=
 possible<br>
to do the same for include/require but more difficult<br>
<br>
include/require are much more generic and applicable for any other kind of<=
br>
shared or encapsulated functionality or configuration that doesn&#39;t suit=
 a<br>
.bbclass.<br>
<br>
Note that not all classes are typically inherited from individual recipes w=
ith<br>
inherit - there are classes that are usually applied globally by adding the=
ir<br>
names to INHERIT (e.g. buildhistory).<br>
<br>
Hope that helps.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div></div>

--001a114043cc5b6d7b053f2f3708--
