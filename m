Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65BB3E0086E; Tue,  6 Dec 2016 10:27:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51B8EE007A2
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 10:27:36 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id a20so23234847wme.2
	for <yocto@yoctoproject.org>; Tue, 06 Dec 2016 10:27:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=j2CBHFo1QZrrSHWeD8bHweQAx30XYfAo4aaYIunOqq8=;
	b=jy1xUJ3gOs9wAHaU1upJzE70bvHvoNeCweY2iVS31erkIRetxp/RtwwqOjnxXFVByO
	SWm0mT62/ZFgkcAvqE1g7UonhYaGh+ireVKl1m6Q1uQUJUWnRfnXaLHfqDUcdMTV+BoG
	wH8dvXcBXxTr/FDjzKJvHhK9+EoHd0YTaEqiZKGNEr46AlNSeFcX4RB+9eBtH9B7Maje
	CxeX/wy/PqJ/5Z/fHXG9OVKI59tBSvgNe6fs9h0OOiXrRzc4cT4qqjdLkuLOuD8lh+gh
	8w2+NfsaaX2ngap8Qk+b8nneyowhgMHJtJBwL5+l9PyLIgasMTh09xMSu00rxAd67QBb
	WZMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=j2CBHFo1QZrrSHWeD8bHweQAx30XYfAo4aaYIunOqq8=;
	b=AwqolM1517r/1uqmU4xLxnKn44expgqU4CaVlXzYJzzaZVWbCHc18dg//aXd3pB4Yk
	kA3mpGsEG1RXKxyGaiqm6OHfsA0yZ6BHvowDQfuPB36VvXWRNe+M1/G3gkH0SemRfthA
	pw+MrdoUrXjH+3sf5FM2yAqm3o+JpomLsbPpWPilqjCHOhyy2kUo7yngRA3WpL9oGiuT
	xBKyaAftE3SsPFSCPAL+1kaC4xhZY+9px4ZndAVSQ53dIlQid2rWXvxtwLBVQNoaH5O/
	Chc7+Giti6pvvPlvTlE0S0aRhET2XTKmsiz9mIFKo3vYqz53azFlynWfEDngbkBk4iWL
	z2Dw==
X-Gm-Message-State: AKaTC00nvIdgqQttjRBPNV7l5PkwWNipfM6iH5aWuj2YQvUKvZWmnAOHNqAxw0O7xYbgYg==
X-Received: by 10.28.170.202 with SMTP id t193mr3740647wme.10.1481048855464;
	Tue, 06 Dec 2016 10:27:35 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	t82sm5294383wmd.17.2016.12.06.10.27.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Dec 2016 10:27:34 -0800 (PST)
Date: Tue, 6 Dec 2016 18:27:32 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20161206182732.GI1636@carbonA>
References: <20161128190745.18053-1-twoerner@gmail.com>
	<2ACF0BDF-0A7B-4A0E-BC20-B6B222F1644A@gmail.com>
	<20161129013709.GA30326@openSUSE-i7.site>
MIME-Version: 1.0
In-Reply-To: <20161129013709.GA30326@openSUSE-i7.site>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi-base.bbclass: allow -rt kernels
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
X-List-Received-Date: Tue, 06 Dec 2016 18:27:39 -0000
X-Groupsio-MsgNum: 33327
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="l0l+eSofNeLXHSnY"
Content-Disposition: inline

--l0l+eSofNeLXHSnY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Nov 28, 2016 at 08:37:09PM -0500, Trevor Woerner wrote:
> On Mon 2016-11-28 @ 03:16:11 PM, Khem Raj wrote:
> >
> > > On Nov 28, 2016, at 11:07 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> > >
> > > If the PREEMPT_RT patch is applied, the kernel version becomes, say,
> > > 4.4.32-rt43 (instead of 4.4.32). This confuses the version handling code in
> > > this class. Update how the version string is processed so that trailing rt-
> > > strings are properly handled, in addition to handling the existing cases.
> > >
> >
> > This probably will solve the issue I see with 4.9-rcX recipes that are in my tree on kraj/master
>
> I'm not familiar with the issue you're seeing, but the existing and new code
> are looking for 3 int()s separated by periods. If your recipes have the string
> "4.9-rcX" then I'm guessing there might still be an issue since the third
> int() will be "-rcX" in your case. If this is true, you'll need to take a look
> at where "int(min_ver[2])" is used further down in that bbclass file.

I agreed this is not the best implementation of this. We should only get
the version using a regex that would get X.Y.Z-R with an optional Z and
R.

--
Andrei Gherzan

--l0l+eSofNeLXHSnY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYRwMUAAoJEHO76Gt+erfPjKQP/3xPcL8rST5O2A35RYl8TPGx
i4Dp3uCpbrbIhffFvO/3fT2GGhy6kNe0dW31uORJBg+HPeY49URDWT3NYU5mvzos
cC1mV3VyKeAbTlBmkk3S3xBqYxqcxxzyLbGAP4OcafhxUrJqAfuNPErlg7N4+f5z
Af9pqAjuA1m+cM7uP9aL/m+AU2d9Q2A1/T+B0+1hzkHFpdCjQL3jEaOkKe7NFg6D
mo0k/XUl2QhkltBuwubMQ92aAERPpvelG/M9p8KaQXDpUoU3TqrInzLlfd5v4IF/
ugSLHVPykKsP7tJXwye8QkmBPpKPuGaI947JJsWSQkx/g/t+2jgTpAhJok6zeKC/
Oy1nHWnfmv9MzwmPKw70pTwl1irW2PeuC+U/TWw70BtxzXYl0E0Pb8nn+9Qi2uC3
u4kb8ewxE93+uHxH4ovtfYFE2ylwx1dMOBpmpxov7D0XIL+lhyAskCR1/xUWXsTa
zTIhQJ48LYxpyrU6MYDa91G90oQZZIrItpE0Ij1tjkgbmBpkSf7zzrIfnzxgmIuY
nxIMGOATKZ/2gVGP8mlND68OSG7Pi8xu/7Vrmf1SYmwf+/p4ice1Qyd3ciRJh52c
LM+Z8kazDWj0xt/kyeGPTyHpgAlhrgOi1mdmv4mzH95KHajWdkU2B21KGonvZfx9
rCBQGSw0Jbw91daXGTPP
=gsdQ
-----END PGP SIGNATURE-----

--l0l+eSofNeLXHSnY--
