Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CB90E00945; Fri,  9 Sep 2016 12:15:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.4 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.50 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74A34E00924
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2016 12:15:50 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id m11so159816049oif.1
	for <yocto@yoctoproject.org>; Fri, 09 Sep 2016 12:15:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=c2+Mu5oTOqvmOUhfLsJLTafQmCfh3lBUzZSyMhCUoZA=;
	b=gyvHstl4MfpwKOhk2c4xXYSATPgQMfALXPNFnKquVTA96W7I74icCzSTaf7S4D5LHh
	0e4vhBQbng51tXASkYzL470ZerG2o4dyfxkFT5hPIdTTIFmql+91LpaEERrV/aD+CtCF
	jI5PMQy6+Hqw51bEjzcPRUshdIjhREpiYbSI392NRuhx93isjCUlTkWzg7/sfJX9JgUe
	JUGIeG7bgfdCqVkkVWw4LRAsudf/5xM3YnEE9eZEnhlxzPKeqJMk5aKLtYUricnV3Mhg
	GjqKrrBV8ppObM62dWO2h6/RtiWYn9aZVS+9LV81oJQxj7H347O6aEVjRYM9u74AYBhE
	PuPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=c2+Mu5oTOqvmOUhfLsJLTafQmCfh3lBUzZSyMhCUoZA=;
	b=YmiNiJxXZUdns+8P08cjMtNNop3p1LGBnxaeQbC3e0BeK5vuGEHK0QdNMdIa2Udui3
	OUmKzJmdGmyJwWmSsSnBPh1Gm45h0bqukQgN+crwMhq7c7v53RBVjxm5I3cxRblG+4TN
	zjjCJ7iS2U4RDjt36DMs8KdbSEnTAEisCnBghmCvx/8tSWUnCf2YRSwifDmnOPnRDWHM
	NkrhAjy1YuleD7isQqvb11MSEVfObsJQZf/o/07EjGz8qJz/4J6zjkGIMzCOBDeBpmKi
	/NiVnhow/80ME2+tTsFroL9tSWIydFA9YY2fPNh4OpeglvbgR50ImYsvRekN+msEbWlf
	atFQ==
X-Gm-Message-State: AE9vXwMrB73FCMRwtA6fcNLotJmR76hTi02h6idu9B63Yg5Pk+bjlRdmOa7hAfXLTH5SoB7HvBAdPM7T4LpHew==
X-Received: by 10.157.1.139 with SMTP id e11mr6514624ote.19.1473448549629;
	Fri, 09 Sep 2016 12:15:49 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.157.13.194 with HTTP; Fri, 9 Sep 2016 12:15:29 -0700 (PDT)
In-Reply-To: <4B3F5767F3F5754FAD4E230B6B1D4F7921316B6E@US70UWXCHMBA02.zam.alcatel-lucent.com>
References: <4B3F5767F3F5754FAD4E230B6B1D4F792130C338@US70UWXCHMBA02.zam.alcatel-lucent.com>
	<CAJTo0LY5Z8P3QJiHbfxSNe6eR180oH0+gzH8B5XX3r08y3XJ5A@mail.gmail.com>
	<4B3F5767F3F5754FAD4E230B6B1D4F7921316B6E@US70UWXCHMBA02.zam.alcatel-lucent.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Fri, 9 Sep 2016 12:15:29 -0700
X-Google-Sender-Auth: TmRSbtj-ilqW6W2xcVTVBDGlcHY
Message-ID: <CABcZANnSY4nW+zPUS-Tn_ODXU1tNCg5nBtZ_rvJ78QJ8WYEhHQ@mail.gmail.com>
To: "Siegel, Jeffrey (Nokia - US)" <jeffrey.siegel@nokia.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 'bb' utility fails on attempt to import 'commands' module
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
X-List-Received-Date: Fri, 09 Sep 2016 19:15:51 -0000
Content-Type: multipart/alternative; boundary=94eb2c0c074265475d053c17f9c0

--94eb2c0c074265475d053c17f9c0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 9, 2016 at 8:12 AM, Siegel, Jeffrey (Nokia - US) <
jeffrey.siegel@nokia.com> wrote:

> Thanks, this fixed the issue. After checking the output of =E2=80=98git l=
og=E2=80=99, I
> picked this commit:
>
> git checkout d458b3
>

Sorry about that, I=E2=80=99ll see about creating stable release branches.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--94eb2c0c074265475d053c17f9c0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Sep 9, 2016 at 8:12 AM, Siegel, Jeffrey (Nokia - US) <span dir=3D"l=
tr">&lt;<a href=3D"mailto:jeffrey.siegel@nokia.com" target=3D"_blank">jeffr=
ey.siegel@nokia.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Thanks, this fixed the i=
ssue. After checking the output of =E2=80=98git log=E2=80=99, I picked this=
 commit:<u></u><u></u></span></p>
<p class=3D"MsoNormal">git checkout d458b3</p></blockquote></div><br>Sorry =
about that, I=E2=80=99ll see about creating stable release branches.<br>-- =
<br><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature">Chris=
topher Larson<br>clarson at kergoth dot com<br>Founder - BitBake, OpenEmbed=
ded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engineer, Mentor G=
raphics</div>
</div></div>

--94eb2c0c074265475d053c17f9c0--
