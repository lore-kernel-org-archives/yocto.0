Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FD61E00973; Thu, 21 Jan 2016 06:55:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 110D6E00833
	for <yocto@yoctoproject.org>; Thu, 21 Jan 2016 06:55:31 -0800 (PST)
Received: by mail-pa0-f43.google.com with SMTP id ho8so24383785pac.2
	for <yocto@yoctoproject.org>; Thu, 21 Jan 2016 06:55:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=suBSrHLlNgUwnmK49klD3dl4DzQcMlFUtzlxNcekMr4=;
	b=Mak/otBQvkdQc+EnYD9YQnfX2ruPUG2sq31zxxFU7HAWx17xaFxoJPq1A98Y7fTp6D
	pNx1w82oR+5boohn8U2nyJ2i6h6/nPWAVaVpNvNOwQyG2RWELu7GeYnH/1aLk+WCjIyS
	y23Jye4UKss4lcj77sLXBsIPNmyh4yByMH3HSVeYEenEe97regfAWsNzmsTYCnibpdes
	Chm6/5Ieb38g3I1D7MGwV60C9XhEw3TgznGM5QZBEB6W9Rly5WoV1I5N2T/0R9+i+acw
	Hodyve/QuX5fUupIQLOlnfHRMQHEyGZabkfvEqMps+ekOEpKcZKGLbj5kU/Cc2ebMg38
	WmpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-type
	:content-transfer-encoding;
	bh=suBSrHLlNgUwnmK49klD3dl4DzQcMlFUtzlxNcekMr4=;
	b=ZZemo/c90Lruk4iEiZjvxLz8sHowKy3T2nDJNrclxedfNy94J8o9nXOtuDIgFGnPgq
	HJpf1ua7lHIFRGOz4oOUnLmyFkXY+36fsXrDvg6mJnq8Zq9qakg4cYGjROljNcMz6p72
	OL4JEqgaLYMmk1V86/WdgrYdheZpA7KIhYuiMJ1Ct9grBJ7aqMpr18zrfmGci8g0dLZn
	i4DgDBvyamzpVr6MPt0kqO4MEkrMzWioNd6zymj9rVUov4cUKla0+VAXjVXeBR+RRzZ1
	wqRy0aanv8UaWKt0accu4ja+6U77vIzHJuxWsSfh8ipgpDmY4NVqJU/VTDszpxlc9Mmb
	JpnA==
X-Gm-Message-State: ALoCoQlzOk4Tw4r13EfLJvziSr4wS2N85/EMKvo5P5QW8nI4uQHc7x2KxZBa/vDysCkwKUSoWtnXfxi1f0g/rYQKZT215cm+JA==
X-Received: by 10.66.191.195 with SMTP id ha3mr61752592pac.58.1453388131411;
	Thu, 21 Jan 2016 06:55:31 -0800 (PST)
Received: from ?IPv6:2601:202:4000:1239:f0f5:a917:60f2:fe2?
	([2601:202:4000:1239:f0f5:a917:60f2:fe2])
	by smtp.googlemail.com with ESMTPSA id
	xr8sm3276577pab.26.2016.01.21.06.55.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 21 Jan 2016 06:55:29 -0800 (PST)
To: Gary Thomas <gary@mlbassoc.com>, yocto@yoctoproject.org
References: <569F460F.2050500@mlbassoc.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <56A0F160.2070406@gmail.com>
Date: Thu, 21 Jan 2016 06:55:28 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <569F460F.2050500@mlbassoc.com>
Subject: Re: Building with ltdl
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
X-List-Received-Date: Thu, 21 Jan 2016 14:55:35 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 01/20/2016 12:32 AM, Gary Thomas wrote:
> I'm trying to build a project (graphviz) which wants to use ltdl
> which is part of libtool.  However when I try to build, I get
> these errors (during configure):

This did build for me a while back. I have a meta-layer that created a
long time ago.  Current master fails for me too. I will try fido and
jethro to help narrow what are the issue may be in.

- armin
> 
> | NOTE: Executing ACLOCAL="aclocal
> --system-acdir=/local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/aclocal-copy/"
> autoreconf --verbose --install --force --exclude=autopoint -I
> /local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/
> -I
> /local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/m4/
> 
> | autoreconf: Entering directory `.'
> | autoreconf: configure.ac: not using Gettext
> | autoreconf: running: aclocal
> --system-acdir=/local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/aclocal-copy/
> -I
> /local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/
> -I
> /local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/m4/
> -I
> /local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/
> -I
> /local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/m4/
> --force -I m4
> | autoreconf: configure.ac: tracing
> | autoreconf: configure.ac: adding subdirectory libltdl to autoreconf
> | autoreconf: Entering directory `libltdl'
> | autoreconf: running: libtoolize --copy --force --ltdl
> | libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, 'config'.
> | libtoolize: copying file 'config/compile'
> | libtoolize: copying file 'config/config.guess'
> | libtoolize: copying file 'config/config.sub'
> | libtoolize: copying file 'config/depcomp'
> | libtoolize: copying file 'config/install-sh'
> | libtoolize: copying file 'config/missing'
> | libtoolize: copying file 'config/ltmain.sh'
> | libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'm4'.
> | libtoolize: copying file 'm4/libtool.m4'
> | libtoolize: You should add the contents of 'm4/libtool.m4' to
> 'aclocal.m4'.
> | libtoolize: copying file 'm4/ltargz.m4'
> | libtoolize: You should add the contents of 'm4/ltargz.m4' to
> 'aclocal.m4'.
> | libtoolize: copying file 'm4/ltdl.m4'
> | libtoolize: You should add the contents of 'm4/ltdl.m4' to 'aclocal.m4'.
> | libtoolize: copying file 'm4/ltoptions.m4'
> | libtoolize: You should add the contents of 'm4/ltoptions.m4' to
> 'aclocal.m4'.
> | libtoolize: copying file 'm4/ltsugar.m4'
> | libtoolize: You should add the contents of 'm4/ltsugar.m4' to
> 'aclocal.m4'.
> | libtoolize: copying file 'm4/ltversion.m4'
> | libtoolize: copying file 'm4/lt~obsolete.m4'
> | libtoolize: You should add the contents of 'm4/lt~obsolete.m4' to
> 'aclocal.m4'.
> | libtoolize: putting libltdl files in LT_CONFIG_LTDL_DIR, '.'.
> | libtoolize: copying file './COPYING.LIB'
> | libtoolize: creating file './Makefile.am'
> | libtoolize: copying file './README'
> | libtoolize: creating file './configure.ac'
> | libtoolize: creating file './aclocal.m4'
> | libtoolize: creating file './Makefile.in'
> | libtoolize: copying file './config-h.in'
> | libtoolize: creating file './configure'
> | libtoolize: copying file './libltdl/lt__alloc.h'
> | libtoolize: copying file './libltdl/lt__argz_.h'
> | libtoolize: copying file './libltdl/lt__dirent.h'
> | libtoolize: copying file './libltdl/lt__glibc.h'
> | libtoolize: copying file './libltdl/lt__private.h'
> | libtoolize: copying file './libltdl/lt__strl.h'
> | libtoolize: copying file './libltdl/lt_dlloader.h'
> | libtoolize: copying file './libltdl/lt_error.h'
> | libtoolize: copying file './libltdl/lt_system.h'
> | libtoolize: copying file './libltdl/slist.h'
> | libtoolize: copying file './loaders/dld_link.c'
> | libtoolize: copying file './loaders/dlopen.c'
> | libtoolize: copying file './loaders/dyld.c'
> | libtoolize: copying file './loaders/load_add_on.c'
> | libtoolize: copying file './loaders/loadlibrary.c'
> | libtoolize: copying file './loaders/preopen.c'
> | libtoolize: copying file './loaders/shl_load.c'
> | libtoolize: copying file './lt__alloc.c'
> | libtoolize: copying file './lt__argz.c'
> | libtoolize: copying file './lt__dirent.c'
> | libtoolize: copying file './lt__strl.c'
> | libtoolize: copying file './lt_dlloader.c'
> | libtoolize: copying file './lt_error.c'
> | libtoolize: copying file './ltdl.c'
> | libtoolize: copying file './ltdl.h'
> | libtoolize: copying file './slist.c'
> | libtoolize: Remember to add 'LTDL_INIT' to configure.ac.
> | autoreconf: running:
> /local/p0382_2016-01-13/tmp/sysroots/x86_64-linux/usr/bin/autoconf
> --include=/local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/
> --include=/local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/m4/
> --force
> | autoreconf: running:
> /local/p0382_2016-01-13/tmp/sysroots/x86_64-linux/usr/bin/autoheader
> --include=/local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/
> --include=/local/p0382_2016-01-13/tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/graphviz-2.38.0/m4/
> --force
> | autoreconf: running: automake --add-missing --copy --force-missing
> | configure.ac:76: error: required file './argz.c' not found
> | autoreconf: automake failed with exit status: 1
> 
> The original sources has a libltdl directory with argz.c but this
> is being overwritten during the autoreconf process.
> 
> Any suggestions on how I get this to work?
> 
> Thanks
> 

