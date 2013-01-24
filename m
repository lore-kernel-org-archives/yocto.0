Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 447EFE014E0
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 10:05:52 -0800 (PST)
Received: from mail-vc0-f199.google.com ([209.85.220.199])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 24 Jan 2013 10:05:48 -0800
Received: by mail-vc0-f199.google.com with SMTP id fo13so6942110vcb.10
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 10:05:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=/tLieCNwqtYx5VNCwnAGHUvOE7E2QoBKmqyTsAVP8hI=;
	b=BLvyMnhoBYyuZveu0hO7x6jTBAMsuhFHC0BnrRI9EN4Et6w+EscS++xC8I9nMPVIR+
	tdH0vV/Vqzvqvft4ps+q/JdjOvAWCCeMldJUsfeo5o8/7WKVA4gxEiDOSBBAl1Qzxpu3
	68jL3UBD/1vnTPY7dozPRE8prHx5H0g05fQLzJVPyF8TNRzhp/cuQ8PK4oMNLRUTyRTz
	Qeyzm31XDVDGBBJmIME0IjMNT3anZ/gK9u6CCd3u4RuzFt83UfXZ2HlhJfgo1UbYyHY7
	fyZ9N0Dub8ZyiGQFYQhJF8YSBGZRSoQ69G5pqJwDH8ZLu0ecg38f1yHu21VEbx0GPCSV
	1LEQ==
X-Received: by 10.52.76.7 with SMTP id g7mr2535813vdw.95.1359050746483;
	Thu, 24 Jan 2013 10:05:46 -0800 (PST)
X-Received: by 10.52.76.7 with SMTP id g7mr2535801vdw.95.1359050746377; Thu,
	24 Jan 2013 10:05:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.151.207 with HTTP; Thu, 24 Jan 2013 10:05:26 -0800 (PST)
In-Reply-To: <CAHUNapRWoA5q_vpaZarV2keT6wfMWj8U1J7YAzbZ=zbRGfiSSg@mail.gmail.com>
References: <CAHUNapRAcCu=82B3JX0WQweEhz0-m+5sYhdR8gtX+U3UyiKnkg@mail.gmail.com>
	<CAJTo0LZGXAgvCMDD4B+12JTSb_tjNS3xn0mrabFb5DSob8AJnw@mail.gmail.com>
	<510092A1.6050009@windriver.com> <51013BCB.8080208@gmail.com>
	<CAHUNapRWoA5q_vpaZarV2keT6wfMWj8U1J7YAzbZ=zbRGfiSSg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 24 Jan 2013 18:05:26 +0000
Message-ID: <CAJTo0LYuSXZvhuGGY57SEy92-NuS1_y2QAJp9hTGaiMt+1LQWg@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Gm-Message-State: ALoCoQlNR+S8WFHewTkX7WdbCj+Ks83NTnvWaevG4xfROIWVOm0e4CKvmRdlkszPOBnL9AwUdfqNgJ8DFam5/rdAasVtO4rYdt6PFAv1sUZHjavy6rJxuCwbzfPJ2WeOqBKd1MSzbKDm/2AsSuBL9PD2xE+3DDBj3g==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: install and use "bitbake -c populate_sdk"
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 24 Jan 2013 18:05:52 -0000
Content-Type: text/plain; charset=UTF-8

On 24 January 2013 17:12, Trevor Woerner <twoerner@gmail.com> wrote:
>> how can I "extend" the
>> target system to use the rest USB disk space? ( it's FAT file system)
>>     or how to modify configuration to force build the .hddimg create ~"8GB"
>
> By default a certain amount of overhead is applied to the final image.
> So the scripts figure out the size of your image and add a certain
> overhead.
>
> In your conf/local.conf you can specify "IMAGE_ROOTFS_SIZE" which you
> can set to the size, in kB, you want your image to have. But if you
> image (plus overhead) would have been larger than this size, then
> you'll get the larger + overhead size you would have received had you
> not specified IMAGE_ROOTFS_SIZE.

Or just set IMAGE_ROOTFS_EXTRA_SPACE, in kb.  I always add half a gig
to my images.

Ross

