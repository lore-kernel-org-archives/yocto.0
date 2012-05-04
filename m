Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89349E00596
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 13:43:56 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q44Kht5g004161
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 4 May 2012 13:43:55 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 4 May 2012 13:43:55 -0700
Message-ID: <4FA43F89.9010809@windriver.com>
Date: Fri, 4 May 2012 16:43:53 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: jack <woailinux@hotmail.com>
References: <BLU0-SMTP9800BBCD2EEA3D7A38253CB92C0@phx.gbl>
In-Reply-To: <BLU0-SMTP9800BBCD2EEA3D7A38253CB92C0@phx.gbl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: When "bitbake core-image-sato-sdk", Error: Function failed: do_kernel_configme. Who can explain Bruce Ashfield's solution? thank you!
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
X-List-Received-Date: Fri, 04 May 2012 20:43:56 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-04 12:10 PM, jack wrote:
> Hello, all! When "bitbake core-image-sato-sdk", I was puzzled by such
> errors:
>
>
> NOTE: package
> linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4:
> task do_kernel_configme: Started
> ERROR: Function failed: do_kernel_configme (see
> /home/jackie/esdc/poky/build/tmp/work/esdc2012-poky-linux/linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4/temp/log.do_kernel_configme.18778
> for further information)
> ERROR: Logfile of failure stored in:
> /home/jackie/esdc/poky/build/tmp/work/esdc2012-poky-linux/linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4/temp/log.do_kernel_configme.18778
> Log data follows:
> | ERROR: Function failed: do_kernel_configme (see
> /home/jackie/esdc/poky/build/tmp/work/esdc2012-poky-linux/linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4/temp/log.do_kernel_configme.18778
> for further information)
> | [INFO] doing kernel configme
> |
> /home/jackie/esdc/poky/build/tmp/work/esdc2012-poky-linux/linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4/temp/run.do_kernel_configme.18778:
> line 92:
> :/home/jackie/esdc/poky/scripts:/home/jackie/esdc/poky/build/tmp/work/esdc2012-poky-linux/linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4/linux/scripts/util:
> No such file or directory
> NOTE: package
> linux-yocto-3.0.23+git1+59314a3523e360796419d76d78c6f7d8c5ef2593_1+63c65842a3a74e4bd3128004ac29b5639f16433f-r4:
> task do_kernel_configme: Failed
> ERROR: Task 760
> (/home/jackie/esdc/poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb,
> do_kernel_configme) failed with exit code '1'
> Waiting for 2 active tasks to finish:
> 0: gcc-cross-4.6.3+svnr184847-r23 do_compile (pid 14631)
> 1: eggdbus-native-0.6-r3 do_compile (pid 18130)
>
>
> I googled and found Bruce Ashfield
> <http://search.gmane.org/?author=Bruce+Ashfield&sort=date>'s solution:
> In the meantime, if you remove the kern-tools-native_git.bbappend from
> the meta-kernel-dev
> layer, the AUTOREV setting will be removed, and you won't pull in tools
> that are too
> new for the matching kernel.
>
> But where is the kern-tools-native_git.bbappend and meta-kernel-dev? I
> am newer to yocto, who can help me?

You wouldn't need any of this. What release are you using ? None of
the validated BSPs in any release will ever throw an error like this,
unless you changed something, or the fetch of the kernel tree
was corrupted.

Bruce

>
> Thanks!
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


