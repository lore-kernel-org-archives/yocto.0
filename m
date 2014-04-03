Return-Path: <ross.burton@intel.com>
Received: from mail-qa0-f43.google.com (mail-qa0-f43.google.com
	[209.85.216.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D24E6E00B6D
	for <yocto@yoctoproject.org>; Thu,  3 Apr 2014 07:42:21 -0700 (PDT)
Received: by mail-qa0-f43.google.com with SMTP id j15so1727004qaq.2
	for <yocto@yoctoproject.org>; Thu, 03 Apr 2014 07:42:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=8kf0khb4Lxu9Zdj7HvoTS5noebSwRoSgmdyPX3NAiIQ=;
	b=FFPV0yAgz8YVxzlHRYN4Al5J/szy576AcBAF2kzmpGnlYK88FPRRckFe9cUprwe6BI
	n2iun08KhfF4xm4HZrJ2uLVP2eAbdiQewe363IZcOsOxvcuug+iywIg5oZEaYvOqZxJz
	BS+qrSZ1BD+Zyw06Vml8KV0sxSzkjkmdQtv6ovpwPGk9VZwu2g3KE00WI4yVWnwd3AZv
	f2JI5XkRdgqKytcO+R48rZ1QX7Tt++KcBOkVsQLXRl3EkpaqjJYsjR/lK4IUCyqTItq9
	vLaoiuAo0JcscaFNcsw0NKbKKlRlRQ9/Ifa7mT0sW06dFYQvcZzxME1sE7pe+uioK9Cn
	XtqQ==
X-Gm-Message-State: ALoCoQlariZsGmg6Cu0qGYhliJLJM71b7UlvXgxznC3h8ik/XqJiESdiDCm0XalyqOOxqx/nFdJ1
X-Received: by 10.229.219.133 with SMTP id hu5mr7914865qcb.5.1396536140673;
	Thu, 03 Apr 2014 07:42:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.167 with HTTP; Thu, 3 Apr 2014 07:41:59 -0700 (PDT)
In-Reply-To: <E4938C0D959B3445943720B88F07213415615920@NDA-HCLT-MBS02.hclt.corp.hcl.in>
References: <E4938C0D959B3445943720B88F07213415613522@NDA-HCLT-MBS02.hclt.corp.hcl.in>
	<CAJTo0LY5VVCZbimtTBNdgDCEB+1mwSwdsVH31ik8GSdheg48OQ@mail.gmail.com>
	<E4938C0D959B3445943720B88F07213415613B44@NDA-HCLT-MBS02.hclt.corp.hcl.in>
	<CAJTo0LZt8JA25fpeCxbkdMH44rcNtKKE8vPvhrnPN8iLMcJYAA@mail.gmail.com>
	<97272D6808818244BD88BD72F19D658B03CAC1EB@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
	<E4938C0D959B3445943720B88F07213415615920@NDA-HCLT-MBS02.hclt.corp.hcl.in>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 3 Apr 2014 15:41:59 +0100
Message-ID: <CAJTo0Lbsm-UvHQ7E1fLMAP=nHk2pzOf7+kZGWr96rTg+7e1DNQ@mail.gmail.com>
To: Meenakumari Shedole <meenakumari.s@hcl.com>
Cc: Dipesh Karmakar <Dipesh.Karmakar@hcl.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 03 Apr 2014 14:42:24 -0000
Content-Type: text/plain; charset=UTF-8

On 3 April 2014 07:59, Meenakumari Shedole <meenakumari.s@hcl.com> wrote:
> gst-launch-0.10 playbin2 + mp4/avi is failing with following error,
>
> libva: VA-API version 0.32.0
> libva: va_getDriverName() returns 0
> libva: Trying to open /usr/lib/dri/i965_drv_video.so
> libva: Found init function __vaDriverInit_0_32
> libva error: /usr/lib/dri/i965_drv_video.so init failed
> libva: va_openDriver() returns -1
> vaInitialize failed with error code -1 (unknown libva error),exit

In this case you'll want to start testing with the lower-level
utilities in the va library packages.  I haven't tested this for a
while but it certainly worked when 1.5 was released.

Ross

