Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07143E00D3F; Thu,  2 May 2019 15:15:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f172.google.com (mail-it1-f172.google.com
	[209.85.166.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 335FFE00BAA
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 15:15:41 -0700 (PDT)
Received: by mail-it1-f172.google.com with SMTP id p18so6706849itm.1
	for <yocto@yoctoproject.org>; Thu, 02 May 2019 15:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=pRLCONkybx/dd0a//9bAyQyqf5mVV1wUJU5v7OmNvt8=;
	b=Ei+9KYGahRB/KlyqFFyNm2NSBsbJ0i9JeEDdUrOvixQGbllmI5efyrDaLp6aflgcQh
	ApOzG1jOfpL1HoA4q5ixVm+rdItww91yQckMpgjgIUT/0+H6MpIG/Wax5GmVkD2fK2E4
	Ydbgsx4ay76AMKIP2yMl0cq56E9+Odues6cERDrxc4z5QXzO251y4Qm/9ZVxBl8ZG//T
	qimxN1j4yBq/JaMUjBJpj3HPnnTf/MjSB8dvtn2PGu1NorNm/njzfAjrffIKN2XGn5dp
	hN9syVy6CNR0vHtOp3r+7Q/U+kWYdlLmkzgHSQc0+h+SGKPPa1TyCei9Li0pbd+DwkJD
	4tBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=pRLCONkybx/dd0a//9bAyQyqf5mVV1wUJU5v7OmNvt8=;
	b=RVkoT53+iiMqVKehDK6W69OSSoJz09JxNZVJau5gCG3SRk/iETr4egXZU2Ckzs5Tjl
	ApTssfnnEGtAFK+H+1yy6U/Vm6etFQbH6SXY0/9Z+cy/H4qgb/cFG5wShtFif02s8z+0
	4DxQSlAxIJrWq9u1AmdaID0UpZ1+CiYX/HEXt9owXbTAtjne1X2laVR57ZhDbmZtMt6W
	H7/QS4hCUK7pU6jDAOcrJQrrfWi6a1ZwKRM7Aezdd/3xEaErzpFp0i/TBerJdNGdqMdq
	Ptonl2M4Dh8W2JrTu40iF/tnQKzcKVRLj7UY0bt7kjHqR25q/jhhjStJJGWH+qVLD5al
	GvGQ==
X-Gm-Message-State: APjAAAW4ZGIkGxtLhU/mLYheUKwNtUOq+bmTL538tCJKDD7Ub7PuiuGD
	svycW3/wIfDQc7HQ2Fg3Oc+BnEJzb1nte0/wYcodga/mvAQ=
X-Google-Smtp-Source: APXvYqwpdQv8VOF8Z1zph4LF/4nD2vUOpmFP+jhr50azvuEpDLQHbOqu8ZIYVHJQ08IJZT8TO/whn/nEllBK2fDiog4=
X-Received: by 2002:a24:ad2:: with SMTP id 201mr4151797itw.26.1556835340696;
	Thu, 02 May 2019 15:15:40 -0700 (PDT)
MIME-Version: 1.0
References: <c84b72da1abc1ea12f9e5e86d4d08758@posteo.net>
In-Reply-To: <c84b72da1abc1ea12f9e5e86d4d08758@posteo.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 2 May 2019 23:15:29 +0100
Message-ID: <CAJTo0LanumnXADZM5nsf8pkZxn7dRd8rFbFTovnxcf+=tHabbg@mail.gmail.com>
To: simon.zeni@posteo.net
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Dependencies with third party binaries
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
X-List-Received-Date: Thu, 02 May 2019 22:15:42 -0000
Content-Type: text/plain; charset="UTF-8"

Why don't you use the layer that comes with the Intel compiler?

Ross

On Thu, 2 May 2019 at 23:15, <simon.zeni@posteo.net> wrote:
>
> Hi,
>
> I'm currently working on repackaging the 2016 Intel compiler and I am
> stuck at the dependency resolution.
>
> I am basing my recipe on the AUR PKGBUILD [1], which extracts the RPMs
> from the parallel-studio-xe [2] archive and extracts the content of the
> RPMs to get the binaries. I already have the RPMs extracted from the
> tarball and stored in a git repo. Not the ideal solution, but good
> enough for now.
>
> The `bitbake` command for the recipe is passing after disabling a couple
> of QA errors (too much for my taste), but the recipe for the
> `core-image` fails at the dependency
> resolution. From what I understand, all of the binaries inside of the
> `FILES_${PN}` are checked, and one (or more) fails at the dependency
> check with the following message :
>
> ```
> Error:
>   Problem: conflicting requests
>    - nothing provides ld-linux-k1om.so.2()(64bit) needed by
> icc-2016+1-r0.corei7_64
> ```
>
> This shared library seems to be Intel related but I cannot find it in
> all of the RPMs contained in the initial tarball. It is also not needed
> to run the compiler, I was able to execute the `icc` and `icpc` (the c++
> compiler) binaries from the devshell.
>
> I know this is wrong and against every yocto principles, but is there a
> way to skip the dependenciey resolution for a specific recipe ? Or is
> there a recipe made by Intel that I missed ?
> I'm also open to any suggestions on how to tackle this task.
>
> Here's my recipe so far :
>
> ```
> LICENSE = "CLOSED"
> LIC_FILES_CHKSUM = ""
>
> DEPENDS += "libarchive-native"
>
> SRC_URI = # omitted
>
> PV = "2016-1"
> SRCREV = "${AUTOREV}"
>
> S = "${WORKDIR}/git"
>
> extract_rpms() {
> for rpm_file in ${S}/$1; do
>         bsdtar -xf ${rpm_file} -C $2
> done
> }
>
> # Skip the unwanted steps
> do_configure[noexec] = "1"
> do_compile[noexec] = "1"
>
> do_install () {
> extract_rpms 'intel-icc*.rpm' ${D}
> extract_rpms 'intel-comp*.rpm' ${D}
> extract_rpms 'intel-ccomp*.rpm' ${D}
> extract_rpms 'intel-openmp*.rpm' ${D}
> }
>
> do_package_qa[noexec] = "1"
>
> ALLOW_EMPTY_${PN} = "1"
>
> FILES_SOLIBSDEV = ""
> FILES_${PN} += "/opt/intel/*"
>
> INSANE_SKIP_${PN} += "already-stripped ldflags arch staticdev file-rdeps
> build-deps"
>
> INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
> INHIBIT_PACKAGE_STRIP = "1"
>
> ```
>
> Thanks,
>
> Simon Zeni
>
> [1]:
> https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=intel-parallel-studio-xe&id=d4e2871a3bf698c3a5f58ee2201df53fe7f5dce7
> [2]:
> http://registrationcenter-download.intel.com/akdlm/irc_nas/8365/parallel_studio_xe_2016_update1.tgz
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

