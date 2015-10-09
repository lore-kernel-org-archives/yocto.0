Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5535E00AAB; Fri,  9 Oct 2015 04:37:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f175.google.com (mail-yk0-f175.google.com
	[209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63D4FE009BA
	for <yocto@yoctoproject.org>; Fri,  9 Oct 2015 04:37:14 -0700 (PDT)
Received: by ykft14 with SMTP id t14so75596416ykf.0
	for <yocto@yoctoproject.org>; Fri, 09 Oct 2015 04:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=3rO7SkQD+4/TqRnJxlX3CgrCl4ddHapYia/vCeKqQrQ=;
	b=IYkSz+iEiAdP2ypWJRHkY9awsZ/NolLZlikwPBpRLM16uQaHbK1FXCEalNCZCwvjR2
	wRzMO9L6BH11doRnSoC/lPFZAPp2eanNcTtpOA0if+3xQBsEEOuYIreMrRPpgosjA20D
	7ku2nQ+ocjsos/7sj6T2BDv5GipeLoB0lFYZTZim3B+sTprixKx778S1iXpcjTjAn+mT
	oXxQaf7Y3BT4uaV0RJVdOxCqaW1PYT5ylUUjSdEcVfjMvopLrMW7KEa/3OQOALh5/Mbj
	vm5Tm+EwviQ+rcmWMMuOKmWLgakqm5+EoK8bNrXicbCvxhV5oLrUIBeZct0TmVGRg4Dg
	L4dQ==
MIME-Version: 1.0
X-Received: by 10.13.205.71 with SMTP id p68mr8766262ywd.164.1444390633991;
	Fri, 09 Oct 2015 04:37:13 -0700 (PDT)
Received: by 10.129.155.216 with HTTP; Fri, 9 Oct 2015 04:37:13 -0700 (PDT)
Received: by 10.129.155.216 with HTTP; Fri, 9 Oct 2015 04:37:13 -0700 (PDT)
In-Reply-To: <59F9D88E-3EF1-42A6-A04B-4516D2F48FB5@gmail.com>
References: <CAF3SDA4AiYrxqdTTY5VVFizmgMKOXjYTJzaz8kNN9D6j9iwccA@mail.gmail.com>
	<59F9D88E-3EF1-42A6-A04B-4516D2F48FB5@gmail.com>
Date: Fri, 9 Oct 2015 08:37:13 -0300
Message-ID: <CAF3SDA4C61cxY00tVLnwMjrivCNwMD1Qf13183F2yrr_3UL-pg@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Khem Raj <raj.khem@gmail.com>, yocto@yoctoproject.org
Subject: Re: kernel-module- prefix for out-of-tree modules mandatory?
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
X-List-Received-Date: Fri, 09 Oct 2015 11:37:16 -0000
Content-Type: multipart/alternative; boundary=001a114dab98a7f4370521aa6642

--001a114dab98a7f4370521aa6642
Content-Type: text/plain; charset=UTF-8

Thanks!!
Em 09/10/2015 04:25, "Khem Raj" <raj.khem@gmail.com> escreveu:

>
> > On Oct 8, 2015, at 1:29 PM, Daniel. <danielhilst@gmail.com> wrote:
> >
> > Hi all,
> >
> > Is the kernel-module- prefix mandatory for out-of-tree modules
> > compiled inside Yocto? And, This prefix applies to package names or
> > recipe names? Should I rename my recipe file with this prefix or setup
> > PN stuff?
>
> if you inherit module bbclass then the split will happen automatically
> you can name your recipe anything you like, the naming applies to out
> packages only
>
> >
> > Cheers,
> >
> > --
> > "Do or do not. There is no try"
> >  Yoda Master
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a114dab98a7f4370521aa6642
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Thanks!!</p>
<div class=3D"gmail_quote">Em 09/10/2015 04:25, &quot;Khem Raj&quot; &lt;<a=
 href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; escreveu:<br=
 type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
&gt; On Oct 8, 2015, at 1:29 PM, Daniel. &lt;<a href=3D"mailto:danielhilst@=
gmail.com">danielhilst@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi all,<br>
&gt;<br>
&gt; Is the kernel-module- prefix mandatory for out-of-tree modules<br>
&gt; compiled inside Yocto? And, This prefix applies to package names or<br=
>
&gt; recipe names? Should I rename my recipe file with this prefix or setup=
<br>
&gt; PN stuff?<br>
<br>
if you inherit module bbclass then the split will happen automatically<br>
you can name your recipe anything you like, the naming applies to out packa=
ges only<br>
<br>
&gt;<br>
&gt; Cheers,<br>
&gt;<br>
&gt; --<br>
&gt; &quot;Do or do not. There is no try&quot;<br>
&gt;=C2=A0 Yoda Master<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
<br>
</blockquote></div>

--001a114dab98a7f4370521aa6642--
