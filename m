Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD021E0043F; Fri, 18 Jul 2014 11:45:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.204.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp486.redcondor.net (smtp486.redcondor.net [208.80.204.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18B94E00342
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 11:45:35 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20140718184525687
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 18:45:25 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=49920 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1X8D9k-0000tW-1Z; Fri, 18 Jul 2014 14:45:20 -0400
Date: Fri, 18 Jul 2014 14:45:17 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <53C9515F.1040504@mlbassoc.com>
Message-ID: <alpine.LFD.2.11.1407181439030.24703@localhost>
References: <53C94ACD.6010800@mlbassoc.com>
	<CABcZAN=B3uNLKrTK4j_G5Ex=9WQw3xHkidhVVR-2E-2oLpOrhw@mail.gmail.com>
	<53C9515F.1040504@mlbassoc.com>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: yocto@yoctoproject.org
Subject: Re: Extending images
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
X-List-Received-Date: Fri, 18 Jul 2014 18:45:38 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 18 Jul 2014, Gary Thomas wrote:

> On 2014-07-18 10:49, Christopher Larson wrote:
> >
> > On Fri, Jul 18, 2014 at 9:26 AM, Gary Thomas <gary@mlbassoc.com
> > <mailto:gary@mlbassoc.com>> wrote:
> >
> >     've always used 'IMAGE_INSTALL += " xyz"' in my local.conf
> >     to add new packages to a build.  That said, I had a working
> >     build for qemuarm (probably doesn't matter) and I added:
> >        IMAGE_INSTALL += " strace"
> >     This produced a completely broken image which barely came
> >     up to a shell, lots of missing programs, etc.
> >
> >     I then tried
> >        CORE_IMAGE_EXTRA_INSTALL += " strace"
> >     which produced a perfectly working build (just as previous)
> >     with the new package added.
> >
> >     I can see that the images produced are vastly different:
> >
> >     * Original working build
> >     -rw-r--r-- 1 gthomas gthomas     11719 Jul 18 09:34
> >     core-image-sato-qemuarm-__20140718124453.rootfs.manifest
> >     -rw-r--r-- 1 gthomas gthomas  87611203 Jul 18 09:34
> >     core-image-sato-qemuarm-__20140718124453.rootfs.tar.bz2
> >
> >     * After 'IMAGE_INSTALL += '
> >     -rw-r--r-- 1 gthomas gthomas      9986 Jul 18 09:55
> >     core-image-sato-qemuarm-__20140718155134.rootfs.manifest
> >     -rw-r--r-- 1 gthomas gthomas  37859884 Jul 18 09:56
> >     core-image-sato-qemuarm-__20140718155134.rootfs.tar.bz2
> >
> >     * After 'CORE_IMAGE_EXTRA_INSTALL += '
> >     -rw-r--r-- 1 gthomas gthomas     11738 Jul 18 10:05
> >     core-image-sato-qemuarm-__20140718160108.rootfs.manifest
> >     -rw-r--r-- 1 gthomas gthomas  87720106 Jul 18 10:05
> >     core-image-sato-qemuarm-__20140718160108.rootfs.tar.bz2
> >
> >     What's the difference and why did the first attempt fail?
> >
> >
> > Most likely the image defined its own IMAGE_INSTALL using ?=, so
> > defining it yourself in the configuration data overrode its
> > default definition, since ?= is "set only if unset". If the recipe
> > didn't use ?=, then your IMAGE_INSTALL += would have had no effect
> > at all. To append to IMAGE_INSTALL directly without using
> > CORE_IMAGE_EXTRA_INSTALL you could have used IMAGE_INSTALL_append,
> > since that's a postponed operation that happens at the end of the
> > recipe parsing.
>
> That makes sense, thanks.  I'll stick to using
> CORE_IMAGE_EXTRA_INSTALL from now on!

  not to sound repetitively repetitive, but this is related to what i
thought was the weird way core images are defined based off of
core-image.bbclass, where core-image.bbclass does *exactly* what you
describe above:

CORE_IMAGE_BASE_INSTALL = '\
    packagegroup-core-boot \
    packagegroup-base-extended \
    \
    ${CORE_IMAGE_EXTRA_INSTALL} \
    '

CORE_IMAGE_EXTRA_INSTALL ?= ""

IMAGE_INSTALL ?= "${CORE_IMAGE_BASE_INSTALL}"

  the danger here is that if someone has been defining/building images
for a while based off of the lower-level image.bbclass, then (i think)
using "IMAGE_INSTALL +=" will work just fine, and the poor developer
gets lulled into a false sense of security and carries that habit over
to her first core-image and ... boom.

  i know there's a standard to define variables prefixed with "EXTRA_"
meant for users to add features, and i think that's a great idea. i
think the docs should strongly emphasize that users should look for
the EXTRA_ variable before messing with anything else.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


