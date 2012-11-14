Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AAAFE01448
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2012 02:07:54 -0800 (PST)
Received: from [192.168.0.2] (host81-147-178-119.range81-147.btcentralplus.com
	[81.147.178.119]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 413D99BE3
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2012 10:07:53 +0000 (GMT)
Message-ID: <50A36D78.8090208@r-finger.com>
Date: Wed, 14 Nov 2012 10:07:52 +0000
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <50A2EFC0.3090908@am.sony.com>
In-Reply-To: <50A2EFC0.3090908@am.sony.com>
Subject: Re: Problem compiling diffutils on poky-tiny in danny
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 14 Nov 2012 10:07:54 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Tim,

On 14/11/12 01:11, Tim Bird wrote:
> ./wctype.h:448:1: error: static declaration of 'iswalnum' follows non-static declaration
> ./wctype.h:460:1: error: static declaration of 'iswalpha' follows non-static declaration
> ...
> Has anyone seen this type of error before, or can provide some
> hints of what to check or adjust to fix this?

The diffutils package provides a replacement for wctypes.h, which
includes the system wctypes.h and then adds some stuff of it's own -- I
think you are hitting the '#if !GNULIB_defined_wctype_functions' in the
replacement file, which expects to be providing iswalnum, etc., and
prototypes them as 'static inline'; the system wctypes.h protypes are
not static.

Not sure why it should be taking that path, could be because these
functions are not provided by libc for poky-tiny (in which case the libc
headers need patching), or could be the detection in diffutils is
broken. As a quick hack, try removing the offending prototypes from the
sysroot wctypes.h.

Tomas

-- 
http://sleepfive.com

