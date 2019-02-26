Return-Path: <chuckwolber@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEBF2E00D00; Mon, 25 Feb 2019 18:18:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (chuckwolber[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com
	[209.85.221.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F94DE006D8
	for <yocto@yoctoproject.org>; Mon, 25 Feb 2019 18:18:29 -0800 (PST)
Received: by mail-vk1-f177.google.com with SMTP id e131so2620492vkf.10
	for <yocto@yoctoproject.org>; Mon, 25 Feb 2019 18:18:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=gOBgsnx6cBn68jfnYtlzEEm5mxHwrF68zDONJedFkRE=;
	b=Arj3N09vGCMv+nzLC3PQD2KJ5wR5cueo5MzJz5UZ4Qv855Ya0WNcPf+Hf2ZZUOWDWT
	cfURZoNTRYT7rE4ehO0VB567g5EJuSkem3pADzzcQwy5rrDI90+/rTOiTqB5ozh6ZYEf
	ZF8FGcSU8SK1AEyaCL+tvKH/rbWitYZwDJDbAHGjipEpqTRHu8cvPc/1y1Rg4/0zIpsC
	mjzCOFmKcFQpiH3zfxdg0H2BUXwWMURWvtG/x9OntCE0wx+YT5JHTaO0/In3obUnl0i9
	fqzGrP36/GfoeQU9+wAEsV1Pq7KzH9EJjwStffePBs7TWe64ca1Oep1HPL4PVnB/EaGF
	jGYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=gOBgsnx6cBn68jfnYtlzEEm5mxHwrF68zDONJedFkRE=;
	b=Z0t07m8f6AjiQbAfiwTSDeswxdYXE4ZTvb96uahXcrTOgHSdKjCh463FOfbKEqaSzh
	hWInAmlUPQ9fCSvf2vz4nH2zXBEcrfN1v5pzKfdoxocgv8PboNz6vsfT37FrsnTuDJqR
	GitxWj6dOElNJqHCA+U8JC2DzkPOUGutkBN3Kdw3TlP82SFbpw+m7BHNjH12jajewVd/
	kyNTX+ymZ8wgqJPg4gPEkeXRbiz4NiQPLlWORvWzcfIqwjWrNKhioywGUzyg/gUF3m10
	X9nasobj+urUdYQYmfxbWfIXiG9n0WiQL3Vex3QDxcdFzTRv4SYnf8nZfqujU0FbP3uc
	vXtQ==
X-Gm-Message-State: AHQUAuY5D+g3FZFmwPQLq/zphJYmBi1x+RM/KRAyRd4kvyWgMYmBtWgh
	AKkeUdIf3leklKXMUYmsV87Gz4EtKl198gZWHHx2FA==
X-Google-Smtp-Source: AHgI3IYRsT/iTs5q/GkxSaQWSx4lzBYnXf3vvnixkFV+B2RCn1w6jhBn4VHEc5h4rlSltO9Cb0RrzfwpTjRQDfXV4jc=
X-Received: by 2002:a1f:8191:: with SMTP id c139mr11447684vkd.24.1551147509221;
	Mon, 25 Feb 2019 18:18:29 -0800 (PST)
MIME-Version: 1.0
References: <CAHSUxjS=7_yLBOVMJLbzrtKNbGL_fKhTMh7fcOXc=wsqyZe+hQ@mail.gmail.com>
In-Reply-To: <CAHSUxjS=7_yLBOVMJLbzrtKNbGL_fKhTMh7fcOXc=wsqyZe+hQ@mail.gmail.com>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Mon, 25 Feb 2019 18:18:18 -0800
Message-ID: <CAB=6tBRV6Z1iHfVtDPDKQiHTG51EaWx_GvrB7Zf1JNK+SKpf5w@mail.gmail.com>
To: Timothy Froehlich <tfroehlich@archsys.io>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Storing Sstate in S3 success stories?
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
X-List-Received-Date: Tue, 26 Feb 2019 02:18:30 -0000
Content-Type: multipart/alternative; boundary="000000000000480fb80582c2ac78"

--000000000000480fb80582c2ac78
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Have you done any wireshark analysis on the traffic? My guess is that the
round trip with network latency is bumping your build time by a factor of
at least 100x.  The state-cache is hammered on continuously, so have
probably introduced a significant bottleneck.

..Ch:W..

On Mon, Feb 25, 2019 at 17:45 Timothy Froehlich <tfroehlich@archsys.io>
wrote:

> I've been spending a bit too long this past week trying to build up a
> reproducable build infrastructure in AWS and I've got very little
> experience with cloud infrastucture and I'm wondering if I'm going in the
> wrong direction. I'm attempting to host my sstate_cache as a mirror in a
> private S3 bucket, and I believe I have everything configured properly,
> including exposing the bucket to http requests, since I can wget files th=
at
> I've previously synced up to the bucket. However if I add in the
> SSTATE_MIRRORS to my build, bitbake slows to a crawl (it's a powerful VM)
> and barely seems to get anything. The EC2 instance is in the same region =
as
> the S3 bucket, roles have been configured properly to allow access, etc.
>
> I'm not looking for help debugging this, I just want to know whether I'm
> right that hosting my sstate in an S3 bucket should work. I've only been
> able to find one mention of it being done with no reproduction hints.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
--=20
=E2=80=9CI would challenge anyone here to think of a question upon which we=
 once
had a scientific answer, however inadequate, but for which now the best
answer is a religious one."  -Sam Harris

--000000000000480fb80582c2ac78
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Have you done any wireshark analysis on the traffic?=
 My guess is that the round trip with network latency is bumping your build=
 time by a factor of at least 100x.=C2=A0 The state-cache is hammered on co=
ntinuously, so have probably introduced a significant bottleneck.</div></di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">..Ch:W..</div><div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 25=
, 2019 at 17:45 Timothy Froehlich &lt;<a href=3D"mailto:tfroehlich@archsys.=
io">tfroehlich@archsys.io</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><div dir=3D"ltr">I&#39;ve been spending a bit too long this past week=
 trying to build up a reproducable build infrastructure in AWS and I&#39;ve=
 got very little experience with cloud infrastucture and I&#39;m wondering =
if I&#39;m going in the wrong direction. I&#39;m attempting to host my ssta=
te_cache as a mirror in a private S3 bucket, and I believe I have everythin=
g configured properly, including exposing the bucket to http requests, sinc=
e I can wget files that I&#39;ve previously synced up to the bucket. Howeve=
r if I add in the SSTATE_MIRRORS to my build, bitbake slows to a crawl (it&=
#39;s a powerful VM) and barely seems to get anything. The EC2 instance is =
in the same region as the S3 bucket, roles have been configured properly to=
 allow access, etc.<div><br></div><div>I&#39;m not looking for help debuggi=
ng this, I just want to know whether I&#39;m right that hosting my sstate i=
n an S3 bucket should work. I&#39;ve only been able to find one mention of =
it being done with no reproduction hints.</div></div><div dir=3D"ltr"><div>=
<div dir=3D"ltr" class=3D"m_8965907064107345675gmail_signature" data-smartm=
ail=3D"gmail_signature"><div dir=3D"ltr"><div><br></div></div></div></div><=
/div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=E2=80=9CI would challe=
nge anyone here to think of a question upon which we once had a scientific=
=C2=A0answer, however inadequate, but for which now the best answer is a re=
ligious one.&quot;=C2=A0 -Sam Harris</div></div>

--000000000000480fb80582c2ac78--
