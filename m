Return-Path: <darcy.watkins@inmotiontechnology.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87275E00B20; Mon, 26 May 2014 11:23:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE,SPF_HELO_PASS
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 69 seconds by postgrey-1.32 at yocto-www;
	Mon, 26 May 2014 11:23:06 PDT
Received: from sierrawireless.com (unknown [208.81.121.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC17CE0073D
	for <yocto@yoctoproject.org>; Mon, 26 May 2014 11:23:06 -0700 (PDT)
Received: from [192.168.3.163] (184.71.143.26) by
	CARMD-EXCHHUB01.sierrawireless.local (10.0.6.2) with Microsoft SMTP
	Server (TLS) id 8.3.348.2; Mon, 26 May 2014 11:21:57 -0700
From: Darcy Watkins <darcy.watkins@inmotiontechnology.com>
To: yocto <yocto@yoctoproject.org>
Date: Mon, 26 May 2014 11:21:56 -0700
Message-ID: <1401128516.23417.9.camel@kihei.inmotion.gotdns.com>
MIME-Version: 1.0
X-Mailer: Evolution 2.28.3 (2.28.3-30.el6) 
Subject: update-rc.d initscript shows up as S00... rather than S09...
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
X-List-Received-Date: Mon, 26 May 2014 18:23:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hello,

In one of my bitbake recipes, I have...


inherit update-rc.d
...
INITSCRIPT_NAME = "watchdog-progressd"
INITSCRIPT_PARAMS = "start 09 S . stop 90 0 6 ."


...and then I install my initscript at
${D}${sysconfdir}/init.d/watchdog-progressd during do_install()

According to examples I have seen (and some of my other packages/recipes
that worked with no problem), this should result
in /etc/rcS.d/S09watchdog-progressd symlinking
to /etc/init.d/watchdog-progressd

What sort of error would cause it to show up in /etc/rcS.d/ as
S00watchdog-progressd instead?

That is 'S00' rather than 'S09'.


I am building for an x86 target using 'daisy' branch.



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


