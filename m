Return-Path: <lookatyouhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6099AE00CAB; Fri, 24 May 2019 18:58:19 -0700 (PDT)
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
	*      [209.85.167.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
	[209.85.167.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A2D3E008E3
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 18:58:18 -0700 (PDT)
Received: by mail-oi1-f182.google.com with SMTP id v2so8362758oie.6
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 18:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=POFEcQdAoW2xcHyrRRtQyZnZEyp5g+Owj/CXaoptcWk=;
	b=B/jBLdxiee1LPIfUejclWSFCWBtQe98lkef5Xb2fKBzx1HI8BX36cynfrAOh2dilE4
	9DUW3v4VIe0jtd9rucfzlg5JmA4TnbLVMWdaGCKMe6Q6idRrVZwy81EZ9eGdNV8RYzGP
	+2E+uA2IujuV24N1nYOOvitozKpY3zRivyyHEiSJWrL6pVoSikMcX8bjpNRgfMAMbp8Y
	3tRNycXyrwm2gKF10WmAwm7UQOLz2urGdHL3T0WN6rkBzXYel8bwX6HFEYmq7A0RzuGC
	qnJJskmmJpemnOAUSo62CfM76TlaAhUZI5Vu7gdddxcogvq6QwMIO+EeJT2eESD89Ehb
	xg3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=POFEcQdAoW2xcHyrRRtQyZnZEyp5g+Owj/CXaoptcWk=;
	b=YnHXssqCyfqzwOaL4jlhmH+xD8QvBF5GN6d2o1LX8PEP6vbb8ydqIGJvsg9ledRVZB
	sLh66s9e76qtY1g0CFseTy4fnwhWXWmawrLCXF59Jg2/jh+dK6UDREhHjAqsfWUNfCkF
	bvxpvuv/jyYGK8ZWoIhS3S7mX1VpGdqUkFkuIdN2LGXY6bhNCZxOQnvqPiGyMRTvtqwu
	REGd15shILQpzVHNqrAneBIWBaVw0yMz/YBojik2WFC9lqZHm4SZsdn1521kBtHuDKMT
	A7aNuLlhTpKDARGdkZVBgPCBohJ23P9YhnWybdnHk8KkyVmT0dCWy8vKW6obI2dNB0l5
	Y3Vw==
X-Gm-Message-State: APjAAAX1XA0k7GBsAqupU0L7BfqBgw3bKgct9eoKORhdxCPou+lMy/bs
	mAm4VdlcKmFg7PE9hyFXaQBSdWiYyYFuObisxro=
X-Google-Smtp-Source: APXvYqyJ8hvz1s4U9atYVIyVgfQ5ZNcA4YMKZxyRlA07UyeZSDn11HsOpNn4gaxOXEXnMSxigG16Jvul7BTSVhsKSTI=
X-Received: by 2002:aca:7549:: with SMTP id q70mr8495019oic.58.1558749497424; 
	Fri, 24 May 2019 18:58:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAEseUX=OG1gVjXzBNAj=DiOMJ9eA9x58-ng7xDro0_arS1nXSw@mail.gmail.com>
	<50b3ec46-1c13-f0cb-64eb-bde7809db99d@gmail.com>
	<CAEseUXkdwLzK-r92SUMXVoMWFpVNVRNzVpjQGMzNLOJvx=jcbg@mail.gmail.com>
	<bb585fca-cdc0-1c2a-47db-cf854b23d850@gmail.com>
	<CAEseUX=g+C=15OVzc4G_1zWLwCsi+XzZR4p9jF5=b7ZYFANgow@mail.gmail.com>
	<74876fa3-2e5f-60a6-f5e7-2a4a6242bac1@gmail.com>
In-Reply-To: <74876fa3-2e5f-60a6-f5e7-2a4a6242bac1@gmail.com>
From: Shane Peelar <lookatyouhacker@gmail.com>
Date: Fri, 24 May 2019 21:58:10 -0400
Message-ID: <CAEseUX=BXTxMkvp_QpkWgoSvx9LMPj+mJ_dNc9Oj8uNDMfctTQ@mail.gmail.com>
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
X-List-Received-Date: Sat, 25 May 2019 01:58:19 -0000
Content-Type: multipart/alternative; boundary="00000000000016816e0589aca688"

--00000000000016816e0589aca688
Content-Type: text/plain; charset="UTF-8"

Great!  Would you be willing to accept a patch that makes arch-x86_64.c
handle that condition like the other arches?

-Shane

On Fri, May 24, 2019 at 12:27 PM Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On 5/24/19 8:10 AM, Shane Peelar wrote:
> > I did some reading into the sources in other architectures.  The closest
> > match, arch_i386.c, makes the write conditional as you say.
> > So do other arches, including |arch_arm.c, |arch_sh.c, |arch-mips.c,
> > |arch-s390.c, |arch-s390x.c, and |arch-ia64.c.||||||
> > ||||||
> > ||||||
> > Notably, |||||||arch-cris.c||||||| has the same assert as
> > |||||||arch-x86_64.c||||||| instead of the conditional.
> >
> > The code roughly looks like follows:||||||||||||||
> > ||||||||||||||
> > |||||||
> > |||||||
> > 1. Check for dso->info[DT_PLTGOT].  If it does not exist, return 0
> > 2. Call addr_to_sec on dso->info[DT_PLTGOT], return 1 if error
> > 3. Look for the section named ".plt" in the ELF.
> > 4. If the section cannot be found, return 0
> > 5. Otherwise, write the address of .plt + constant (dependent on arch)
> > to got[1]||||||||||||||
> > ||||||||||||||
> > |||||||
> > |||||||
> > In |||||||arch-x86_64.c and arch-cris.c|||||||, step (4) above is an
> > assert:|||||||
> >
> > |||||||1. Check for dso->info[DT_PLTGOT].  If it does not exist, return 0
> > 2. Call addr_to_sec on dso->info[DT_PLTGOT], return 1 if error
> > 3. Look for the section named ".plt" in the ELF.
> > 4. Assert that the section was found
> > 5. Write the address of .plt + constant (dependent on arch) to got[1]
> >
> > I tested out making the assert conditional and nothing seemed to break
> > at least.
> > |||||||
> > |||||||
>
> It seems ok to me.
>
> >
> > On Fri, May 24, 2019 at 12:08 AM Khem Raj <raj.khem@gmail.com
> > <mailto:raj.khem@gmail.com>> wrote:
> >
> >
> >
> >     On 5/23/19 7:53 PM, Shane Peelar wrote:
> >      > Any of them on the system pretty much, and yes they are also
> >     built with
> >      > -fno-plt.
> >
> >     OK, I think its better to them conditionally check for .plt section,
> >     can you describe more of whats going on when sections are checked.
> >
> >      >
> >      > On Thu, May 23, 2019 at 9:59 PM Khem Raj <raj.khem@gmail.com
> >     <mailto:raj.khem@gmail.com>
> >      > <mailto:raj.khem@gmail.com <mailto:raj.khem@gmail.com>>> wrote:
> >      >
> >      >
> >      >
> >      >     On 5/23/19 8:05 AM, Shane Peelar wrote:
> >      >      > Hi Everyone @ the Yocto project,
> >      >      >
> >      >      > I'm Shane Peelar, a PhD Candidate at the University of
> >     Windsor.
> >      >      > I'm writing to you about prelink-cross, as part of the
> >     Yocto project.
> >      >      > Specifically, I'm looking at using it with executables
> >     built using
> >      >      > `-fno-plt` under GCC.
> >      >      > I wasn't quite sure where to send this email to, so I
> >     figured I'd
> >      >     try
> >      >      > here.  If there's a better place to send this, please let
> >     me know.
> >      >      >
> >      >      > Right now, prelink-cross seems to fail an assertion in
> >      >     arch-x86_64.c,
> >      >      > line 421, when
> >      >      > using it with an executable built with `-fno-plt`:
> >      >      >
> >      >      > ...
> >      >      > assert (i < dso->ehdr.e_shnum)
> >      >      > ...
> >      >      >
> >      >      > This snippet seems to be looking for the ".plt" section
> and,
> >      >     since it
> >      >      > can't find it, the assertion fires.  This makes sense
> >     because in
> >      >      > `-fno-plt` executables, the `.plt` section is missing
> >     entirely.
> >      >      > I'm not an expert on ELF stuff, although I am learning
> >     quickly.  It
> >      >      > looks like
> >      >      > this code wants to write into GOT[1] the address of ".plt"
> >     + 0x16 --
> >      >      > since ".plt" doesn't
> >      >      > exist, does it make sense to just change this assert to an
> if
> >      >     statement
> >      >      > like so:
> >      >      >
> >      >      > ...
> >      >      >        if (i < dso->ehdr.e_shnum)
> >      >      >        { ... }
> >      >      > ...
> >      >      >
> >      >      > and skip over that part?  Or is this a real error
> >     condition for
> >      >      > prelink-cross and it really should not continue?  The
> >     executable in
> >      >      > question is also non-PIE, if that makes a difference.
> >      >      >
> >      >
> >      >     what shared libs is this linking to ? are they also built with
> >      >     -fno-plt ?
> >      >
> >      >      > Thanks for your time,
> >      >      > Shane
> >      >      >
> >      >
> >
>

--00000000000016816e0589aca688
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Great!=C2=A0 Would you be willing to accept a patch t=
hat makes arch-x86_64.c handle that condition like the other arches?</div><=
div><br></div><div>-Shane<br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Fri, May 24, 2019 at 12:27 PM Khem Ra=
j &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On 5/24/19 8:10 AM, Shane Peelar wrote:<br>
&gt; I did some reading into the sources in other architectures.=C2=A0 The =
closest <br>
&gt; match, arch_i386.c, makes the write conditional as you say.<br>
&gt; So do other arches, including |arch_arm.c, |arch_sh.c, |arch-mips.c, <=
br>
&gt; |arch-s390.c, |arch-s390x.c, and |arch-ia64.c.||||||<br>
&gt; ||||||<br>
&gt; ||||||<br>
&gt; Notably, |||||||arch-cris.c||||||| has the same assert as <br>
&gt; |||||||arch-x86_64.c||||||| instead of the conditional.<br>
&gt; <br>
&gt; The code roughly looks like follows:||||||||||||||<br>
&gt; ||||||||||||||<br>
&gt; |||||||<br>
&gt; |||||||<br>
&gt; 1. Check for dso-&gt;info[DT_PLTGOT].=C2=A0 If it does not exist, retu=
rn 0<br>
&gt; 2. Call addr_to_sec on dso-&gt;info[DT_PLTGOT], return 1 if error<br>
&gt; 3. Look for the section named &quot;.plt&quot; in the ELF.<br>
&gt; 4. If the section cannot be found, return 0<br>
&gt; 5. Otherwise, write the address of .plt + constant (dependent on arch)=
 <br>
&gt; to got[1]||||||||||||||<br>
&gt; ||||||||||||||<br>
&gt; |||||||<br>
&gt; |||||||<br>
&gt; In |||||||arch-x86_64.c and arch-cris.c|||||||, step (4) above is an <=
br>
&gt; assert:|||||||<br>
&gt; <br>
&gt; |||||||1. Check for dso-&gt;info[DT_PLTGOT].=C2=A0 If it does not exis=
t, return 0<br>
&gt; 2. Call addr_to_sec on dso-&gt;info[DT_PLTGOT], return 1 if error<br>
&gt; 3. Look for the section named &quot;.plt&quot; in the ELF.<br>
&gt; 4. Assert that the section was found<br>
&gt; 5. Write the address of .plt + constant (dependent on arch) to got[1]<=
br>
&gt; <br>
&gt; I tested out making the assert conditional and nothing seemed to break=
 <br>
&gt; at least.<br>
&gt; |||||||<br>
&gt; |||||||<br>
<br>
It seems ok to me.<br>
<br>
&gt; <br>
&gt; On Fri, May 24, 2019 at 12:08 AM Khem Raj &lt;<a href=3D"mailto:raj.kh=
em@gmail.com" target=3D"_blank">raj.khem@gmail.com</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj=
.khem@gmail.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 5/23/19 7:53 PM, Shane Peelar wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Any of them on the system pretty much, and ye=
s they are also<br>
&gt;=C2=A0 =C2=A0 =C2=A0built with<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; -fno-plt.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0OK, I think its better to them conditionally check =
for .plt section,<br>
&gt;=C2=A0 =C2=A0 =C2=A0can you describe more of whats going on when sectio=
ns are checked.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; On Thu, May 23, 2019 at 9:59 PM Khem Raj &lt;=
<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com<=
/a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:raj.khem@gmail.com" ta=
rget=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &lt;mailto:<a href=3D"mailto:raj.khem@gmail.c=
om" target=3D"_blank">raj.khem@gmail.com</a> &lt;mailto:<a href=3D"mailto:r=
aj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;&gt;&gt; wro=
te:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0On 5/23/19 8:05 AM, Shane =
Peelar wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Hi Everyone @ the Yo=
cto project,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; I&#39;m Shane Peelar=
, a PhD Candidate at the University of<br>
&gt;=C2=A0 =C2=A0 =C2=A0Windsor.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; I&#39;m writing to y=
ou about prelink-cross, as part of the<br>
&gt;=C2=A0 =C2=A0 =C2=A0Yocto project.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Specifically, I&#39;=
m looking at using it with executables<br>
&gt;=C2=A0 =C2=A0 =C2=A0built using<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; `-fno-plt` under GCC=
.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; I wasn&#39;t quite s=
ure where to send this email to, so I<br>
&gt;=C2=A0 =C2=A0 =C2=A0figured I&#39;d<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0try<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; here.=C2=A0 If there=
&#39;s a better place to send this, please let<br>
&gt;=C2=A0 =C2=A0 =C2=A0me know.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Right now, prelink-c=
ross seems to fail an assertion in<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0arch-x86_64.c,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; line 421, when<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; using it with an exe=
cutable built with `-fno-plt`:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; ...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; assert (i &lt; dso-&=
gt;ehdr.e_shnum)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; ...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; This snippet seems t=
o be looking for the &quot;.plt&quot; section and,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0since it<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; can&#39;t find it, t=
he assertion fires.=C2=A0 This makes sense<br>
&gt;=C2=A0 =C2=A0 =C2=A0because in<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; `-fno-plt` executabl=
es, the `.plt` section is missing<br>
&gt;=C2=A0 =C2=A0 =C2=A0entirely.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; I&#39;m not an exper=
t on ELF stuff, although I am learning<br>
&gt;=C2=A0 =C2=A0 =C2=A0quickly.=C2=A0 It<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; looks like<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; this code wants to w=
rite into GOT[1] the address of &quot;.plt&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0+ 0x16 --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; since &quot;.plt&quo=
t; doesn&#39;t<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; exist, does it make =
sense to just change this assert to an if<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0statement<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; like so:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; ...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 if (i &lt; dso-&gt;ehdr.e_shnum)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 { ... }<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; ...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; and skip over that p=
art?=C2=A0 Or is this a real error<br>
&gt;=C2=A0 =C2=A0 =C2=A0condition for<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; prelink-cross and it=
 really should not continue?=C2=A0 The<br>
&gt;=C2=A0 =C2=A0 =C2=A0executable in<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; question is also non=
-PIE, if that makes a difference.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0what shared libs is this l=
inking to ? are they also built with<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0-fno-plt ?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Thanks for your time=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Shane<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; <br>
</blockquote></div>

--00000000000016816e0589aca688--
