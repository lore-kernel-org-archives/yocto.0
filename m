Return-Path: <lookatyouhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 928C6E00B5F; Thu, 23 May 2019 19:53:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (lookatyouhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
	[209.85.210.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C775E00931
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 19:53:41 -0700 (PDT)
Received: by mail-ot1-f53.google.com with SMTP id 66so7404715otq.0
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 19:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=2drzJhslPPVSqWk/R23CJT0QMAEQ4YWQGw2i0/Ua9xA=;
	b=AtRIZYvXamWul8tk/kJJYWi8xnK3kvBQejUQJQCjs2ZsLfhu5hEsjQlUuxYogT48MD
	Fqwy+wbsZwJBzWp1QBEPBgCKIHD+IUJX4JR4ciE+7DeKjC7hpWI6s9ttTX7jJLZ77odP
	QTN0r7jLUAysmG6LWQePJ7TQZbUc+72L2PanWNWf3cozVQjVoPd34WavfiB2umYayukh
	3WhthwDDu3Jg59EZn215xFSBsc96r1mhBftaK7/HhXfWmi5eobxA0yi2FVP2WuePiCD2
	aps4p1Xwtz56APk11rJaWnc0gcsDpIIEK6MSdEZYi9MEFVGbNvJ75zs45n05hdEzJKKY
	0cIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=2drzJhslPPVSqWk/R23CJT0QMAEQ4YWQGw2i0/Ua9xA=;
	b=LA/+qjWWMOqGcfjFemNN/eAWrUiQQorAM2RZaZ81SGlPvhYEcZFTuRzeQ519eAn3X0
	TWvqqdzu5Pi/ev3tNvOXSJ+iTNXcaHRbEsAvYOzhF4h0XpQ3wpB2fmZ7jxnHRYDHSA1O
	UO14WcUbH5VNMvxrAzbi6g2zsVmLoWvk84bvEWyLsC6bGdnbdjXc8TDmv+oUam6fn1FH
	jml8qzA763t2PO5N+uw0rHAEFwOBO6XOiWY0YTFfOe5SCEBMalKpFvveWSW0ljr9iJM6
	BH8r/Bxt5wMD8DMI2aN/8tAiCHnYl7pbgTLadDpdNMe2GndOiYMquU6S8zhz3gHYTZu2
	h4hQ==
X-Gm-Message-State: APjAAAWlILdXjUu94xLDrluWMcsPUygN2YZASs9PzhsY23QxuKlChP23
	ME3UMJgNlIcn3e5dTHrWql7IpGtTsSfObmmajRA=
X-Google-Smtp-Source: APXvYqyipTZm9IquYbKHycJMBfVqS8Ywhl1IUj0UVfp1nL1Ik0ssXpbIQyBhlsl5/+cWHt2LKKDROOG0JBp0k5BqXvk=
X-Received: by 2002:a9d:362:: with SMTP id 89mr17055455otv.17.1558666421346;
	Thu, 23 May 2019 19:53:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAEseUX=OG1gVjXzBNAj=DiOMJ9eA9x58-ng7xDro0_arS1nXSw@mail.gmail.com>
	<50b3ec46-1c13-f0cb-64eb-bde7809db99d@gmail.com>
In-Reply-To: <50b3ec46-1c13-f0cb-64eb-bde7809db99d@gmail.com>
From: Shane Peelar <lookatyouhacker@gmail.com>
Date: Thu, 23 May 2019 22:53:33 -0400
Message-ID: <CAEseUXkdwLzK-r92SUMXVoMWFpVNVRNzVpjQGMzNLOJvx=jcbg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: prelink-cross with -fno-plt
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
X-List-Received-Date: Fri, 24 May 2019 02:53:42 -0000
Content-Type: multipart/alternative; boundary="0000000000005e26a30589994ef9"

--0000000000005e26a30589994ef9
Content-Type: text/plain; charset="UTF-8"

Any of them on the system pretty much, and yes they are also built with
-fno-plt.

On Thu, May 23, 2019 at 9:59 PM Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On 5/23/19 8:05 AM, Shane Peelar wrote:
> > Hi Everyone @ the Yocto project,
> >
> > I'm Shane Peelar, a PhD Candidate at the University of Windsor.
> > I'm writing to you about prelink-cross, as part of the Yocto project.
> > Specifically, I'm looking at using it with executables built using
> > `-fno-plt` under GCC.
> > I wasn't quite sure where to send this email to, so I figured I'd try
> > here.  If there's a better place to send this, please let me know.
> >
> > Right now, prelink-cross seems to fail an assertion in arch-x86_64.c,
> > line 421, when
> > using it with an executable built with `-fno-plt`:
> >
> > ...
> > assert (i < dso->ehdr.e_shnum)
> > ...
> >
> > This snippet seems to be looking for the ".plt" section and, since it
> > can't find it, the assertion fires.  This makes sense because in
> > `-fno-plt` executables, the `.plt` section is missing entirely.
> > I'm not an expert on ELF stuff, although I am learning quickly.  It
> > looks like
> > this code wants to write into GOT[1] the address of ".plt" + 0x16 --
> > since ".plt" doesn't
> > exist, does it make sense to just change this assert to an if statement
> > like so:
> >
> > ...
> >        if (i < dso->ehdr.e_shnum)
> >        { ... }
> > ...
> >
> > and skip over that part?  Or is this a real error condition for
> > prelink-cross and it really should not continue?  The executable in
> > question is also non-PIE, if that makes a difference.
> >
>
> what shared libs is this linking to ? are they also built with -fno-plt ?
>
> > Thanks for your time,
> > Shane
> >
>

--0000000000005e26a30589994ef9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Any of them on the system pretty much, and yes they are al=
so built with -fno-plt.<br></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Thu, May 23, 2019 at 9:59 PM Khem Raj &lt;<a =
href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On 5/23/19 8:05 AM, Shane Peelar wrote:<br>
&gt; Hi Everyone @ the Yocto project,<br>
&gt; <br>
&gt; I&#39;m Shane Peelar, a PhD Candidate at the University of Windsor.<br=
>
&gt; I&#39;m writing to you about prelink-cross, as part of the Yocto proje=
ct.<br>
&gt; Specifically, I&#39;m looking at using it with executables built using=
 <br>
&gt; `-fno-plt` under GCC.<br>
&gt; I wasn&#39;t quite sure where to send this email to, so I figured I&#3=
9;d try <br>
&gt; here.=C2=A0 If there&#39;s a better place to send this, please let me =
know.<br>
&gt; <br>
&gt; Right now, prelink-cross seems to fail an assertion in arch-x86_64.c, =
<br>
&gt; line 421, when<br>
&gt; using it with an executable built with `-fno-plt`:<br>
&gt; <br>
&gt; ...<br>
&gt; assert (i &lt; dso-&gt;ehdr.e_shnum)<br>
&gt; ...<br>
&gt; <br>
&gt; This snippet seems to be looking for the &quot;.plt&quot; section and,=
 since it <br>
&gt; can&#39;t find it, the assertion fires.=C2=A0 This makes sense because=
 in <br>
&gt; `-fno-plt` executables, the `.plt` section is missing entirely.<br>
&gt; I&#39;m not an expert on ELF stuff, although I am learning quickly.=C2=
=A0 It <br>
&gt; looks like<br>
&gt; this code wants to write into GOT[1] the address of &quot;.plt&quot; +=
 0x16 -- <br>
&gt; since &quot;.plt&quot; doesn&#39;t<br>
&gt; exist, does it make sense to just change this assert to an if statemen=
t <br>
&gt; like so:<br>
&gt; <br>
&gt; ...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (i &lt; dso-&gt;ehdr.e_shnum)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 { ... }<br>
&gt; ...<br>
&gt; <br>
&gt; and skip over that part?=C2=A0 Or is this a real error condition for <=
br>
&gt; prelink-cross and it really should not continue?=C2=A0 The executable =
in <br>
&gt; question is also non-PIE, if that makes a difference.<br>
&gt; <br>
<br>
what shared libs is this linking to ? are they also built with -fno-plt ?<b=
r>
<br>
&gt; Thanks for your time,<br>
&gt; Shane<br>
&gt; <br>
</blockquote></div>

--0000000000005e26a30589994ef9--
