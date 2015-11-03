Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6207EE00B72; Tue,  3 Nov 2015 00:40:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CE18E00B4A
	for <yocto@yoctoproject.org>; Tue,  3 Nov 2015 00:39:59 -0800 (PST)
Received: by qkcn129 with SMTP id n129so3571693qkc.1
	for <yocto@yoctoproject.org>; Tue, 03 Nov 2015 00:39:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linaro_org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=xoQVoONfCNot/ualLgb1wGnZRBjfi3n/lMvbOKtrdNM=;
	b=Q//N6tFVQSOw8bs1PJl2H++/uIMYKGmB/k5HmUrpcRTo6DfzXzWx8AACp4Wn3JpWkI
	vZbDZZpRJr6gJI5hm/OkX+3y/VMx5JQIRCNhtrAZSzZbVC0jw0iAAbDghYT51+b2IyZL
	X84bJEr631rn2TDwQqOCOly7RdEIH4VRkgvohuCfqYuQoXvxxGQnQJAtbgovARQyST0B
	t+mGTYElWbIvfm4WZU5e5N5Dd6S+D+Dzx/DpGd7hDY3sYwWg365ZiZO9O/fzbGdDZnhv
	DezfrcMSNpvX5+I/4GiBkZqKF2ppdb4FPYBYjBX5qkTbzJ3L64UxQpFtbP/ZFu7Z4nqW
	VKtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=xoQVoONfCNot/ualLgb1wGnZRBjfi3n/lMvbOKtrdNM=;
	b=dGPmKRPz9Z8w7HtM08W9nUYK7A8zVGaGKWWyqHIS6v1jnyPTnSyDyEJDNC8Sx8nqrQ
	R7PDXc2+jGdZBiQ/zFZAnBISgr/dG3LlGyngmCse2bDyLPHfXxH+H2beyuwl2bGnK1zk
	CYnAzy0Y2O+c+d6MmQwX3zqoLvcZ61ub3eDC46ll0PY4e9oQZNdiRc8l4XSpHbdO1QzH
	M8wxSGUXlnJo4T4MEwH9wf+ELh0Ri21TOUBKxA29poMRiE9UiLscC8A2oSsmQQj562wx
	AZNzWT63FgSmICcrbSpieVWbfLXNL48JL8jseBvy37O9s9McyhhRmVwBmgvUz21Ghdka
	Zb/Q==
X-Gm-Message-State: ALoCoQkwwLGGBeF0BqXSl4Jc9WvZ4kJgqpCiEMpcah5+JXylWRKQaBCYauQ6LL4zNCwmqJ8nIKga
X-Received: by 10.55.217.27 with SMTP id u27mr10396771qki.55.1446539998773;
	Tue, 03 Nov 2015 00:39:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.98.227 with HTTP; Tue, 3 Nov 2015 00:39:39 -0800 (PST)
In-Reply-To: <563786DF.4010800@ni.com>
References: <365E1805BC95084CBE82381A0B86999401095F873E@EU-MBX-01.mgc.mentorg.com>
	<BD314512-DA81-48D9-B50D-4C41BD927127@gmail.com>
	<365E1805BC95084CBE82381A0B86999401095F8E08@EU-MBX-01.mgc.mentorg.com>
	<365E1805BC95084CBE82381A0B86999401095F8E8A@EU-MBX-01.mgc.mentorg.com>
	<20151018095759.GA12999@bang.betafive.co.uk>
	<CABcZAN=TTO_ebMjr_5nsxM42MTewQQb6Nz-uH_9eLdHq002bvA@mail.gmail.com>
	<CABcZAN=9iN6bbjLLw7OtzuU7uogri+qS83auYnGRz_MT=ifjcQ@mail.gmail.com>
	<365E1805BC95084CBE82381A0B86999401095FAD92@EU-MBX-01.mgc.mentorg.com>
	<562BC58D.4090600@ni.com>
	<CABcZAN=8F6m+7Y4pBfumuoiEqsTRS7+Bpiug7yfOiNkBxU4emQ@mail.gmail.com>
	<20151024191940.GB15983@bang.betafive.co.uk>
	<CABcZANknQrWzB_bQd22buyzyt-bHZJ-KpfJz1RvvCKNMjZNmvA@mail.gmail.com>
	<CAP71Wjx33cy24gCXyn1AKi_Uj+AQ=syAcO5J5dBJRWfKitHjcQ@mail.gmail.com>
	<CABcZAN=qGSV+Oj258boXfP0mUQ32pcx4JNyna1mG02Hr6tWKHA@mail.gmail.com>
	<563786DF.4010800@ni.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 3 Nov 2015 09:39:39 +0100
Message-ID: <CAP71WjzrrCTqWcpNHuoY1tVE2vEgSYpeG2uhQtZVx_n-SpRBCA@mail.gmail.com>
To: Alejandro del Castillo <alejandro.delcastillo@ni.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Christopher Larson <clarson@kergoth.com>
Subject: Re: opkg 0.3.0 or rootfs task
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
X-List-Received-Date: Tue, 03 Nov 2015 08:40:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 2, 2015 at 4:53 PM, Alejandro del Castillo
<alejandro.delcastillo@ni.com> wrote:
>
> > No, there's nothing else you need to do. The patches fromPaul change th=
e opkg download cache to use checksums rather than the entire url as the fi=
lename, which avoids the file name length problem.
>
> The patches are under review on the opkg mailing list: https://groups.goo=
gle.com/forum/#!topic/opkg-devel/UzDigiuKBcs. I asked Paul for a small modi=
fication on one of the patches, once that's done, I will pull them into the=
 opkg repo (and we'll need to update the opkg recipe).
>

thanks. It works, after I pulled these patches:

       file://0001-md5-Add-md5_to_string-function.patch \
       file://0002-sha256-Add-sha256_to_string-function.patch \
       file://0003-opkg_download-Use-md5sum-of-src-URI-as-cache-file-na.pat=
ch \

So, basically I took patches 2,3 and 4 from the series.

Any chance to get these patches in jethro? Or more generally what's
the plan to get them merged?

thanks a lot!

nico

