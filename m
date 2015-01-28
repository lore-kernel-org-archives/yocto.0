Return-Path: <maxin@maxinbjohn.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53C6AE00815; Wed, 28 Jan 2015 06:26:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 287AEE00753
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 06:26:25 -0800 (PST)
Received: by mail-ie0-f170.google.com with SMTP id y20so21998214ier.1
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 06:26:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=bJ+c5PxcS9iyHDcp3m+U5O2ZTr9AFeu3+L8acbwMJMk=;
	b=mzJgEdq7R7aFfY6cIouIO9teWhB4LEX6zU+woPIk+2hWGSWZcPQ96xiufzMmwOoxoG
	zFUMdI4KK4JjObxXkmneCC9oebzrSIW1wbxtd5lZTIoUv3W+u5QsHomcVgi+d7PuCTWU
	3cwKnDbMRjxkOqLfZvWx4Js4iBCkQWNrZVHHOUJLmBtQ6As5q9B0Ij/lRTTBQWbYydZ8
	H9yO1Y1Snj+g1Nn/4pBexzWWi3Zbhb/aX/ICGNvdyPgibXJDRymrpJlPd3ezq2ZCmIV7
	czJj2WT7gzDLcPq5yVbmquBvzwCfISKTwigvPQadFCFsfDbnjI4BWZYE2H7W7923fYrV
	+5TQ==
X-Gm-Message-State: ALoCoQmFS/hcmVDdcfXU2j5RL5jmxCqiEeqAAtgTkjf8BDadrqgphQ3DFUKYH3rB40QdBkVi2Vvc
MIME-Version: 1.0
X-Received: by 10.107.7.94 with SMTP id 91mr2868921ioh.69.1422455184973; Wed,
	28 Jan 2015 06:26:24 -0800 (PST)
Received: by 10.36.124.210 with HTTP; Wed, 28 Jan 2015 06:26:24 -0800 (PST)
X-Originating-IP: [192.36.1.252]
In-Reply-To: <BAY169-W1323FBA1846821F1C7654FDAE330@phx.gbl>
References: <BLU436-SMTP194E8A8B18DB6A3ADDA00AFAE320@phx.gbl>
	<CAFicg85waXXFmZsr4+fbAByoB-a_xUN23EHJD0scqisNunP2vQ@mail.gmail.com>
	<BAY169-W55C7EBD601DFB42F2CA8ADAE330@phx.gbl>
	<3859281.CPjbAClMcV@peggleto-mobl5.ger.corp.intel.com>
	<BAY169-W68A99F2815567D9CCB628AE330@phx.gbl>
	<CAFicg857GKOgixieHfk36wXBmdnaLFhcaQzFLZGeMuTWZnkR0g@mail.gmail.com>
	<BAY169-W1323FBA1846821F1C7654FDAE330@phx.gbl>
Date: Wed, 28 Jan 2015 15:26:24 +0100
Message-ID: <CAFicg87v1F5LZ-a9N8=VtO=tt5ZyR+h98nxt8hLc+X1V2VJS7A@mail.gmail.com>
From: Maxin John <maxin@maxinbjohn.info>
To: Jim Abernathy <jfabernathy@outlook.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	yocto <yocto@yoctoproject.org>
Subject: Re: adding meta-oracle-java
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
X-List-Received-Date: Wed, 28 Jan 2015 14:26:37 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

On Wed, Jan 28, 2015 at 1:10 PM, Jim Abernathy <jfabernathy@outlook.com> wrote:
>
<snip>

> well the file command does not run on the target machine same as java, not
> found error.  as to the local.conf file.  The only changes are as follows:
>
> MACHINE ?= "nuc"
> IMAGE_INSTALL_append = " oracle-jse-jre dropbear"
> LICENSE_FLAGS_WHITELIST += "oracle_java"
> #
> DL_DIR ?= "/work/downloads"
> #PACKAGE_CLASSES ?= "package_rpm"
> PACKAGE_CLASSES = "package_deb"
>
> I build with bitbake core-image-base.

From the "nuc" image on qemu, I get this output for file command:

# file bin/busybox.nosuid
bin/busybox.nosuid: ELF 64-bit LSB executable, x86-64, version 1
(SYSV), dynamically linked, interpreter /lib/ld-linux-x86-64.so.2, for
GNU/Linux 2.6.32,
BuildID[sha1]=d87821503ef9cc2a5bed4a284cac138211a649ff, stripped

# file /usr/share/jre1.7.0_67/bin/java
/usr/share/jre1.7.0_67/bin/java: ELF 64-bit LSB executable, x86-64,
version 1 (SYSV), dynamically linked, interpreter
/lib64/ld-linux-x86-64.so.2, for GNU/Linux 2.6.9,
BuildID[sha1]=b82a586842f6da3df8a61093daadf0

/ #  java
/bin/sh: java: not found

Could be related to the library path. Continuing with investigation.

Best Regards,
Maxin

