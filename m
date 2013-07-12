Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05161E014E2
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 09:21:28 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 362A0F811F6; Fri, 12 Jul 2013 10:21:25 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 0D130F811F5;
	Fri, 12 Jul 2013 10:21:24 -0600 (MDT)
Message-ID: <51E02D22.1090200@mlbassoc.com>
Date: Fri, 12 Jul 2013 10:21:54 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAAGt+t1GaWBqsZAXR9xq0bTeYry_W_xOX38Qz=ZMxzM1=ivkbQ@mail.gmail.com>
In-Reply-To: <CAAGt+t1GaWBqsZAXR9xq0bTeYry_W_xOX38Qz=ZMxzM1=ivkbQ@mail.gmail.com>
Subject: Re: Libraries missing after build is successful
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
X-List-Received-Date: Fri, 12 Jul 2013 16:21:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-07-12 09:21, Zafrullah Syed wrote:
> I appended OpenCV and Gstreamer plugins to Image and made a build. Build is successful without any errors but OpenCV libraries are missing in rootfs.tar.bz2

How did you do this?

You should be able to just add them in your local.conf, e.g.
   IMAGE_EXTRAS += "opencv-apps opencv-samples"
etc.

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

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

