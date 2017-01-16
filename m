Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B432CE00805; Mon, 16 Jan 2017 07:41:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.175 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C813E007A7
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 07:41:01 -0800 (PST)
Received: by mail-qk0-f175.google.com with SMTP id a20so122691733qkc.1
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 07:41:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wCOGE8ve/D49Haj6O4fpRqAW0+Afa6KgN2CqrZ6KQ98=;
	b=IWxRoBTugn4YNmFpsCapKBWxbTUNKYQioTwKM6Qf8G4lPvw6zR+sKGcezj9BynnHZq
	qQC9egt+qJdqvoa/0CtiF3ul27PYuuJhuGuBmj/RCQUfPe/BAHRyfo//HvIufr5fvbkz
	UysT+F9ESubF56PZuJydmXwpJvwzGiDEKnt+k22nTrRrmbHoXdu2twsyTnLBBzu/9cvy
	V6xrQKa/Hj2dOtUICDDoWmybyKWstlhErsmffpN7nlYO+XGjBpzAamp55n41PAwPv8VS
	ari7my911i2KdKWJkkyDxJdfiy9cOUHftkH4VPba6n9lOE8hHSuFsZ6rjyR33Q6P0hzN
	GRlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wCOGE8ve/D49Haj6O4fpRqAW0+Afa6KgN2CqrZ6KQ98=;
	b=rpOhyd6C4jkXE/2h/wf1Ir8jBtFlB7/rTGVfamNs7VrHveqOX/ht4j24tDQLFDUpGp
	7dpv2bwXkAPebLM+ARNCh8/D3fMU5sMHBWmwT+BrRyr/JRP7dry0IBv0CGi0PykZz/xw
	iZ8wIrZnz6XW3EzlemyEOnGw6l1743t1FdILOqq1pMogpZmRIaoEXXyVgqDE40rzBlfC
	cfkh7moyKBVrAK6FF3BeTEQiSyzuL2atqe+JU5EKPtSOUGo+TcPSvGLNFIQI424nqokB
	nbD2HSvS2Uv/qMT2MZJnsCaLsMf17oLaNlsAVHci1lwdJ06tNOd0SwAtupZW8RUA0auG
	CtJQ==
X-Gm-Message-State: AIkVDXL6t3DqeCz0qDlqk4zHUnHLItLbhtHKPeiUuOf09Fq8JFEnRA+K+6KnUt8uJ3VDxqVam89YYbA7a0gNexaL
X-Received: by 10.55.31.24 with SMTP id f24mr29674086qkf.221.1484581261421;
	Mon, 16 Jan 2017 07:41:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Mon, 16 Jan 2017 07:40:41 -0800 (PST)
In-Reply-To: <MMXP123MB0125453F658E5DDFDDBD3FECDA7D0@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
References: <MMXP123MB0125266F42AF93B43F4F1BD7DA7D0@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
	<CAMjhiJh+bbE1v1FRSWtaRoY+ncCxhr7Oqgb07soTfiipU6Qy8Q@mail.gmail.com>
	<MMXP123MB0125453F658E5DDFDDBD3FECDA7D0@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 16 Jan 2017 15:40:41 +0000
Message-ID: <CAJTo0LaSMudTXAh5AzsqTb+rU2Cyc66UoE0jY48SJaW24hCdmQ@mail.gmail.com>
To: Chris Trobridge <christrobridge@hotmail.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Illegal Instruction Generate for Intel Atom
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
X-List-Received-Date: Mon, 16 Jan 2017 15:41:04 -0000
Content-Type: multipart/alternative; boundary=001a1147e2baba432705463802d8

--001a1147e2baba432705463802d8
Content-Type: text/plain; charset=UTF-8

On 16 January 2017 at 14:47, Chris Trobridge <christrobridge@hotmail.com>
wrote:

> Managed to get the actual compiler lines and the initial args are "-m32
> -march=i586" but there is "-march=native" appended to the end of the line.
>
>
Looks like asterisk itself is adding -march=native, so you'll need to dig
through it's makefiles and work out how to disable it (or just delete them).

Ross

--001a1147e2baba432705463802d8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 16 January 2017 at 14:47, Chris Trobridge <span dir=3D"ltr">&lt;<a href=
=3D"mailto:christrobridge@hotmail.com" target=3D"_blank">christrobridge@hot=
mail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p>Manag=
ed to get the actual compiler lines and the initial args are &quot;<span>-m=
32 -march=3Di586&quot; but</span>=C2=A0there is &quot;<span>-march=3Dnative=
&quot; appended to the end of the line.</span></p>
<p></p></blockquote></div><br>Looks like asterisk itself is adding -march=
=3Dnative, so you&#39;ll need to dig through it&#39;s makefiles and work ou=
t how to disable it (or just delete them).</div><div class=3D"gmail_extra">=
<br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1147e2baba432705463802d8--
