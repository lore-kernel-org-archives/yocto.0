Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3556E00441
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 02:23:26 -0700 (PDT)
Received: by mail-vc0-f179.google.com with SMTP id ht10so99521vcb.10
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 02:23:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=aMJ1TorO0IHSTyz0Ai0D6KNQCOrsWqW5mCM9lCAuK5E=;
	b=koNGp/H0+qB1NZPfmtLtJW0lqhjVNRqOo9g25PF0qYDoXUZMx8brk0Bhi5fPVj6vhA
	qimnO5Fb2nvxK//wEQ19G0y3JZHSoDWUo5JA/NxrNzz4Uq04zupde+7cpcEBF7LHxBG7
	CMg69t8nOO0FdREk1wdNkVhWrGKk11ZvwLk8mDbf9HOcfbsY9D0DvJeicEjN50TAHzsX
	hvabvN92fToAOJ4kumyFtEEewMlx6OYDRHeuoLUtgBj+SlPp8dVBw1MCIll1GTjC6dzc
	zx6IBi63GS6pf92Nq58sh/feXaJPtiN1blA4gnSsqxqByQezdDfqaXP5R1Ryp17pT9S3
	ChFg==
X-Gm-Message-State: ALoCoQlSqy4JTEyVCDLsP/H0ohSNFXGp7hqwhAgoF1ls3i/P27jEYBwfsWF9eMVOMyF4te4DlLAp
X-Received: by 10.220.249.67 with SMTP id mj3mr314545vcb.23.1376990606037;
	Tue, 20 Aug 2013 02:23:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Tue, 20 Aug 2013 02:23:05 -0700 (PDT)
In-Reply-To: <CAAA4K6K7N5GpP3sJYv4BzrXEkv9McPqDptX_0D=RpmXypneFGg@mail.gmail.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C5EA3BEEF@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<37204F11-4EBA-42E9-8BC2-858EECFC2785@gmail.com>
	<AF0985D076EB244693F2CCD71AAB10BC2C5EB168F2@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<CAAA4K6K7N5GpP3sJYv4BzrXEkv9McPqDptX_0D=RpmXypneFGg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 20 Aug 2013 10:23:05 +0100
Message-ID: <CAJTo0LYbRVtEc-iCv6p3ieY_ZtdcUnYpkcHdM_1OitXNWUOqDw@mail.gmail.com>
To: Jegan Chandru <pcjegan@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build packages-ssh, telnet, alsa and other package for arm
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
X-List-Received-Date: Tue, 20 Aug 2013 09:23:30 -0000
Content-Type: text/plain; charset=UTF-8

On 17 August 2013 16:45, Jegan Chandru <pcjegan@gmail.com> wrote:
> About the image size, it really depends on what package system are you
> using(rpm, deb, ipk)
> If its rpm, the size would be big for a filesystem, and ipk would have the
> smallest size.

The choice of packaging format will only make a small difference to
the final image size, and only if you leave the packaging database
itself on the image (for example if you intend to use the package
manager to perform "in the field" updates).

Ross

