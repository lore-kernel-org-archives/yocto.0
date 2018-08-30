Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBA86E00950; Thu, 30 Aug 2018 01:25:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Thu, 30 Aug 2018 01:25:53 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ED10E006C7
	for <yocto@yoctoproject.org>; Thu, 30 Aug 2018 01:25:53 -0700 (PDT)
Received: from [62.225.157.196] ([62.225.157.196]) by web-mail.gmx.net
	(3c-app-gmx-bs18.server.lan [172.19.170.70]) (via HTTP);
	Thu, 30 Aug 2018 10:20:50 +0200
MIME-Version: 1.0
Message-ID: <trinity-6baee42b-b991-4100-88d6-f0bde4871f7c-1535617250478@3c-app-gmx-bs18>
From: star@gmx.li
To: Yocto-mailing-list <yocto@yoctoproject.org>
Date: Thu, 30 Aug 2018 10:20:50 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:Mk4K9TsapH+JWUpsSeymdIkSY5q21ctQYVsZ8WyBeIBzpvb4af0V5UELTuAy1CRBdQM0k
	6+WMRCMuHr22sNGR3vAZ2mOvT39ek/PiN003OFwCiX6reHggBxS/PDTg7cyo7Xuh+gIYj8w5eLEL
	Sq/QoQbSVcrfz6HkdSfa/jA7gLtkdVjvvIYkL3DKKsbO1xW0FUtvdETJmftVld6WxDznOJZ559Gb
	2YRrusopp5FIQ6+e8NX+cPyLXHOXxc7zvYpYAbtTKGCcJkK/VVvt4f/g8iqT07cqY/L+aTFsso/i
	XY=
X-UI-Out-Filterresults: notjunk:1;V01:K0:Ap8zeZnYN3I=:rEOzZM0kD2aBMv3Hf7zAi6
	u1NegxGaO/yV2MAIeVrF8YTeJYRqZ+xnAEEZHghtfE+e9EWkR/TT0FQgEBqNoBLSNVZ0UOtuW
	hIF3Fcuf/eaMxzor+iHNqYE8qCz+O3G2Gn5JjWkbpQ97wfdFbe3KswBcXgyEhFw084vLX02um
	2efSV3lHWQQk4X0mJAtWhOA2ioJhWU3mvYuJD9RxHX5xAmpcXwZNoN+Q0x+JL4lmr0FpYKfLd
	NjfJpYEmC0RbUInePXfIvMWSpjYcHtRdapPoW7gm7fhWeFIZ7DoTjBjCAR8/Ov2Pox3E+pRNx
	NEt7jAx9qWl6p7PrWvWtPKKyLVadm4T7DpYVAYAOn3Zs906MQyrQbyLENn7Cp+DbGqd+GF7bu
	yvfGBG6A+WOXKDiyaGkLbHrDclea4gpFzub9BIB27ZhG0EaYb72mnyv9LxoVcK63kmtyjYTWj
	6c7UmBH3mzW8NiIXXfAbTikMkjJgyecbQqPXsmmxKgGfrwOWhLwt
Subject: modify SDK / populate_sdk
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
X-List-Received-Date: Thu, 30 Aug 2018 08:25:54 -0000
Content-Type: text/plain; charset=UTF-8

I want to remove some files (in this case etc/snmp/snmptrapd.conf as example) in SDK.
A bit strange to be, if I build this image (without -c populate_sdk), this is not part of it.
But it becomes part of the SDK.
The way I know to remove something in image (ROOTFS_POSTPROCESS_COMMAND) is not working here.

What can I do? How can I adjust what is in SDK?

