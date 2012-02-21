Return-Path: <john.toomey@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD4ECE0059B
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2012 03:31:57 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Feb 2012 03:31:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; 
	d="scan'208,217";a="112754493"
Received: from jtoomey-mobl9.ger.corp.intel.com (HELO [163.33.228.159])
	([163.33.228.159])
	by orsmga002.jf.intel.com with ESMTP; 21 Feb 2012 03:31:56 -0800
Message-ID: <4F4380AA.2010401@linux.intel.com>
Date: Tue, 21 Feb 2012 11:31:54 +0000
From: John Toomey <john.toomey@linux.intel.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:10.0.1) Gecko/20120208 Thunderbird/10.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Issue building meta-toolchain
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
X-List-Received-Date: Tue, 21 Feb 2012 11:31:57 -0000
Content-Type: multipart/alternative;
	boundary="------------040007040804090409090805"

--------------040007040804090409090805
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello all,

I am getting the following error when trying to build meta-toolchain:

    NOTE: Resolving any missing task queue dependencies
    ERROR: Nothing PROVIDES 'libx11-nativesdk' (but
    virtual:nativesdk:[path]/jtoomey/poky/meta/recipes-graphics/libsdl/libsdl_1.2.14.bb
    DEPENDS on or otherwise requires it)
    ERROR: libx11-nativesdk was skipped: X11 not enabled for this DISTRO
    NOTE: Runtime target 'qemu-nativesdk' is unbuildable, removing...
    Missing or unbuildable dependency chain was: ['qemu-nativesdk',
    'libsdl-nativesdk', 'libx11-nativesdk']
    NOTE: Runtime target 'task-sdk-host-nativesdk' is unbuildable,
    removing...
    Missing or unbuildable dependency chain was:
    ['task-sdk-host-nativesdk', 'qemu-nativesdk', 'libsdl-nativesdk',
    'libx11-nativesdk']
    ERROR: Required build target 'meta-toolchain' has no buildable
    providers.
    Missing or unbuildable dependency chain was: ['meta-toolchain',
    'task-sdk-host-nativesdk', 'qemu-nativesdk', 'libsdl-nativesdk',
    'libx11-nativesdk']

I dont really need or want X11 but the toolchain seems to depend on 
parts of it.

Can anyone help point me in the right direction?

Regards,
John

--------------040007040804090409090805
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hello all,<br>
    <br>
    I am getting the following error when trying to build meta-toolchain:<br>
    <br>
    <blockquote>NOTE: Resolving any missing task queue dependencies<br>
      ERROR: Nothing PROVIDES 'libx11-nativesdk' (but
      virtual:nativesdk:[path]/jtoomey/poky/meta/recipes-graphics/libsdl/libsdl_1.2.14.bb
      DEPENDS on or otherwise requires it)<br>
      ERROR: libx11-nativesdk was skipped: X11 not enabled for this
      DISTRO<br>
      NOTE: Runtime target 'qemu-nativesdk' is unbuildable, removing...<br>
      Missing or unbuildable dependency chain was: ['qemu-nativesdk',
      'libsdl-nativesdk', 'libx11-nativesdk']<br>
      NOTE: Runtime target 'task-sdk-host-nativesdk' is unbuildable,
      removing...<br>
      Missing or unbuildable dependency chain was:
      ['task-sdk-host-nativesdk', 'qemu-nativesdk', 'libsdl-nativesdk',
      'libx11-nativesdk']<br>
      ERROR: Required build target 'meta-toolchain' has no buildable
      providers.<br>
      Missing or unbuildable dependency chain was: ['meta-toolchain',
      'task-sdk-host-nativesdk', 'qemu-nativesdk', 'libsdl-nativesdk',
      'libx11-nativesdk']<br>
    </blockquote>
    I dont really need or want X11 but the toolchain seems to depend on
    parts of it. <br>
    <br>
    Can anyone help point me in the right direction?<br>
    <br>
    Regards,<br>
    John<br>
  </body>
</html>

--------------040007040804090409090805--
