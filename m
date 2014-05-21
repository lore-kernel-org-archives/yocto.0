Return-Path: <Stefan_Seefeld@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EDCEE00B87; Wed, 21 May 2014 13:54:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
X-Greylist: delayed 486 seconds by postgrey-1.32 at yocto-www;
	Wed, 21 May 2014 13:54:04 PDT
Received: from relay1.mentorg.com (unknown [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97C15E0077C
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 13:54:04 -0700 (PDT)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1WnDOg-0002je-1R from Stefan_Seefeld@mentor.com 
	for yocto@yoctoproject.org; Wed, 21 May 2014 13:45:58 -0700
Received: from SVR-ORW-FEM-02.mgc.mentorg.com ([147.34.96.206]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Wed, 21 May 2014 13:45:57 -0700
Received: from [0.0.0.0] (147.34.91.1) by svr-orw-fem-02.mgc.mentorg.com
	(147.34.96.168) with Microsoft SMTP Server id 14.2.247.3;
	Wed, 21 May 2014 13:45:57 -0700
Message-ID: <537D1084.4000705@mentor.com>
Date: Wed, 21 May 2014 16:45:56 -0400
From: Stefan Seefeld <stefan_seefeld@mentor.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
X-OriginalArrivalTime: 21 May 2014 20:45:57.0941 (UTC)
	FILETIME=[AAFC4650:01CF7535]
Subject: [meta-mingw] build error
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
X-List-Received-Date: Wed, 21 May 2014 20:54:06 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

Hello,

I started experimenting with the meta-mingw layer today, using the
'daisy' branch for both, poky as well as meta-mingw.

Running `bitbake meta-toolchain`, the build process failed in one of the
last steps (1003 of 1005) with:

ERROR: nativesdk-packagegroup-sdk-host not found in the base feeds
(x86_64-nativesdk-mingw32 noarch any all).

Any idea what I may be missing ? I'm using

MACHINE ??= "qemux86"
SDKMACHINE ?= "x86_64-mingw32"

Thanks,

		Stefan


-- 
Stefan Seefeld
CodeSourcery / Mentor Embedded
http://www.mentor.com/embedded-software/

