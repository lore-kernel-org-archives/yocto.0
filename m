Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90FADE00B20; Tue,  3 Jun 2014 14:36:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=SPF_HELO_PASS autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
X-Greylist: delayed 74 seconds by postgrey-1.32 at yocto-www;
	Tue, 03 Jun 2014 14:36:51 PDT
Received: from sierrawireless.com (spf.sierrawireless.com [208.81.121.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94637E0073D
	for <yocto@yoctoproject.org>; Tue,  3 Jun 2014 14:36:51 -0700 (PDT)
Received: from [192.168.3.163] (184.71.143.26) by
	CARMD-EXCHHUB01.sierrawireless.local (10.0.6.2) with Microsoft SMTP
	Server (TLS) id 8.3.348.2; Tue, 3 Jun 2014 14:35:36 -0700
From: Darcy Watkins <darcy.watkins@inmotiontechnology.com>
To: yocto <yocto@yoctoproject.org>
Date: Tue, 3 Jun 2014 14:35:35 -0700
Message-ID: <1401831335.4214.33.camel@kihei.inmotion.gotdns.com>
MIME-Version: 1.0
X-Mailer: Evolution 2.28.3 (2.28.3-30.el6) 
Subject: Installer Ext Image for USB Device
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
X-List-Received-Date: Tue, 03 Jun 2014 21:36:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

The yocto build has facilities to generate an ext2 filesystem for the
rootfs without the need to have root privilege while running the build.

I need to be able to generate an alternate ext2 filesystem with various
files in it as another byproduct of the same build.

What facility in the build system would be suitable to build on for this
and would run without requiring root privilege?

I am OK with a manual 'dd' step at the end using 'sudo' to write to
physical HW (just like I have to do for SD cards at present).

Thanks in advance.



-- 

Regards,

Darcy

---

Darcy Watkins
Staff Engineer, Firmware
In Motion Technology, a
Sierra Wireless company
350-625 Agnes St. New Westminster, BC
Canada, V3M 5Y4
[P1]


