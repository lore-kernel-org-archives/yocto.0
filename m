Return-Path: <lookatyouhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2473DE00A96; Fri, 24 May 2019 08:10:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (lookatyouhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
	[209.85.167.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2815AE00931
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 08:10:23 -0700 (PDT)
Received: by mail-oi1-f176.google.com with SMTP id u64so7291549oib.1
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 08:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ICFvvyP3uzb2/2Rx7HgAt5iUg3Pf5hdVpddLMkQvUrw=;
	b=MSXNSJeAZ4vpUYQlklY5AqnRQehYDeqUM9p2tIRM5QceJnkdYTeJ25zBW97W35u5bO
	ec7MYbcLvTZh+9trkArpT66ddJaZBi0cvYEGYWReg9vmJW/cu7Ss+A5Upozh24fxrbAw
	Y/Vv3d2uqnqrg85MnMrHN6gCZWRisMUd6kgXxWBe+mtluy+w/bnDC2a67eIL7NhfhYI5
	nFsfuURYNEXSkuQCb9TYBAqG5OM/T3TFuwGFOM+J2miFvuHzFur1xOINIimtZVW+6bgC
	ovMICRoS4YU3U/iP6HvEz+25ICKHvL+KyAoBt8AgUFCod0/e5rG4CWlRsswc5KkiClsQ
	k+Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ICFvvyP3uzb2/2Rx7HgAt5iUg3Pf5hdVpddLMkQvUrw=;
	b=VkKW82JBJ3tMB2pk6SDP3O04WYdvpiz+uBL75WyjnhXS3K4yiFbiIiQ0IoyIc+sobD
	EEFjo8a2nNiDJJuuhRXz0jQS1blIGIP4/hgwrP+cc9NtFjIVI94U+7k6pt49+z8TxkfR
	po6l2XlXe1tequ1AgqTJgOmD74rq4XKWbmJaVxQNf5Kt64LTGgV4EOhFITKZCLOXPNgy
	1B8fXdOHb/VEPlLyD0RpzX+ZrHDh6R4NlCY1g/7tBUL4qM86HoIQUUoqfLpuVoRqlYGN
	uuJpeyFcqsIf6/xvbTfcasiakZqBkxWQ9nZTVrLtkhAMbmq6752F+sObYooDIAhS4P1+
	MVTw==
X-Gm-Message-State: APjAAAXjNjVloptC0LyDojyJeaehd6GZRMNF2zuNYnv6DYFIul5VCo1Q
	cD/Ljs9zIw5z/iuS0IYf2s4Lg/D4Njxv0Ebqg8ozuCA2KEQ=
X-Google-Smtp-Source: APXvYqyrac6PKHwn35EH0VxStS0rwvqwzF6Qonh0WwRuOEnqyoPjWn6WGIIrcx8Nt9rLOMmV+EMAk/JxCEt8WueAHTY=
X-Received: by 2002:aca:c348:: with SMTP id t69mr6601033oif.95.1558710622482; 
	Fri, 24 May 2019 08:10:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAEseUX=OG1gVjXzBNAj=DiOMJ9eA9x58-ng7xDro0_arS1nXSw@mail.gmail.com>
	<50b3ec46-1c13-f0cb-64eb-bde7809db99d@gmail.com>
	<CAEseUXkdwLzK-r92SUMXVoMWFpVNVRNzVpjQGMzNLOJvx=jcbg@mail.gmail.com>
	<bb585fca-cdc0-1c2a-47db-cf854b23d850@gmail.com>
In-Reply-To: <bb585fca-cdc0-1c2a-47db-cf854b23d850@gmail.com>
From: Shane Peelar <lookatyouhacker@gmail.com>
Date: Fri, 24 May 2019 11:10:14 -0400
Message-ID: <CAEseUX=g+C=15OVzc4G_1zWLwCsi+XzZR4p9jF5=b7ZYFANgow@mail.gmail.com>
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
X-List-Received-Date: Fri, 24 May 2019 15:10:24 -0000
Content-Type: multipart/alternative; boundary="000000000000f5f7050589a3985c"

--000000000000f5f7050589a3985c
Content-Type: text/plain; charset="UTF-8"

I did some reading into the sources in other architectures.  The closest
match, arch_i386.c, makes the write conditional as you say.
So do other arches, including arch_arm.c, arch_sh.c, arch-mips.c, arch-s390.c,
arch-s390x.c, and arch-ia64.c.

Notably, arch-cris.c has the same assert as arch-x86_64.c instead of the
conditional.

The code roughly looks like follows:

1. Check for dso->info[DT_PLTGOT].  If it does not exist, return 0
2. Call addr_to_sec on dso->info[DT_PLTGOT], return 1 if error
3. Look for the section named ".plt" in the ELF.
4. If the section cannot be found, return 0
5. Otherwise, write the address of .plt + constant (dependent on arch) to
got[1]

In arch-x86_64.c and arch-cris.c, step (4) above is an assert:

1. Check for dso->info[DT_PLTGOT].  If it does not exist, return 0
2. Call addr_to_sec on dso->info[DT_PLTGOT], return 1 if error
3. Look for the section named ".plt" in the ELF.
4. Assert that the section was found
5. Write the address of .plt + constant (dependent on arch) to got[1]

I tested out making the assert conditional and nothing seemed to break at
least.


On Fri, May 24, 2019 at 12:08 AM Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On 5/23/19 7:53 PM, Shane Peelar wrote:
> > Any of them on the system pretty much, and yes they are also built with
> > -fno-plt.
>
> OK, I think its better to them conditionally check for .plt section,
> can you describe more of whats going on when sections are checked.
>
> >
> > On Thu, May 23, 2019 at 9:59 PM Khem Raj <raj.khem@gmail.com
> > <mailto:raj.khem@gmail.com>> wrote:
> >
> >
> >
> >     On 5/23/19 8:05 AM, Shane Peelar wrote:
> >      > Hi Everyone @ the Yocto project,
> >      >
> >      > I'm Shane Peelar, a PhD Candidate at the University of Windsor.
> >      > I'm writing to you about prelink-cross, as part of the Yocto
> project.
> >      > Specifically, I'm looking at using it with executables built using
> >      > `-fno-plt` under GCC.
> >      > I wasn't quite sure where to send this email to, so I figured I'd
> >     try
> >      > here.  If there's a better place to send this, please let me know.
> >      >
> >      > Right now, prelink-cross seems to fail an assertion in
> >     arch-x86_64.c,
> >      > line 421, when
> >      > using it with an executable built with `-fno-plt`:
> >      >
> >      > ...
> >      > assert (i < dso->ehdr.e_shnum)
> >      > ...
> >      >
> >      > This snippet seems to be looking for the ".plt" section and,
> >     since it
> >      > can't find it, the assertion fires.  This makes sense because in
> >      > `-fno-plt` executables, the `.plt` section is missing entirely.
> >      > I'm not an expert on ELF stuff, although I am learning quickly.
> It
> >      > looks like
> >      > this code wants to write into GOT[1] the address of ".plt" + 0x16
> --
> >      > since ".plt" doesn't
> >      > exist, does it make sense to just change this assert to an if
> >     statement
> >      > like so:
> >      >
> >      > ...
> >      >        if (i < dso->ehdr.e_shnum)
> >      >        { ... }
> >      > ...
> >      >
> >      > and skip over that part?  Or is this a real error condition for
> >      > prelink-cross and it really should not continue?  The executable
> in
> >      > question is also non-PIE, if that makes a difference.
> >      >
> >
> >     what shared libs is this linking to ? are they also built with
> >     -fno-plt ?
> >
> >      > Thanks for your time,
> >      > Shane
> >      >
> >
>

--000000000000f5f7050589a3985c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I did some reading into the sources in other architec=
tures.=C2=A0 The closest match, arch_i386.c, makes the write conditional as=
 you say.</div><div>So do other arches, including <code>arch_arm.c, <code>a=
rch_sh.c, <code>arch-mips.c, <code>arch-s390.c, <code>arch-s390x.c, and <co=
de>arch-ia64.c.</code></code></code></code></code></code></div><div><code><=
code><code><code><code><code><br></code></code></code></code></code></code>=
</div><div>Notably, <code><code><code><code><code><code><code>arch-cris.c</=
code></code></code></code></code></code></code> has the same assert as <cod=
e><code><code><code><code><code><code>arch-x86_64.c</code></code></code></c=
ode></code></code></code> instead of the conditional.</div><br>The code rou=
ghly looks like follows:<code><code><code><code><code><code><code></code></=
code></code></code></code></code></code><br><code><code><code><code><code><=
code><code></code></code></code></code></code></code></code><div><code><cod=
e><code><code><code><code><code><br></code></code></code></code></code></co=
de></code></div><div>1. Check for dso-&gt;info[DT_PLTGOT].=C2=A0 If it does=
 not exist, return 0</div><div>2. Call addr_to_sec on dso-&gt;info[DT_PLTGO=
T], return 1 if error<br></div>3. Look for the section named &quot;.plt&quo=
t; in the ELF.<br>4. If the section cannot be found, return 0<br>5. Otherwi=
se, write the address of .plt + constant (dependent on arch) to got[1]<code=
><code><code><code><code><code><code></code></code></code></code></code></c=
ode></code><br><code><code><code><code><code><code><code></code></code></co=
de></code></code></code></code><div><code><code><code><code><code><code><co=
de><br></code></code></code></code></code></code></code></div><div>In <code=
><code><code><code><code><code><code>arch-x86_64.c and arch-cris.c</code></=
code></code></code></code></code></code>, step (4) above is an assert:<code=
><code><code><code><code><code><code><br><br></code></code></code></code></=
code></code></code>1. Check for dso-&gt;info[DT_PLTGOT].=C2=A0 If it does n=
ot exist, return 0</div><div>2. Call addr_to_sec on dso-&gt;info[DT_PLTGOT]=
, return 1 if error</div><div>3. Look for the section named &quot;.plt&quot=
; in the ELF.</div><div>4. Assert that the section was found<br>5. Write th=
e address of .plt + constant (dependent on arch) to got[1]<br></div><div><b=
r></div><div>I tested out making the assert conditional and nothing seemed =
to break at least.<br></div><div><div><code><code><code><code><code><code><=
code><br></code></code></code></code></code></code></code></div></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fr=
i, May 24, 2019 at 12:08 AM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.c=
om">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><br>
<br>
On 5/23/19 7:53 PM, Shane Peelar wrote:<br>
&gt; Any of them on the system pretty much, and yes they are also built wit=
h <br>
&gt; -fno-plt.<br>
<br>
OK, I think its better to them conditionally check for .plt section,<br>
can you describe more of whats going on when sections are checked.<br>
<br>
&gt; <br>
&gt; On Thu, May 23, 2019 at 9:59 PM Khem Raj &lt;<a href=3D"mailto:raj.khe=
m@gmail.com" target=3D"_blank">raj.khem@gmail.com</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj=
.khem@gmail.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 5/23/19 8:05 AM, Shane Peelar wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Hi Everyone @ the Yocto project,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; I&#39;m Shane Peelar, a PhD Candidate at the =
University of Windsor.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; I&#39;m writing to you about prelink-cross, a=
s part of the Yocto project.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Specifically, I&#39;m looking at using it wit=
h executables built using<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; `-fno-plt` under GCC.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; I wasn&#39;t quite sure where to send this em=
ail to, so I figured I&#39;d<br>
&gt;=C2=A0 =C2=A0 =C2=A0try<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; here.=C2=A0 If there&#39;s a better place to =
send this, please let me know.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Right now, prelink-cross seems to fail an ass=
ertion in<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch-x86_64.c,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; line 421, when<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; using it with an executable built with `-fno-=
plt`:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; assert (i &lt; dso-&gt;ehdr.e_shnum)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; This snippet seems to be looking for the &quo=
t;.plt&quot; section and,<br>
&gt;=C2=A0 =C2=A0 =C2=A0since it<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; can&#39;t find it, the assertion fires.=C2=A0=
 This makes sense because in<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; `-fno-plt` executables, the `.plt` section is=
 missing entirely.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; I&#39;m not an expert on ELF stuff, although =
I am learning quickly.=C2=A0 It<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; looks like<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; this code wants to write into GOT[1] the addr=
ess of &quot;.plt&quot; + 0x16 --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; since &quot;.plt&quot; doesn&#39;t<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; exist, does it make sense to just change this=
 assert to an if<br>
&gt;=C2=A0 =C2=A0 =C2=A0statement<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; like so:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (i &lt; dso-&gt=
;ehdr.e_shnum)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 { ... }<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; and skip over that part?=C2=A0 Or is this a r=
eal error condition for<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; prelink-cross and it really should not contin=
ue?=C2=A0 The executable in<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; question is also non-PIE, if that makes a dif=
ference.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0what shared libs is this linking to ? are they also=
 built with<br>
&gt;=C2=A0 =C2=A0 =C2=A0-fno-plt ?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Thanks for your time,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Shane<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; <br>
</blockquote></div>

--000000000000f5f7050589a3985c--
