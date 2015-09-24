Return-Path: <colin.helliwell@LN-Systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 866FCE01062; Thu, 24 Sep 2015 01:17:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2413 seconds by postgrey-1.32 at yocto-www;
	Thu, 24 Sep 2015 01:17:02 PDT
Received: from lnsystems.lincoln.ln-systems.com (post.ln-systems.com
	[62.49.123.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C95E5E00A8C
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 01:17:01 -0700 (PDT)
Received: from LNSYSCH2 (firewall-ext.lincoln.ln-systems.com [62.49.123.65])
	by lnsystems.lincoln.ln-systems.com (8.13.1/8.13.1) with ESMTP id
	t8O7Xl6U008154; Thu, 24 Sep 2015 08:33:50 +0100
From: "Colin Helliwell" <colin.helliwell@LN-Systems.com>
To: "'Andrei Gherzan'" <andrei@gherzan.ro>, "'Jonathan Liu'" <net147@gmail.com>
References: <55ECF934.80902@gmail.com>
	<55F2304B.6070601@gmail.com>	<CANwerB3PB=JQRQmjcHkCrpW8_fTSN1DrmPFFT70CA3WJtN6CYw@mail.gmail.com>
	<20150923201253.GA23493@resin>
In-Reply-To: <20150923201253.GA23493@resin>
Date: Thu, 24 Sep 2015 08:36:34 +0100
Organization: LN Systems Limited
Message-ID: <019701d0f69b$bfb88890$3f2999b0$@LN-Systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQLJ9fXGiqxo6UXX4Hla4131rGNyaQI9U1ObAYsGKGsCJuduhpwp0Gew
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] du giving non-integer result?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@LN-Systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 24 Sep 2015 08:17:05 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

On my 'to do' list is pulling together the fs partitions into a single SD
card image file that can be copied in-one using a Windows tool (such as
Win32 Disk Imager) - primarily because my build machine is off-site. 
I've seen a few recipes along those lines (I'm on a BeagleBone), but perhaps
wic is a better way to go. Can wic create a single card image?

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Andrei Gherzan
Sent: 23 September 2015 21:13
To: Jonathan Liu
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi] du giving non-integer result?

....

Hi guys,

I'm testing and reviewing this as we speak. As well, it would be a good idea
to drop the sd card generation class for good and replace it completely by
wic support.

Something to be done. Wnat to pick this up? I know that there were people
around testing wic and we had configuration too.

Regards,

--
Andrei Gherzan
--



