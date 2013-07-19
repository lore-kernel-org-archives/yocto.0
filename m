Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4989E0140D
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 09:09:33 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1V0DFB-0003ez-Ry
	for yocto@yoctoproject.org; Fri, 19 Jul 2013 18:09:22 +0200
Received: from 12.221.11.42 ([12.221.11.42])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 18:09:21 +0200
Received: from squirem by 12.221.11.42 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 18:09:21 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Saddam Quirem <squirem@fbdfrozen.com>
Date: Fri, 19 Jul 2013 16:09:03 +0000 (UTC)
Message-ID: <loom.20130719T173339-251@post.gmane.org>
References: <6E33FFB9BDF84745959E176E9A6B59BE4078954D@FBDLP-EX2010.fbdlp.local>
	<CA452391058F6D4E9715FB2C29D9312A01625D60@039-SN2MPN1-023.039d.mgd.msft.net>
	<loom.20130717T172709-633@post.gmane.org>
	<CA452391058F6D4E9715FB2C29D9312A01627246@039-SN2MPN1-023.039d.mgd.msft.net>
	<loom.20130718T174414-697@post.gmane.org>
	<alpine.DEB.2.00.1307181950150.21940@tvnag.unkk.fr>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 12.221.11.42 (Mozilla/5.0 (X11;
	Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko)
	Chrome/26.0.1410.43 Safari/537.31)
Subject: Re: Enabling SFTP on libcurl package
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
X-List-Received-Date: Fri, 19 Jul 2013 16:09:37 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Daniel Stenberg <daniel@...> writes:

> libssh2 is a rather standard autotools-using library that itself depends on a 
> crypto backend (OpenSSL or gcrypt). There should be plenty of recipes for 
> similar libs to get inspiration from.

Appreciate the response.

I added a libssh2 recipe in poky/meta/recipes-support/libssh2.

####Here are the contents of libssh2_1.4.3.bb:####
DESCRIPTION = "A client-side C library implementing the SSH2 protocol"
HOMEPAGE = "http://www.libssh2.org/"
BUGTRACKER = ""
LICENSE = "BSD"
LIC_FILES_CHKSUM = "file://COPYING;md5=d00afe44f336a79a2ca7e1681ce14509"
SECTION = "libs"
SRC_URI = "http://www.libssh2.org/download/${BPN}-${PV}.tar.gz"
DEPENDS = "libgcrypt"
SRC_URI[md5sum] = "071004c60c5d6f90354ad1b701013a0b"
SRC_URI[sha256sum] = "eac6f85f9df9db2e6386906a6227eb2cd7b3245739561cad7d6dc1d \
                      5d021b96d"
inherit autotools
#################################################

I'm not exactly sure where the bugtracker site is, 
but it's not necessary for bitbake.

In the curl recipe, I changed these lines:
    DEPENDS = "zlib gnutls"
    --without-libssh2 \
To this:
    DEPENDS = "zlib gnutls libssh2"
    --with-libssh2=${STAGING_LIBDIR} \

I'm using poky-dylan w/ Freesacale ARM BSP. There were no issues reported.
My application, which uses libcurl, now runs fine and can use SFTP to
upload to a remote site.

I've noticed that the master-next branch of poky does not include libssh2
and curl does not yet support SSH.

Since you're the author and maintainer of cURL, I was wondering why SSH
is not yet supported in the Yocto cURL package and if it will be?


