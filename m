Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 557F1E00CF9; Tue,  3 May 2016 06:58:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D252E00D6B
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 06:58:13 -0700 (PDT)
Received: by mail-ig0-f176.google.com with SMTP id u10so116118431igr.1
	for <yocto@yoctoproject.org>; Tue, 03 May 2016 06:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=ui/fQudFxQBvXVAgxPxw/B5d040sIumYfmltpB7p694=;
	b=rvFUI/+m6bXzEIB5jwLwS1DS97Or+zI8Sx5217/4EtKPDYUvpcgFqnnd5clflMKJg3
	srT3aWOvNaNzmymmRIDm2+TG7oExQG9K3yBgKDwsnQ025CB2oWIuLskIy/BbgF9fuiAF
	Ov1VlW3z4ubT1t2s9CJbqjjgwOwQBoN3PO7e78nCbAHDfQvlWkvInrXZccVPlUa7+aP7
	edWrmYmuh05Ef2nLUcoexD8OyZbnV0tCfTiumeM+9FDMvVOJeXzX2gDgpT3ExqVT1FHC
	8T1f//bruhObSI4sV5O95Y29wWi4RKI0VLkuC5YIEQaQgbdjN1QEMg905RQ9NPNapL8v
	EDMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=ui/fQudFxQBvXVAgxPxw/B5d040sIumYfmltpB7p694=;
	b=Sg0PPKTT4FBKKmetOKcntSFm7/+OQoJC8QzOX3TKjWguG5ARpbdpEaqYvPbrVpDIm+
	v2Z+wTbYtfeCtRojph9v8aqOPboKWZ5YltRvnyxTtKOGkILFRulqPeQyQQfW2WuEOvmR
	hZk3GGykVSqvXNKwxCSfS70Z2Er8rrUUysLiDMLvfJKlpCjvoRNI3xDht+nOxLZiXBkR
	s5jcU23wklsZ6NGJutrm/txUY93s/kHM6fwacgw6h6N9DGzxSzc5RP4pMC+iNu0V309+
	V9LGFPERNJG/NJcJGETHFPE7SHL6Z5XRq99iw58rczDJBKnQQ5eRNtaou0xO6Nn/tZca
	T/vA==
X-Gm-Message-State: AOPr4FVWGghftL0StsSwNgcaorAFDTRm/mJm6/HoTqRazeRyfXMoymrYWk7KNKYaNFWM+3cqOUFY1pdLw7b3Ng==
MIME-Version: 1.0
X-Received: by 10.50.13.74 with SMTP id f10mr27495947igc.55.1462283892100;
	Tue, 03 May 2016 06:58:12 -0700 (PDT)
Received: by 10.79.81.67 with HTTP; Tue, 3 May 2016 06:58:12 -0700 (PDT)
In-Reply-To: <1736594.NP63oMXEmq@peggleto-mobl.ger.corp.intel.com>
References: <CAOsp8o9u4CdCgH4SruASbyvKY_iDbG07wgPECg5ntSE5mSTTqg@mail.gmail.com>
	<1736594.NP63oMXEmq@peggleto-mobl.ger.corp.intel.com>
Date: Tue, 3 May 2016 08:58:12 -0500
Message-ID: <CAOsp8o_8sWueYfzYqtS6D-zB4731Mf+JvMUE=Ff=Kckj1Wz7Ww@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Build toolchain only (crosstools substitute?)
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
X-List-Received-Date: Tue, 03 May 2016 13:58:18 -0000
Content-Type: multipart/alternative; boundary=089e013c6f5ef316ec0531f07fdc

--089e013c6f5ef316ec0531f07fdc
Content-Type: text/plain; charset=UTF-8

If I needed to modify glibc or gcc build options (hypothetically speaking,
to turn on profiling or debug), I assume I can do that with bbappends and
the like?

Thanks Paul

On Mon, May 2, 2016 at 11:51 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi Michael,
>
> On Mon, 02 May 2016 16:38:16 Michael Habibi wrote:
> > I have been a few months out of researching Yocto, so I'm having trouble
> > caching it all back in (a lot to absorb!). Excuse me if this is answered
> > clearly in the documentation (I glanced around and I know you can build
> > relocatable toolchains, etc, but I suppose I'm asking more of a
> > philosophical question).
> >
> > I have long-term plans to change our distribution at work over from a
> > custom distribution to one built by Yocto - but this is a few months to a
> > year out.
> >
> > In the mean time, we need a new toolchain simply to update our glibc and
> > gcc packages. I understand that yocto 2.1 can build gcc 5.3 w/ glibc 2.23
> > support. I was wondering if this would be considered an appropriate
> > exercise to use the yocto framework to build solely a toolchain to be
> used
> > with a custom distribution (understanding that the custom distribution
> > would have to be modified to source and use the new toolchain).
> >
> > We typically use crosstools to generate the toolchain, but it is a bit
> > outdated and only builds gcc 5.2 (which has some bugs that were fixed in
> > 5.3). Essentially I want to use Yocto recipes as a substitute for
> > crosstools-ng.
>
> If you build (or download) our SDK that should give you what you need:
>
>
> http://www.yoctoproject.org/docs/2.1/sdk-manual/sdk-manual.html#sdk-building-an-sdk-installer
>
> If it's just the toolchain you need you can ignore the bits about
> the extensible SDK - the standard SDK is what you want. There's
> some more explanatory stuff towards the top of that manual as well.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--089e013c6f5ef316ec0531f07fdc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If I needed to modify glibc or gcc build options (hypothet=
ically speaking, to turn on profiling or debug), I assume I can do that wit=
h bbappends and the like?<div><br></div><div>Thanks Paul</div></div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, May 2, 2016 at 1=
1:51 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleto=
n@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">Hi Michael,<br>
<span class=3D""><br>
On Mon, 02 May 2016 16:38:16 Michael Habibi wrote:<br>
&gt; I have been a few months out of researching Yocto, so I&#39;m having t=
rouble<br>
&gt; caching it all back in (a lot to absorb!). Excuse me if this is answer=
ed<br>
&gt; clearly in the documentation (I glanced around and I know you can buil=
d<br>
&gt; relocatable toolchains, etc, but I suppose I&#39;m asking more of a<br=
>
&gt; philosophical question).<br>
&gt;<br>
&gt; I have long-term plans to change our distribution at work over from a<=
br>
&gt; custom distribution to one built by Yocto - but this is a few months t=
o a<br>
&gt; year out.<br>
&gt;<br>
&gt; In the mean time, we need a new toolchain simply to update our glibc a=
nd<br>
&gt; gcc packages. I understand that yocto 2.1 can build gcc 5.3 w/ glibc 2=
.23<br>
&gt; support. I was wondering if this would be considered an appropriate<br=
>
&gt; exercise to use the yocto framework to build solely a toolchain to be =
used<br>
&gt; with a custom distribution (understanding that the custom distribution=
<br>
&gt; would have to be modified to source and use the new toolchain).<br>
&gt;<br>
&gt; We typically use crosstools to generate the toolchain, but it is a bit=
<br>
&gt; outdated and only builds gcc 5.2 (which has some bugs that were fixed =
in<br>
&gt; 5.3). Essentially I want to use Yocto recipes as a substitute for<br>
&gt; crosstools-ng.<br>
<br>
</span>If you build (or download) our SDK that should give you what you nee=
d:<br>
<br>
=C2=A0 <a href=3D"http://www.yoctoproject.org/docs/2.1/sdk-manual/sdk-manua=
l.html#sdk-building-an-sdk-installer" rel=3D"noreferrer" target=3D"_blank">=
http://www.yoctoproject.org/docs/2.1/sdk-manual/sdk-manual.html#sdk-buildin=
g-an-sdk-installer</a><br>
<br>
If it&#39;s just the toolchain you need you can ignore the bits about<br>
the extensible SDK - the standard SDK is what you want. There&#39;s<br>
some more explanatory stuff towards the top of that manual as well.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--089e013c6f5ef316ec0531f07fdc--
