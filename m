Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A193DE0097F; Mon, 30 Mar 2015 02:34:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.46 listed in list.dnswl.org]
Received: from mail-qg0-f46.google.com (mail-qg0-f46.google.com
	[209.85.192.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED467E0097D
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 02:33:59 -0700 (PDT)
Received: by qgfa8 with SMTP id a8so175231967qgf.0
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 02:33:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=UvRL37t47L7TEAbYeoPsCaKcy7k7SWLcxTkbsb7FcLA=;
	b=NT4QZ++PIOFD6jPzfvy9lf1vLYoALz8I1g8u10RdHeHEtiuNkZQb354hMD6IJ1l6za
	XolureEKfLfm87zy8ZvwMy9lodWW+2Pptjzsbl5tFcWw4f/tNgrCxZ7PBI0TDJdjz4ne
	99/I071qqhmhWjdzfwL/vdSHo9rfpvsZBQGBvPJGVDW2bmaqZoRbLeT811V/vj6Kid0E
	VfKoqB1LSAwKpYuSigNdu5KCIfMKHL2g5MOcbJQTrwJWMorxgUIr89WusImtRy1PK9T/
	PBpL4a7HOSHUfXU2zhV3/aB99hLsP0Tklc5aI+ePNwfY4jeA5mkDYcJY2DeqLzzDnnqV
	FNRg==
X-Gm-Message-State: ALoCoQmDnarpO4SgXKy2s148JBEzIal2NqPgqgjx+Ekivse5HKKFM90ZfPAfuUwbh5ZEOQSLymZR
X-Received: by 10.55.18.8 with SMTP id c8mr65453053qkh.25.1427708038509; Mon,
	30 Mar 2015 02:33:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Mon, 30 Mar 2015 02:33:37 -0700 (PDT)
In-Reply-To: <1427506388-12271-1-git-send-email-tracy.graydon@intel.com>
References: <1427506388-12271-1-git-send-email-tracy.graydon@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 30 Mar 2015 10:33:37 +0100
Message-ID: <CAJTo0LbUvy_tDg5UE3OPi_3TP4VJR7rFrHkJiHpt2DRoiXrj2Q@mail.gmail.com>
To: "Graydon, Tracy" <tracy.graydon@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] nightly-weston.conf: Run regular build tests for no-X11 case
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
X-List-Received-Date: Mon, 30 Mar 2015 09:34:00 -0000
Content-Type: multipart/alternative; boundary=001a11475ccc7a989805127e2e34

--001a11475ccc7a989805127e2e34
Content-Type: text/plain; charset=UTF-8

On 28 March 2015 at 01:33, Graydon, Tracy <tracy.graydon@intel.com> wrote:

> +                            'atextappend' : '\nDISTRO_FEATURES_remove = "
> x11"\n'}},
>

FYI, _remove doesn't encourage leading whitespace.

Ross

--001a11475ccc7a989805127e2e34
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 March 2015 at 01:33, Graydon, Tracy <span dir=3D"ltr">&lt;<a href=3D"=
mailto:tracy.graydon@intel.com" target=3D"_blank">tracy.graydon@intel.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":78r" cla=
ss=3D"a3s" style=3D"overflow:hidden">+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;atextap=
pend&#39; : &#39;\nDISTRO_FEATURES_remove =3D &quot; x11&quot;\n&#39;}},<br=
></div></blockquote></div><br>FYI, _remove doesn&#39;t encourage leading wh=
itespace.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ext=
ra">Ross</div></div>

--001a11475ccc7a989805127e2e34--
