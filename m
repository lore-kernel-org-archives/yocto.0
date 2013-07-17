Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D12FCE013A7
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 07:05:38 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B807CF81203; Wed, 17 Jul 2013 08:05:37 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 320E5F811E3;
	Wed, 17 Jul 2013 08:05:35 -0600 (MDT)
Message-ID: <51E6A4D5.4030704@mlbassoc.com>
Date: Wed, 17 Jul 2013 08:06:13 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAAGt+t25rfwYgOhA3xqpSsGaEpoZNmk0m541CCmJbwB5haZ6KA@mail.gmail.com>
In-Reply-To: <CAAGt+t25rfwYgOhA3xqpSsGaEpoZNmk0m541CCmJbwB5haZ6KA@mail.gmail.com>
Subject: Re: OpenCV libraries missing after build is successful
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
X-List-Received-Date: Wed, 17 Jul 2013 14:05:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-07-17 05:23, Zafrullah Syed wrote:
> Hi all,
>
> I appended OpenCV and Gstreamer plugins to Image and made a build. Build is successful without any errors but OpenCV libraries are missing in rootfs.tar.bz2
>
> I searched for libs( libopencv_core.so, libhighgui.so, libOpenCV.so ) in /usr/bin, /usr/lib and the whole archive but unable to find any libraries.
>
> In /yocto/build/downloads, I can see OpenCV-2.4.3.tar.bz2, OpenCV-2.4.3.tar.bz2.done files.
>
> In /yocto/build/tmp/deploy/licenses, I can see OpenCV folder.
>
> In /yocto/build/tmp/deploy/rpm/armv7a_vfp_neon, I can see .rpm packages.
>
> Log file after build says this:
> (Pasted only start and success logs)
>
> NOTE: recipe opencv-2.4.3-r2: task do_compile: Succeeded
> NOTE: recipe opencv-2.4.3-r2: task do_install: Started
> NOTE: recipe opencv-2.4.3-r2: task do_install: Succeeded
> NOTE: recipe opencv-2.4.3-r2: task do_package: Started
> NOTE: recipe opencv-2.4.3-r2: task do_populate_sysroot: Started
> NOTE: recipe opencv-2.4.3-r2: task do_populate_sysroot: Succeeded
> NOTE: recipe opencv-2.4.3-r2: task do_package: Succeeded
> NOTE: recipe opencv-2.4.3-r2: task do_package_write_rpm: Started
> NOTE: recipe opencv-2.4.3-r2: task do_package_write_rpm: Succeeded
> NOTE: recipe opencv-2.4.3-r2: task do_generate_toolchain_file: Started
> NOTE: recipe opencv-2.4.3-r2: task do_generate_toolchain_file: Succeeded
> NOTE: recipe opencv-2.4.3-r2: task do_populate_lic: Started
> NOTE: recipe opencv-2.4.3-r2: task do_populate_lic: Succeeded
>
> Any Idea/hints where these files are and why they are missing?

The top-level package 'opencv' is empty.  All the bits are in other
packages, e.g. on my system I have:
   # opkg list-installed | grep opencv
   libopencv-calib3d2.4 - 2.4.3-r2
   libopencv-contrib2.4 - 2.4.3-r2
   libopencv-core2.4 - 2.4.3-r2
   libopencv-features2d2.4 - 2.4.3-r2
   libopencv-flann2.4 - 2.4.3-r2
   libopencv-highgui2.4 - 2.4.3-r2
   libopencv-imgproc2.4 - 2.4.3-r2
   libopencv-legacy2.4 - 2.4.3-r2
   libopencv-ml2.4 - 2.4.3-r2
   libopencv-nonfree2.4 - 2.4.3-r2
   libopencv-objdetect2.4 - 2.4.3-r2
   libopencv-photo2.4 - 2.4.3-r2
   libopencv-video2.4 - 2.4.3-r2
   opencv-apps - 2.4.3-r2
   opencv-samples - 2.4.3-r0
   python-opencv - 2.4.3-r2

You shouldn't need to mention them all as they will come in by
dependencies.  Try adding 'opensv-samples opencv-apps' to your image.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

