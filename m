Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4F7AE00922; Fri,  5 Dec 2014 00:09:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f181.google.com (mail-lb0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8666EE0091D
	for <yocto@yoctoproject.org>; Fri,  5 Dec 2014 00:09:25 -0800 (PST)
Received: by mail-lb0-f181.google.com with SMTP id l4so144596lbv.12
	for <yocto@yoctoproject.org>; Fri, 05 Dec 2014 00:09:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:mime-version:content-type:content-disposition:organization
	:user-agent;
	bh=gbbCINfdQOyOLdxUd/Pj+6+1GwapaM/APpeiu7lqsB0=;
	b=PIJ+u8u1gjRZ3Qj/HHhH3cYDBxP8BjGwHQ5mAPTOJHdK0Pv8d8VSKSxPXTk9BwKePa
	MmAhzk8nt9r/nD1r4FFq/yl8yuufCEcig+ISa7zvCwZ/61841YUtyowlNREIU3c7K8rx
	bSgMOXr+rsqkIeQJfFry2AIyaUSLJGP+gVbeWrZQICiL6W3BAnYQQBHKQedPyphsF5Ll
	v18q1cb9D9NFmQbnrvFIjUDm/oImuYWdpsTGodfa3d6EnNgNOZV8uCyZlRP3ROIIYEfT
	R8Crlifp0kvXEALCVIMXg9CpOXsx2s3qcBnUAuJ2HR0EUWxNbUPKfKhtAQzPv8CH3zky
	p6cQ==
X-Gm-Message-State: ALoCoQkQO+/K7bBaC8bCHtE2Dn9o/XNJ/pAkvxIs9nu9723kziz84H6T4ruEzUfj5/fS+2TdK8Km
X-Received: by 10.112.171.170 with SMTP id av10mr1554436lbc.77.1417766963903; 
	Fri, 05 Dec 2014 00:09:23 -0800 (PST)
Received: from ad.chargestorm.se (c-83-233-19-145.cust.bredband2.com.
	[83.233.19.145])
	by mx.google.com with ESMTPSA id li3sm8102472lbc.31.2014.12.05.00.09.22
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Dec 2014 00:09:23 -0800 (PST)
Date: Fri, 5 Dec 2014 09:08:39 +0100
From: Anders Darander <anders@chargestorm.se>
To: Yocto Project <yocto@yoctoproject.org>
Message-ID: <20141205080839.GA813@ad.chargestorm.se>
Mail-Followup-To: Yocto Project <yocto@yoctoproject.org>
MIME-Version: 1.0
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: qemu-native fails to build, due to libgpg-error-native
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
X-List-Received-Date: Fri, 05 Dec 2014 08:09:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

We've recently replaces on of our buildmachines, and while doing this,
we've been running into what looks like on ordering & dependency issue.

The issue may very well be related to our host OS, which is openSuSE
13.2 (i.e. it's not yet validated...). 


The simplified test case is simply
1) Check out poky (we've seen the issue on master, dizzy, and daisy
branches)
2) . ./oe-init-build-env
3) bitbake libgpg-error-native
4) bitbake qemu-native

Now qemu-native fails at do_configure:

| ERROR: User requested feature sdl
|        configure was not able to find it.
|        Install SDL devel

Upon inspecting config.log (when building from poky master), the culprit
is that libgpg-error is not found (or more likely the wrong version).

gcc -fPIE -DPIE -m64 -D_GNU_SOURCE -D_FILE_OFFSET_BITS=64
-D_LARGEFILE_SOURCE -Wstrict-prototypes -Wredundant-decls -Wall -Wundef
-Wwrite-strings -Wmissing-prototypes -fno-strict-aliasing -fno-common
-isystem/mnt/cs-builds/anders/poky/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe -Wendif-labels -Wmissing-include-dirs -Wempty-body
-Wnested-externs -Wformat-security -Wformat-y2k -Winit-self
-Wignored-qualifiers -Wold-style-declaration -Wold-style-definition
-Wtype-limits -fstack-protector-all -D_GNU_SOURCE=1 -D_REENTRANT
-I/usr/include/SDL -o config-temp/qemu-conf.exe config-temp/qemu-conf.c
-Wl,-z,relro -Wl,-z,now -pie -m64 -g
-L/mnt/cs-builds/anders/poky/build/tmp/sysroots/x86_64-linux/usr/lib
-L/mnt/cs-builds/anders/poky/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath-link,/mnt/cs-builds/anders/poky/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath-link,/mnt/cs-builds/anders/poky/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath,/mnt/cs-builds/anders/poky/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath,/mnt/cs-builds/anders/poky/build/tmp/sysroots/x86_64-linux/lib
-Wl,-O1 -L/usr/lib64 -lSDL -lpthread
/usr/lib64/libgcrypt.so.20: undefined reference to
`gpg_err_set_errno@GPG_ERROR_1.0'
/usr/lib64/libgcrypt.so.20: undefined reference to
`gpg_err_code_from_syserror@GPG_ERROR_1.0'
/usr/lib64/libgcrypt.so.20: undefined reference to
`gpg_err_code_from_errno@GPG_ERROR_1.0'
/usr/lib64/libgcrypt.so.20: undefined reference to
`gpgrt_lock_unlock@GPG_ERROR_1.0'
/usr/lib64/libgcrypt.so.20: undefined reference to
`gpg_strerror@GPG_ERROR_1.0'
/usr/lib64/libgcrypt.so.20: undefined reference to
`gpg_strsource@GPG_ERROR_1.0'
/usr/lib64/libgcrypt.so.20: undefined reference to
`gpgrt_lock_lock@GPG_ERROR_1.0'
collect2: error: ld returned 1 exit status

As the build works if libgpg-error-native hasn't been built prior to
qemu-native, it seems to me that when it works, it takes libgpg-error
from the host, while in the failing case it takes it from the native
sysroot...

Any pointers on how to make the configure step consistent in looking at
for the host libgpg-error? Or should qemu-native be linked against
libgcrypt from the sysroot too?

I'll likely continue looking at this issue next week, though any pointer
that will help me will be much appreciated.

Cheers,
Anders
-- 
Anders Darander
ChargeStorm AB / eStorm AB

