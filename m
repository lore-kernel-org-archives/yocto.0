Return-Path: <ndec13@gmail.com>
Received: from mail-oa0-f51.google.com (mail-oa0-f51.google.com
	[209.85.219.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F936E014D3
	for <yocto@yoctoproject.org>; Fri, 26 Apr 2013 01:52:06 -0700 (PDT)
Received: by mail-oa0-f51.google.com with SMTP id k14so3741082oag.38
	for <yocto@yoctoproject.org>; Fri, 26 Apr 2013 01:52:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=iC/g/KxyrYrGFrLnHQrxKo3lwUam7ZWXU4ZWxJP0TEE=;
	b=GxPmFx6EUlY/nCr0+LnJtTkcAEyOKS++gPcq1rsdYvHmRxxFOoimDoTLD3MTZw+fN6
	8FFGMf1vK9UCIDxE2qN/pg4+pzO1Fn7GlLS9nhlfCIWJnQ6SK0dnv+v8Z/tRlA8Sy+WP
	1+nadgN225ZcHu/PN36zVFyfbsBe8/izCEDegghoJn1Hhp+6MmGZZlppQ6DfpOoqVCvV
	X5jPd/NhT7mL/lvKUs9vEL+wUSTjNNfzNXX8zkxigkiKsQ0ai7EW95fHlqsSNm4Hkhun
	8CcwhdtBPdXtVIGvBBsD+WG8rl9pU1DuuAy08/DF7TpVmEXmCO9ByDHXbelg7Yj7YppL
	wFCQ==
X-Received: by 10.60.83.70 with SMTP id o6mr17596710oey.81.1366966325664; Fri,
	26 Apr 2013 01:52:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.27.170 with HTTP; Fri, 26 Apr 2013 01:51:45 -0700 (PDT)
In-Reply-To: <5179AE16.5070201@windriver.com>
References: <CAOT3miJ_akhKUidZi-0NsA-h7bMtOSrFm+BxGadopC-4qDb1gw@mail.gmail.com>
	<5179AE16.5070201@windriver.com>
From: Nicolas Dechesne <ndec13@gmail.com>
Date: Fri, 26 Apr 2013 10:51:45 +0200
Message-ID: <CAOT3miJcqmfPmA6bE24XK7mEoNRO4MVR0uKQsS28Ch1pXJ2Nhw@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Compliance program questions
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
X-List-Received-Date: Fri, 26 Apr 2013 08:52:06 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Apr 26, 2013 at 12:28 AM, Mark Hatle <mark.hatle@windriver.com> wrote:
>>   - is it tolerated to change the versions of some components from
>> OE-core or meta-oe? Not just add patches through .bbappend, but
>> actually use an older or a more recent version of components, let's
>> say Gstreamer for example?
>
>
> If you change an upstream repository, oe-core, meta-oe, meta-yocto, etc..
> You should submit the patch to the appropriate upstream.  If the 'change'
> has been backported from a newer version then it's already been submitted
> upstream. (Good process here is to document the commit ID of what you
> backported, so it's easy to show compliance.)
>
> This holds true on .bbappends and new versions of things.  Note: if you put
> your new version of the code in your own custom layer, you don't need to
> submit it upstream for compliance.  (But I recommend you do as it will make
> long term maintenance much easier!)


I don't think i will change 'upstream' repo, in fact i don't even
think we will redistribute (copy) the upstream oe-core and meta-oe.
but we will need to use older version of some components (and perhaps
newer version too sometimes). so I was planning to add the recipes for
the older versions of an existing component into our 'distro' or
'extras' layers.

as for .bbappend, i think we will only use bbappend to add non generic
patches and/or alter the build configure options, none of that would
need to be upstream, i guess.

and, yes i understand that if in that process we happen to package new
components, we will try to 'upstream' them in oe-core or meta-oe, for
sure.

