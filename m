Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDE21E00870
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2014 13:09:26 -0800 (PST)
Received: by mail-ob0-f169.google.com with SMTP id wo20so2698639obc.0
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2014 13:09:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=SfvjD55za5aRj2BM6EUdslntRzTTuKBSUojC92q4eOc=;
	b=IDvWn5LMRdOSaYQuz0943FN5JU30ZZ64E3YQGy31QDDUN46DOYOtv4mYPuHH5Wiz51
	fDTUDF+nhqFRawsd8Gy6ESDc0WI84ACClHatj7Ck1BG/lcpEO+tu1n3ZNK/gG44E2ms2
	hc19PGBnNesS3HUytEDWcoZ9w0hofo6dyxMvHp6ZPK3ucoJ5oU0/XYI7WreT8xaWag8G
	kiK7Htk2Is4guTasQqMeBjN4BRUz15FyD1gcMUppK0KXE+WvtVUC8WSd64lqljFadgxC
	TrTFuGm5CEcGUYDPB0WPcLHOBQ8zOVKL8FyYlifxPqB5xXFcDyLiKCtqb/UaVWVAtBcC
	5MdQ==
X-Gm-Message-State: ALoCoQl//WrgcA8/33/BvVJ9Ett+au8gd3aM749Ks0O62kHBlR39Y4HskfvbHNburASSNRloxSyq
X-Received: by 10.182.113.195 with SMTP id ja3mr8936181obb.46.1390511365694;
	Thu, 23 Jan 2014 13:09:25 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.182.99 with HTTP; Thu, 23 Jan 2014 13:09:04 -0800 (PST)
In-Reply-To: <CAFZh4h8D1y9-bkr3dM7Z_30FGu=8iUA8u7xMMdO3yquXR_Qbng@mail.gmail.com>
References: <CAFZh4h-zi=pDLr5JYgFeEfU72+qMRz2FJZ8iDt-Q3f=P+wVgKA@mail.gmail.com>
	<CAALGJZYWh+7D7C7FKxgWM+FAfhSDA9b4utGANj12bNd7t0aw6Q@mail.gmail.com>
	<CAFZh4h8D1y9-bkr3dM7Z_30FGu=8iUA8u7xMMdO3yquXR_Qbng@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 23 Jan 2014 22:09:04 +0100
Message-ID: <CAP71Wjypm1yPcwiEktKH=bN6fUCLtycaPQxNkdF3NbZyUethrw@mail.gmail.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to get a list of packages (with versions) used to create an image?
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
X-List-Received-Date: Thu, 23 Jan 2014 21:09:31 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Jan 23, 2014 at 9:42 PM, Brian Hutchinson <b.hutchman@gmail.com> wrote:
> Yes, but:
>
> 1.  I don't think package-index is image specific ... its just a list of
> everything that has been bitbaked on the box (which doesn't equate to one
> particular image ... it's the net of all the packages from all the images
> that have been built thus far if I'm not mistaken ... it main use is so the
> feeds work and the the target know what packages are available).
> 2.  I felt like this was probably something common and a way already existed
> so I thought I should ask in case I missed something before I wasted time
> re-inventing the wheel.
>
> Based on the responses so far ... it looks like this might not be as common
> a request as I thought!
>

no. i think it is very common, and it's the purpose of 'buildhistory',
as mentioned already. for each image generated, you will get (among
other things)

installed-package-names.txt
installed-package-sizes.txt
installed-packages.txt

list of all packages with version, sizes, ..

