Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74AFCE010AD; Mon,  8 Aug 2016 23:40:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35E51E00EA5
	for <yocto@yoctoproject.org>; Mon,  8 Aug 2016 23:40:41 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1bX0iN-0008H4-DY
	for yocto@yoctoproject.org; Tue, 09 Aug 2016 08:40:39 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: "robert.berger@gmane" <gmane@reliableembeddedsystems.com>
Date: Tue, 9 Aug 2016 09:40:32 +0300
Message-ID: <512a3f16-7c5e-970b-632f-04ee85a11f5a@reliableembeddedsystems.com>
References: <CAF_dkJBdaF9JtNmKO=s1Ji61kc1H2a7fhH8wo7LzoSjbB8_nsQ@mail.gmail.com>
	<CAF3SDA713t7BKc+cx_=xQJa4fySfoThJ3UsnCUq7FD9Y9W46kA@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
In-Reply-To: <CAF3SDA713t7BKc+cx_=xQJa4fySfoThJ3UsnCUq7FD9Y9W46kA@mail.gmail.com>
Cc: "yocto-EtnWKYl6rD/WsZ/bQMPhNw@public.gmane.org"
	<public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org>
Subject: Re: What is the simplest way to test a new kernel configuration in a Yocto Project?
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
X-List-Received-Date: Tue, 09 Aug 2016 06:40:46 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 2016-08-09 07:20, Daniel. wrote:
> Hi Patrick,
>
> If you are running your image embedded at some board, and have easy
> access to the board, you can plug it to network and make u-boot
> download kernel from your machine. So that deploy a new kernel becomes
> simple as copy the new kernel to the tftp folder, and rebooting
> target. This is also true for device-trees. And if you have NFS
> support is true for all userspace too. :)

To be precise the statically linked kernel + dtb can be loaded by u-boot 
over tftp (and nfs). The kernel modules are typically part of the rootfs 
so they would be exported by nfs in our scenario.

I usually use symbolic links in my tftp export as well as which nfs 
rootfs I export so I don't need to change the u-boot environment to boot 
from something different. Like this it's just a matter of copying things 
around on your PC and adjusting the symlinks.

Regards,

Robert




