Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A48DFE009BF; Wed, 14 Sep 2016 02:28:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.52 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.52 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2864EE009B8
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 02:28:18 -0700 (PDT)
Received: by mail-it0-f52.google.com with SMTP id n143so14959129ita.1
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 02:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=84X/Rt5utPaWuGc7FhloS4xXvBxeiq+xoUiQoBjD654=;
	b=O6mTnGaUUutOm0jEVAHvqQdTURrYBDRW10un6I3zJYmJM6cR9Nngn4aGgFLznmUl3e
	uekdp+HHQGUP2MUZJucbmzqUMoMu1BTJRwIVLD6E8paNv6C0fIi3uaIepKAVSiI/VxJU
	t4IeHgP0Is6CvVD4eUvNRxtH36La3PusN2fPL4d34djkyvAHmxR8j+AixQatBWBsS2IO
	cgFxQaKa8AYUM6yKCfKg+dljDFzdKsaq+nuU4TP0EfR6K8Ye0qO2UV7WgZ8TnIY97nCP
	kFDk+jIh0MDiTJfzW99dG7Ss/7mXUmjJrWfzJ7UVR/2GMw16ytuebGACbXIoZ73tMwWn
	OLVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=84X/Rt5utPaWuGc7FhloS4xXvBxeiq+xoUiQoBjD654=;
	b=hu/rbfGmpOlBHm/GRrCjtR0X+dGn1R9gRHUss1gQ8k1YdsMKN8n2WhPCFd8Vx13R9g
	Cj/atJHAOAElrGl5j4OGF8l+r1TjAd7meS3jonh8wTlYcEH6UjayyjJiGI85MboOH8Lo
	xVlIYaEpz7SBPLvBf04+PQexDHlp+gW4sIckMr9IdN8ABhZCOSNWVAsJyUWvQDY7jF5X
	3zjKaMYcX3oRFzi0m/QcP7CiSBL3V+VPoohpgYYOe3OQ2JpAO1e0tIu8NSqFdTQoKP9a
	upZe65VUfIktF/EslcIvWK5/oLtRMqOdmeIjqv1REf2LVeTpuEoioBUR2ATp+zb4J3Mp
	NZlw==
X-Gm-Message-State: AE9vXwOkvIIb0RAelftgpeZoTdmtt5t2ZBxNa8ImeSXYZAaJQMupKuyVPox2CSOSdZmb86wyNn5CxlRycMBrVUlM
X-Received: by 10.107.133.17 with SMTP id h17mr4142656iod.148.1473845298120;
	Wed, 14 Sep 2016 02:28:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.27 with HTTP; Wed, 14 Sep 2016 02:27:57 -0700 (PDT)
In-Reply-To: <DB23C91B06C303459B24BC3208AF424A20F820DE@MBX114.d.ethz.ch>
References: <DB23C91B06C303459B24BC3208AF424A20F820DE@MBX114.d.ethz.ch>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 14 Sep 2016 10:27:57 +0100
Message-ID: <CAJTo0LbmE1u1rfe8prA-Mv8bhyOkf2sKesEVQV42DqnLvc-8Lw@mail.gmail.com>
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
X-List-Received-Date: Wed, 14 Sep 2016 09:28:20 -0000
Content-Type: multipart/alternative; boundary=001a113ec27072e1dc053c745922

--001a113ec27072e1dc053c745922
Content-Type: text/plain; charset=UTF-8

On 14 September 2016 at 08:52, Anicic Damir (PSI) <damir.anicic@psi.ch>
wrote:

>     Fetcher failure for URL: 'https://www.example.com/'. URL
> https://www.example.com/ doesn't work. Please ensure your network is
> configured correctly.
>

This is the "is networking correctly configured" test, and if it fails in
Yocto but works from a terminal then this suggests that you need to
configure your proxies in local.conf.

Ross

--001a113ec27072e1dc053c745922
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 14 September 2016 at 08:52, Anicic Damir (PSI) <span dir=3D"ltr">&lt;<a =
href=3D"mailto:damir.anicic@psi.ch" target=3D"_blank">damir.anicic@psi.ch</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div style=3D"direct=
ion:ltr;font-family:Tahoma;color:#000000;font-size:10pt">=C2=A0=C2=A0=C2=A0=
 Fetcher failure for URL: &#39;<a href=3D"https://www.example.com/" target=
=3D"_blank">https://www.example.com/</a>&#39;. URL <a href=3D"https://www.e=
xample.com/" target=3D"_blank">https://www.example.com/</a> doesn&#39;t wor=
k. Please ensure your network is configured correctly.<br></div></blockquot=
e></div><br>This is the &quot;is networking correctly configured&quot; test=
, and if it fails in Yocto but works from a terminal then this suggests tha=
t you need to configure your proxies in local.conf.</div><div class=3D"gmai=
l_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113ec27072e1dc053c745922--
