Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71947E00CBC; Tue, 26 Apr 2016 01:57:34 -0700 (PDT)
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
	*      [209.85.213.181 listed in list.dnswl.org]
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68B52E00C37
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 01:57:32 -0700 (PDT)
Received: by mail-ig0-f181.google.com with SMTP id g8so9596006igr.0
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 01:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mqdksew7TMWrKrPv53jMD9qXuEpBzEqho/buScMrCRc=;
	b=AtT1QeWt5Fb28PjTuFpxx208GvC08h7k+S+/fCVjYqieW2v6T5LfMBV7NusrpjctQF
	PxYCtnwa5R5+Cfwb9Haq0pnsSooqHGgOqj3t88rEqgyhAoziH/CW7WDISBrzEsVxcAGQ
	S/Q528mWfiY24XpMqwotFR3EUwU4sXp67e6wZQ50MGraOUKl1azx+uHfhRrCNO+MTkuo
	KQ78F19PQb/gXFhLSLAMdve7jd+oeWnhl/eyUmPz3SJJgCgD0oboDqKNw3AsiD+KLPQq
	Vsxp3MAiftnbvrOsgQ8m5iMuY6vNY/tJ0jADIBTtTeW/cxoF3zfJHmzYtMoi1HsfTKGU
	bFvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mqdksew7TMWrKrPv53jMD9qXuEpBzEqho/buScMrCRc=;
	b=WeXavn0iV1I+lu3wgngZgAq3yBKZb48M4rY81V5NRpgnd1jgILZtHVZSVjXUsf1bs+
	r0CaAVDlngYxpKfyCD5HIyHsVO9SXgAnaGW9Vm4+eBysGzNz1angmpAPY30V7ET7qFV9
	9q/r7ahxR7snIp0rMEGZ3QQTCTSpNwdIxkbh2e8LWLnSNk1M6qm7K3qfrCOO+5e2tD2S
	53+QRJHoS6Y1ZDkPaHPYoQmhWze+OJab1K6pIFqWfaq+D2Dc3yZYKsvV6LY2lf6dK9ne
	6vl3vEfiZCozjzhFG6Zps7lH7yM3A8T/wBYADEt78UbLZttWqU1QmuNQNJPCUfiSYBMZ
	DICg==
X-Gm-Message-State: AOPr4FXkUDP5qrTrUEOixZYf9l009gaMR0rfLoUFtp6/X5DSF3WXV5tqK7uEI6QUoMosUvBc6gG4lwuFRCvB5dNm
X-Received: by 10.50.18.111 with SMTP id v15mr17080229igd.64.1461661051844;
	Tue, 26 Apr 2016 01:57:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Tue, 26 Apr 2016 01:57:12 -0700 (PDT)
In-Reply-To: <BY1PR0701MB1594E5D662CBA5BFB5A38A17E1630@BY1PR0701MB1594.namprd07.prod.outlook.com>
References: <BY1PR0701MB1594E5D662CBA5BFB5A38A17E1630@BY1PR0701MB1594.namprd07.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 26 Apr 2016 09:57:12 +0100
Message-ID: <CAJTo0Laus7estW8kY9vRqW5qa_0hQmVtkRs7W3YXvvoDi1ewvQ@mail.gmail.com>
To: "Jaggi, Manish" <Manish.Jaggi@caviumnetworks.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: aarch64-oe-linux/bin/ld: cannot find -lgcc . Adding native build support for arm64/aarch64 in oe-rootfs.
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
X-List-Received-Date: Tue, 26 Apr 2016 08:57:34 -0000
Content-Type: multipart/alternative; boundary=089e014953ccc7308005315f7be8

--089e014953ccc7308005315f7be8
Content-Type: text/plain; charset=UTF-8

On 26 April 2016 at 09:37, Jaggi, Manish <Manish.Jaggi@caviumnetworks.com>
wrote:

> IMAGE_INSTALL_append = "gcc"
> IMAGE_INSTALL_append += " glibc"
> IMAGE_INSTALL_append += " libgcc"
> IMAGE_INSTALL_append += " binutils"
> IMAGE_INSTALL_append += " gccmakedep"
>

You left out the development headers and libraries required to actually
link.

IMAGE_FEATURES is a more efficient way of doing this.  EXTRA_IMAGE_FEATURES
+= "tools-sdk" will add gcc/cpp/make/etc, and "dev-pkgs" will ensure that
all of the -dev packages are installed on your image, so you can link
against anything you've installed.

Ross

--089e014953ccc7308005315f7be8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 26 April 2016 at 09:37, Jaggi, Manish <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:Manish.Jaggi@caviumnetworks.com" target=3D"_blank">Manish.Jaggi@caviu=
mnetworks.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>=
IMAGE_INSTALL_append =3D &quot;gcc&quot;</div>
<div>IMAGE_INSTALL_append +=3D &quot; glibc&quot;</div>
<div>IMAGE_INSTALL_append +=3D &quot; libgcc&quot;</div>
<div>IMAGE_INSTALL_append +=3D &quot; binutils&quot;</div>
<div>IMAGE_INSTALL_append +=3D &quot; gccmakedep&quot;</div></blockquote></=
div><br>You left out the development headers and libraries required to actu=
ally link.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ex=
tra">IMAGE_FEATURES is a more efficient way of doing this.=C2=A0 EXTRA_IMAG=
E_FEATURES +=3D &quot;tools-sdk&quot; will add gcc/cpp/make/etc, and &quot;=
dev-pkgs&quot; will ensure that all of the -dev packages are installed on y=
our image, so you can link against anything you&#39;ve installed.</div><div=
 class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div=
>

--089e014953ccc7308005315f7be8--
