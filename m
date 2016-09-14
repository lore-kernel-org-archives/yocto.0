Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43003E00A48; Wed, 14 Sep 2016 07:50:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81549E00A21
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 07:50:33 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id m11so24959628oif.1
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 07:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vkokbx+zxbkcc+zlH6TjznROjhCJYUJ3MgpngDUMT1A=;
	b=YdeIxsXyy6lB3BzzWElZIZ+7MhiFbNYwbMYHsMOJlsA1txV/2WyQCuIAkw8iH4aieQ
	YomIKSw8OlPhtKx0A5hcZmNJddGkVIwfViPVPet9aeBFJROGzWPdXhCBUq3w+9LpYMD5
	4II/HRBVtDAWkrQkCaONl2uWrXwmy1dNZ+lm6ud9DG2sXYxUZPEyJJ7dg3YadFwrrp4h
	926u7na2sRwrvoB7bTdEc52S7QAQPOui2Ce16qSXXCgJt+PcOH0nnlqCJzFQZoDt6pGu
	lA5Tg5+wS5ekLxAiRbEzWp5cOFcKIE8ueeFo89vSp8RCHr98Bev8ZuuHjlpG6cEfAyxp
	Imxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vkokbx+zxbkcc+zlH6TjznROjhCJYUJ3MgpngDUMT1A=;
	b=eCMDltWVfW3KNjpm63Imtummiko2+gN0ped6kM0zknBsxvBWmBQF9Vb0hFnOm98XPK
	dGvmGGVKScocc3nmqUk05d+G1Hf+tG4TmpycLgsTyNT8n1e3zFVVLKnia4S/OyjY6qQT
	Ge5mgJPJL38VJ3uLgMudzUuOOmXQjvV57rnXNYh0LpAwc0JCO3t2/xnZZtmqntVPkp0h
	EGtoZpaXhXwjpUSokuskfhVPqnwrGpexDBTOyFCzkV0nM+PJaIOLej0ZBZSMTENB+SXL
	IpGGU0z6ib9csGOw3XUbZxDbMlbU57N5+lHKuoAoU2sN/wLKZq6DQDNqKc2FoT9Rb9cv
	YLvA==
X-Gm-Message-State: AE9vXwPpDH4EAJxaJFNQeoC+02aevK2G2SlY0EMmRKVNEKbvVH/oqYHNZX1Ca47R3Amy2LKBBG/9iCMsbR6BgD5L
X-Received: by 10.107.35.13 with SMTP id j13mr6820090ioj.189.1473864632566;
	Wed, 14 Sep 2016 07:50:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.27 with HTTP; Wed, 14 Sep 2016 07:50:12 -0700 (PDT)
In-Reply-To: <DB23C91B06C303459B24BC3208AF424A20F82247@MBX114.d.ethz.ch>
References: <DB23C91B06C303459B24BC3208AF424A20F820DE@MBX114.d.ethz.ch>
	<CAJTo0LbmE1u1rfe8prA-Mv8bhyOkf2sKesEVQV42DqnLvc-8Lw@mail.gmail.com>
	<DB23C91B06C303459B24BC3208AF424A20F8216B@MBX114.d.ethz.ch>
	<DB23C91B06C303459B24BC3208AF424A20F821AC@MBX114.d.ethz.ch>
	<CAF3SDA6XyxtCNhKRZfPfdNVgvqAMyosBjfbUUpf=msjVPdyQPw@mail.gmail.com>
	<DB23C91B06C303459B24BC3208AF424A20F821C8@MBX114.d.ethz.ch>
	<CAJTo0LbkjuCFqmzUx0uWVd+dMzA9U3_u56HANcDpkV_hyLMuTw@mail.gmail.com>
	<DB23C91B06C303459B24BC3208AF424A20F821DF@MBX114.d.ethz.ch>
	<CAF3SDA7JQ8hNVipjsYzgp2AOcesAiph66aNXmdVKWT+9HDxHqw@mail.gmail.com>
	<DB23C91B06C303459B24BC3208AF424A20F82247@MBX114.d.ethz.ch>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 14 Sep 2016 15:50:12 +0100
Message-ID: <CAJTo0LaM90asKkN0cEzAF+ksLxbD09iEHuovHjiDydZOTdtPig@mail.gmail.com>
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
X-List-Received-Date: Wed, 14 Sep 2016 14:50:38 -0000
Content-Type: multipart/alternative; boundary=001a1140292adf72e2053c78d95e

--001a1140292adf72e2053c78d95e
Content-Type: text/plain; charset=UTF-8

On 14 September 2016 at 15:48, Anicic Damir (PSI) <damir.anicic@psi.ch>
wrote:

> it turns out that something HAS changed in my system/libraries (but not
> Python itself),
> influencing python urllib2 to fail, although wget, chrome, firefox, ...
> worked
>
> Fortunately we have another python version installed, and with that one it
> works again.
>

I wouldn't be surprised if you just got the Python 2.7 security fix which
means it verifies certificates by default, and your distro doesn't have
working certificates for Python.

Ross

--001a1140292adf72e2053c78d95e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 14 September 2016 at 15:48, Anicic Damir (PSI) <span dir=3D"ltr">&lt;<a =
href=3D"mailto:damir.anicic@psi.ch" target=3D"_blank">damir.anicic@psi.ch</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":35i" cla=
ss=3D"a3s aXjCH m157292bd4a52c4e6">it turns out that something HAS changed =
in my system/libraries (but not Python itself),<br>
influencing python urllib2 to fail, although wget, chrome, firefox, ... wor=
ked<br>
<br>
Fortunately we have another python version installed, and with that one it =
works again.<br></div></blockquote></div><br>I wouldn&#39;t be surprised if=
 you just got the Python 2.7 security fix which means it verifies certifica=
tes by default, and your distro doesn&#39;t have working certificates for P=
ython.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"=
>Ross</div></div>

--001a1140292adf72e2053c78d95e--
