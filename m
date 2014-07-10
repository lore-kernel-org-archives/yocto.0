Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44DD5E0056A; Thu, 10 Jul 2014 02:14:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 158BEE00559
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 02:13:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s6A9Do1S018560
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 10 Jul 2014 02:13:50 -0700 (PDT)
Received: from [128.224.162.181] (128.224.162.181) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.169.1;
	Thu, 10 Jul 2014 02:13:50 -0700
Message-ID: <53BE594C.3040600@windriver.com>
Date: Thu, 10 Jul 2014 17:13:48 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Natural Groove <natural_groove@hotmail.fr>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <DUB128-W333CD3D967FBE45F67D02920E0@phx.gbl>
In-Reply-To: <DUB128-W333CD3D967FBE45F67D02920E0@phx.gbl>
Subject: Re: crossbuild for arm :FFPLAY not build
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
X-List-Received-Date: Thu, 10 Jul 2014 09:14:08 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit



On 07/10/2014 05:02 PM, Natural Groove wrote:
> Hi,
>
> Im trying to crossbuild ffmpeg for arm (colibri-t20).
> I wrote a simplest recipe in order to achieve this, but even if ffmpeg, ffprobe
> and ffserver are build, ffplay isnt, i first thought that i had forgotten some
> dependencies but i dont see which could be missing.
> Any idea why this isnt working?
>
> The recipe:
>
> SRC_URI = "https://www.ffmpeg.org/releases/ffmpeg-2.1.1.tar.gz"
> SRC_URI[md5sum] = "294749b2ebdd22ef7d9b9d12a70d5b8c"
> SRC_URI[sha256sum] =
> "66f521dffefcbb6c09a402f6373e6cef81fbf4284d0a33cdef9a19412df1dd18"
> inherit autotools pkgconfig
> DEPENDS = "yasm-native libsdl libx11 zlib libtheora libogg libass libtool"
> S="${WORKDIR}/ffmpeg-2.1.1"
>
>
> inherit autotools pkgconfig
>
> CROSS_COMPILE =
> "/home/rick/oe-core/build/out-eglibc/sysroots/i686-linux/usr/bin/armv7ahf-vfp-angstrom-linux-gnueabi/arm-angstrom-linux-gnueabi-"
>
> EXTRA_OECONF = "--arch=arm --enable-cross-compile
> --cross-prefix=${CROSS_COMPILE} --target-os=linux --enable-gpl
> --enable-libtheora --enable-libvorbis --extra-libs="-ldl" --enable-ffplay
> --enable-shared --enable-pic"

Check config.log to see why --enable-ffplay doesn't work ?

>
> do_configure() {
>          ./configure ${EXTRA_OECONF}
> }

Remove the do_configure ()?

// Robert

>
>
> Regards
> Ricko
>
>
>

