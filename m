Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9451E00BFF; Fri, 27 Nov 2015 04:46:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF22DE00BF4
	for <yocto@yoctoproject.org>; Fri, 27 Nov 2015 04:46:12 -0800 (PST)
Received: by igcmv3 with SMTP id mv3so31054781igc.0
	for <yocto@yoctoproject.org>; Fri, 27 Nov 2015 04:46:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=JtFfJuNZkk/fBTCewlx10txl03GhrX/ktRcK5nv03n4=;
	b=X7tbEmsxElgwmlGHBNxGAatgxAG9UVYoHZMgmf9KIPHsAfT8HS8O/0saYXCSzm6Q9w
	lBF0Sch9snuoJ3owLyMFOdjusDjmKrNn1nnnk33w0uGKW9VZVm8dw9sYae05qYZLkSH8
	WYemXFspOY+hLQsX+523WYLfjWTgUbZkVInpd7DyaGDNEtQqYIGBHSVmYEWHys3sF6//
	CE9SeKhnFceUrLxSoFWzpAidfioQfLUoF2JfT38dASW1BlJbwvdDGpzRqRHHMZ9dV5aF
	KhwpKDJaVaAizLBrVCZPOdgIiT1l1v+oRbfqbMMyH333PJvEe6BjFfcK8+xJjCLjMqPL
	Rr7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=JtFfJuNZkk/fBTCewlx10txl03GhrX/ktRcK5nv03n4=;
	b=Zyxvqdps73i0hAibm2jAQbom2DFI31GvYKGc+NmUOhwDItrPoVGtftFh5ASPZvHIS9
	SKAWL3C0JTa0LtyJIP9lu/iJM2ISILLYECoQe4767a6UnFIPgyUfCwJ3mshMXA9QDP+q
	RXWpHvWJ/q6i2QQnBSpPduDbqxo6MOmZ/5AtAllXT7nWTpO1iv1HO1BVBa9p/tZYwgIh
	uDcz3YZsegxxX0UAQVX/jYG05RhBKE85kApPjfP5QK97ndv+UGSFFW7PW7sWhy2wwUgT
	wVE4XjwCtZ/dA3me4YMvaxDxjugjAocgDtkBZTugo9CyTcNodo7Q4skfONR9/4fpFeGl
	ddjQ==
X-Gm-Message-State: ALoCoQkNLxgs6iFHuxvDsf725mpAOKEOXcNucAxUjJK7QJ8ZAHc2t0RM6XpR8h9In9/RM7xip6JP
X-Received: by 10.50.43.161 with SMTP id x1mr7470262igl.64.1448628372165; Fri,
	27 Nov 2015 04:46:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.136.141 with HTTP; Fri, 27 Nov 2015 04:45:52 -0800 (PST)
In-Reply-To: <CAJ73Ay5nUUdU7BO2dQQF0ToEiuzX1cxd6nMWHvtZmoHfu32X_Q@mail.gmail.com>
References: <CAJ73Ay5nUUdU7BO2dQQF0ToEiuzX1cxd6nMWHvtZmoHfu32X_Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 27 Nov 2015 12:45:52 +0000
Message-ID: <CAJTo0LYv4o2xvN6P5N+T70OfPzs0FX7rHqhVsKCiTEEyLdF13A@mail.gmail.com>
To: Dariusz Pelowski <dariusz.pelowski@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failing devshell
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
X-List-Received-Date: Fri, 27 Nov 2015 12:46:19 -0000
Content-Type: multipart/alternative; boundary=089e0111bffe88f2b60525851346

--089e0111bffe88f2b60525851346
Content-Type: text/plain; charset=UTF-8

On 26 November 2015 at 17:25, Dariusz Pelowski <dariusz.pelowski@gmail.com>
wrote:

> Is it acceptable solution? Could you apply attached patch?
>

That's exactly the right thing to do.  Can you reformat the commit message
to match git style ("lib/oe/terminal: use C locale when determining
version" as the first line, the important bit being the submodule at the
beginning) and re-send the patch to the
openembedded-core@lists.openembedded.org mailing list?

Thanks,
Ross

--089e0111bffe88f2b60525851346
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 26 November 2015 at 17:25, Dariusz Pelowski <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:dariusz.pelowski@gmail.com" target=3D"_blank">dariusz.pelowski@=
gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>Is =
it acceptable solution? Could you apply attached patch?<br></div></blockquo=
te></div><br>That&#39;s exactly the right thing to do.=C2=A0 Can you reform=
at the commit message to match git style (&quot;lib/oe/terminal: use C loca=
le when determining version&quot; as the first line, the important bit bein=
g the submodule at the beginning) and re-send the patch to the <a href=3D"m=
ailto:openembedded-core@lists.openembedded.org">openembedded-core@lists.ope=
nembedded.org</a> mailing list?</div><div class=3D"gmail_extra"><br></div><=
div class=3D"gmail_extra">Thanks,</div><div class=3D"gmail_extra">Ross</div=
></div>

--089e0111bffe88f2b60525851346--
