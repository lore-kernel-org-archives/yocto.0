Return-Path: <chris@yassl.com>
Received: from p3plsmtpa08-04.prod.phx3.secureserver.net
	(p3plsmtpa08-04.prod.phx3.secureserver.net [173.201.193.105])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 8F36FE002AC
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 09:06:33 -0700 (PDT)
Received: (qmail 28902 invoked from network); 6 Sep 2012 16:06:33 -0000
Received: from unknown (174.45.76.142)
	by p3plsmtpa08-04.prod.phx3.secureserver.net (173.201.193.105) with
	ESMTP; 06 Sep 2012 16:06:33 -0000
From: Chris Conlon <chris@yassl.com>
Date: Thu, 6 Sep 2012 10:06:31 -0600
Message-Id: <AA149620-AFAF-4670-8666-A34E500ADA75@yassl.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v1084)
X-Mailer: Apple Mail (2.1084)
Subject: CyaSSL Yocto Recipe
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
X-List-Received-Date: Thu, 06 Sep 2012 16:06:33 -0000
X-Groupsio-MsgNum: 9198
Content-Type: multipart/mixed; boundary=Apple-Mail-2609--726795293

--Apple-Mail-2609--726795293
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

As per discussions with a few of the Yocto members, we have put together a=
 Yocto Project recipe for the CyaSSL embedded SSL library.  I have attached=
 the recipe here for review and comments.

Thanks,

Chris Conlon
www.yassl.com
chris@yassl.com
Skype: chris_conlon_07
+1 406 209 0601



--Apple-Mail-2609--726795293
Content-Disposition: attachment;
	filename=cyassl_2.3.0.bb
Content-Type: application/octet-stream;
	name="cyassl_2.3.0.bb"
Content-Transfer-Encoding: 7bit

SUMMARY = "CyaSSL Embedded SSL Library"
DESCRIPTION = "CyaSSL is a lightweight SSL library written in C and \
               optimized for embedded and RTOS environments. It can be \
               Up to 20 times smaller than OpenSSL while still supporting \
               a full TLS 1.2 client and server."
HOMEPAGE = "http://www.yassl.com/yaSSL/Products-cyassl.html"
BUGTRACKER = "http://github.com/cyassl/cyassl/issues"
SECTION = "libs/network"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"

PR = "r0"

SRC_URI = "http://www.yassl.com/cyassl-${PV}.zip"

SRC_URI[md5sum] = "e73b50c95eae06a2fb4a7eb0183b21ab"
SRC_URI[sha256sum] = "b597f1c55d3bc4556d9c37e98ca56da2a529e111164d97c650fb097ef0a0d461"

inherit autotools siteinfo

# Detect and build with correct endianness
CFLAGS += "${@base_conditional('SITEINFO_ENDIANNESS', 'le', '', '-DBIG_ENDIAN_ORDER', d)}"


--Apple-Mail-2609--726795293--
