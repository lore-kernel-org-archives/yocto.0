Return-Path: <ross.burton@intel.com>
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09006E00A71
	for <yocto@yoctoproject.org>; Thu, 27 Mar 2014 06:45:41 -0700 (PDT)
Received: by mail-qg0-f42.google.com with SMTP id q107so2842873qgd.1
	for <yocto@yoctoproject.org>; Thu, 27 Mar 2014 06:45:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=fLEqM9nFJWl2FbUsyUUhf9YEwBLvWe8q+MTqje5qAOs=;
	b=JqfEH5b3oSTB9GydA1UPOIk7BJ7fov9SsKUbQnNxCJTf3RWeneCDNumwtLmPOwED/u
	mlbC0XcJ8AkynKZ3KzEfHO56BefdhPycgzRCWBV+x8ILhmfWbjNMBNGBtLtcoIwGd2bv
	td/16y9rRMap6ufVt4oj+JSBqrxLKK9dRGUM4nknlOAAdPb6Cudcr5JNVB15IB68lUNu
	6Q58+Xgfg8b5InsdD59ombwymufBeFNGjWunYhfo5QkjZT9vMlYVNX6+21y7+qek31ts
	JkVvpnq0Q2D//6F0dmPSSKPOueDkyaG/fUOykjK67dWBV70sONc3CYbbGHYC2ZRpWLCr
	Qvww==
X-Gm-Message-State: ALoCoQm5GR9BOhhcoJJtm6AqyhojSUREfbcRHhDMPwb0xSSpSb5RtalAS4bNpMXrqskzDlPgjUkJ
X-Received: by 10.140.106.195 with SMTP id e61mr2056212qgf.66.1395927940449;
	Thu, 27 Mar 2014 06:45:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.167 with HTTP; Thu, 27 Mar 2014 06:45:20 -0700 (PDT)
In-Reply-To: <E4938C0D959B3445943720B88F072134156124E7@NDA-HCLT-MBS02.hclt.corp.hcl.in>
References: <E4938C0D959B3445943720B88F072134156124E7@NDA-HCLT-MBS02.hclt.corp.hcl.in>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 27 Mar 2014 13:45:20 +0000
Message-ID: <CAJTo0LbH0Jt=JffvU7g-LAo3pn=hnDxd6hG+3Rj0uf6CY-ZdKg@mail.gmail.com>
To: Meenakumari Shedole <meenakumari.s@hcl.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help-Gstreamer Vaapi Plugin Issue in 1080p mp4 playback
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
X-List-Received-Date: Thu, 27 Mar 2014 13:45:44 -0000
Content-Type: text/plain; charset=UTF-8

On 27 March 2014 06:58, Meenakumari Shedole <meenakumari.s@hcl.com> wrote:
> filesrc-> decodebin->queue->ffmpegcolorspace->xvimagesink

Try just using playbin2 instead of constructing a pipeline manually,
there's lot of smarts that you'll need to do manually otherwise.

Ross

