Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E3F9E014A1
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2013 06:18:32 -0700 (PDT)
Received: by mail-vc0-f182.google.com with SMTP id id13so1964898vcb.13
	for <yocto@yoctoproject.org>; Mon, 01 Jul 2013 06:18:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=rSlMU3sB7k8s068K/WIeRdYDBsG+6jP6Nxj6mfmn0So=;
	b=dS1AQ+JC15B/yaZD8kYoFZcf7ZrEJS0pvRF1RX0iXAmra08pwJKS3JNgMbahiKDByD
	nBo1UtMGmd+qy8UcvR05Jsj99oacWgTE5IfICL1qMqmEq67GtzXQuZMcnIWmXNyzdDre
	9+64pb3/fplw47z+HZkZrE8ck+GFg9FU9pyla5qPUMtHhSxlvtSgishOvk+TAodkQZWJ
	LnbMMzC0zo09QeJVk7C81gW2q9f91PT2+JPxlRaM2JuhfUvWqov+mwiON9i6az8n68bI
	D3eDNz5c+Y5l3eJ1HS10TtDGn0y2v76cdzOvhWARFQoxaaL/oat3vDjjP+rsCBZW8r98
	gk+A==
X-Received: by 10.58.255.229 with SMTP id at5mr9478818ved.44.1372684712226;
	Mon, 01 Jul 2013 06:18:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Mon, 1 Jul 2013 06:18:12 -0700 (PDT)
In-Reply-To: <CANwz6nxGkJQkvZv_gbP4sDpsuHOBXRqULS03Vc50a3HQ+1ktbA@mail.gmail.com>
References: <CANwz6nwTb=h0mMevpb07eHGjtaf+fKv3R7-KR=MaAhPNscQOZg@mail.gmail.com>
	<CAJTo0Lbr=eHoKyMVikEM5rkRMwqGVX187d=jU7awZqPfMo5axw@mail.gmail.com>
	<CANwz6nxGkJQkvZv_gbP4sDpsuHOBXRqULS03Vc50a3HQ+1ktbA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 1 Jul 2013 14:18:12 +0100
Message-ID: <CAJTo0LbZGH6KuvHnfA3xD2tj6Y2OL4tHfo6goJqG=4X+quJCCg@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
X-Gm-Message-State: ALoCoQkOKPnHF+Il6+T7S9IL+gemYlIXetJ+pf9izd2GY1xStdDDY3DWjD+DgXGg4TWs55dZk8Zs
Cc: yocto@yoctoproject.org
Subject: Re: Fedora 18 CentOS 6.4 yocto difference
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
X-List-Received-Date: Mon, 01 Jul 2013 13:18:34 -0000
Content-Type: text/plain; charset=UTF-8

On 1 July 2013 14:16, Edward Vidal <vidal.develone@gmail.com> wrote:
> /usr/bin/gfortran -Wall -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed
> build/temp.linux-x86_64-2.7/numpy/linalg/lapack_litemodule.o
> build/temp.linux-x86_64-2.7/numpy/linalg/python_xerbla.o -L/usr/lib64
> -L/home/vidal/POKY/build062913_dylan/poky/build/tmp/sysroots/beagleboard/usr/lib
> -Lbuild/temp.linux-x86_64-2.7 -llapack -lblas -lpython2.7 -lgfortran -o
> build/lib.linux-x86_64-2.7/numpy/linalg/lapack_lite.so
>  ERROR: Function failed: do_compile (see
> /home/vidal/POKY/build062913_dylan/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/python-numpy/1.7.0-r0/temp/log.do_compile.11041
> for further information)

That's still not the full log.  The full log is at
/home/vidal/POKY/build062913_dylan/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/python-numpy/1.7.0-r0/temp/log.do_compile.11041.

Ross

