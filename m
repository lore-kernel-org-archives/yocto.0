Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07B7DE00C1D
	for <yocto@yoctoproject.org>; Thu, 17 Apr 2014 11:09:20 -0700 (PDT)
Received: by mail-ve0-f182.google.com with SMTP id jw12so914504veb.27
	for <yocto@yoctoproject.org>; Thu, 17 Apr 2014 11:09:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=oiC72DCtkpQyXVqSrma2HvEhzxIQkKcaKdMmDVkglzs=;
	b=kN/CFHRP3eLUpZ+rbRRkNPiXS4TCpcU98erbaQLOmcAj5Qw4L8fwS3wKl0ChIi7xPH
	04oprf2PrPCTsbx1AOQFzFvhnHjclwVKtzQCw9jFixZukTmKH8uq1okbe0iCkGuCg9F5
	XiKRmSjMXXyvQ+l1ml+UMavXJy0rCScOnA2aTWbZ9jim/MxvKYbd5HkVrB5S3+YfUrKD
	1WaY+YNKkd0KYEc8hQyl1qdtqutNJBD83fQmzqr4zXnwtDySzzuBk0+cwDzdKcvrDFSq
	VkA0y0su3lRQ91ZxJQ0mfqlRqG2VNzqbP+M9b4KunS0WGoFqCSF5ckDIKkXNQrUgXC/9
	6VuQ==
X-Gm-Message-State: ALoCoQkE08SUsq3lapfiOqYqM2Zahc4tcVPx4v4WQYmLDp3wHF0xXXFDjLJ8ALkL0/aXFLPxfY7Y
MIME-Version: 1.0
X-Received: by 10.58.201.5 with SMTP id jw5mr12428039vec.6.1397758160264; Thu,
	17 Apr 2014 11:09:20 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Thu, 17 Apr 2014 11:09:20 -0700 (PDT)
In-Reply-To: <CAPphmgbuaWBpsSszJ=5e+g=pjeE97_9XU5a7JQbzOfM-VQTQrQ@mail.gmail.com>
References: <CAPphmgbuaWBpsSszJ=5e+g=pjeE97_9XU5a7JQbzOfM-VQTQrQ@mail.gmail.com>
Date: Thu, 17 Apr 2014 11:09:20 -0700
Message-ID: <CAPhnLPAOc2mN3-QhG0BM5jN5ENCHXfP52hi6ETbrj=OLOU8jWQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Jate S <jatedev@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: autobuilder repourl by commit
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
X-List-Received-Date: Thu, 17 Apr 2014 18:09:23 -0000
Content-Type: text/plain; charset=ISO-8859-1

Jate,

You can use the 'hash' property. Just make sure you have no other
branch/tag properties in the repo description.

So, something like this should work:

repos: [{'poky':
            {'repourl':'git://git.yoctoproject.org/poky',
             'hash':'7831ae829103ab283645'}},


On Thu, Apr 17, 2014 at 10:23 AM, Jate S <jatedev@gmail.com> wrote:
> I am customizing the Yocto autobuilder for my own project. I would like to
> specify a checksum for the repourl for poky. What property do I need to add?
> I have tried adding the property commit, but it does not appear to work.
>
> Thanks,
>
> - Jate S.
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

