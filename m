Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7966AE0086B; Mon, 22 Sep 2014 05:11:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qc0-f173.google.com (mail-qc0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCEFFE00869
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 05:11:22 -0700 (PDT)
Received: by mail-qc0-f173.google.com with SMTP id i8so6067137qcq.32
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 05:11:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=q4GgarUtFwUK6Lz1ajjEtRDd2ORah+7vJMb05+MczA0=;
	b=KN7xCp8h/8/ydv2PkIrR1nsk4XmTzSypr/y/cXMuJ9cUeVGEfxZGohAl1FnQPg5ihj
	uZ08WCVV73JRJ9SdHlT2+MSlP1KacniycrtOvwk6hS5JZYPa48wK6jXoOSC989FQ6mAW
	S4uTzaTMfDaSCSP8TDMin3KcBFQFCJZSHS4vZGGPWLRmWbx4lZyELfhxUpbt4/dGJyj9
	K7xX5sCJ43ybBkj+nu2EQvoexY5Sqnd8m2BFIlCViZAM7rwkeDp+KHuZyLxxIX15HJZc
	njfyrxd9Fa1dxyDyv6ctFxHzbGYVCAm3skhf5Em7iYSU22bsFV4QJNWqRFjhJ7GPBDYO
	rc6w==
X-Gm-Message-State: ALoCoQn21DYWKrbeVIxtqk6+yBV+QFVGltTV/RsISV2n4vSDRj3ejMppuIsAkr36ldYhBMPUE7l9
X-Received: by 10.224.103.65 with SMTP id j1mr21866767qao.17.1411387881981;
	Mon, 22 Sep 2014 05:11:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Mon, 22 Sep 2014 05:11:01 -0700 (PDT)
In-Reply-To: <CAJrRHk6fuL=44SCQuwZRBfbvhvYw6_g=0Uf3Tw=yFowe9KDvWg@mail.gmail.com>
References: <CAJrRHk5Kt5eqoTH_cnD8Px+NKe99cSLOb7b_1q4am_d=eDnWuQ@mail.gmail.com>
	<CAJTo0LZFP0i+LSYdE35cDNS3ZN4GEkFinoyQ6bTEA0E8gLvnFQ@mail.gmail.com>
	<CAJrRHk4pjaLTwO8ggUoQKs4ALVY565rU2SvcTyAYsSmm=jHvTQ@mail.gmail.com>
	<CAJTo0LZVPdNsbrnqgSfdarqi0bjiJDNOAmb5wgvRhOOy7qkYyg@mail.gmail.com>
	<CAJrRHk6fuL=44SCQuwZRBfbvhvYw6_g=0Uf3Tw=yFowe9KDvWg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 22 Sep 2014 13:11:01 +0100
Message-ID: <CAJTo0LaKrQmFh_SzprfhpMUBQ5zCuG2M6-tSHayW90NxdnkrbA@mail.gmail.com>
To: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Nothing PROVIDES nativesdk-krb5
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
X-List-Received-Date: Mon, 22 Sep 2014 12:11:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 22 September 2014 13:05, Joseph Andrew de la Pe=C3=B1a
<jdelapena@lexmark.com> wrote:
> Yes, our recipe is depending on curl. The dependency chain is
> (nativesdk-our_unit, nativesdk-curl, nativesdk-krb5).
> The recipe needed curl for certain functions. It works perfectly for nati=
ve
> but when it comes to nativesdk, there is the disconnect. Why is krb5 not
> seen in sdk but no error is seen for native?

Okay, different question.  Do you want and need your curl to depend on krb5=
?

Ross

