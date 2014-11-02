Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00B35E008BA; Sun,  2 Nov 2014 15:35:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.18.3.30 listed in list.dnswl.org]
Received: from exprod8og115.obsmtp.com (exprod8og115.obsmtp.com [64.18.3.30])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2DBBE00881
	for <yocto@yoctoproject.org>; Sun,  2 Nov 2014 15:35:53 -0800 (PST)
Received: from mail-lb0-f176.google.com ([209.85.217.176]) (using TLSv1) by
	exprod8ob115.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVFa/2dkjOcOzMYWAVVI26cZCkWEyXmyc@postini.com;
	Sun, 02 Nov 2014 15:35:57 PST
Received: by mail-lb0-f176.google.com with SMTP id z11so6603915lbi.35
	for <yocto@yoctoproject.org>; Sun, 02 Nov 2014 15:35:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=q4F5fuvkdzxrYWijBhQ3aXkInxbSEgkahA+t8E4IiEk=;
	b=KjfWnTP7DSU5kgc4MiskbojDJaGGQ84uEIG3FLvrCmi6K4CsnD/yiIoa68CbWtgF1Z
	CXy/ELcutw+1dJDsfbuIUYilsormK7hM57NhDgCIpFYJDyBH/DlbyLLEqllDpeJrlIai
	0pOuN601+5dR3/rvCwmMNNMebRvPbVV6HTkS8XhTO8VPVchjrzEClzRPyRJ5kix0GLhX
	RUAxhrdHFLtg8EGhOeMqcE74x8YezdNtlZfbk24pE7c8rUuQtZ+/c5g8RXKGxTxdJUsD
	om78x8eqkVsSwav1IXlnnooKf51bnE3V60M/4PorEdIlcw+6tcE50sXYHiJRMn5lQ+mg
	LaiQ==
X-Gm-Message-State: ALoCoQnhqkPAYvIXkGmBS+UVM3UsrCgtc2NM2zVNBD3sQkR+RUnR2bImaKeQ2vLu6IGBuDujIp5m9WM7d0tIWzFVj4Lzx7MDjogqrL/URCmcdKf970Tj7hLnvoaxj/YL50SyNZyt4Pexj4WhBg2gNpsmonROwgZYHQ==
X-Received: by 10.112.140.135 with SMTP id rg7mr46826362lbb.24.1414971351766; 
	Sun, 02 Nov 2014 15:35:51 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.112.140.135 with SMTP id rg7mr46826342lbb.24.1414971351599; 
	Sun, 02 Nov 2014 15:35:51 -0800 (PST)
Received: by 10.152.2.40 with HTTP; Sun, 2 Nov 2014 15:35:51 -0800 (PST)
In-Reply-To: <20141027080733.D8D1F380909@gemini.denx.de>
References: <CAJrRHk6aVPLjZ9ruyr+koS7cVQTRt-+-jGv6L+AdFTTBW_Wmxg@mail.gmail.com>
	<CAJrRHk4Q_bnrv2g1Kup9BTJj9gVMufKmSLtmBx8K5hmp7mE+PQ@mail.gmail.com>
	<20141027080733.D8D1F380909@gemini.denx.de>
Date: Mon, 3 Nov 2014 07:35:51 +0800
Message-ID: <CAJrRHk7gP=jZZguTf0F34v4Hou0xOrdhDSLVM9Hzjs_tbHxKQA@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: Wolfgang Denk <wd@denx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: PERL5LIB not properly reflecting target_sdk_dir
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
X-List-Received-Date: Sun, 02 Nov 2014 23:36:00 -0000
Content-Type: multipart/alternative; boundary=001a11c26a86c7a46d0506e8b0c3

--001a11c26a86c7a46d0506e8b0c3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good day Wolfgang,

Thank you for helping me with this. I have seen the bug report. Hopefully
we get a resolution soon.

- Joseph

On Mon, Oct 27, 2014 at 4:07 PM, Wolfgang Denk <wd@denx.de> wrote:

> Dear Joseph Andrew de la Pe=C3=B1a,
>
> In message <
> CAJrRHk4Q_bnrv2g1Kup9BTJj9gVMufKmSLtmBx8K5hmp7mE+PQ@mail.gmail.com> you
> wrote:
> >
> > anyone?
>
> I confirm the problem.
>
> > > I have seen a problem in SDK installation where PERL5LIB does not
> reflect
> > > vendor_perl location.
> > > I have specified SDK installtion path as /bonus/scratch/sdk. Yet when=
 I
> > > executed -V no vendor_perl is included in PERL5LIB.
>
> To be more precise, PERL5LIB is not set in the environment, and the
> installation routine cannot fix the built-in strings in the perl
> binary.
>
> > > @INC:
> > > /bonus/scratch/sdk/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3
> > > /bonus/scratch/sdk/sysroots/i686-pokysdk-linux//usr/lib/perl
> > > /bonus/scratch/sdk/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3
> > >
> > >
> /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/site_perl/5.14.3=
/
> > >
> /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/site_perl/5.14.3
> > >
> > >
> /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/vendor_perl/5.14=
.3/
> > >
> /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/vendor_perl/5.14=
.3
> > > /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3/
> > > /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3
> > > /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3
>
> As you can see, even though you install into a non-standard directory
> (/bonus/scratch/sdk), perl still references the built-in path
> (/opt/sdk/...).
>
> The problem is present in all versions of Yocto, up to and including
> the upcoming 1.7.
>
> I've opened a bug for it, see
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6890
>
> Best regards,
>
> Wolfgang Denk
>
> --
> DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
> "You know, after a woman's raised a family and so on,  she  wants  to
> start living her own life."   "Whose life she's _been_ living, then?"
>                                   - Terry Pratchett, _Witches Abroad_
>

--001a11c26a86c7a46d0506e8b0c3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Wolfgang,<div><br></div><div>Thank you for helpin=
g me with this. I have seen the bug report. Hopefully we get a resolution s=
oon.</div><div><br></div><div>- Joseph</div></div><div class=3D"gmail_extra=
"><br><div class=3D"gmail_quote">On Mon, Oct 27, 2014 at 4:07 PM, Wolfgang =
Denk <span dir=3D"ltr">&lt;<a href=3D"mailto:wd@denx.de" target=3D"_blank">=
wd@denx.de</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Dear Jos=
eph Andrew de la Pe=C3=B1a,<br>
<br>
In message &lt;<a href=3D"mailto:CAJrRHk4Q_bnrv2g1Kup9BTJj9gVMufKmSLtmBx8K5=
hmp7mE%2BPQ@mail.gmail.com">CAJrRHk4Q_bnrv2g1Kup9BTJj9gVMufKmSLtmBx8K5hmp7m=
E+PQ@mail.gmail.com</a>&gt; you wrote:<br>
&gt;<br>
&gt; anyone?<br>
<br>
I confirm the problem.<br>
<span class=3D""><br>
&gt; &gt; I have seen a problem in SDK installation where PERL5LIB does not=
 reflect<br>
&gt; &gt; vendor_perl location.<br>
&gt; &gt; I have specified SDK installtion path as /bonus/scratch/sdk. Yet =
when I<br>
&gt; &gt; executed -V no vendor_perl is included in PERL5LIB.<br>
<br>
</span>To be more precise, PERL5LIB is not set in the environment, and the<=
br>
installation routine cannot fix the built-in strings in the perl<br>
binary.<br>
<span class=3D""><br>
&gt; &gt; @INC:<br>
&gt; &gt; /bonus/scratch/sdk/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14=
.3<br>
&gt; &gt; /bonus/scratch/sdk/sysroots/i686-pokysdk-linux//usr/lib/perl<br>
&gt; &gt; /bonus/scratch/sdk/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14=
.3<br>
&gt; &gt;<br>
&gt; &gt; /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/site_per=
l/5.14.3/<br>
&gt; &gt; /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/site_per=
l/5.14.3<br>
&gt; &gt;<br>
&gt; &gt; /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/vendor_p=
erl/5.14.3/<br>
&gt; &gt; /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/vendor_p=
erl/5.14.3<br>
&gt; &gt; /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3/<=
br>
&gt; &gt; /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3<b=
r>
&gt; &gt; /opt/sdk/1.5.1/sysroots/i686-pokysdk-linux//usr/lib/perl/5.14.3<b=
r>
<br>
</span>As you can see, even though you install into a non-standard director=
y<br>
(/bonus/scratch/sdk), perl still references the built-in path<br>
(/opt/sdk/...).<br>
<br>
The problem is present in all versions of Yocto, up to and including<br>
the upcoming 1.7.<br>
<br>
I&#39;ve opened a bug for it, see<br>
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6890" target=
=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6890</a><br=
>
<br>
Best regards,<br>
<br>
Wolfgang Denk<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
DENX Software Engineering GmbH,=C2=A0 =C2=A0 =C2=A0MD: Wolfgang Denk &amp; =
Detlev Zundel<br>
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany<br>
Phone: <a href=3D"tel:%28%2B49%29-8142-66989-10" value=3D"+4981426698910">(=
+49)-8142-66989-10</a> Fax: <a href=3D"tel:%28%2B49%29-8142-66989-80" value=
=3D"+4981426698980">(+49)-8142-66989-80</a> Email: <a href=3D"mailto:wd@den=
x.de">wd@denx.de</a><br>
&quot;You know, after a woman&#39;s raised a family and so on,=C2=A0 she=C2=
=A0 wants=C2=A0 to<br>
start living her own life.&quot;=C2=A0 =C2=A0&quot;Whose life she&#39;s _be=
en_ living, then?&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 - Terry Pratchett, _Witches A=
broad_<br>
</font></span></blockquote></div><br></div>

--001a11c26a86c7a46d0506e8b0c3--
