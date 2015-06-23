Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 916BFE009C8; Tue, 23 Jun 2015 16:01:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDF5CE00974
	for <yocto@yoctoproject.org>; Tue, 23 Jun 2015 16:01:34 -0700 (PDT)
Received: by igin14 with SMTP id n14so22616702igi.1
	for <yocto@yoctoproject.org>; Tue, 23 Jun 2015 16:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=t72crSmkd6izkZIL6hX6KC/Qk1AZ1U06KDz778JpzoI=;
	b=TWQcudRyf8ocUo/7BNM/nQhXKh8vWYC2ngyccI1chua40slhQDu/fM6pJ7UcrNDD35
	8Dz5eD2wzb0qHeCguqteN+YI3GN68k4Mk6vKwMIgS6t0M4842iuuaMqE2Mg+TBOThCGQ
	TrWy8XdT/cRELQdoZQOIptpVSij0PXw8plZ6cP9xEfGJYbO2E8KwJNgh2WvKbObJXA00
	lYA/M7uXypMHkFaz1xlOC+KahJzjwwy/qa+zkIaflR/tjCs2dPRLLdvKyJY8LJ0J7jy/
	Miu9JpNqpDC0+KsEE01wZoyfc3bxGlhGLgt1qT8yLTlqQhCtB/+88q9ACTAFwRvgTEbS
	4yRw==
X-Received: by 10.107.7.142 with SMTP id g14mr29173807ioi.21.1435100494037;
	Tue, 23 Jun 2015 16:01:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.34.18 with HTTP; Tue, 23 Jun 2015 16:01:14 -0700 (PDT)
From: Chris Morgan <chmorgan@gmail.com>
Date: Tue, 23 Jun 2015 19:01:14 -0400
Message-ID: <CAAPegz1a+Jf=DaTNnGDnGUrwZiEGCfc7f4F2tPpNvFmF3=M6Jg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: meta-mono: Issue building 4.0.2.4
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
X-List-Received-Date: Tue, 23 Jun 2015 23:01:39 -0000
Content-Type: text/plain; charset=UTF-8

The double nested output folder looks odd to me but leaving that, it
looks like a file is being installed twice. Anyone else seeing this?

meta
meta-skeleton     =
"(HEADdetachedat16caaab):16caaabfcc678b03a0cd88aaeac15f9b8d1c3dad"
meta-yocto
meta-yocto-bsp    =
"(HEADdetachedat16caaab):16caaabfcc678b03a0cd88aaeac15f9b8d1c3dad"
meta-mono         = "master:35e8ede514dd35eb3d645d5de22282d0e8204f86"
meta-oe
meta-webserver    =
"(HEADdetachedatdf6c7b1):df6c7b1279790d27ebfd58fbdfbac89bde5782ec"
meta-ti           =
"(HEADdetachedatb81014d):b81014dbb5cc39fdfa66af87d18b72eb9eb3c701"
meta-nodejs       =
"(HEADdetachedate724e27):e724e270bc23a14f12d4a0d73869199457a1b925"
bitbake-npm       =
"(HEADdetachedatd88833b):d88833bcf52da7d00e775ca8c2e63ca44cf6ace1"
meta-ros          =
"(HEADdetachedatbdc603b):bdc603b821eae5e1d966ec25e63f6832f6386dc8"
meta-rust         =
"(HEADdetachedat61708ed):61708ed85e76beafdb08b6caf340abeae13bf4b2"
meta-qt5          =
"(HEADdetachedat378dfc2):378dfc20ad0e024412da7f3be22efe04c3421c6d"
meta-ruby
meta-python
meta-networking   =
"(HEADdetachedatdf6c7b1):df6c7b1279790d27ebfd58fbdfbac89bde5782ec"


(output snipped)
| /usr/bin/install -c -c -m 644 frameworks/net_4.5.xml
/home/cmorgan/projects/yocto/build/tmp/work/x86_64-linux/mono-native/4.0.2.4-r0/image/home/cmorgan/projects/yocto/build/tmp/sysroots/x86_64-linux/usr/lib/mono/xbuild-frameworks/.NETFramework/v4.5/RedistList/FrameworkList.xml
| /usr/bin/install -c -c -m 644
targets/Microsoft.WebApplication.targets
/home/cmorgan/projects/yocto/build/tmp/work/x86_64-linux/mono-native/4.0.2.4-r0/image/home/cmorgan/projects/yocto/build/tmp/sysroots/x86_64-linux/usr/lib/mono/xbuild/Microsoft/VisualStudio/v9.0/WebApplications
| mkdir -p -- /home/cmorgan/projects/yocto/build/tmp/work/x86_64-linux/mono-native/4.0.2.4-r0/image/home/cmorgan/projects/yocto/build/tmp/sysroots/x86_64-linux/usr/lib/mono/xbuild/14.0/bin/MSBuild
| /usr/bin/install -c -c -m 644
targets/Microsoft.Portable.Common.targets
/home/cmorgan/projects/yocto/build/tmp/work/x86_64-linux/mono-native/4.0.2.4-r0/image/home/cmorgan/projects/yocto/build/tmp/sysroots/x86_64-linux/usr/lib/mono/xbuild/Microsoft/Portable/v4.0/Microsoft.Portable.Common.targets
| /usr/bin/install -c -c -m 644
targets/Microsoft.WebApplication.targets
/home/cmorgan/projects/yocto/build/tmp/work/x86_64-linux/mono-native/4.0.2.4-r0/image/home/cmorgan/projects/yocto/build/tmp/sysroots/x86_64-linux/usr/lib/mono/xbuild/Microsoft/VisualStudio/v9.0/WebApplications
| /usr/bin/install: cannot create regular file
'/home/cmorgan/projects/yocto/build/tmp/work/x86_64-linux/mono-native/4.0.2.4-r0/image/home/cmorgan/projects/yocto/build/tmp/sysroots/x86_64-linux/usr/lib/mono/xbuild-frameworks/.NETFramework/v4.5/RedistList/FrameworkList.xml':
File exists
| Makefile:42: recipe for target 'install-frameworks' failed
| make[6]: *** [install-frameworks] Error 1
| make[6]: *** Waiting for unfinished jobs....

