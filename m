Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6ED58E00C49; Sun, 28 Feb 2016 16:17:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCFF2E00C31
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 16:17:23 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 28 Feb 2016 16:17:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,518,1449561600"; d="scan'208";a="923003643"
Received: from gtan23-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.165.53])
	by orsmga002.jf.intel.com with ESMTP; 28 Feb 2016 16:17:19 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 29 Feb 2016 13:17:16 +1300
Message-ID: <3327973.x6IgOsuVxr@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.3.5-300.fc23.x86_64; KDE/4.14.17; x86_64; ;
	)
In-Reply-To: <2956615.y8hyrZheM7@peggleto-mobl.ger.corp.intel.com>
References: <2956615.y8hyrZheM7@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Cc: Brian Avery <brian.avery@intel.com>,
	openembedded-architecture@lists.openembedded.org
Subject: Standalone image writer
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
X-List-Received-Date: Mon, 29 Feb 2016 00:17:27 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

(changing subject line so people don't miss this slight tangent)

I'd almost completely forgotten, but the part of what we wrote for Hob to 
write images to a USB stick or SD card (bitbake/bin/image-writer) is actually 
a standalone application. There's not a lot to it - pick your image file and 
then the device you want to write it to; it has some logic in it to not let 
you accidentally write to devices that aren't USB sticks.

A few points:

- I'm not sure very many people know this tool exists, so it's likely it's not 
being widely used. Having said that it is a nice simple UI that does the job.

- It shares some code with Hob, but mostly not the bits with code quality 
issues, though it is still GTK+ 2 based.

- It doesn't support the advanced SD card writing functionality that has been 
implented within wic over the last few releases, which is pretty important for 
devices where a special partition layout is expected by the bootloader.

- Toaster can't really have this functionality in it because it's web based 
and the web server might not be running locally, so writing to a local USB 
stick or SD card isn't going to be practical from there; about all it could do 
is provide instructions on how to write the image once you've downloaded it.

- I believe there are other equivalent tools out there that various distros 
use for taking a downloadable ISO image and writing it to a USB stick. I 
haven't done a survey to find out if if any of them work in quite the same way; 
I know some of them actually unpack the image and then re-create a filesystem 
on the device, which isn't the right thing for our images.

- We do have a command-line equivalent in the form of scripts/contrib/ddimage 
in OE-Core. Of course it's command-line and thus less friendly but it does the 
job (and also has some safeguards against writing to the wrong device).

So what do we do with this? We have two choices really:

 A) Drop bitbake/bin/imagewriter along with Hob; we could potentially 
resurrect it again later if desired

 B) Preserve it along with the shared modules that it requires

Thoughts?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

