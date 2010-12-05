Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 010DF4C80039
	for <yocto@yoctoproject.org>; Sun,  5 Dec 2010 14:44:19 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB5KiIoV030215;
	Sun, 5 Dec 2010 20:44:18 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 30086-03; Sun,  5 Dec 2010 20:44:14 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB5KiDfh030208
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 5 Dec 2010 20:44:13 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
In-Reply-To: <AANLkTi=W6EZEqLRj-GOAagbBaSgR=KcN2J4oU2nX4x4b@mail.gmail.com>
References: <AANLkTi=W6EZEqLRj-GOAagbBaSgR=KcN2J4oU2nX4x4b@mail.gmail.com>
Date: Sun, 05 Dec 2010 20:44:11 +0000
Message-ID: <1291581851.14277.2907.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: LIC_FILES_CHKSUM issue
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
X-List-Received-Date: Sun, 05 Dec 2010 20:44:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2010-12-05 at 00:22 +0100, Frans Meulenbroeks wrote:
> Hi,
> 
> I was porting a recipe from OE to yocto and bumped into a
> LIC_FILES_CHKSUM  error.
> I get a message about  LIC_FILES_CHKSUM
> 
> Checked the ref man
> (http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html#usingpoky-specifying-LIC_FILES_CHKSUM)
> added this:
> LIC_FILES_CHKSUM = "file://COPYING; md5=xxxx"
> in the hope to get the checksum.
> However I don't get one, so I run md5sum on the COPYING file myself
> and replace xxxx with that value.
> 
> No success though, I still get:
> 
> | NOTE: Checking autotools environment for common misconfiguration
> | FATAL: Gettext required but not in DEPENDS for file
> /home/frans/poky/poky/build/tmp/work/armv5te-poky-linux-gnueabi/libcddb-1.3.2-r0/libcddb-1.3.2/configure.ac.
> | Missing inherit gettext?
> | ERROR: Error in executing python function in:
> /home/frans/poky/poky/meta-private/recipes/libcddb/libcddb_1.3.2.bb

Let me just cut your error down to the above. Its saying you need to add
gettext to DEPENDS.

The rest of the python traceback looks corrupt and is just confusing the
issue.

We have some things in planned in Poky to start trying to address error
handling and making it easier to work out whats wrong.

Cheers,

Richard



