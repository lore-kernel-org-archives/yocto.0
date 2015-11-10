Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22B80E00B1E; Tue, 10 Nov 2015 03:17:38 -0800 (PST)
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
	*      [209.85.215.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F9D2E00B05
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2015 03:17:32 -0800 (PST)
Received: by lffz63 with SMTP id z63so45948331lff.0
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2015 03:17:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=iMe3am08JLUaqIHKZbqqc9wrIL/GalKQld7qn0KPDCg=;
	b=C4LiZZwh8By8s+63K0jn8UkH0g6fDTEY3PNpgKcnwdbHqmv1zupajw3hYaV5v8l5zM
	crj9vkT0dg59uTvMlFe1N5FW8JjUAwUvbo7CfmqdpdHqxUrTxgvDLMESDpnFRyw0V4Te
	dUNFosOcqtZ0w2Bpg16Xgg+X0LyetM6I92qtxmh7tRlHVUVnAPHLXhvv9zsFKalu3IMM
	aVjuRsn6/dlLQrGN5ugiG69xp8gwNpRVeY77wWF6SwqGP5w1klz0VLVdJOGOUGF/OBh9
	yy2DMvuPvH6uWxhQ5qt325pD9bMTitVSxIYBn8zKJZ6pX1YQTkRYWQ09PfC0+MuSjrAa
	xuig==
MIME-Version: 1.0
X-Received: by 10.25.90.74 with SMTP id o71mr1087163lfb.120.1447154251756;
	Tue, 10 Nov 2015 03:17:31 -0800 (PST)
Received: by 10.25.82.139 with HTTP; Tue, 10 Nov 2015 03:17:31 -0800 (PST)
In-Reply-To: <2410248.6Je5P1fpKU@peggleto-mobl.ger.corp.intel.com>
References: <CABatt_y6X3uxCcq+0Z7r2Zcz_4McJJSQ0D=SwKo-uPFaxuG3Og@mail.gmail.com>
	<2108825.hXyYQEHPRS@peggleto-mobl.ger.corp.intel.com>
	<CABatt_zdu=F5wA+piXsSdds4ht_v+htHkCpaUSyBx8vajsemtQ@mail.gmail.com>
	<2410248.6Je5P1fpKU@peggleto-mobl.ger.corp.intel.com>
Date: Tue, 10 Nov 2015 11:17:31 +0000
Message-ID: <CABatt_y4eAMoXi7-FAb3TQM9jTCAFqEZ7qBiptFCuTse4ivbqg@mail.gmail.com>
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
X-List-Received-Date: Tue, 10 Nov 2015 11:17:38 -0000
Content-Type: multipart/alternative; boundary=001a1141a1e41c7e5f05242ddb08

--001a1141a1e41c7e5f05242ddb08
Content-Type: text/plain; charset=UTF-8

Hi Paul,

meta/conf/distro/include/security_flags.inc is much better than a blanket
change of compiler flags.  Thanks for the tip.  Are there any other
tips/web pages on Security or Linux hardening using Yocto?

Cheers,
Martin.


On Mon, Nov 9, 2015 at 11:06 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Monday 09 November 2015 22:32:59 Martin Townsend wrote:
> > My issue is particular to my distro, I tried changing to poky and all was
> > well.  The reason for our own distro was to migrate from Arago which we
> > were using.  So I copied Arago into a separate distro and then started
> > morphing it into something more akin to Poky over time.  Alas I left the
> > following line in the distro conf, one which should have removed :(
> >
> > # Enable basic stack and buffer overflow protections
> > TARGET_CPPFLAGS += "-fstack-protector -D_FORTIFY_SOURCE=1"
> >
> > After commenting this out binutils for the target builds fine.  I'm
> > guesssing that for libiberty CPPFLAGS propogates into configure or
> makefile
> > in the binutils recipe which then fails one of it's config checks and
> > because of this fails to set HAVE_LIMITS and a few others no doubt.
> >
> > Many apologies for leading you on a wild goose chase, I don't know if
> there
> > is anything you can do so others don't fall foul of this.  Is setting
> > TARGET_CPPFLAGS or TARGET_CFLAGS for that matter useful in configuration
> > files??  If so, maybe making sure they are reverted for building
> binutils??
>
> I'm assuming you could do something like:
>
> TARGET_CPPFLAGS += "${MY_EXTRAFLAGS}"
> MY_EXTRAFLAGS = "-fstack-protector -D_FORTIFY_SOURCE=1"
> MY_EXTRAFLAGS_pn-binutils = ""
>
> FYI we do have meta/conf/distro/include/security_flags.inc to apply these
> two
> flags, but interestingly there's no mention of binutils in there.
>
> > Thanks for all the help and maybe it's time we moved over to Poky :)
>
> Well, there's nothing forcing you to use poky - it's a reference
> distribution;
> the assumption is usually that you'll want to change something at the
> distribution level at which point you've effectively created your own
> distro.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a1141a1e41c7e5f05242ddb08
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi Paul,<br><br>meta/conf/distro/include/se=
curity_flags.inc is much better than a blanket change of compiler flags.=C2=
=A0 Thanks for the tip.=C2=A0 Are there any other tips/web pages on Securit=
y or Linux hardening using Yocto?<br></div><br></div>Cheers,<br></div>Marti=
n.<br><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">O=
n Mon, Nov 9, 2015 at 11:06 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=
=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@l=
inux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><spa=
n class=3D"">On Monday 09 November 2015 22:32:59 Martin Townsend wrote:<br>
&gt; My issue is particular to my distro, I tried changing to poky and all =
was<br>
&gt; well.=C2=A0 The reason for our own distro was to migrate from Arago wh=
ich we<br>
&gt; were using.=C2=A0 So I copied Arago into a separate distro and then st=
arted<br>
&gt; morphing it into something more akin to Poky over time.=C2=A0 Alas I l=
eft the<br>
&gt; following line in the distro conf, one which should have removed :(<br=
>
&gt;<br>
&gt; # Enable basic stack and buffer overflow protections<br>
&gt; TARGET_CPPFLAGS +=3D &quot;-fstack-protector -D_FORTIFY_SOURCE=3D1&quo=
t;<br>
&gt;<br>
&gt; After commenting this out binutils for the target builds fine.=C2=A0 I=
&#39;m<br>
&gt; guesssing that for libiberty CPPFLAGS propogates into configure or mak=
efile<br>
&gt; in the binutils recipe which then fails one of it&#39;s config checks =
and<br>
&gt; because of this fails to set HAVE_LIMITS and a few others no doubt.<br=
>
&gt;<br>
&gt; Many apologies for leading you on a wild goose chase, I don&#39;t know=
 if there<br>
&gt; is anything you can do so others don&#39;t fall foul of this.=C2=A0 Is=
 setting<br>
&gt; TARGET_CPPFLAGS or TARGET_CFLAGS for that matter useful in configurati=
on<br>
&gt; files??=C2=A0 If so, maybe making sure they are reverted for building =
binutils??<br>
<br>
</span>I&#39;m assuming you could do something like:<br>
<br>
TARGET_CPPFLAGS +=3D &quot;${MY_EXTRAFLAGS}&quot;<br>
MY_EXTRAFLAGS =3D &quot;-fstack-protector -D_FORTIFY_SOURCE=3D1&quot;<br>
MY_EXTRAFLAGS_pn-binutils =3D &quot;&quot;<br>
<br>
FYI we do have meta/conf/distro/include/security_flags.inc to apply these t=
wo<br>
flags, but interestingly there&#39;s no mention of binutils in there.<br>
<span class=3D""><br>
&gt; Thanks for all the help and maybe it&#39;s time we moved over to Poky =
:)<br>
<br>
</span>Well, there&#39;s nothing forcing you to use poky - it&#39;s a refer=
ence distribution;<br>
the assumption is usually that you&#39;ll want to change something at the<b=
r>
distribution level at which point you&#39;ve effectively created your own d=
istro.<br>
<br>
Cheers,<br>
Paul<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--001a1141a1e41c7e5f05242ddb08--
