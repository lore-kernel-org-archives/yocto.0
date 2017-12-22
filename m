Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0622AE00D75; Fri, 22 Dec 2017 12:27:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71D07E00D1C
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 12:27:46 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id vBMKRMoH011351
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 22 Dec 2017 12:27:22 -0800 (PST)
Received: from [128.224.22.44] (128.224.22.44) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 22 Dec 2017 12:27:21 -0800
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <a56c815971a74fedaf7f9676840447f1@sakuraus.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <3d3ef818-08f3-f706-45ae-264cc7cf7fff@windriver.com>
Date: Fri, 22 Dec 2017 16:27:22 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <a56c815971a74fedaf7f9676840447f1@sakuraus.com>
Subject: Re: Kernel configuration problem/confusion
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
X-List-Received-Date: Fri, 22 Dec 2017 20:27:47 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 12/22/2017 3:51 PM, Greg Wilson-Lindberg wrote:
> I'm trying to add some kernel configuration to a Raspberry pi3 yocto 
> build.  I've got the .cfg fragment being read in, but I'm getting 
> warnings that indicate that they are not making the desired changes.
> 
> 
> The first one is CONFIG_SND_SOC_MAX9768. This is a sound codec and the 
> Kconfig file has it in a long list of select's. the one for the MAX9768 is:
> 
>      select CONFIG_SND_SOC_MAX9768 if I2C
> 
> I2C is set, but CONFIG_SND_SOC_MAX9768 ends up undefined. the warning 
> I'm getting is:
> 
> ---------- CONFIG_SND_SOC_MAX9768 -----------------
> Config: CONFIG_SND_SOC_MAX9768
> From: 
> /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> Requested value:  CONFIG_SND_SOC_MAX9768=y
> Actual value:
> 
> Config 'SND_SOC_MAX9768' has the following conditionals:
> Dependency values are:
> 
> SND_SOC_MAX9768 ends up not being selected even though I try to set it 
> ti 'y'
> 
> 
> The second one is CONFIG_MAX1363, this is an ADC that I'm trying to set, 
> the warning is:
> 
> ---------- CONFIG_MAX1363 -----------------
> Config: CONFIG_MAX1363
> From: 
> /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> Requested value:  CONFIG_MAX1363=y
> Actual value:     # CONFIG_MAX1363 is not set
> 
> Config 'MAX1363' has the following conditionals:
>    I2C (value: "y")
> Dependency values are:
>    I2C [y]
> 
> It ends up being not set. In both cases the value that I'm trying to set 
> is ignored. Any insight would be greatly appreciated.

The python library that tries to detangle the Kconfig dependencies
isn't perfect (but I do have an update for it pending), so you might
not be getting the entire story in that information dumb.

Two things to check:

  - there are no other fragments that are disabling the same option
  - use menuconfig in the kernel to search the option and see what it
    reports for the dependencies.

There's some constraint or overriding command that is not allowing the
option into the final config, we just need to track it down.

Bruce

> 
> 
> Regards,
> 
> Greg
> 
> 
> 

