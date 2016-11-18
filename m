Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 959A0E00AB4; Fri, 18 Nov 2016 07:27:13 -0800 (PST)
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
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.182 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DBCEE00A49
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2016 07:27:11 -0800 (PST)
Received: by mail-qt0-f182.google.com with SMTP id n6so158953142qtd.1
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2016 07:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=C0i6rbJS6aDzSuR/6kbvuxMgaFxnrsBI4NKcmlYqYZU=;
	b=1JfIvGEOv+/Su1mZwc4DF9d7aONOU1WcTKHDJvtVh9B1leC/FXhcXRSgUYSD/dqF39
	9WUBx1rKJVnbIIw+u1Hmj+O1O06v28jkBIv7cXf9OMA+UT5XKydV4kwFlBQg8y5yACZf
	uqTmP6uyFFptTvmaMZtRvVIG5vU8kDynOUiyyHtjMh4GWqbhGakcJN0IGEKwJ37zAME1
	3SEKfC2IwdXuv3l3Kw5vnvI05uiAXpg95A3GhnWH2OY+cxj82Kk2IblyAz/3XECsHU1U
	G1xqkLG0A8Z8X+YCX4zRhsCWpbJPsRBI+FyMSsRe40EurmlzdzG7yiid1DnBp5EI2Lxh
	GWqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=C0i6rbJS6aDzSuR/6kbvuxMgaFxnrsBI4NKcmlYqYZU=;
	b=IOePajnnnYtLjLykGns3FQwqEP+jxVDkLP7P3HmdblXiqqVbL12romFujMOFHhTKwv
	h1z41m12wv5o4QRsXgaFwrsb6N9B0z93tQmRfQYXpJFfeVDpdFGzXbvV6NYPX7g8Ju4l
	SFlOF+AALovnSKw8EaeSYFbdpF7zVurTcpFe/HXmbt2A+i7C8h8DtZGYUIa6KirW4HRj
	8cXw+xN5ShBZCO3zckURjg39jw4MgZUuYtfi8rV2e5zkYBkP6VqsKo3MJgiZwn3J5clk
	rIFYW5/RTd5cbZ92sZ4nNlXlWDWiF7/QY1gI1ZnJNPdS0ySOVlv5SX/Y9YNqO5VYSRhi
	Q9+A==
X-Gm-Message-State: AKaTC02GZkxXEKrOeqLj74YQY21Vl351qXFtl4Qja1cmvWwJy7XVw62vyEZDC5EoGiIPHHG6qPJhnrIKRn+1YGY3
X-Received: by 10.200.57.54 with SMTP id s51mr195781qtb.68.1479482831218; Fri,
	18 Nov 2016 07:27:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.85.136 with HTTP; Fri, 18 Nov 2016 07:26:50 -0800 (PST)
In-Reply-To: <30C2D590D16A5C46ADFE6521910377987FF82A5C@AZ-US1EXMB02.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377987FF82A5C@AZ-US1EXMB02.global.avaya.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 18 Nov 2016 15:26:50 +0000
Message-ID: <CAJTo0LacMwtnaKuRkZMnR0va1V94zLhP9kdS_QE2ej5Q6dY9yw@mail.gmail.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: uninative vs. BB_NO_NETWORK
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
X-List-Received-Date: Fri, 18 Nov 2016 15:27:13 -0000
Content-Type: multipart/alternative; boundary=001a113a01e89b3e65054194f061

--001a113a01e89b3e65054194f061
Content-Type: text/plain; charset=UTF-8

On 18 November 2016 at 14:58, Vuille, Martin (Martin) <vmartin@avaya.com>
wrote:

> Currently using Yocto 1.8, planning upgrade to 2.2
>
> Per the Reference Manual, "The uninative class is now enabled by default
> in Poky. [...]
> With this class enabled, a tarball containing a pre-built C library is
> downloaded at the start of the build."
>
> We have to build with BB_NO_NETWORK = "1"
>
> How will this interact with uninative? Do we have to download the
> pre-built C library
> to our local mirror, like other package tarballs?
>

First this only applies to Poky, so you can chose not to use uninative in
your distro, or disable if it you're using Poky for some reason (it's a
reference, create your own).

But yes, download the tarball and drop it into your mirror, that should
work.

Ross

--001a113a01e89b3e65054194f061
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 18 November 2016 at 14:58, Vuille, Martin (Martin) <span dir=3D"ltr">&lt=
;<a href=3D"mailto:vmartin@avaya.com" target=3D"_blank">vmartin@avaya.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":2w3" cla=
ss=3D"a3s aXjCH m15877f6bab99d835">Currently using Yocto 1.8, planning upgr=
ade to 2.2<br>
<br>
Per the Reference Manual, &quot;The uninative class is now enabled by defau=
lt in Poky. [...]<br>
With this class enabled, a tarball containing a pre-built C library is down=
loaded at the start of the build.&quot;<br>
<br>
We have to build with BB_NO_NETWORK =3D &quot;1&quot;<br>
<br>
How will this interact with uninative? Do we have to download the pre-built=
 C library<br>
to our local mirror, like other package tarballs?<br></div></blockquote></d=
iv><br>First this only applies to Poky, so you can chose not to use uninati=
ve in your distro, or disable if it you&#39;re using Poky for some reason (=
it&#39;s a reference, create your own).</div><div class=3D"gmail_extra"><br=
></div><div class=3D"gmail_extra">But yes, download the tarball and drop it=
 into your mirror, that should work.</div><div class=3D"gmail_extra"><br></=
div><div class=3D"gmail_extra">Ross</div></div>

--001a113a01e89b3e65054194f061--
