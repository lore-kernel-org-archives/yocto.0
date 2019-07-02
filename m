Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9E53E00BB5; Tue,  2 Jul 2019 11:37:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BD31E00BB5
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2019 11:37:43 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id e3so39350226ioc.12
	for <yocto@yoctoproject.org>; Tue, 02 Jul 2019 11:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=dkrG9Nz8ZRCepr1+NWnQpBLCEF/oTdyVL6eQ3sdMr7g=;
	b=F16ck0219htxw8C5W1TgmmCr0zlHGHWUE5c1z+dct+DQ8dSR8VXw4w5MyMvgC+qhlG
	XCUpjabSnOOLBC0JN1MTR1zLPU5sES+I/PoFFScstTGL6yx9xzmRJeuF+ihOGz8bGGbY
	K9dEZy2DyyFEHzFAhS2iu3B4sxauf/DXU7tLtFN1RaJSq6JPUZYfYwY32qtyAgYW58JQ
	0d8qC6l5zb2b+jEC0KjAY1VbVEpSz/90iqvxUpYwkcT24IlF85AKOIoyKAp++fv5vJ3x
	cCJByYnU4qJQz2NqqHsmKQndsi7tQxAPxh66BIqvxpB8WaE+YXiDe4IhE5xQ0JT2c/IS
	NQ4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=dkrG9Nz8ZRCepr1+NWnQpBLCEF/oTdyVL6eQ3sdMr7g=;
	b=PdtVnNv83QCPgTYybtkSQv+SbHs8awr646Dv+S4cQYBlHIjDHToF8+vDx4TWH+dihO
	SZoTZmGd6smCfcuPH9ywg6MQ8bUPX3bTl1SMmcbDhajzaCj3FVoOWYxX6ZGw+ywmbUSz
	QDDeiNcYhQHVZs6BFzIv4xXn8I/MwVfqzJFnEjWWQBiIjhqNPYu8ia0nETI+Gn/H43hH
	DD5HPmAX1PLIO5KyEd0bS3VZ/8Wksht1KNZJUtTN7IRdr7RoUYaFuk//tpLzrXy424/n
	8Cfg4e2R6rDEkADSmAUlm5RmZFcmbaeDihenZZ4tDVt6EN5swH8+OheaywXnWVZzxSRR
	Ox9Q==
X-Gm-Message-State: APjAAAXtuJfzsVCAHg2DSyGr4Vb5G3I7DRqEqZoEQWMjoSPu9n+ss31Q
	yuQhnrSzC7FnUn1CioaqUFeKBQQYrJ5rtBwmX3y00A==
X-Google-Smtp-Source: APXvYqweI/0tUYEjGlQ0UU/ZUHe+mC2CH0m8z1mkg0YjtZwWKKB51sPx/3y4vumZVgRFT0y/BrKMUl8qRSbjmTm/kVM=
X-Received: by 2002:a02:b395:: with SMTP id p21mr37771166jan.31.1562092662935; 
	Tue, 02 Jul 2019 11:37:42 -0700 (PDT)
MIME-Version: 1.0
References: <2566dd81001d4f4891db00ffb2419a21@trijicon.com>
	<CAJTo0LZcAF+F5SF1ifK+wB5ZzZjDXhZHn0a-Q+7wA1FRqJRDgQ@mail.gmail.com>
	<9b82304b0ac6483b9de2eedbc6a961f7@trijicon.com>
	<CAJTo0LbvoJNCAncDpSk-yUQSN=x3Oge4R-bQJV-6MzYTKHmvwg@mail.gmail.com>
	<1f5813cde712457c8eae5ce20a5e90e2@trijicon.com>
In-Reply-To: <1f5813cde712457c8eae5ce20a5e90e2@trijicon.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 2 Jul 2019 19:37:31 +0100
Message-ID: <CAJTo0LYApGjZXeQFP+gr_55cXaKwOGahnW4Zp83M8Hj+pSNOZQ@mail.gmail.com>
To: Chad Gong <cgong@trijicon.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Poky build errors, help is needed
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
X-List-Received-Date: Tue, 02 Jul 2019 18:37:43 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Jul 2019 at 19:22, Chad Gong <cgong@trijicon.com> wrote:
> Thank you for the advice. Which folder contains the recipe? Which method is used to calculate the checksum?

Please remember to ensure the list is copied.

$ find . -name opkg-util*bb
./meta/recipes-devtools/opkg-utils/opkg-utils_0.4.1.bb

You're on a different version so the filename won't be the same.  For
the MD5 sum, use md5sum.

Ross

