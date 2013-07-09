Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A14F3E005B3
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2013 08:45:03 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Uwa6A-0003LU-ED
	for yocto@yoctoproject.org; Tue, 09 Jul 2013 17:45:02 +0200
Received: from 12.221.11.42 ([12.221.11.42])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 09 Jul 2013 17:45:02 +0200
Received: from squirem by 12.221.11.42 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 09 Jul 2013 17:45:02 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: squirem <squirem@fbdfrozen.com>
Date: Tue, 9 Jul 2013 15:43:00 +0000 (UTC)
Message-ID: <loom.20130709T171812-136@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 12.221.11.42 (Mozilla/5.0 (X11;
	Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko)
	Chrome/26.0.1410.43 Safari/537.31)
Subject: Installing Extra Libraries in SDK
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
X-List-Received-Date: Tue, 09 Jul 2013 15:45:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hello,

I'm currently developing a Qt application targeting the Freescale i.MX6.

I've build the meta-toolchain-qt SDK and am using it to cross-compile my 
application.
So far I'm able to compile my application when only using Qt & POSIX 
functions.

However, libcurl is not present in the sysroots of the SDK, which installed 
here:
    /opt/poky/1.4.1

I was able to compile libcurl code by manually copying libcurl, gnutls,
and libtasn1 libraries and headers located in the build directory into 
/opt/poky/1.4.1/sysroots, but I would prefer to see
them installed with the sdk.

Is there any way of accomplishing this?

Any help would be appreciated.

Best regards,
squirem


