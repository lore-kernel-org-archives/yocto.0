Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C704E002A6
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 06:31:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q7NDVMD5011389
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 06:31:22 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Thu, 23 Aug 2012 06:31:21 -0700
Message-ID: <503630A3.90606@windriver.com>
Date: Thu, 23 Aug 2012 09:31:15 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Yocto Project Mailing List <yocto@yoctoproject.org>
References: <20120823151259.f1550eb3-e33f-4100-93dc-f39eab90e4b1.mhubig@imko.de>
In-Reply-To: <20120823151259.f1550eb3-e33f-4100-93dc-f39eab90e4b1.mhubig@imko.de>
Subject: Re: 1.3_M3 do_kernel_config failes, config_frag.txt is crippled.
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
X-List-Received-Date: Thu, 23 Aug 2012 13:31:26 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-08-23 09:24 AM, Markus Hubig wrote:
> Hello @all,
>
> because I need the commit 'dcadeda' I switched from denzil to 1.3_M3.
> Now I get a strage error while do_kernel_config:
>
> | configme --reconfig --output<...>/linux-portuxg20-standard-build standard stamp9g20
> | [INFO] Configuring target/machine combo: "standard/stamp9g20"
> | [INFO] collecting configs in ./meta/meta-series
> |   [##################################################]  (completed in 0 seconds)
> | ERROR: could not sanitize configuration fragments
> |    errors are logged in meta/cfg/standard/portuxg20/config.log
>
> Digin a bit deeper I found:
>
> | [INFO] Sanitizing meta/cfg/kernel-cache/features/fuse/fuse.cfg
> | [INFO] Sanitizing meta/cfg/kernel-cache/ktypes/standard/standard.cfg
> | [INFO] Sanitizing meta/cfg/kernel-cache/cfg/devtmpfs.cfg
> | [INFO] Sanitizing meta/cfg/kernel-cache/cfg/debugfs.cfg
> | [INFO] Sanitizing meta/cfgportuxg20
>                      ^^^^^^^^^^^^^^^^^
> | [ERROR] Kern frag  does not exist
>
> And again a bit deeper I found that the file
>
> | ./meta/cfg/standard/portuxg20/config_frag.txt
>
> is somewhat crippled:
>
> | ...
> | /kernel-cache/ktypes/standard/standard.cfg
> | /kernel-cache/cfg/devtmpfs.cfg
> | /kernel-cache/cfg/debugfs.cfg
> | portuxg20
>    ^^^^^^^^^
> | hardware.cfg
> | non-hardware.cfg
> | /kernel-cache/features/usb-net/usb-net.cfg
> | portuxg20
> | hardware.cfg
> | non-hardware.cfg
> | /kernel-cache/features/usb-net/usb-net.cfg
> | /hardware.cfg
> | /non-hardware.cfg
> | /portuxg20/portuxg20.cfg
> | /kernel-cache/features/netfilter/netfilter.cfg
> | /kernel-cache/features/taskstats/taskstats.cfg
>
> Who is creating this file?

Were you using yocto-bsp to create the BSP framework ? I did some test
builds of the layer you previously sent me, and I didn't reproduce the
problem, but this is the same thing that you had seen last week.

Do you have an updated layer that I can try against master ?

Bruce

>
> Cheers, Markus
>


