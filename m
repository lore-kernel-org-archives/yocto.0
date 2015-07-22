Return-Path: <otavio.salvador@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1F2EE009ED; Wed, 22 Jul 2015 05:35:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pd0-f178.google.com (mail-pd0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04946E009BE
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 05:35:23 -0700 (PDT)
Received: by pdrg1 with SMTP id g1so138226871pdr.2
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 05:35:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:mime-version:in-reply-to:references:date
	:message-id:subject:to:cc:content-type;
	bh=x8nVlSofoIAm6YIIup5mH1rbrD3E8FLDwuR8vuo4JuA=;
	b=LoLbcUtooyslUQWlUVbLpnsuIu21sEGEX8LcuIqoURZ7RZb+WelAY5lvDz8xfLBBri
	q0paeXDPazBMDX7j+MX32arxSY9jwdsjmqe3Bzo6bFLwI5+7h6JvxZrMmUw+Q5mKFPJy
	Mf5kUgd2GPrZuXAaNURwEzMqgkHsWDEXq/5XjP4VHMcYO7FEzIyxEHBqZizRY6GVGT9A
	aY9kVi47mEUkypvglWir8PmAuyUJvso6DB0ax/xpaAXyjFkUk56AKuf6thHTCAEs5qK1
	EEnSigVKq3Jo76lts7KnJvi/0+RiayiRdnSjPRch3dEfLXEvnuzD9/GVxSUKsnL8S7VV
	PbfQ==
X-Gm-Message-State: ALoCoQlhg2qfrSslhBnbwglUV7RG2ZQACEV80mva6iFzyGEHvZ9a9hFEgFbej7O6eB1sFMoD2vBz
X-Received: by 10.70.96.194 with SMTP id du2mr5659795pdb.108.1437568522817;
	Wed, 22 Jul 2015 05:35:22 -0700 (PDT)
Received: from mail-pd0-f176.google.com (mail-pd0-f176.google.com.
	[209.85.192.176]) by smtp.gmail.com with ESMTPSA id
	ca13sm3225615pac.25.2015.07.22.05.35.21 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 22 Jul 2015 05:35:21 -0700 (PDT)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by pdrg1 with SMTP id g1so138226345pdr.2
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 05:35:20 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.70.119.41 with SMTP id kr9mr5702853pdb.0.1437568520286; Wed,
	22 Jul 2015 05:35:20 -0700 (PDT)
Received: by 10.70.59.105 with HTTP; Wed, 22 Jul 2015 05:35:20 -0700 (PDT)
In-Reply-To: <CAK5mtexxdYxhwvv-MB27Ur56iwAV8O3Y6ah_BPAo+R58NmNouQ@mail.gmail.com>
References: <CAK5mtexxdYxhwvv-MB27Ur56iwAV8O3Y6ah_BPAo+R58NmNouQ@mail.gmail.com>
Date: Wed, 22 Jul 2015 09:35:20 -0300
Message-ID: <CAP9ODKq6U0udqPvjgs1WmHNFy693O6h5Qt+hHFwnYo5nbpH1kQ@mail.gmail.com>
To: OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>
X-Mailman-Approved-At: Wed, 22 Jul 2015 14:34:49 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [oe] Bug in Open CV receipt
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
X-List-Received-Date: Wed, 22 Jul 2015 12:35:26 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jul 21, 2015 at 11:57 AM, Victor Rodriguez <vm.rod25@gmail.com> wrote:
> Few weeks ago I was having some problems with open CV receipt. In the
> begining I toght I was adding opencv tro my core-image-minimal-xfce
> just with this:
>
> IMAGE_INSTALL_append = " gcc gcc-dev openssh php mariadb opencv"
>
> Now after booting the image I realize that none of the libraries for
> open stack were added to my image
>
> What I had to do was the following:
>
>
> IMAGE_INSTALL_append = " libopencv-core-dev libopencv-highgui-dev
> libopencv-imgproc-dev libopencv-objdetect-dev libopencv-ml-dev
> opencv-staticdev python-opencv"
>
> Even last night when one of the opencv developers ask me for python
> opencv I had to add the last part python-opencv. That is not cool at
> all . If I add opencv in the beginning I assume we are more than cool
> with that and yocto will add all the packages . Unless I am doing
> something wrong, in taht case I am more than happy to get the
> feedback.
>
> Thanks a lot for all the help . If someone else can reproduce this bug
> I am more than happy to report it in bugzila (not sure the URL)

You should add the dev-pkgs and tools-sdk image features for the
image, not mangle it manually.

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

