Return-Path: <rudolf.streif@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C1FFE003E4
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2012 19:27:42 -0800 (PST)
Received: by wgbdq12 with SMTP id dq12so4271618wgb.11
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2012 19:27:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=6V/ujVObWPBS2JLQlKvvZefqsmTZtlxStW9haR9XJJo=;
	b=fe6gJiztE0srSKtuiinzeOUnXQMtSMO0899xO+zoPHPBg+D7PmHDgW3eN+418nnZ+i
	BOUihFhRMjNBXxn2iOcOBdnjSxKPPq/AZppsH9ooB1cBihKZf7yRMppAQNH5ZkGlNsBr
	Suc6qONuMTWZ4d1Ir4B/4UfDYmsjh+IUPgCLg=
MIME-Version: 1.0
Received: by 10.180.101.161 with SMTP id fh1mr15336122wib.0.1328326061167;
	Fri, 03 Feb 2012 19:27:41 -0800 (PST)
Received: by 10.216.184.17 with HTTP; Fri, 3 Feb 2012 19:27:41 -0800 (PST)
Date: Fri, 3 Feb 2012 19:27:41 -0800
Message-ID: <CAEKp-abaibKR9XZN8Ddnu4Tt6nWbCiaeJZFkNWZVFWE9ReOwjQ@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@gmail.com>
To: yocto@yoctoproject.org
Subject: Task Build Issue
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
X-List-Received-Date: Sat, 04 Feb 2012 03:27:42 -0000
Content-Type: text/plain; charset=ISO-8859-1

I created this task for test purposes:

DESCRIPTION = "My Custom Tasks"

LICENSE = "MIT"
LIC_FILES_CHKSUM =
"file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \

file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"

PACKAGES = "\
    task-mytask-apps \
    task-mytask-apps-dbg \
    task-mytask-apps-dev \
    task-mytask-tools \
    task-mytask-tools-dbg \
    task-mytask-tools-dev \
    "

RDEPENDS_task-mytask-apps = "\
   sqlite3 \
   python \
   python-sqlite3"

RDEPENDS_task-mytask-tools = "\
   sudo \
   gzip \
   tar"

I added created a bb containing IMAGE_INSTALL = "task-core-boot
task-base-extended task-mytask-apps"

Bitbake builds the task without any error message. However, building
the rootfs fails with

| Processing task-mytask-apps...
| Unable to find package task-mytask-apps (task-mytask-apps)!

log.do_package_write_rpm: contains NOTE: Not creating empty RPM
package for task-mytask-apps.

Indeed deploy-rpms of the package is empty however, the deploy-rpms
dirs of the dependencies contain the necessary packages.

Any help is appreciated.

Thanks,
Rudi

