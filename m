Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 892A0E00D7D; Fri, 26 Feb 2016 06:59:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53C66E00C30
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 06:59:30 -0800 (PST)
Received: by mail-ig0-f181.google.com with SMTP id hb3so36039492igb.0
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 06:59:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zvhBEqJ1iccrnaqPnJBWcYkmErAS8FbDPnfKcxnRBgs=;
	b=Ex8+ykY4vTyeuSxAzflObNoOfn9u/7wgXmyYZ1/V1qmRug5nDYCvtuTg9KSGt+cqVZ
	cKumlu6G6oWvesY9o2ijlPE/2IiXp73QEUOF5SWxtfLbNhqA/U2hqHMy2mSykUUA0zCK
	rWbexcXc+UPk/z+20B2JUntizN4ZVg4u2jCVrZj5EuJb/OUOhpVmSHiV7G/l0a/EarYx
	RTfFpU0TeVg14eJfuskT4JHhTN5AMMWWVQPLqdzF2/A1GFHf/2EQJ5OTerBHRp5STJKm
	kstnnn5sXt5HeczNNI8podYxWGwWFjLsMfCvgYfNwNXId6NgcsspH0u5wvlfzMekJi1q
	DW1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zvhBEqJ1iccrnaqPnJBWcYkmErAS8FbDPnfKcxnRBgs=;
	b=iWnTXKYIx3PKzvV0hRN89ZruXV9B86qBgN03pakGMraJvOeDJ8y5tAkA0bgWLMvOsQ
	6HQ0b9g+nU4xrV9IQb+fP7KtosfGVSCVyMfOdtgVde4rf1RJQuB/yMyaNfpKKZMLeYYK
	8Im8j2yrkFR0FP0zbvLFRfeVwmgOrvCCeNIJFdeCmYZClDR/ZOmhHkm96r3UIB3Qyvif
	1/kT9N2Vu1VzT14swrjGXn6gx+gFCW12iWvEoXITOVlU98H/xOF1cPta4HJCFIdPw+cp
	WU46K2aXZwyiZniFKvnVdNeyIex4UIPJcDCkA9UvqW9T0Rxy1WM+nE6v+/NcNXNL8qHl
	VSsg==
X-Gm-Message-State: AD7BkJLeXq4uA3GQVmAhWH+FGScSD6B1604VPWDxozX0lbJUiev/x4iVl6jd2gEVH8Lno2aoGJmE02PlwGZyfsUb
X-Received: by 10.50.78.227 with SMTP id e3mr2989345igx.64.1456498769265; Fri,
	26 Feb 2016 06:59:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 26 Feb 2016 06:59:09 -0800 (PST)
In-Reply-To: <CAGuQk8r+6GN_Oy9D=e5nGJL4mxNgCR8Xj=N_D38KEKr1j=sj_w@mail.gmail.com>
References: <CAGuQk8r+6GN_Oy9D=e5nGJL4mxNgCR8Xj=N_D38KEKr1j=sj_w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 26 Feb 2016 14:59:09 +0000
Message-ID: <CAJTo0Laa9UKt+gELcy_LcD2eGUPsq_mKmfKx=zXZJeVcsOWzfg@mail.gmail.com>
To: Marius Liebenberg <mdlcameras@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Source for recipe on local drive
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
X-List-Received-Date: Fri, 26 Feb 2016 14:59:34 -0000
Content-Type: multipart/alternative; boundary=089e0111b734c24545052cad8b4f

--089e0111b734c24545052cad8b4f
Content-Type: text/plain; charset=UTF-8

On 26 February 2016 at 14:55, Marius Liebenberg <mdlcameras@gmail.com>
wrote:

> How do I get all the source code for a specific recipe onto my local
> drive. That is without sifting through all the config files to try and get
> url's
>

"bitbake [recipe] -c fetch" will just run the fetch task.

Ross

--089e0111b734c24545052cad8b4f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 26 February 2016 at 14:55, Marius Liebenberg <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:mdlcameras@gmail.com" target=3D"_blank">mdlcameras@gmail.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>How do I get al=
l the source code for a specific recipe onto my local drive. That is withou=
t sifting through all the config files to try and get url&#39;s<br></div></=
blockquote></div><br>&quot;bitbake [recipe] -c fetch&quot; will just run th=
e fetch task.=C2=A0</div><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra">Ross</div></div>

--089e0111b734c24545052cad8b4f--
