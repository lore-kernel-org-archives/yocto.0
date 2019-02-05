Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC65DE00BBC; Tue,  5 Feb 2019 10:46:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.47 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
	[209.85.208.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A98FEE009AA
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2019 10:46:37 -0800 (PST)
Received: by mail-ed1-f47.google.com with SMTP id y56so3751228edd.11
	for <yocto@yoctoproject.org>; Tue, 05 Feb 2019 10:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=jMsVd2RvSDCqO0sHS8DMToJdoN3r326Z3osALYdtEmk=;
	b=qc88BxRk2s0+vcqw8SBc8qXK8ExQdKJQf6kDieERXCKZEC1JNgUovOai2UcQK1o+Yx
	3Si3g5EE4dwwVDHj9PI21jBQPn6zAUojGIaU5Y6LWYCKdBUMJKrZfPNMj8bnOah5Erkt
	AYWxez1RdgG3LK6fm5MfU6wcb1itjCVe7iOtfFtuaT1Fl5Q0KeTxoegFa+yxupcPfhfd
	x9rTh2Qfp6H+hmv25x4KaYBOo9MhllMvko2hzVDuENr835vS0zulFKzboy/j9QieNRVG
	h3J8vl/EclQQRAQGxytCMdkUmE/i70g3POLxa4Moc4NWuW/mX9xjuRaoYmTy19GLb6fo
	QVeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=jMsVd2RvSDCqO0sHS8DMToJdoN3r326Z3osALYdtEmk=;
	b=OSrycEQA72zjF0i0V2E6kxuuhw+HjrGKIRvFDSl1ME2H8YZxFo0FY4cy5oWSFVyyea
	Za7kO3tb8VYve3iaThgsxmx0PcLtaypu/qdhFA6ZX7dYzxw9DsNcbs71iAda0t4mb5s9
	fL0qJ63/BZCpVAUVc7sZOl0rMFziO0XKkH4DZYptWQ55qBtUn2KgAMIrQngetjEACJCX
	7upIKvnI/oSrMD9+4PO1rOZm2Sudjs1zmdSn726GWAWKprCfQXZ0Cdwok+62NarbAWgd
	91umX/H7GKeWP0+hwIAiDT5xZGAoLSRFTmjX6RzV0Z7ER8HoiVoyR+LvjA+gBnakqstk
	Ajtg==
X-Gm-Message-State: AHQUAuY8dzuMttLdIlRX2sJlOIx0fX6SF36od+BM8ceTYzhB0uU2Pwx3
	Zx0ZnyuKzC1LG6weJq0cmL+2HP7vKYC2+zih9h8EkJWn
X-Google-Smtp-Source: AHgI3Ia0jJK0/EcLI/2Fllb+PGLLe17zs9fr3jitcbOJimvPi7VfiLq8KbAk7g4iZvKmcU7uZVdz2K2kTUOiMXCbDyw=
X-Received: by 2002:a50:bae3:: with SMTP id x90mr5224033ede.221.1549392396736; 
	Tue, 05 Feb 2019 10:46:36 -0800 (PST)
MIME-Version: 1.0
References: <CAJKO-jb2UiDLEBz4B24dDYFmgMvNRK77WY18E5=M6WY9q11b0Q@mail.gmail.com>
In-Reply-To: <CAJKO-jb2UiDLEBz4B24dDYFmgMvNRK77WY18E5=M6WY9q11b0Q@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Tue, 5 Feb 2019 10:46:24 -0800
Message-ID: <CAFNP8OsHsPqg5rbeHaDgJDPpwSwy94PS_k-633Dm+Cx5Td8isQ@mail.gmail.com>
To: Brian Silverman <bsilverman@iveia.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Yocto doc typo
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
X-List-Received-Date: Tue, 05 Feb 2019 18:46:39 -0000
Content-Type: multipart/alternative; boundary="0000000000006cdb3005812a07d7"

--0000000000006cdb3005812a07d7
Content-Type: text/plain; charset="UTF-8"

Ahh... The elusive "eSDSK"... :)

Thanks Brian.  I will fix that right away.

Here is the section in the 2.6.1 manual -
https://yoctoproject.org/docs/2.6.1/overview-manual/overview-manual.html#openembedded-build-system-workflow
.
Here is the section in the "latest" (2.7) manual -
https://yoctoproject.org/docs/2.7/overview-manual/overview-manual.html#openembedded-build-system-workflow

Scott.

On Tue, Feb 5, 2019 at 10:09 AM Brian Silverman <bsilverman@iveia.com>
wrote:

> Minor typo at (eSDSK -> eSDK):
>
>
> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/tree/documentation/overview-manual/overview-manual-yp-intro.xml#n1160
>
>
>
>
> --
> Brian Silverman
>

--0000000000006cdb3005812a07d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Ahh... The elusive =
&quot;eSDSK&quot;... :)=C2=A0=C2=A0=C2=A0 <br></div><div><br></div><div>Tha=
nks Brian.=C2=A0 I will fix that right away.</div><div><br></div><div>Here =
is the section in the 2.6.1 manual - <a href=3D"https://yoctoproject.org/do=
cs/2.6.1/overview-manual/overview-manual.html#openembedded-build-system-wor=
kflow">https://yoctoproject.org/docs/2.6.1/overview-manual/overview-manual.=
html#openembedded-build-system-workflow</a>.</div><div>Here is the section =
in the &quot;latest&quot; (2.7) manual - <a href=3D"https://yoctoproject.or=
g/docs/2.7/overview-manual/overview-manual.html#openembedded-build-system-w=
orkflow">https://yoctoproject.org/docs/2.7/overview-manual/overview-manual.=
html#openembedded-build-system-workflow</a><br></div><div><br></div><div>Sc=
ott.</div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Tue, Feb 5, 2019 at 10:09 AM Brian Silverman &lt;<=
a href=3D"mailto:bsilverman@iveia.com">bsilverman@iveia.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
>Minor typo at (eSDSK -&gt; eSDK):<div><br></div><div><a href=3D"http://git=
.yoctoproject.org/cgit/cgit.cgi/yocto-docs/tree/documentation/overview-manu=
al/overview-manual-yp-intro.xml#n1160" target=3D"_blank">http://git.yoctopr=
oject.org/cgit/cgit.cgi/yocto-docs/tree/documentation/overview-manual/overv=
iew-manual-yp-intro.xml#n1160</a><br></div><div><br></div><div><br></div><d=
iv><br></div><div><br></div></div>-- <br><div dir=3D"ltr" class=3D"gmail-m_=
6676523203314493863gmail_signature"><div dir=3D"ltr"><span style=3D"color:r=
gb(34,34,34);font-family:arial,sans-serif;font-size:small">Brian Silverman<=
/span><br></div></div>
</blockquote></div>

--0000000000006cdb3005812a07d7--
