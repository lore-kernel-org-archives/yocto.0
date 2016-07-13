Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80DD4E00D34; Wed, 13 Jul 2016 02:39:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D640E00D15
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 02:39:45 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id m101so41043852ioi.2
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 02:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nULETUaNzAbqa51WNo7cmKNuoAikeCnZFLS3fMVFx6M=;
	b=J1PiLunIOKkEPLn+QpA6x68KiIHsPJaTBqn/rA4kr+jrHNkZ3KxU/jze2PsUf84KNW
	LHZKC83iGqUFjG8e1LL0i6aVAzaLDiOIVCcoEnhf4jjuh8tGDwwlBZ7/fNVgYtAkxaBC
	Jx4eJwzTWIwql8KVGkFHgQWvhW2PZG2aMwpYdtARuvN2gQNwbbRQduLkEf6lESbP7mbD
	cNjsHOkUOk4SUNMRklbt5TuXC9kEc28mEw4bccOfEFzUIMe3+gqz4eb4+a5NeqRRtp+k
	Lex8I2rBLKECzNMvGOIFBA8OpzwhVDjb3eCZF8HH9dFvbn8qKRbdlO50u1yKIC+Lgw91
	O8+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nULETUaNzAbqa51WNo7cmKNuoAikeCnZFLS3fMVFx6M=;
	b=IBc2AMGWYNMUKk+3IdwUI7/bTytcsRjhwmmHo0IJ3zS3gZyWDrCu/QaXDDix45ywaq
	Hp70dXHzzaNx9Qfa5M1cshI/mVmQVhgouuMgr8ikx4MHoiYtGzimy7R7Z3fKBgUC1HCM
	3S630I7jq4k7EwxZCdLrjPVMoEMo/5uM1H6DkeAB9VQcbg3nqrb/3jHGiIOO67fIoO9G
	6B5qSdrjeTxlEDnA85b1kJ7ZBqASfaAKnnAV7RP8Tag7xu2lZFa2svJ+0TeA42Heps/n
	7GHzrXMClqT2H/2Rd59H8f1T8cW+ye2EqJsuI5Gi7x+i9D8bdIV+3j9bzxB5nUcTqjaC
	8YRA==
X-Gm-Message-State: ALyK8tJspgODFikQlqTvVMMzXd2LiPR0acstHJUhk21Gcp+gGAK2q31OO5mscw7qv6r+XD9YZrsuEtuZOB2WPxZO
X-Received: by 10.107.154.210 with SMTP id c201mr7360784ioe.99.1468402785276; 
	Wed, 13 Jul 2016 02:39:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Wed, 13 Jul 2016 02:39:25 -0700 (PDT)
In-Reply-To: <7d83b2b9-98e1-c612-9e52-df5674fa9ff5@fos4x.de>
References: <7d83b2b9-98e1-c612-9e52-df5674fa9ff5@fos4x.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 13 Jul 2016 10:39:25 +0100
Message-ID: <CAJTo0Laa+9CL1k_nn9PRDyAKZOExBVoJ8otoikC4DD4pYVfeyw@mail.gmail.com>
To: Christian Fuchs <christian.fuchs@fos4x.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding dependency for rrdtool-perl to recipe
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
X-List-Received-Date: Wed, 13 Jul 2016 09:39:48 -0000
Content-Type: multipart/alternative; boundary=001a1140fab66769b30537812a57

--001a1140fab66769b30537812a57
Content-Type: text/plain; charset=UTF-8

On 13 July 2016 at 08:37, Christian Fuchs <christian.fuchs@fos4x.de> wrote:

> From the error message I guess that the perl library for RRD is missing in
> sysroot. The library is built as part of the rrdtool recipe, but it is
> moved to a separate package called "rrdtool-perl". How can I tell bitbake
> to install this package before building my recipe?
>

If you want to actually use the perl module that rrdtool built, then
DEPENDS=rrdtool is right (you depend on recipes, not packages) but you'll
also need to inherit nativeperl so the sysroot perl is used instead of the
host perl.

Ross

--001a1140fab66769b30537812a57
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 July 2016 at 08:37, Christian Fuchs <span dir=3D"ltr">&lt;<a href=3D"=
mailto:christian.fuchs@fos4x.de" target=3D"_blank">christian.fuchs@fos4x.de=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":4wh" c=
lass=3D"a3s aXjCH m155e3329e16ca3ff">From the error message I guess that th=
e perl library for RRD is missing in sysroot. The library is built as part =
of the rrdtool recipe, but it is moved to a separate package called &quot;r=
rdtool-perl&quot;. How can I tell bitbake to install this package before bu=
ilding my recipe?<br></div></blockquote></div><br>If you want to actually u=
se the perl module that rrdtool built, then DEPENDS=3Drrdtool is right (you=
 depend on recipes, not packages) but you&#39;ll also need to inherit nativ=
eperl so the sysroot perl is used instead of the host perl.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1140fab66769b30537812a57--
