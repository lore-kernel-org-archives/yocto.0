Return-Path: <simon.egli@tik.ee.ethz.ch>
Received: from smtp.ee.ethz.ch (smtp.ee.ethz.ch [129.132.2.219])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D66BEE0121B
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 01:51:46 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp.ee.ethz.ch (Postfix) with ESMTP id CCDE7D9494
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 09:51:44 +0100 (MET)
X-Virus-Scanned: by amavisd-new on smtp.ee.ethz.ch
Received: from smtp.ee.ethz.ch ([127.0.0.1])
	by localhost (.ee.ethz.ch [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id R0-VExXFwIce for <yocto@yoctoproject.org>;
	Thu, 14 Mar 2013 09:51:44 +0100 (MET)
Received: from [82.130.102.217] (unknown [82.130.102.217])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested) (Authenticated sender: eglis)
	by smtp.ee.ethz.ch (Postfix) with ESMTPSA id 4CA5ED9304
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 09:51:44 +0100 (MET)
Message-ID: <51418F9F.2070104@tik.ee.ethz.ch>
Date: Thu, 14 Mar 2013 09:51:43 +0100
From: Simon Egli <simon.egli@tik.ee.ethz.ch>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130221 Thunderbird/17.0.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Can't install linux-libc-headers in to rootfs
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
X-List-Received-Date: Thu, 14 Mar 2013 08:51:47 -0000
Content-Type: multipart/alternative;
	boundary="------------030302020401030209050901"

--------------030302020401030209050901
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

I'm generating a custom image on which we may from time to time compile 
programs in the field,
so we need the libc-headers package.
This package is generated fine with "bitbake linux-libc-headers", but on 
building the rootfs it fails with following message (from the log):

/Unable to fERROR: Function failed: do_rootfs (see 
/home/eglis/yocto/build/tmp/work/overo-poky-linux-gnueabi/swarmix-image-1.0-r0/temp/log.do_rootfs.4009 
for further information)//
//ind package linux-libc-headers (linux-libc-headers)!/

When I look in to the tmp directory of the package I find the headers 
correctly sitting in "package/usr/include"

Any idea what's causing this?

Thank you for helping me with this...

additional information:
bitbake -s gives me: "linux-libc-headers  :3.2-r1"
I use bitbake version 1.15.2
running on a Ubuntu 12.10 64-bit machine
my layers were created using repo:

/repo version v1.12.2//
//       (from https://gerrit.googlesource.com/git-repo)//
//repo launcher version 1.19//
//       (from /usr/local/bin/repo)//
//git version 1.7.9.5//
//Python 2.7.3 (default, Aug  1 2012, 05:14:39) //
//[GCC 4.6.3]/



--------------030302020401030209050901
Content-Type: text/html; charset=ISO-8859-15
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="content-type" content="text/html;
      charset=ISO-8859-15">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hi all, <br>
    <br>
    I'm generating a custom image on which we may from time to time
    compile programs in the field, <br>
    so we need the libc-headers package. <br>
    This package is generated fine with "bitbake linux-libc-headers",
    but on building the rootfs it fails with following message (from the
    log): <br>
    <br>
    <i>Unable to fERROR: Function failed: do_rootfs (see
      /home/eglis/yocto/build/tmp/work/overo-poky-linux-gnueabi/swarmix-image-1.0-r0/temp/log.do_rootfs.4009
      for further information)</i><i><br>
    </i><i>ind package linux-libc-headers (linux-libc-headers)!</i><br>
    <br>
    When I look in to the tmp directory of the package I find the
    headers correctly sitting in "package/usr/include"<br>
    <br>
    Any idea what's causing this?<br>
    <br>
    Thank you for helping me with this...<br>
    <br>
    additional information:<br>
    bitbake -s gives me: "linux-libc-headers  :3.2-r1"<br>
    I use bitbake version 1.15.2<br>
    running on a Ubuntu 12.10 64-bit machine<br>
    my layers were created using repo: <br>
    <br>
    <i>repo version v1.12.2</i><i><br>
    </i><i>       (from <a class="moz-txt-link-freetext" href="https://gerrit.googlesource.com/git-repo">https://gerrit.googlesource.com/git-repo</a>)</i><i><br>
    </i><i>repo launcher version 1.19</i><i><br>
    </i><i>       (from /usr/local/bin/repo)</i><i><br>
    </i><i>git version 1.7.9.5</i><i><br>
    </i><i>Python 2.7.3 (default, Aug  1 2012, 05:14:39) </i><i><br>
    </i><i>[GCC 4.6.3]</i><br>
    <br>
    <br>
  </body>
</html>

--------------030302020401030209050901--
