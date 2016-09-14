Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBC42E009DF; Wed, 14 Sep 2016 05:47:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.45 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BABCAE009CD
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 05:47:45 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id n143so21727134ita.1
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 05:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5eEqWFGLXeEMaVbvE+BQC4/LVbME/PZdfhK0GW1ahmo=;
	b=RyBcWUBLxCIyvEWWmQXwXgby+OKM3uZ6E4LFox50NDTHDhToMtxjJOkKPGTgf0LtsK
	obFF9VNYA4f26gqNSOE7mV77UNLmkpLXFpvHHDQaHMuakk5zxMdtqkfdK4yKZDICjsjQ
	1wHR9nXO0bqutqrQ4FvAsCZ6rTmmpQisJKDzCchU3BudNl+CH8H9cQm2YmLw2OMkS49S
	LGVfRfJjwNAMi3nHCilEZ2llK+3Ldph2blLR/u4znfV3VQui0IhAOGgzROe3xaB5xb97
	GT7OklSkz/2jPyZosuVvMGIlhsqXAC2lm3TWnFhrPJ7Lr+UHZhWOcpjY8SHr0a36WM4v
	+VnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5eEqWFGLXeEMaVbvE+BQC4/LVbME/PZdfhK0GW1ahmo=;
	b=bTPt5pTlyktYKy0Hf67OXdEqLqW03FyNxYjvHQDEu4laFASvT0cc9uOdokC73JFoi0
	KyUXAkQGURhwYeS4eurlue1OMcQSDtlTZJwHqitzvZAwogGHD9bLmvM+PW+YNdTDysaT
	QrouRkwRstVxj5MCDSM9OfK6JXyqXP2IK3pPzLM3XwmOxLmCvkRXYdjuKQNu0/3MxrC5
	qtew6+HNmenj/I13JfLogaC/7cq8RpWjS76aqOyagRsP2YS/O95jFlw5UerIkV9S0s9H
	iGyZi/rf663NFqsLk3T1bbUHnZuzcVOD7RHzzVOCPzfUtKezTucR9ENK18higeiW2iA3
	Og+w==
X-Gm-Message-State: AE9vXwNtuFmvz+egeYY0W+Mz1fKYg2chyNQjAqll2sIoi+OXJPFJAkUHVc+RJwjbk57w708cJpFrDmHRti0ZrV8I
X-Received: by 10.107.129.18 with SMTP id c18mr5755678iod.40.1473857265216;
	Wed, 14 Sep 2016 05:47:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.27 with HTTP; Wed, 14 Sep 2016 05:47:24 -0700 (PDT)
In-Reply-To: <DB23C91B06C303459B24BC3208AF424A20F821C8@MBX114.d.ethz.ch>
References: <DB23C91B06C303459B24BC3208AF424A20F820DE@MBX114.d.ethz.ch>
	<CAJTo0LbmE1u1rfe8prA-Mv8bhyOkf2sKesEVQV42DqnLvc-8Lw@mail.gmail.com>
	<DB23C91B06C303459B24BC3208AF424A20F8216B@MBX114.d.ethz.ch>
	<DB23C91B06C303459B24BC3208AF424A20F821AC@MBX114.d.ethz.ch>
	<CAF3SDA6XyxtCNhKRZfPfdNVgvqAMyosBjfbUUpf=msjVPdyQPw@mail.gmail.com>
	<DB23C91B06C303459B24BC3208AF424A20F821C8@MBX114.d.ethz.ch>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 14 Sep 2016 13:47:24 +0100
Message-ID: <CAJTo0LbkjuCFqmzUx0uWVd+dMzA9U3_u56HANcDpkV_hyLMuTw@mail.gmail.com>
To: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fetcher failure
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
X-List-Received-Date: Wed, 14 Sep 2016 12:47:50 -0000
Content-Type: multipart/alternative; boundary=001a113f970abe50ad053c7722ee

--001a113f970abe50ad053c7722ee
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 14 September 2016 at 13:42, Anicic Damir (PSI) <damir.anicic@psi.ch>
wrote:

> wget https://www.exampe.com/
> --2016-09-14 14:42:39--  https://www.exampe.com/
> Resolving www.exampe.com... 69.172.201.153
> Connecting to www.exampe.com|69.172.201.153|:443... connected.
> Unable to establish SSL connection.
>

"example" not exampe.

$ wget https://www.example.com
--2016-09-14 13:46:51--  https://www.example.com/
Resolving www.example.com... 93.184.216.34,
2606:2800:220:1:248:1893:25c8:1946
Connecting to www.example.com|93.184.216.34|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 1270 (1.2K) [text/html]
Saving to: =E2=80=98index.html=E2=80=99

index.html          100%[=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D>]   1.24K  --.-KB/s    in 0s

2016-09-14 13:46:52 (18.9 MB/s) - =E2=80=98index.html=E2=80=99 saved [1270/=
1270]

Ross

--001a113f970abe50ad053c7722ee
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 14 September 2016 at 13:42, Anicic Damir (PSI) <span dir=3D"ltr">&lt;<a =
href=3D"mailto:damir.anicic@psi.ch" target=3D"_blank">damir.anicic@psi.ch</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);b=
order-left-style:solid;padding-left:1ex"><div id=3D"gmail-:110" class=3D"gm=
ail-a3s gmail-aXjCH gmail-m15728b93b1e9f3df">wget <a href=3D"https://www.ex=
ampe.com/" rel=3D"noreferrer" target=3D"_blank">https://www.exampe.com/</a>=
<br>
--2016-09-14 14:42:39--=C2=A0 <a href=3D"https://www.exampe.com/" rel=3D"no=
referrer" target=3D"_blank">https://www.exampe.com/</a><br>
Resolving www.exampe.com... 69.172.201.153<br>
Connecting to <a href=3D"http://www.exampe.com" rel=3D"noreferrer" target=
=3D"_blank">www.exampe.com</a>|69.172.201.153|<wbr>:443... connected.<br>
Unable to establish SSL connection.</div></blockquote></div><br>&quot;examp=
le&quot; not exampe.</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra"><div class=3D"gmail_extra">$ wget <a href=3D"https://www.e=
xample.com">https://www.example.com</a></div><div class=3D"gmail_extra">--2=
016-09-14 13:46:51-- =C2=A0<a href=3D"https://www.example.com/">https://www=
.example.com/</a></div><div class=3D"gmail_extra">Resolving www.example.com=
... 93.184.216.34, 2606:2800:220:1:248:1893:25c8:1946</div><div class=3D"gm=
ail_extra">Connecting to <a href=3D"http://www.example.com">www.example.com=
</a>|93.184.216.34|:443... connected.</div><div class=3D"gmail_extra">HTTP =
request sent, awaiting response... 200 OK</div><div class=3D"gmail_extra">L=
ength: 1270 (1.2K) [text/html]</div><div class=3D"gmail_extra">Saving to: =
=E2=80=98index.html=E2=80=99</div><div class=3D"gmail_extra"><br></div><div=
 class=3D"gmail_extra">index.html =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0100%[=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D&gt;] =C2=A0 1.24K=
 =C2=A0--.-KB/s =C2=A0 =C2=A0in 0s</div><div class=3D"gmail_extra"><br></di=
v><div class=3D"gmail_extra">2016-09-14 13:46:52 (18.9 MB/s) - =E2=80=98ind=
ex.html=E2=80=99 saved [1270/1270]</div><div class=3D"gmail_extra"><br></di=
v></div><div class=3D"gmail_extra">Ross</div></div>

--001a113f970abe50ad053c7722ee--
