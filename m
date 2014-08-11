Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45F03E0078E; Mon, 11 Aug 2014 09:32:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB91AE004F2
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 09:32:07 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 8F6C3F811E8; Mon, 11 Aug 2014 10:32:06 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 15EA7F811E7;
	Mon, 11 Aug 2014 10:32:04 -0600 (MDT)
Message-ID: <53E8F027.1030105@mlbassoc.com>
Date: Mon, 11 Aug 2014 10:32:39 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Problems building SDK
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
X-List-Received-Date: Mon, 11 Aug 2014 16:32:14 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

As I reported on Friday (2014-08-08), I was having issues
installing an SDK I had built (xargs overflow).  Today, I
tried patching the appropriate .bbclass to change this behaviour
and rebuilt the SDK.  Sadly, this is now failing miserably.
It seems that there are pieces of the SDK left over from
last Friday that are conflicting with my builds of today.

First note that I have these variables set in my $DISTRO:
   DISTRO = "mydistro"
   DISTRO_NAME = "My distribution"
   MYDISTRO_DATE = "${DATE}"
   DISTRO_VERSION = "1.6+snapshot-${MYDISTRO_DATE}"
   SDK_VENDOR = "-mydistrosdk"
   SDK_VERSION = "${DISTRO_VERSION}"
   SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${TARGET_ARCH}"
   SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"

When I build an SDK today, it gets confused because ${DISTRO_VERSION}
is date-stamped.  I can see that some pieces are being placed in
a directory with last Friday's date, others with today's date:
   $ ls -l tmp/work/teton_p0382-mydistro-linux-gnueabi/mydistro-console-image/1.0-r0/sdk/image/opt/mydistro/
   total 8
   drwxr-xr-x 3 gthomas gthomas 4096 Aug  8 15:41 1.6+snapshot-20140808
   drwxr-xr-x 3 gthomas gthomas 4096 Aug 11 10:18 1.6+snapshot-20140811
Now when the SDK is packed up into the tar file, some bits are being
left out, etc, which leads to a broken SDK.

I'd like to keep the SDK date-stamped (in fact, I think I got this
idea from the Poky $DISTRO years ago) if possible.  Should this be
able to work, or should I just give up on the date-stamp?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

