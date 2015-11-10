Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83D5DE00B43; Tue, 10 Nov 2015 05:20:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09497E00B2C
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2015 05:20:40 -0800 (PST)
Received: by lbbcs9 with SMTP id cs9so14240164lbb.1
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2015 05:20:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=V9zrsX2HxMtaCbECX6ulbHnmh/LzTjtyCDiEMV9nKDg=;
	b=coAhFNvSv9BftQmG55ZNMGo2ChzhyCGi+4u2FlaOVZlSp0IGCZ6N8Rk4wKWgw8Ocu4
	DKBkYHvEneBB//0/3zBCZTJ6prQ61fQePFMmo30fIAhWoFtbiLGuD1VSQ5IOGRm2MC8+
	jNux8JlotkdztjQmLeJ43UOyPkrnIEnrSf6A9j1Tqddk+XizDmnD3aSsWHQFixbXVTqU
	jhcWVv2aEdzyeY/D4Dwz2E/7cF/5605hwCujZceNxK7fCk8h5j+P8xBEOwrOjQYJzE+b
	NGR8xMsjclDC9sVSS/0GuflJXg1i4V9jRW9mbYSAtEyXHCau/DGRf5e+Tcfnjehw2jIv
	GJEw==
MIME-Version: 1.0
X-Received: by 10.112.124.199 with SMTP id mk7mr1707275lbb.108.1447161639625; 
	Tue, 10 Nov 2015 05:20:39 -0800 (PST)
Received: by 10.25.82.139 with HTTP; Tue, 10 Nov 2015 05:20:39 -0800 (PST)
In-Reply-To: <1993006.rvECCExryx@peggleto-mobl.ger.corp.intel.com>
References: <CABatt_y6X3uxCcq+0Z7r2Zcz_4McJJSQ0D=SwKo-uPFaxuG3Og@mail.gmail.com>
	<2410248.6Je5P1fpKU@peggleto-mobl.ger.corp.intel.com>
	<CABatt_y4eAMoXi7-FAb3TQM9jTCAFqEZ7qBiptFCuTse4ivbqg@mail.gmail.com>
	<1993006.rvECCExryx@peggleto-mobl.ger.corp.intel.com>
Date: Tue, 10 Nov 2015 13:20:39 +0000
Message-ID: <CABatt_yiCkoCvXejqkFuCJv31WCsTU7eW6SDx_Kc_mvJb9s+wA@mail.gmail.com>
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
X-List-Received-Date: Tue, 10 Nov 2015 13:20:42 -0000
Content-Type: multipart/alternative; boundary=047d7bfcfa3a7668be05242f93c6

--047d7bfcfa3a7668be05242f93c6
Content-Type: text/plain; charset=UTF-8

And I also found this link
https://www.yoctoproject.org/blogs/andrei-dinu/2013/meta-security-layer-now-available
which looks promising. :)

On Tue, Nov 10, 2015 at 11:40 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> About all I know that we do have (in the manual at least) is contained in
> this
> section:
>
>
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#making-images-more-secure
>
> It's not a lot but it's something. (If anyone has any ideas on how to
> extend
> this area we'd appreciate the input.)
>
> Cheers,
> Paul
>
> On Tuesday 10 November 2015 11:17:31 Martin Townsend wrote:
> > Hi Paul,
> >
> > meta/conf/distro/include/security_flags.inc is much better than a blanket
> > change of compiler flags.  Thanks for the tip.  Are there any other
> > tips/web pages on Security or Linux hardening using Yocto?
> >
> > Cheers,
> > Martin.
> >
> >
> > On Mon, Nov 9, 2015 at 11:06 PM, Paul Eggleton <
> >
> > paul.eggleton@linux.intel.com> wrote:
> > > On Monday 09 November 2015 22:32:59 Martin Townsend wrote:
> > > > My issue is particular to my distro, I tried changing to poky and all
> > > > was
> > > > well.  The reason for our own distro was to migrate from Arago which
> we
> > > > were using.  So I copied Arago into a separate distro and then
> started
> > > > morphing it into something more akin to Poky over time.  Alas I left
> the
> > > > following line in the distro conf, one which should have removed :(
> > > >
> > > > # Enable basic stack and buffer overflow protections
> > > > TARGET_CPPFLAGS += "-fstack-protector -D_FORTIFY_SOURCE=1"
> > > >
> > > > After commenting this out binutils for the target builds fine.  I'm
> > > > guesssing that for libiberty CPPFLAGS propogates into configure or
> > >
> > > makefile
> > >
> > > > in the binutils recipe which then fails one of it's config checks and
> > > > because of this fails to set HAVE_LIMITS and a few others no doubt.
> > > >
> > > > Many apologies for leading you on a wild goose chase, I don't know if
> > >
> > > there
> > >
> > > > is anything you can do so others don't fall foul of this.  Is setting
> > > > TARGET_CPPFLAGS or TARGET_CFLAGS for that matter useful in
> configuration
> > > > files??  If so, maybe making sure they are reverted for building
> > >
> > > binutils??
> > >
> > > I'm assuming you could do something like:
> > >
> > > TARGET_CPPFLAGS += "${MY_EXTRAFLAGS}"
> > > MY_EXTRAFLAGS = "-fstack-protector -D_FORTIFY_SOURCE=1"
> > > MY_EXTRAFLAGS_pn-binutils = ""
> > >
> > > FYI we do have meta/conf/distro/include/security_flags.inc to apply
> these
> > > two
> > > flags, but interestingly there's no mention of binutils in there.
> > >
> > > > Thanks for all the help and maybe it's time we moved over to Poky :)
> > >
> > > Well, there's nothing forcing you to use poky - it's a reference
> > > distribution;
> > > the assumption is usually that you'll want to change something at the
> > > distribution level at which point you've effectively created your own
> > > distro.
> > >
> > > Cheers,
> > > Paul
> > >
> > > --
> > >
> > > Paul Eggleton
> > > Intel Open Source Technology Centre
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--047d7bfcfa3a7668be05242f93c6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>And I also found this link<br><a href=3D"https://www.=
yoctoproject.org/blogs/andrei-dinu/2013/meta-security-layer-now-available">=
https://www.yoctoproject.org/blogs/andrei-dinu/2013/meta-security-layer-now=
-available</a><br></div>which looks promising. :)<br></div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">On Tue, Nov 10, 2015 at 11:40 AM,=
 Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.=
intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">About all I know that we do have (i=
n the manual at least) is contained in this<br>
section:<br>
<br>
<a href=3D"http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.h=
tml#making-images-more-secure" rel=3D"noreferrer" target=3D"_blank">http://=
www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#making-images-=
more-secure</a><br>
<br>
It&#39;s not a lot but it&#39;s something. (If anyone has any ideas on how =
to extend<br>
this area we&#39;d appreciate the input.)<br>
<br>
Cheers,<br>
Paul<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Tuesday 10 November 2015 11:17:31 Martin Townsend wrote:<br>
&gt; Hi Paul,<br>
&gt;<br>
&gt; meta/conf/distro/include/security_flags.inc is much better than a blan=
ket<br>
&gt; change of compiler flags.=C2=A0 Thanks for the tip.=C2=A0 Are there an=
y other<br>
&gt; tips/web pages on Security or Linux hardening using Yocto?<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Martin.<br>
&gt;<br>
&gt;<br>
&gt; On Mon, Nov 9, 2015 at 11:06 PM, Paul Eggleton &lt;<br>
&gt;<br>
&gt; <a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.i=
ntel.com</a>&gt; wrote:<br>
&gt; &gt; On Monday 09 November 2015 22:32:59 Martin Townsend wrote:<br>
&gt; &gt; &gt; My issue is particular to my distro, I tried changing to pok=
y and all<br>
&gt; &gt; &gt; was<br>
&gt; &gt; &gt; well.=C2=A0 The reason for our own distro was to migrate fro=
m Arago which we<br>
&gt; &gt; &gt; were using.=C2=A0 So I copied Arago into a separate distro a=
nd then started<br>
&gt; &gt; &gt; morphing it into something more akin to Poky over time.=C2=
=A0 Alas I left the<br>
&gt; &gt; &gt; following line in the distro conf, one which should have rem=
oved :(<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; # Enable basic stack and buffer overflow protections<br>
&gt; &gt; &gt; TARGET_CPPFLAGS +=3D &quot;-fstack-protector -D_FORTIFY_SOUR=
CE=3D1&quot;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; After commenting this out binutils for the target builds fin=
e.=C2=A0 I&#39;m<br>
&gt; &gt; &gt; guesssing that for libiberty CPPFLAGS propogates into config=
ure or<br>
&gt; &gt;<br>
&gt; &gt; makefile<br>
&gt; &gt;<br>
&gt; &gt; &gt; in the binutils recipe which then fails one of it&#39;s conf=
ig checks and<br>
&gt; &gt; &gt; because of this fails to set HAVE_LIMITS and a few others no=
 doubt.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Many apologies for leading you on a wild goose chase, I don&=
#39;t know if<br>
&gt; &gt;<br>
&gt; &gt; there<br>
&gt; &gt;<br>
&gt; &gt; &gt; is anything you can do so others don&#39;t fall foul of this=
.=C2=A0 Is setting<br>
&gt; &gt; &gt; TARGET_CPPFLAGS or TARGET_CFLAGS for that matter useful in c=
onfiguration<br>
&gt; &gt; &gt; files??=C2=A0 If so, maybe making sure they are reverted for=
 building<br>
&gt; &gt;<br>
&gt; &gt; binutils??<br>
&gt; &gt;<br>
&gt; &gt; I&#39;m assuming you could do something like:<br>
&gt; &gt;<br>
&gt; &gt; TARGET_CPPFLAGS +=3D &quot;${MY_EXTRAFLAGS}&quot;<br>
&gt; &gt; MY_EXTRAFLAGS =3D &quot;-fstack-protector -D_FORTIFY_SOURCE=3D1&q=
uot;<br>
&gt; &gt; MY_EXTRAFLAGS_pn-binutils =3D &quot;&quot;<br>
&gt; &gt;<br>
&gt; &gt; FYI we do have meta/conf/distro/include/security_flags.inc to app=
ly these<br>
&gt; &gt; two<br>
&gt; &gt; flags, but interestingly there&#39;s no mention of binutils in th=
ere.<br>
&gt; &gt;<br>
&gt; &gt; &gt; Thanks for all the help and maybe it&#39;s time we moved ove=
r to Poky :)<br>
&gt; &gt;<br>
&gt; &gt; Well, there&#39;s nothing forcing you to use poky - it&#39;s a re=
ference<br>
&gt; &gt; distribution;<br>
&gt; &gt; the assumption is usually that you&#39;ll want to change somethin=
g at the<br>
&gt; &gt; distribution level at which point you&#39;ve effectively created =
your own<br>
&gt; &gt; distro.<br>
&gt; &gt;<br>
&gt; &gt; Cheers,<br>
&gt; &gt; Paul<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt;<br>
&gt; &gt; Paul Eggleton<br>
&gt; &gt; Intel Open Source Technology Centre<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--047d7bfcfa3a7668be05242f93c6--
