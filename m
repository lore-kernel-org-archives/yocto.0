Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72B3FE00BDA; Wed, 24 May 2017 07:20:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f171.google.com (mail-qt0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A3B3E00BE0
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 07:19:52 -0700 (PDT)
Received: by mail-qt0-f171.google.com with SMTP id v27so156258408qtg.2
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 07:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=F/AqGRpU1nJIXCr6X6nSVrhkN1OutCKmmWJbFbZ/bLg=;
	b=UVINNWWkegMxYYfw82YmDk3jVRijYK72UuF5Rq/yJKDkBxC6KGU/+OzhMmFSKsFHN2
	6eKQSoEzwocn0qlUmeKcIa3q1IbTLgilH6ABfq3OEAPCU5JzqhFNv2MktXmdbCc3Px0l
	cH6QHJ+TcaXs9YEUvn7HGU5Ei+ImfORIhFfto=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=F/AqGRpU1nJIXCr6X6nSVrhkN1OutCKmmWJbFbZ/bLg=;
	b=cD9f1qiZIsoTRWFZk+YlPztBAF80OYeBjgpZUM92GobTnmDC7PJnsm/oHkcSI1/mum
	LgRmOouGiWvJUDI1Oudo/QRb1yP1tzbY0cS4rMNGrxyDmangFtFLQ2m+5gIIR8wxUiwq
	6xiR9eQGU5+L4InP6YBynypTCPvQqQBCSxLF5CI6ln/fJAtXVErSwH9nEzzN+JD199ME
	JmukcpPm6H9vR+4ieqUuf59qQRY1MN9BufQatkyJGjVhgaUQlXPFWJNs1GfmB1Uyyiuw
	PXuamOD2Y3WkBDO/69B9jANYV52TlMSrOAyX+ST/SWA/MqXAgoIIhTuEEYOehtlCdR0o
	DEnA==
X-Gm-Message-State: AODbwcCiJIeTupHI1NVXA1lBFMn3XtLqkwf7ubsUHLbCROwokCg1Y9O+
	0k+twhd1njwiv/3TazUtP2W9RfqTsxmh
X-Received: by 10.237.35.69 with SMTP id i5mr37475148qtc.25.1495635592068;
	Wed, 24 May 2017 07:19:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.88.135 with HTTP; Wed, 24 May 2017 07:19:31 -0700 (PDT)
In-Reply-To: <DM5PR0101MB2953820AFBD0E9A6B212933BB6FE0@DM5PR0101MB2953.prod.exchangelabs.com>
References: <DM5PR0101MB2953820AFBD0E9A6B212933BB6FE0@DM5PR0101MB2953.prod.exchangelabs.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 24 May 2017 16:19:31 +0200
Message-ID: <CAP71WjyDHzecX1UTEkHSgJDud3G-3g9D0RvsOBCZkoAvtxPy_w@mail.gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@xevo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dynamic-layers?
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
X-List-Received-Date: Wed, 24 May 2017 14:20:02 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, May 24, 2017 at 12:30 PM, Takashi Matsuzawa <tmatsuzawa@xevo.com> wrote:
> Hello, Yocto.
> I am a bit confused with dynamic-layers included in some of the recent
> layers in various BSPs.
>
> e.g.
>
> https://github.com/Freescale/meta-freescale/blob/master/conf/layer.conf
>
>># The .bbappend and .bb files are included if the respective layer
>># collection is available.
>>BBFILES += "${@'
>> '.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bbappend' % layer \
>>               for layer in BBFILE_COLLECTIONS.split())}"
>>BBFILES += "${@' '.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bb' %
>> layer \
>>               for layer in BBFILE_COLLECTIONS.split())}"
>
> In meta-freescale/dynamic-layers, there are browser-layer, efi-layer, etc.
> for conditional inclusion.
> And I think they are included only their names (browser-layer, etc.) are
> BBFILE_COLLECIONS.
>
> Question here is, who will be adding 'browser-layer' to BBFILE_COLLECTIONS
> when I want to include browser-layer in my build.
>
> Is it something to be done in my local.conf or customized distro conf file?

what that means is that recipe from the dynamic-layers/<layer> will be
parsed/added *only if* <layer> is already added in your build
environment. e.g. if you have meta-qt5 in BBLAYERS in
<build>/conf/bblayers.conf, then the recipes from
"dynamic-layers/qt5-layer" are used as well.

This is mostly to allow a BSP layer to be used with as many
combinations of layers as possible.

