Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7645FE00524; Sun, 16 Apr 2017 16:53:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.182 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DD68E00349
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 16:52:59 -0700 (PDT)
Received: by mail-ua0-f182.google.com with SMTP id h2so39162364uaa.1
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 16:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VyX8eKeSTmlU1E+HLV//lSBZBYGuTXqGMAJ7IxUc0is=;
	b=ijkbJqbznO9kE5Vy5/kZMSHscwqNd+11yAuCE+drEnrAuVcpIuWOlCXZ5iAMyTu1uv
	PlSTB7OpVWTKmnBq0BR02iyH/L7RierUNqYAgkhaNWLLGp0NIubbuNdMxQLhHOCPQ7V6
	raE8oRBYD4zX+gtVKw5eRn88TOqJ7tJChZAeb7RsrmEm7XtoF5ZhX4c2mD7iboBTD22A
	d9mwLLrcV3xRq8gaHOGY5u2skNGVt3MndBPNhAjBenM5FqJE0fBcgVa76ubUWw5mZDe9
	7RNzoxwcp6s7nEcqEsLBiDsxXZBZkFa9raBAwsBsi1Fx/NmPkhS/999BvqLQVBnOrzSe
	gYmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VyX8eKeSTmlU1E+HLV//lSBZBYGuTXqGMAJ7IxUc0is=;
	b=C7pNvFM1XoO1huTaYTp+p8J2qpwjVSWL//IUtWkFxnc1sTFW6V8uAKAofeU3xeoI21
	kMP6P3PQGlR29SnPG0s3Cf9EHpG07vdqA4jrL/NIMP8Al0IAtga4EczG48lkfjAM5Wll
	ZlR4E+qocsmJeQj2VJ/Bzpc2HFEuPd6laIFKaIDgOkMOEnAx2ujy/Bvxt4AI09u0YR9K
	4pbJS/VGD6yscv9jaqIoVnKiqTTI6YC+yBAOm6rmRgnSGt1U6jQPcv/47PH7O7FHbTqd
	XBAt+0oHdghNFO7fGoJz68Joqqm2uehXAY9It/RoOhUO3t7HMVzkZ4Ned8WO4z8aRM3l
	Nluw==
X-Gm-Message-State: AN3rC/6BW/3BvxpKRylz3KK1XaEo7bHqt7uQ+dQikYwPginLZVvM9PrS
	5mYMkI7RchkiOHwFVyPGCdlJ0y9a+Q==
X-Received: by 10.176.25.18 with SMTP id v18mr8627324uag.81.1492386778296;
	Sun, 16 Apr 2017 16:52:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.5 with HTTP; Sun, 16 Apr 2017 16:52:57 -0700 (PDT)
In-Reply-To: <20170415231603.GA20857@linux-uys3>
References: <20170415133928.GA29433@linux-uys3>
	<CALbNGRQy1Lf1=hV47Lf+u7rQUgubXjdiQWhjNJN4a3sDwr419A@mail.gmail.com>
	<20170415163537.GA23175@linux-uys3>
	<CALbNGRRDv1d3GHBNMwXHajgyx8iee4pSfNkEcKxMDiraagC50g@mail.gmail.com>
	<20170415231603.GA20857@linux-uys3>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Mon, 17 Apr 2017 01:52:57 +0200
Message-ID: <CALbNGRQsCUupm4uo=OHiRoZ+4TOfBLD8aZ5Xz5f9e_fK9ZmxLA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] gles2 on raspi3
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
X-List-Received-Date: Sun, 16 Apr 2017 23:53:03 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Apr 16, 2017 at 1:16 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> w00T! \O/
>
> Swapping out meta-raspberrypi for your meta-raspi-light works!!! I now have
> accelerated glmark2-es2 ~40FPS :-D
40fps for glmark-es2 (did you mean glxgears)? The total result I get
for Pi3 on X11 (xfce) is ~105-117 depending on cpu-governor. I don't
know what Desktop/window manager you use but for graphics benchmarking
you should disable compositor.

Andreas

