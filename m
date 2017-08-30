Return-Path: <bill.randle@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 305BFE00C77; Tue, 29 Aug 2017 21:56:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bill.randle[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.178 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D5ECE00C14
	for <yocto@yoctoproject.org>; Tue, 29 Aug 2017 21:56:06 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id s101so1740575ioe.0
	for <yocto@yoctoproject.org>; Tue, 29 Aug 2017 21:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=q65xU2Y86JiYfWC2vsanz7BbB81165wha95JvsgMsZU=;
	b=WRx45An8fSewsSSEf84Xn0S3lvBd+4W8zKfMVY3T7eaas22iuKXY/2YN/yAJcfpb/Z
	O1v3kHUijo0+dO3ool4K6enKBLyagNXAttILgzTrt/GknE4v7Yzje+8cMfQkTplmm9Iy
	tIk25kcfnDikK//O48eIzBuSxsdHZhkt6rUU7P0t7LWvROKwrnyucm8cI9cQ+ghomUzx
	ObX1bsh6tUAHSlKSAKZKmrs+N8is6z8b+uU5tX1ShOgQZGAexT5xyDJwtFvxT+TCcvBh
	AsQROkZvW+aMRG5PeXrF+9VYRrN+S1BWF4pEjRGCi/Kwx6cgOLGPK8va6z7N4kBFFPpQ
	HsLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=q65xU2Y86JiYfWC2vsanz7BbB81165wha95JvsgMsZU=;
	b=Wlb9XxNOwUf8+IbCvNTYDpoWs6mKO5zpxq6AY/jfrEdrVfYskxquVqoR9PqwkApF5v
	0mLizPu89o0dML2mTPBkD339CLFSb7fWVOb0cZNb9FbGsvvFw5R6dSZNaBMbEuGMc2bW
	YwxPgH9bC+9BvR4ybb4ba3MSyHisyqg07vyL5Lk9WE/Kz3TdP5qy9kBIcj6OgRzV6h8G
	vRV7aPAD4PxTqkj6KUUsfB1u7AxDfd26Go7yaMRENWTB+ZlIVhDdy89eEFqXx/liWsvK
	LN/4tL5YFGrWMwm0NJsWBK/0zfdq0BzHj80oF7errNtV9bcnKbdzxPAZ14PPaoU86FS4
	aNtw==
X-Gm-Message-State: AHPjjUhM45hCXaeN6PBYJAeltcMeNzuHdAeSbx/OIhSyGEDZbReuIgxP
	6hIFveXWQ8o9LkvyuzyEAcvuvAAwxT5u
X-Received: by 10.107.59.204 with SMTP id i195mr204299ioa.355.1504068965296;
	Tue, 29 Aug 2017 21:56:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.88.163 with HTTP; Tue, 29 Aug 2017 21:56:04 -0700 (PDT)
From: Bill Randle <bill.randle@gmail.com>
Date: Tue, 29 Aug 2017 21:56:04 -0700
Message-ID: <CA+n--H8OjOrNWgFDCUQOYdsOLnoY=NTQ8099wp6mW_nuRCWqZg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: building python3-posix-ipc on pyro
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
X-List-Received-Date: Wed, 30 Aug 2017 04:56:07 -0000
Content-Type: text/plain; charset="UTF-8"

I successfully built python3-posix-ipc_1.0.0 on morty several times
without error. When I tried to build it on pyro, using the exact same
bb file and source I get warnings which lead to incorrect behavior.
(Cross-compile for ARM.)

I know this recipe is not part of OE-Core, but I'm wondering if anyone
has tried to build it anyway or seen a similar problem.

This is my .bb file (loosely based on the recipe in meta-openstack,
which is for python2):

DESCRIPTION = "POSIX IPC primitives (semaphores, shared memory and
message queues) for Python"
HOMEPAGE = "http://semanchuk.com/philip/posix_ipc/"
SECTION = "devel/python"
LICENSE = "BSD"
LIC_FILES_CHKSUM = "file://LICENSE;md5=d92bb5439aee694c0a87bfb51579e37b"

PR = "r0"

PYPI_PACKAGE = "posix_ipc"

SRC_URI[md5sum] = "85607a392087715ac3a3c7ded2492d06"
SRC_URI[sha256sum] =
"9c93070374ca672725575e5c9874930c8cde69367fb90378b2255e048e31efcb"

inherit pypi setuptools3

# RDEPENDS_default:
RDEPENDS_${PN} += " \
        "
    ----------

The head of the log.compile file on morty is:

DEBUG: Executing shell function do_compile
running build
running build_ext
building 'posix_ipc' extension
creating build
creating build/temp.linux-x86_64-3.5
    ----------
While the head of log.do_compile on pyro looks like this:

DEBUG: Executing shell function do_compile
******************************************************************************
* Setup can't determine if it needs to link to the realtime libraries on your
* system, so it will default to 'no' which may not be correct.
*
* Please report this message and your operating system info to the package
* maintainer listed in the README file.
******************************************************************************
******************************************************************************
* Setup can't determine the value of PAGE_SIZE on your system, so it will
* default to 4096 which may not be correct.
*
* Please report this message and your operating system info to the package
* maintainer listed in the README file.
******************************************************************************
running build
running build_ext
building 'posix_ipc' extension
creating build
creating build/temp.linux-x86_64-3.5
    ----------

Now the output on pyro totally makes sense when I look at setup.py
(which uses probe.py) because the probe function is trying to compile
a test file to see if librt is required or not. It's not surprising it
fails, since I'm building for ARM.

I can go in and patch the probe function so it returns Yes to indicate
librt is required, but my question why no error when building for
morty and what might have changed? As I said, the .bb file and the
source package are identical in both cases.

    -Bill

