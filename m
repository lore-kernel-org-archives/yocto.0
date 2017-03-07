Return-Path: <soumyag213@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07D8EE0052B; Tue,  7 Mar 2017 09:25:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (soumyag213[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.178 listed in dnsbl.sorbs.net]
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
	*      [209.85.192.178 listed in list.dnswl.org]
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7D8CE00349
	for <yocto@yoctoproject.org>; Tue,  7 Mar 2017 09:25:17 -0800 (PST)
Received: by mail-pf0-f178.google.com with SMTP id o126so3025808pfb.3
	for <yocto@yoctoproject.org>; Tue, 07 Mar 2017 09:25:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=xED7FqmiuMJFNbvaJf8eBJs8B0h9mwh5JERatkVvESA=;
	b=jlIYfuP8gRQzdmsOVYr9IEAyqrqerKY/xEqdjN49AJAutPsTCTuFyhwEnt6kFJavG5
	P6kEjEC+gjPKFr9BpMlPsmDpyHaE69nvapi7u6go9y+VqOTzXFWN8+WziBlyMn2NV3zU
	hqjXPgoKEo77qDYaVIMQfvYnIr6Ytwsgilbm+Vu429DbtRJGD33xDPfgWOP29B8otBPH
	hhpbE7ZK8qb3ymxs9Cnrb1+MPBDW3+I5MLTMUJEnGjkNOE7Rv33TlRieFd49vXhSROL9
	uiJWFCzpEGNRa4guK1Roz094AYukhHvG48AymVhk/KwB5bpNkMsHfsQYAMI+G11jX4M+
	/Bjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=xED7FqmiuMJFNbvaJf8eBJs8B0h9mwh5JERatkVvESA=;
	b=NQCzGhw8EXhy8MvICmneeFxptIUO/8UfVaXePDKzFLyadGnPT3iYHd3gM6kSlvqjHR
	gLP8PPr8OHzex6jH7+puvYqAi61NoANxhDI+M2KFr3Lp6NgDo6/mKJVKFVQEJrYbjo8X
	pt5ffK9qxtknkatDxCNXTDKmQ74GL8b8MD3yCFk6ZCThIMhJBrTSJbRYsJAzCbpZCrPB
	+23ILdPd8/dFAgN+Cq4Gslpudjbxh7cHK9fBiN+S8vCEYouAHGKz70a8bm5lrIpnRY9t
	2HwqanmDaAHkOZjXyUKC3zC2J2XbNVRkLz848jBOwdXUfCy93AaTpf4sl7Mny94+Zlej
	V9sg==
X-Gm-Message-State: AMke39mvsJsjIygwzF2nCR5V7tlb6BCDgR3ITnkoTCRjKFPpwV/iugqYcDFPNXkoT7A1Cbpr9ccocHns2ketwQ==
X-Received: by 10.98.36.81 with SMTP id r78mr1625769pfj.178.1488907516756;
	Tue, 07 Mar 2017 09:25:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.177.196 with HTTP; Tue, 7 Mar 2017 09:24:36 -0800 (PST)
In-Reply-To: <1488906492.3261.20.camel@linux.intel.com>
References: <CAFD+RaYVrFfPXrbW79FMx24wJDSqfxAt2ey3PYKmvL0E5hE7Bw@mail.gmail.com>
	<1488906492.3261.20.camel@linux.intel.com>
From: Soumya Gupta <soumyag213@gmail.com>
Date: Tue, 7 Mar 2017 22:54:36 +0530
Message-ID: <CAFD+RaaDz0t6A-Y_T0b2CY7N07pLYorEHz3nymG+Npc7ePJz_w@mail.gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Intoducting myself: Applying for Outreachy
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
X-List-Received-Date: Tue, 07 Mar 2017 17:25:21 -0000
Content-Type: multipart/alternative; boundary=001a11378a1ea3cac5054a274bad

--001a11378a1ea3cac5054a274bad
Content-Type: text/plain; charset=UTF-8

Hi,

Please look under Yocto under Participating Organisations
<https://wiki.gnome.org/Outreachy/2017/MayAugust#Participating_Organizations>
Thank you

Best,
Soumya Atul Gupta
Final Year Undergraduate Student, ECE
Netaji Subhas Institute of Technology
New Delhi, India


On Tue, Mar 7, 2017 at 10:38 PM, Leonardo Sandoval <
leonardo.sandoval.gonzalez@linux.intel.com> wrote:

> On Tue, 2017-03-07 at 22:18 +0530, Soumya Gupta wrote:
> > Hi all,
> >
> >
> > My name is Soumya, an I am a final year Engineering undergraduate
> > student from New Delhi. I would love to work to contribute to Yocto
> > for the summer.
> >
> >
> > I have been coding in Python for the past year and I am quite at ease
> > with the same. It states on the Outreachy page, that there is a
> > project relating to the building of autobuilders. I want to work on
> > the same.
>
> can you point to that page?
>
> There is an autobuilder repo at git.yoctoproject.org, perhaps you can
> start looking there.
>
> >
> > Being a newbie, it would be great, if someone could guide me on the
> > right path here
> >
> > Thanks already
> >
> >
> > Best,
> > Soumya Atul Gupta
> > Final Year Undergraduate Student, ECE
> > Netaji Subhas Institute of Technology
> > New Delhi, India
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
>

--001a11378a1ea3cac5054a274bad
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, <br><br>Please look under Yocto under <a href=3D"=
https://wiki.gnome.org/Outreachy/2017/MayAugust#Participating_Organizations=
">Participating Organisations</a><br></div>Thank you <br></div><div class=
=3D"gmail_extra"><br clear=3D"all"><div><div class=3D"gmail_signature" data=
-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>=
<div dir=3D"ltr">Best,<div>Soumya Atul Gupta</div><div>Final Year Undergrad=
uate Student, ECE</div><div>Netaji Subhas Institute of Technology</div><div=
>New Delhi, India</div><div><br></div></div></div></div></div></div></div><=
/div>
<br><div class=3D"gmail_quote">On Tue, Mar 7, 2017 at 10:38 PM, Leonardo Sa=
ndoval <span dir=3D"ltr">&lt;<a href=3D"mailto:leonardo.sandoval.gonzalez@l=
inux.intel.com" target=3D"_blank">leonardo.sandoval.gonzalez@linux.intel.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">=
On Tue, 2017-03-07 at 22:18 +0530, Soumya Gupta wrote:<br>
&gt; Hi all,<br>
&gt;<br>
&gt;<br>
&gt; My name is Soumya, an I am a final year Engineering undergraduate<br>
&gt; student from New Delhi. I would love to work to contribute to Yocto<br=
>
&gt; for the summer.<br>
&gt;<br>
&gt;<br>
&gt; I have been coding in Python for the past year and I am quite at ease<=
br>
&gt; with the same. It states on the Outreachy page, that there is a<br>
&gt; project relating to the building of autobuilders. I want to work on<br=
>
&gt; the same.<br>
<br>
</span>can you point to that page?<br>
<br>
There is an autobuilder repo at <a href=3D"http://git.yoctoproject.org" rel=
=3D"noreferrer" target=3D"_blank">git.yoctoproject.org</a>, perhaps you can=
<br>
start looking there.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; Being a newbie, it would be great, if someone could guide me on the<br=
>
&gt; right path here<br>
&gt;<br>
&gt; Thanks already<br>
&gt;<br>
&gt;<br>
&gt; Best,<br>
&gt; Soumya Atul Gupta<br>
&gt; Final Year Undergraduate Student, ECE<br>
&gt; Netaji Subhas Institute of Technology<br>
&gt; New Delhi, India<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
<br>
<br>
</font></span></blockquote></div><br></div>

--001a11378a1ea3cac5054a274bad--
