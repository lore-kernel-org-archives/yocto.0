Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C07EDE0088C; Mon,  9 Nov 2015 14:33:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mtownsend1973[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-lb0-f179.google.com (mail-lb0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA253E007C9
	for <yocto@yoctoproject.org>; Mon,  9 Nov 2015 14:33:00 -0800 (PST)
Received: by lbbkw15 with SMTP id kw15so103569927lbb.0
	for <yocto@yoctoproject.org>; Mon, 09 Nov 2015 14:32:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=pqg+WGV7XN5LwhcwCJE1uX+CsQQTFi96cB26utuEs0g=;
	b=gTmibaR+r8bF32wKEOEZzKBZ+kTcVnmIHPdx7Uhi2RwNpeTX2ZjBEAkkeyjsVF56NC
	M6OiGgJeAKOIbpEqWIMTJW8pmmnzJg/r8XBe3396RLR2+s8QLb79qs4kHr0XN6o+KHyc
	9u8PCgJ4evC+TB4AQNBXoBts1uwu5Daplc4j0phtu/0d+kijxphkv/qbE5fZoSevevY6
	po2cu4rzZvspJpYnIuFnz6B31lmGy6lXzI/rzvY3tgzafxvlKuqErfOcE2fr4oaFVWEl
	Ju4fd1Rm4x0jUeehpZr7do4Zw/psWv4sGdVOLsoeKXJhreubmhIvURHVVNhUZedO+Qek
	lirg==
MIME-Version: 1.0
X-Received: by 10.112.159.2 with SMTP id wy2mr149395lbb.102.1447108379506;
	Mon, 09 Nov 2015 14:32:59 -0800 (PST)
Received: by 10.25.82.139 with HTTP; Mon, 9 Nov 2015 14:32:59 -0800 (PST)
In-Reply-To: <2108825.hXyYQEHPRS@peggleto-mobl.ger.corp.intel.com>
References: <CABatt_y6X3uxCcq+0Z7r2Zcz_4McJJSQ0D=SwKo-uPFaxuG3Og@mail.gmail.com>
	<CABatt_yn1RkC9j490mUwm=GzzBEb1WXxrR_BOwJJgMD+68SKrg@mail.gmail.com>
	<C91162B3-9E8D-46B6-A1BF-93B3D0E90AA7@gmail.com>
	<2108825.hXyYQEHPRS@peggleto-mobl.ger.corp.intel.com>
Date: Mon, 9 Nov 2015 22:32:59 +0000
Message-ID: <CABatt_zdu=F5wA+piXsSdds4ht_v+htHkCpaUSyBx8vajsemtQ@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: binutils failing in FIDO branch
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
X-List-Received-Date: Mon, 09 Nov 2015 22:33:01 -0000
Content-Type: multipart/alternative; boundary=001a11c240d0e97e230524232cdb

--001a11c240d0e97e230524232cdb
Content-Type: text/plain; charset=UTF-8

Hi,

My issue is particular to my distro, I tried changing to poky and all was
well.  The reason for our own distro was to migrate from Arago which we
were using.  So I copied Arago into a separate distro and then started
morphing it into something more akin to Poky over time.  Alas I left the
following line in the distro conf, one which should have removed :(

# Enable basic stack and buffer overflow protections
TARGET_CPPFLAGS += "-fstack-protector -D_FORTIFY_SOURCE=1"

After commenting this out binutils for the target builds fine.  I'm
guesssing that for libiberty CPPFLAGS propogates into configure or makefile
in the binutils recipe which then fails one of it's config checks and
because of this fails to set HAVE_LIMITS and a few others no doubt.

Many apologies for leading you on a wild goose chase, I don't know if there
is anything you can do so others don't fall foul of this.  Is setting
TARGET_CPPFLAGS or TARGET_CFLAGS for that matter useful in configuration
files??  If so, maybe making sure they are reverted for building binutils??

Thanks for all the help and maybe it's time we moved over to Poky :)

Cheers,
Martin.




On Mon, Nov 9, 2015 at 10:07 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> What I think Martin hasn't mentioned here (but did on IRC) is this is
> binutils
> for the target machine, not host/cross. I would assume it's somehow
> related to
> the target being built for. Martin, can you provide any details on that
> which
> might help others to reproduce the issue?
>
> Cheers,
> Paul
>
> On Monday 09 November 2015 12:15:40 Khem Raj wrote:
> > No it should be well supported. So now I wonder why no one else sees it
> >
> > > On Nov 9, 2015, at 11:22 AM, Martin Townsend <mtownsend1973@gmail.com>
> > > wrote:
> > >
> > > Hi,
> > >
> > > I'm running Ubuntu 14.04 LTS.
> > >
> > > Could this be the problem?
> > >
> > > Cheers,
> > > Martin.
> > >
> > >
> > > On Mon, Nov 9, 2015 at 5:56 PM, Khem Raj <raj.khem@gmail.com
> > > <mailto:raj.khem@gmail.com>> wrote:>
> > > On Mon, Nov 9, 2015 at 4:36 AM, Martin Townsend <
> mtownsend1973@gmail.com
> <mailto:mtownsend1973@gmail.com>> wrote:
> > > > Hi,
> > > >
> > > > binutils is failing to compile.  I'm using tip of fido branch.  Error
> > > > message is:
> > > >
> > > >
> > > >
> /home/martint/yocto/build/am43-devboard-aquila/bia-tmp-glibc/work/cortex
> > > >
> a9hf-vfp-neon-oe-linux-gnueabi/binutils/2.24-r0/binutils-2.24/libiberty/
> > > > fibheap.c: In function 'fibheap_replace_key_data':
> > > >
> > > >
> /home/martint/yocto/build/am43-devboard-aquila/bia-tmp-glibc/work/cortex
> > > >
> a9hf-vfp-neon-oe-linux-gnueabi/binutils/2.24-r0/binutils-2.24/libiberty/
> > > > fibheap.c:38:24: error: 'LONG_MIN' undeclared (first use in this
> > > > function)
> > > >
> > > > |  #define FIBHEAPKEY_MIN LONG_MIN
> > > >
> > > > I've tracked it down to the fact that libiberty is the only component
> > > > that
> > > > doesn't define HAVE_LIMITS in config.h, so I assume this part of the
> > > > configure is failing for some reason.
> > > >
> > > > Anyone else seen this, or have an idea on how to fix this?
> > >
> > > whats your host distro ?
> > >
> > > > Cheers,
> > > > Martin.
> > > >
> > > >
> > > >
> > > >
> > > >
> > > > --
> > > > _______________________________________________
> > > > yocto mailing list
> > > > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> > > > https://lists.yoctoproject.org/listinfo/yocto
> > > > <https://lists.yoctoproject.org/listinfo/yocto>
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a11c240d0e97e230524232cdb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi,<br><br></div>My issue is part=
icular to my distro, I tried changing to poky and all was well.=C2=A0 The r=
eason for our own distro was to migrate from Arago which we were using.=C2=
=A0 So I copied Arago into a separate distro and then started morphing it i=
nto something more akin to Poky over time.=C2=A0 Alas I left the following =
line in the distro conf, one which should have removed :(<br><br># Enable b=
asic stack and buffer overflow protections<br>TARGET_CPPFLAGS +=3D &quot;-f=
stack-protector -D_FORTIFY_SOURCE=3D1&quot;<br><br></div>After commenting t=
his out binutils for the target builds fine.=C2=A0 I&#39;m guesssing that f=
or libiberty CPPFLAGS propogates into configure or makefile in the binutils=
 recipe which then fails one of it&#39;s config checks and because of this =
fails to set HAVE_LIMITS and a few others no doubt.<br><br></div>Many apolo=
gies for leading you on a wild goose chase, I don&#39;t know if there is an=
ything you can do so others don&#39;t fall foul of this.=C2=A0 Is setting T=
ARGET_CPPFLAGS or TARGET_CFLAGS for that matter useful in configuration fil=
es??=C2=A0 If so, maybe making sure they are reverted for building binutils=
??<br><br></div><div>Thanks for all the help and maybe it&#39;s time we mov=
ed over to Poky :)<br></div><div><br></div>Cheers,<br></div>Martin.<br><div=
><div><br><br><div><div><div><div><br></div></div></div></div></div></div><=
/div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Nov =
9, 2015 at 10:07 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:=
paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">What I think Ma=
rtin hasn&#39;t mentioned here (but did on IRC) is this is binutils<br>
for the target machine, not host/cross. I would assume it&#39;s somehow rel=
ated to<br>
the target being built for. Martin, can you provide any details on that whi=
ch<br>
might help others to reproduce the issue?<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D""><br>
On Monday 09 November 2015 12:15:40 Khem Raj wrote:<br>
&gt; No it should be well supported. So now I wonder why no one else sees i=
t<br>
&gt;<br>
&gt; &gt; On Nov 9, 2015, at 11:22 AM, Martin Townsend &lt;<a href=3D"mailt=
o:mtownsend1973@gmail.com">mtownsend1973@gmail.com</a>&gt;<br>
&gt; &gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Hi,<br>
&gt; &gt;<br>
&gt; &gt; I&#39;m running Ubuntu 14.04 LTS.<br>
&gt; &gt;<br>
&gt; &gt; Could this be the problem?<br>
&gt; &gt;<br>
&gt; &gt; Cheers,<br>
&gt; &gt; Martin.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; On Mon, Nov 9, 2015 at 5:56 PM, Khem Raj &lt;<a href=3D"mailto:ra=
j.khem@gmail.com">raj.khem@gmail.com</a><br>
</span><span class=3D"">&gt; &gt; &lt;mailto:<a href=3D"mailto:raj.khem@gma=
il.com">raj.khem@gmail.com</a>&gt;&gt; wrote:&gt;<br>
&gt; &gt; On Mon, Nov 9, 2015 at 4:36 AM, Martin Townsend &lt;<a href=3D"ma=
ilto:mtownsend1973@gmail.com">mtownsend1973@gmail.com</a><br>
</span><span class=3D"">&lt;mailto:<a href=3D"mailto:mtownsend1973@gmail.co=
m">mtownsend1973@gmail.com</a>&gt;&gt; wrote:<br>
&gt; &gt; &gt; Hi,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; binutils is failing to compile.=C2=A0 I&#39;m using tip of f=
ido branch.=C2=A0 Error<br>
&gt; &gt; &gt; message is:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; /home/martint/yocto/build/am43-devboard-aquila/bia-tmp-glibc=
/work/cortex<br>
&gt; &gt; &gt; a9hf-vfp-neon-oe-linux-gnueabi/binutils/2.24-r0/binutils-2.2=
4/libiberty/<br>
&gt; &gt; &gt; fibheap.c: In function &#39;fibheap_replace_key_data&#39;:<b=
r>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; /home/martint/yocto/build/am43-devboard-aquila/bia-tmp-glibc=
/work/cortex<br>
&gt; &gt; &gt; a9hf-vfp-neon-oe-linux-gnueabi/binutils/2.24-r0/binutils-2.2=
4/libiberty/<br>
&gt; &gt; &gt; fibheap.c:38:24: error: &#39;LONG_MIN&#39; undeclared (first=
 use in this<br>
&gt; &gt; &gt; function)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; |=C2=A0 #define FIBHEAPKEY_MIN LONG_MIN<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I&#39;ve tracked it down to the fact that libiberty is the o=
nly component<br>
&gt; &gt; &gt; that<br>
&gt; &gt; &gt; doesn&#39;t define HAVE_LIMITS in config.h, so I assume this=
 part of the<br>
&gt; &gt; &gt; configure is failing for some reason.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Anyone else seen this, or have an idea on how to fix this?<b=
r>
&gt; &gt;<br>
&gt; &gt; whats your host distro ?<br>
&gt; &gt;<br>
&gt; &gt; &gt; Cheers,<br>
&gt; &gt; &gt; Martin.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt; _______________________________________________<br>
&gt; &gt; &gt; yocto mailing list<br>
</span>&gt; &gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org">yocto@=
yoctoproject.org</a>&gt;<br>
&gt; &gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" re=
l=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/=
yocto</a><br>
&gt; &gt; &gt; &lt;<a href=3D"https://lists.yoctoproject.org/listinfo/yocto=
" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listi=
nfo/yocto</a>&gt;<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--001a11c240d0e97e230524232cdb--
