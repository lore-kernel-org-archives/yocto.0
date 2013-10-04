Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F3CBE01654
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2013 17:53:28 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r940rOpV006275
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 3 Oct 2013 17:53:24 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.75) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.342.3; Thu, 3 Oct 2013 17:53:24 -0700
Message-ID: <524E1183.6020907@windriver.com>
Date: Thu, 3 Oct 2013 20:53:23 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: Parker Mackenzie <wparkermackenzie@live.com>
References: <BLU169-W9127A348CABC5098CC9ED0B2170@phx.gbl>,
	<524DD3BC.7080505@windriver.com>
	<BLU169-W86EB6DD276E984A3F87FAFB2100@phx.gbl>
In-Reply-To: <BLU169-W86EB6DD276E984A3F87FAFB2100@phx.gbl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cross Compile Kernel Modules
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
X-List-Received-Date: Fri, 04 Oct 2013 00:53:30 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-10-03 8:21 PM, Parker Mackenzie wrote:
> Thanks Bruce,
>
> That got me further. I added a comment to the video on YouTube which might help others which stumble across the presentation.
>
> Now I get the following error
> ERROR: Function failed: do_rootfs
>
> Which points me to a log file which indicates the following failed:
>
>
> Note: adding Smart RPM DB channel
>
> Note: to be installed: packagegroup-core-tools-debug@beagleboard kernel-dev@beagleboard rpm-postinsts@all packagegroup-core-boot@beagleboard libstdc++6@armv7a_vfp_neon
> Loading cache...
> Updating cache... ######################################## [100%]
>
> Computing transaction...error: Can't install kernel-dev-3.4.43+git0+1bab5bd090948b4cc4c4ed57c834603a3cf9f235_c994390cfa28339cbc1ec3b56eeec83a5fa75bb7-r4.4@beagleboard: no package provides /usr/bin/python
>
> Saving cache...
>
> ERROR: Function failed: do_rootfs (see /home/parker/Projects/beagleboard/yocto/poky-dylan-9.0.2/build/tmp/work/beagleboard-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.61003 for further information)
>
>
> However :
> [parker@jasper build]$ which python
> /usr/bin/python

That would be your build host's python. The kernel module is pulling it
in as a dependency for the target, so it needs to be part of the rootfs
packages.

Check that your have python in your dependencies/image install lists,
which bitbake -e <your image type> will dump ... among many other
things :)

Which image type are you building ? core-image-minimal ? Try adding this
to your local.conf: IMAGE_INSTALL_append = " python"

Cheers,

Bruce

>
>
> I have gone through the documentation; however, feel free to point me at a resource if this is a silly new-guy question. An internet search did bring up the following nugget; patch 2/3 sounds related, however, I am not sure how to proceed.
> http://comments.gmane.org/gmane.comp.handhelds.openembedded.core/34245
>
> Thanks in advance,
> Parker 		 	   		
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


