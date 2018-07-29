Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA5B0E00A48; Sat, 28 Jul 2018 17:53:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00, DATE_IN_FUTURE_03_06,
	RCVD_IN_DNSWL_MED autolearn=no version=3.3.1
X-Spam-HAM-Report: * 3.0 DATE_IN_FUTURE_03_06 Date: is 3 to 6 hours after
	Received: date
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BE6BE006EC
	for <yocto@yoctoproject.org>; Sat, 28 Jul 2018 17:53:07 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w6T0r4wv015076
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 28 Jul 2018 17:53:04 -0700
Received: from [128.224.20.58] (128.224.20.58) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.399.0;
	Sat, 28 Jul 2018 17:53:03 -0700
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <b33f8ef62bed47b3b9caee0478c376e8@sakuraus.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <77a6f381-cc24-44b4-8fb7-3916c66c6f68@windriver.com>
Date: Sun, 29 Jul 2018 00:53:03 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <b33f8ef62bed47b3b9caee0478c376e8@sakuraus.com>
Subject: Re: Kernel configuration problems
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
X-List-Received-Date: Sun, 29 Jul 2018 00:53:08 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 7/27/2018 6:20 PM, Greg Wilson-Lindberg wrote:
> I'm trying to add a couple of drivers to the kernel in a Raspberry pi3 
> build.
> 
> I've got the passing of the config options working, but I'm getting 
> warnings from the kernel build that the options are not being applied:
> 
> WARNING: linux-raspberrypi-1_4.4.50+gitAUTOINC+04c8e47067-r0 
> do_kernel_configcheck: [kernel config]: specified values did not make it 
> into the kernel's final configuration:
> 
> ---------- CONFIG_SND_SOC_MAX9768 -----------------
> Config: CONFIG_SND_SOC_MAX9768
> From: 
> /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> Requested value:  CONFIG_SND_SOC_MAX9768=y
> Actual value:
> 
> Config 'SND_SOC_MAX9768' has the following conditionals:
> Dependency values are:
> 
> ---------- CONFIG_MAX1363 -----------------
> Config: CONFIG_MAX1363
> From: 
> /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> Requested value:  CONFIG_MAX1363=m
> Actual value:     # CONFIG_MAX1363 is not set
> 
> Config 'MAX1363' has the following conditionals:
>    I2C (value: "y")
> Dependency values are:
>    I2C [y]
> 
> 
> My problem is that I don't understand why the options are not being applied.
> 
> For the MAX_9768, it depends on I2C=y which is true. I've run the linux 
> kernel menu config and when I get to the Sound SOC support none of the 
> drivers that require I2C support (i.e. 'select SND_SOC_MAX9768 if I2C') 
> are displayed. I don't see anything else that would disable them, the 
> other drivers in the SOC Kconfig that don't depend on I2C or that depend 
> on SPI_MASTER are displayed.
> 
> The MAX1363 can be set in the menuconfig to 'm', but still won't set 
> from the scc, cfg files.
> 
> Any insight into what's going on here would be greatly appreciated.

I can help with this ... but first, is this a configuration that I can
build myself ? i.e. what branch, what layers and what extra configs
would I need ?

Bruce

> 
> Regards,
> 
> cid:image001.png@01D35D7D.179A7510
> 
> *Greg Wilson-Lindberg *
> 
> *Principal Firmware Engineer | Sakura Finetek USA, Inc. *
> 
> **
> 
> 1750 W 214^th Street | Torrance, CA 90501 | U.S.A.
> 
> T: +1 310 783 5075
> 
> F: +1 310 618 6902 | E: gwilson@sakuraus.com<mailto:gwilson@sakuraus.com>
> 
> www.sakuraus.com<http://www.sakuraus.com>
> 
> cid:image002.png@01D35D7D.179A7510
> 
> 	
> 
> cid:image003.png@01D35D7D.179A7510
> 
> ------------------------------------------------------------------------
> 
> Confidentiality Notice: This e-mail transmission may contain 
> confidential or legally privileged information that is intended only for 
> the individual or entity named in the e-mail address. If you are not the 
> intended recipient, you are hereby notified that any disclosure, 
> copying, distribution, or reliance upon the contents of this e-mail is 
> strictly prohibited. If you have received this e-mail transmission in 
> error, please reply to the sender, so that Sakura Finetek USA, Inc. can 
> arrange for proper delivery, and then please delete the message from 
> your inbox. Thank you.
> 
> 
> 

