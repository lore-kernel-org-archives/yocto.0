Return-Path: <john.toomey@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE1ABE0044A
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 07:32:37 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 29 Feb 2012 07:32:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; 
	d="scan'208,217";a="116134157"
Received: from jtoomey-mobl9.ger.corp.intel.com (HELO [163.33.228.204])
	([163.33.228.204])
	by orsmga002.jf.intel.com with ESMTP; 29 Feb 2012 07:32:36 -0800
Message-ID: <4F4E4512.7000505@linux.intel.com>
Date: Wed, 29 Feb 2012 15:32:34 +0000
From: John Toomey <john.toomey@linux.intel.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:10.0.1) Gecko/20120208 Thunderbird/10.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: RPROVIDES issue
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
X-List-Received-Date: Wed, 29 Feb 2012 15:32:38 -0000
Content-Type: multipart/alternative;
	boundary="------------050507070404020604020408"

--------------050507070404020604020408
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello all,

I am getting an error when I try to include some packages such as 
logrotate, valgrind and minicom in my configuration using "IMAGE_INSTALL 
+= ... "

    ERROR: Nothing RPROVIDES '"minicom"' (but
    [path]/core-image-[blah].bb RDEPENDS on or otherwise requires it)
    NOTE: Runtime target '"minicom"' is unbuildable, removing...
    Missing or unbuildable dependency chain was: ['"minicom"']
    ERROR: Required build target 'core-image-small' has no buildable
    providers.
    Missing or unbuildable dependency chain was: ['core-image-[blah]',
    '"minicom"']


I am able to build the packages individually without issue, for example 
"bitbake minicom" works fine.

Can anyone help point me in the right direction?

Thanks
John





--------------050507070404020604020408
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hello all,<br>
    <br>
    I am getting an error when I try to include some packages such as
    logrotate, valgrind and minicom in my configuration using
    "IMAGE_INSTALL += ... "<br>
    <br>
    <blockquote>ERROR: Nothing RPROVIDES '"minicom"' (but
      [path]/core-image-[blah].bb RDEPENDS on or otherwise requires it)<br>
      NOTE: Runtime target '"minicom"' is unbuildable, removing...<br>
      Missing or unbuildable dependency chain was: ['"minicom"']<br>
      ERROR: Required build target 'core-image-small' has no buildable
      providers.<br>
      Missing or unbuildable dependency chain was: ['core-image-[blah]',
      '"minicom"']<br>
    </blockquote>
    <br>
    I am able to build the packages individually without issue, for
    example "bitbake minicom" works fine.<br>
    <br>
    Can anyone help point me in the right direction?<br>
    <br>
    Thanks<br>
    John<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------050507070404020604020408--
