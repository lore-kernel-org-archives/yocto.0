Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f169.google.com (mail-ve0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78619E0153D
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2013 05:47:28 -0700 (PDT)
Received: by mail-ve0-f169.google.com with SMTP id m1so3679734ves.14
	for <yocto@yoctoproject.org>; Mon, 01 Jul 2013 05:47:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=d8Nsd4c/l0tPp67S/dBMMCWTsSP2bJyVJOlxHPwIc9k=;
	b=ohbT8keWqtx4i0ERzG9d26xXdOWEmJdKggXPs1nbGxZU62K1D0qSmRv5vNhvlwpgNm
	LjA3gVdzMcJ7FXajgJhXovZy6GymTaXqvTBm/WByc4Gy2eRphsYFD7ZzAWQ1YIZNlDv7
	WkLPiuwNc0KyM/+6EPnZ7S2tm3+t4SxgR2XulNeCMe0cE5RgkWQ5c8O3mfiIV4u9ZXOg
	9D/iiFCb4iI6vRx2Gpfw6VBOKeOoNtD7ynRExfYaBirV/9KQQeRNLARBlnBmsk5G5DkP
	gSiUMydM6K4cT/P4buwWLDL/+vs/rCMTdhSqnuwSbAfWXBG1BOH/jS4Ii/4FI4yN1ANO
	QZAw==
X-Received: by 10.58.181.225 with SMTP id dz1mr9566743vec.95.1372682847795;
	Mon, 01 Jul 2013 05:47:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Mon, 1 Jul 2013 05:47:07 -0700 (PDT)
In-Reply-To: <CANwz6nwTb=h0mMevpb07eHGjtaf+fKv3R7-KR=MaAhPNscQOZg@mail.gmail.com>
References: <CANwz6nwTb=h0mMevpb07eHGjtaf+fKv3R7-KR=MaAhPNscQOZg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 1 Jul 2013 13:47:07 +0100
Message-ID: <CAJTo0Lbr=eHoKyMVikEM5rkRMwqGVX187d=jU7awZqPfMo5axw@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
X-Gm-Message-State: ALoCoQm8REjcz7FDPQormAwRmuuNdaxU2Uxn+0t6Quyjn9jR4YzoIf8GyiLpehHEUBxbtWlMMtOc
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 01 Jul 2013 12:47:29 -0000
Content-Type: text/plain; charset=UTF-8

On 1 July 2013 13:37, Edward Vidal <vidal.develone@gmail.com> wrote:
> This is the error that I get.
> | /usr/bin/gfortran -Wall -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed
> build/temp.linux-x86_64-2.7/numpy/linalg/lapack_litemodule.o
> build/temp.linux-x86_64-2.7/numpy/linalg/python_xerbla.o -L/usr/lib64
> -L/home/vidal/POKY/build062913_dylan/poky/build/tmp/sysroots/beagleboard/usr/lib
> -Lbuild/temp.linux-x86_64-2.7 -llapack -lblas -lpython2.7 -lgfortran -o
> build/lib.linux-x86_64-2.7/numpy/linalg/lapack_lite.so
> | ERROR: Function failed: do_compile (see
> /home/vidal/POKY/build062913_dylan/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/python-numpy/1.7.0-r0/temp/log.do_compile.11041
> for further information)
> ERROR: Task 1470
> (/home/vidal/POKY/build062913_dylan/poky/meta-oe/meta-oe/recipes-devtools/python/python-numpy_1.7.0.bb,
> do_compile) failed with exit code '1'

That's not the error, all we have there is a build command and bitbake
concluding that there was an error.  Because we do parallel make
builds, you'll have to scroll back through the compile log to get the
actual error.  Just sending the entire log to a pastebin will be
useful.

Ross

