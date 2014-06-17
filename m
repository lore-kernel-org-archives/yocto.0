Return-Path: <ashcharles@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E828E00C0A; Tue, 17 Jun 2014 08:56:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ashcharles[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.128.174 listed in list.dnswl.org]
Received: from mail-ve0-f174.google.com (mail-ve0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54277E00AFD
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 08:56:33 -0700 (PDT)
Received: by mail-ve0-f174.google.com with SMTP id jx11so5013702veb.19
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 08:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=pv28Viwulfr3ASDveQ9mPgyhiIToTnPnqv9dkau247s=;
	b=hZicNvmWcfOrX/5CNLi+Hj/kCrSkzd+IbU+zHfMccYONtlRYS8SaeBpVU6SVF0rpZJ
	3+OlGFtmQT7nZM8OuauhXJOWt1Oyu+mZ6KG3KSv+lzWuG3tKxbyOAO80nUdBbx2XMSWd
	48QyKjqAZePdFsuo6rmsS6jNzDNZtCPDG3/KCAy4D5h8YttkKKmDIejAhQJMHNlsmOnh
	jOlY5WaU5NZjMch0YwWfBnqo+GVijg0EqyyL2A/AK9pb7MaQzcgOjfPZnJKEQrNr++gE
	e0uNha6EbwVMpmd4OVlsXA+22WnbO+kAw8ZfptaKaPlC0LyC3M+1WyxibkQpzeRIK+Eq
	ClLw==
X-Received: by 10.58.112.65 with SMTP id io1mr1135354veb.61.1403020592409;
	Tue, 17 Jun 2014 08:56:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.196.229 with HTTP; Tue, 17 Jun 2014 08:56:02 -0700 (PDT)
From: Ash Charles <ashcharles@gmail.com>
Date: Tue, 17 Jun 2014 08:56:02 -0700
Message-ID: <CAK8F28nCuu06sXBX2FSDxGKOQ2j-rjFcysnXAqMk3F4jv6vNcA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Setting preferred version of kernel for feature support
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
X-List-Received-Date: Tue, 17 Jun 2014 15:56:46 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I have two kernels for my device: one is current mainline kernel and
one is an older kernel that supports magic proprietary hardware
acceleration blobs.  Some developers want the modern kernel, others
need the hardware acceleration which means they need the older kernel
plus a bunch of out-of-tree kernel modules and some additional
packages included in their image.  What is the best way to give users
of the meta layer for this device an easy switch?

I came up with three basic ways to do this:
1. Create an image recipe or packagegroup.  In this recipe, set the
PREFERRED_VERSION_<kernel>, add RDEPENDS on the out-of-tree kernel
modules and pull in any extra recipes to the build.

2. Describe the dependency information; the user can just choose to
include one top-level package or not.  The userspace packages depend
on the out-of-tree modules which would set the preferred version of
the kernel.  Is setting the preferred version of something as major as
the kernel in a random recipe okay?

3. Add a USE_HW_ACCEL type parameter to the machine configuration or
add a feature to MACHINE_FEATURES and select the packages and versions
based on this.  Is there any problems adding new features to
MACHINE_FEATURES?  Does this break the package feeds?

Any suggestions on the best way to achieve this goal or any
compare-contrast between the methods would be most appreciated.

--Ash

