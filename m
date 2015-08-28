Return-Path: <yuq825@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3BCBE00C9C; Thu, 27 Aug 2015 19:00:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuq825[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99567E00B36
	for <yocto@yoctoproject.org>; Thu, 27 Aug 2015 19:00:48 -0700 (PDT)
Received: by igcse8 with SMTP id se8so8095622igc.1
	for <yocto@yoctoproject.org>; Thu, 27 Aug 2015 19:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=XSn39p95S1WnmmGaLl/8sQtrxf8Fssq27O/+SPBG+M8=;
	b=E5rBvJpSOnCytLpP9+77KH1f+XX7kIR9LemwFHfgpY+EkE1CfJjDe3v7t7SXZ/TP+k
	LbNqChrJr8ZfG+1RVWyP/0ukdR+GxX3U1jN1HmZ0m/0tCwpmWgysjH2y/9fXLXMOUOwB
	DNIewyv2mcWtaBY0T6G+0Qiyydx9gvaYE4S7kQxCUjnPxE/EqwXzN1+an9wCAqBgzze2
	65dwmmqXAXiPXuYxcF/U+u5Uj81kzfpjhdp91DC5OOlqBPgxyiM4U2NjZqOKWz0ANiuU
	OsGySxVlQr7lG2gHWLi6+ja4egIqKFdXQxv9rHY8X2/kEFDdaEGrOiEiKfz0ITwzQkjX
	srYg==
MIME-Version: 1.0
X-Received: by 10.50.122.10 with SMTP id lo10mr1491786igb.76.1440727248128;
	Thu, 27 Aug 2015 19:00:48 -0700 (PDT)
Received: by 10.36.29.148 with HTTP; Thu, 27 Aug 2015 19:00:48 -0700 (PDT)
In-Reply-To: <CAMKF1sopvtB+O3p7v72dcLyMMUoaE2k+k5Ta9PjyjyYWOK58pg@mail.gmail.com>
References: <CAKGbVbu-gzaAfkuZVQP8Pua=SMYwxoHsvHqDci+Eo3FyPh+CQA@mail.gmail.com>
	<CAMKF1sopvtB+O3p7v72dcLyMMUoaE2k+k5Ta9PjyjyYWOK58pg@mail.gmail.com>
Date: Fri, 28 Aug 2015 10:00:48 +0800
Message-ID: <CAKGbVbvrCLJ3KZf-9NQ9dtBbkHTzw=VoLPK4XK+aUPOSMavCfA@mail.gmail.com>
From: Qiang Yu <yuq825@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to disable OVERRIDES temperally
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
X-List-Received-Date: Fri, 28 Aug 2015 02:00:53 -0000
Content-Type: multipart/alternative; boundary=089e01538362d7d19c051e5573a0

--089e01538362d7d19c051e5573a0
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 27, 2015 at 9:36 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Thu, Aug 27, 2015 at 4:40 AM, Qiang Yu <yuq825@gmail.com> wrote:
> > Hi all,
> >
> > I want to load kernel module ci_hdrc_imx at boot time and add a conf
> file in
> > /etc/modprobe.d. I find it can be done by add
> > module_conf_ci_hdrc_imx = "my configure"
> >
> > But the suffix "imx" is in OVERRIDES, so I get
> > module_conf_ci_hdrc = "my configure"
> >
> > How to disable the OVERRIDES temperally here? Or may be there is another
> > way?
>
> OVERRIDES_remove = "imx" in recipe might help
> another case where we should rethink OVERRIDE syntax
>

This removes imx in whole recipe. I want a temporary way in case other
parts need this override.


>
> >
> > Thanks,
> > Qiang
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--089e01538362d7d19c051e5573a0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Aug 27, 2015 at 9:36 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=
=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Thu, A=
ug 27, 2015 at 4:40 AM, Qiang Yu &lt;<a href=3D"mailto:yuq825@gmail.com">yu=
q825@gmail.com</a>&gt; wrote:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I want to load kernel module ci_hdrc_imx at boot time and add a conf f=
ile in<br>
&gt; /etc/modprobe.d. I find it can be done by add<br>
&gt; module_conf_ci_hdrc_imx =3D &quot;my configure&quot;<br>
&gt;<br>
&gt; But the suffix &quot;imx&quot; is in OVERRIDES, so I get<br>
&gt; module_conf_ci_hdrc =3D &quot;my configure&quot;<br>
&gt;<br>
&gt; How to disable the OVERRIDES temperally here? Or may be there is anoth=
er<br>
&gt; way?<br>
<br>
</span>OVERRIDES_remove =3D &quot;imx&quot; in recipe might help<br>
another case where we should rethink OVERRIDE syntax<br></blockquote><div><=
br></div><div>This removes imx in whole recipe. I want a temporary way in c=
ase other parts need this override.</div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Qiang<br>
<span class=3D"HOEnZb"><font color=3D"#888888">&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--089e01538362d7d19c051e5573a0--
