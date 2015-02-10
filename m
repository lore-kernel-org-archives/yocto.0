Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92D33E00815; Tue, 10 Feb 2015 09:28:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFED2E005A9;
	Tue, 10 Feb 2015 09:28:17 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id F3472F811E6; Tue, 10 Feb 2015 10:28:15 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 5D6A4F811E5;
	Tue, 10 Feb 2015 10:28:15 -0700 (MST)
Message-ID: <54DA3FBD.2000503@mlbassoc.com>
Date: Tue, 10 Feb 2015 10:28:29 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>, 
	"meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>
Subject: tmp/work-shared and sstate
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
X-List-Received-Date: Tue, 10 Feb 2015 17:28:26 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

If I run a build where the kernel package is brought in via
sstate, tmp/work-shared (in particular the kernel-source tree)
is not populated.  This will break at least these recipes:
   meta-fsl-arm/recipes-multimedia/gstreamer/gst-fsl-plugin_4.0.2.bb
   meta-fsl-arm/recipes-multimedia/alsa/fsl-alsa-plugins_1.0.25.bb

These programs reference the kernel includes directly for some
ARM/i.MX specific headers (e.g. <linux/mxcfb.h>).  These headers
are not part of the mainline kernel which is used to create the
kernel headers that populates tmp/sysroots, so the build fails.
Note: I'm not sure of the mechanism that lets these programs
peek into the kernel build (I looked at them but nothing jumped
out), but they do build find if the kernel is actually built
and not just brought in by sstate.

Is this an error & if so, which recipe is at fault?  The FSL
recipes, or the new kernel build/classes?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

