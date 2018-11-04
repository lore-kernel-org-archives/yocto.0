Return-Path: <jrswdnan22@snkmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D80AE00AB3; Sun,  4 Nov 2018 04:41:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [195.197.172.111 listed in list.dnswl.org]
Received: from gw03.mail.saunalahti.fi (gw03.mail.saunalahti.fi
	[195.197.172.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C916AE007DD
	for <yocto@yoctoproject.org>; Sun,  4 Nov 2018 04:41:48 -0800 (PST)
Received: from linux.suse (91-157-44-75.elisa-laajakaista.fi [91.157.44.75])
	by gw03.mail.saunalahti.fi (Postfix) with ESMTP id 514E620162;
	Sun,  4 Nov 2018 14:41:44 +0200 (EET)
From: Uwe Geuder <jrswdnan22@snkmail.com>
To: yocto@yoctoproject.org
In-Reply-To: <CAKPYHZ4VV_+PpwJE_=EVq2HNxfU4PuCjg-2T+AueB+9Jv1eG9A@mail.gmail.com>
References: <CAKPYHZ4VV_+PpwJE_=EVq2HNxfU4PuCjg-2T+AueB+9Jv1eG9A@mail.gmail.com>
Date: Sun, 04 Nov 2018 14:41:44 +0200
Message-ID: <877ehtj9pz.fsf@linux.suse>
MIME-Version: 1.0
Subject: Busybox_1.23.2 fails at do_compile on Poky-Sumo
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
X-List-Received-Date: Sun, 04 Nov 2018 12:41:50 -0000
Content-Type: text/plain

On Thu, Oct 18, 2018 at 11:03 AM Dhanush K.S dhanush.ks-at-gmail.com wrote:
>
> Hello Yocto,
>
> I'm currently building an image with the busybox_1.23.2.bb recipe
> included, using Yocto Sumo 2.5 with the Bitbake version 1.37.0. It is
> running on a CentOS host building images for the target ARM
> cortexa8. This busybox recipe is placed in another custom
> layer. Though this recipe compiles without errors in Poky-Fido, in
> Poky-Sumo I get compilation errors due to missing header files. I have
> pasted a part of the log.do.compile file with the error.

Well, Fido sounds very old, long before I started to use Yocto :) It was
probably before recipe-specific sysroots so a lot has changed.  On the
other hand byteswap.h, which it complains about, comes from glibc and
that you should have.  Maybe it's complicated in your case by a platform
specific implmentation I don't happen to have here right now.

Do you have a reason to build such an old busybox recipe? I get version
1.27.2 from meta (i.e. oe-core) and it builds.

Also your bitbake 1.37.0 indicates that you are not running the latest
Sumo 2.5.1 which has bitbake 1.38.0. Although I don't really expect that
it would solve your issue here, updating to 2.5.1 should be painless if
you are on 2.5 already.

Uwe Geuder
Neuro Event Labs Oy
Tampere, Finland
uwe.gexder at neuroeventlabs.com (Bot check: fix one obvious typo)

