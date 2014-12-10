Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AC59E0087C; Wed, 10 Dec 2014 15:10:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C67D4E0080C
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 15:09:59 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id sBAN9vZW015716
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 15:09:58 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.230) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.174.1; Wed, 10 Dec 2014 15:09:57 -0800
Message-ID: <5488D2C4.4040704@windriver.com>
Date: Wed, 10 Dec 2014 17:09:56 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAKGbVbu0YsX18JUF89ec-6M8yUCHnfAM5B7ERQNiAYHTALJ8Bw@mail.gmail.com>	<CAAA4K6J_MjbyeL7Js1hw5C=7BqKFger1sanOtxjCe6tLBaQhvQ@mail.gmail.com>	<CAKGbVbuRpjsk2TViL=yhLOnp9Sguw3f29HHLaXE-xtt9Pud5HA@mail.gmail.com>	<CAAA4K6+dayiFaCo07ynMjefPkLjg5_54m2G16VExdUe-TpUYCg@mail.gmail.com>	<54871A7E.1050806@windriver.com>	<CAKGbVbv4-orudnvHJYBUZy25MX96Rx2=DEahEDUFxToPOwediQ@mail.gmail.com>
	<5487B76E.7010708@windriver.com>
In-Reply-To: <5487B76E.7010708@windriver.com>
Subject: Re: prelink & mklibs problem
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
X-List-Received-Date: Wed, 10 Dec 2014 23:10:08 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/9/14, 9:01 PM, Mark Hatle wrote:
> On 12/9/14, 8:41 PM, Qiang Yu wrote:
>> I have submitted a bug here:
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=7056
>
> (Responded in the bug as well...)  I have a test version of the cross prelink
> with the ARM HF patch available, as commit:
>
> 2cde4ff118b5244f5577d9bc585c1ee521740af0
>
> To enable it, use the following in your local.conf:
>
> SRCREV_pn-prelink = "2cde4ff118b5244f5577d9bc585c1ee521740af0"

That link breaks regular arm prelink, it also missed a patch for the prelink-rtld.

Got a new one:

SRCREV_pn-prelink = "81bab23a4661fdaaa859325d6d3603811ecf1849"

--Mark

> If this works for you, I'll finish the patch and submit the changes.
>
> --Mark
>
>> Regards,
>> Qiang
>>
>> On Tue, Dec 9, 2014 at 11:51 PM, Mark Hatle <mark.hatle@windriver.com
>> <mailto:mark.hatle@windriver.com>> wrote:
>>
>>      On 12/8/14, 3:55 AM, Jegan Chandru wrote:
>>
>>          I recommend you to file a bug here https://bugzilla.yoctoproject.__org/
>>          <https://bugzilla.yoctoproject.org/> if not
>>          done already. You may get a proper answer on armhf support there. From
>>          what I
>>          see, (someone please correct me if I am wrong), there is no prelink
>>          dynamic link
>>          armhf patch. You can also create and submit the patch for review. AFAIK,
>>          you are
>>          gonna need to something like below,
>>
>>          .dynamic_linker = "/lib/ld-linux-armhf.so.3" in arch-arm.c.
>>
>>          This is not tested though. Please do a test yourselves.
>>
>>
>>      See: http://marc.info/?l=fedora-__arm&m=135417053128837&w=2
>>      <http://marc.info/?l=fedora-arm&m=135417053128837&w=2>
>>
>>      Nobody had requested prelink support for armhf up to this point.
>>
>>      Open an enhancement / bug and assign it to me.  I'll do what I can to
>>      integrate the patch officially.
>>
>>      I had been waiting for the prelink upstream to merge this, but they never
>>      bothered to, so I'll have to make it a Yocto Project 'cross-prelink'
>>      specific path.
>>
>>      --Mark
>>
>>          -JC
>>
>>          On Mon, Dec 8, 2014 at 1:52 PM, Qiang Yu <yuq825@gmail.com
>>          <mailto:yuq825@gmail.com>
>>          <mailto:yuq825@gmail.com <mailto:yuq825@gmail.com>>> wrote:
>>
>>               Thanks for your reply. I almost give up.
>>
>>               You mean that current yocto build doesn't support hard float ABI
>>          prelink,
>>               and the prelink source code needs to
>>               be modified to use ld-linux-armhf.so.3?
>>
>>               So this problem affect all armhf build of yocto, in other words prelink
>>               doesn't work for yocto armhf at all now?
>>
>>               Regards,
>>               Qiang
>>
>>               On Mon, Dec 8, 2014 at 3:28 PM, Jegan Chandru <pcjegan@gmail.com
>>          <mailto:pcjegan@gmail.com>
>>               <mailto:pcjegan@gmail.com <mailto:pcjegan@gmail.com>>> wrote:
>>
>>                   Hi,
>>
>>                   I think it has to do with the ld-linux-armhf.so.3. May be you
>>          should
>>                   tell prelink that you have hard float ARM ABI to prelink for, than
>>                   ld-linux.so.3 . It means you need to add ld-linux-armhf.so.3 as a
>>                   dynamic linker.
>>                   You should patch the prelink source to get this done.
>>
>>                   HTH.
>>
>>                   -JC
>>
>>
>>
>>                   On Fri, Dec 5, 2014 at 7:41 AM, Qiang Yu <yuq825@gmail.com
>>          <mailto:yuq825@gmail.com>
>>                   <mailto:yuq825@gmail.com <mailto:yuq825@gmail.com>>> wrote:
>>
>>                       Hi all,
>>
>>                       I'm building a image with local.conf:
>>                       USER_CLASSES ?= "buildstats image-mklibs image-prelink"
>>
>>                       but I think prelink does nothing on my image, because the
>>          MD5SUM is
>>                       the same before and after
>>                       the prelink stage. The mklibs stage is also strange not print
>>                       anything. How to make prelink and
>>                       mklibs really work?
>>
>>                       Here is the log of log.do_rootfs:
>>
>>                       NOTE: ###### Generate images #######
>>                       NOTE: Executing mklibs_optimize_image ...
>>                       DEBUG: Executing shell function mklibs_optimize_image
>>                       DEBUG: Shell function mklibs_optimize_image finished
>>                       NOTE: Executing prelink_image ...
>>                       DEBUG: Executing shell function prelink_image
>>                       Size before prelinking 49304.
>>
>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__sbin/prelink:
>>                       /sbin/fstab-decode: Using /lib/ld-linux-armhf.so.3, not
>>                       /lib/ld-linux.so.3 as dynamic linker
>>
>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__sbin/prelink:
>>                       /sbin/bootlogd: Using /lib/ld-linux-armhf.so.3, not
>>                       /lib/ld-linux.so.3 as dynamic linker
>>
>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__sbin/prelink:
>>                       /sbin/killall5: Using /lib/ld-linux-armhf.so.3, not
>>                       /lib/ld-linux.so.3 as dynamic linker
>>
>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__sbin/prelink:
>>                       /sbin/init.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>                       /lib/ld-linux.so.3 as dynamic linker
>>
>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__sbin/prelink:
>>                       /sbin/halt.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>                       /lib/ld-linux.so.3 as dynamic linker
>>
>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__sbin/prelink:
>>                       /sbin/shutdown.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>                       /lib/ld-linux.so.3 as dynamic linker
>>
>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__sbin/prelink:
>>                       /sbin/runlevel.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>                       /lib/ld-linux.so.3 as dynamic linker
>>
>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__sbin/prelink:
>>                       /usr/sbin/dropbearmulti: Using /lib/ld-linux-armhf.so.3, not
>>                       /lib/ld-linux.so.3 as dynamic linker
>>
>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__sbin/prelink:
>>                       /bin/mountpoint.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>                       /lib/ld-linux.so.3 as dynamic linker
>>
>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__sbin/prelink:
>>                       /bin/busybox.suid: Using /lib/ld-linux-armhf.so.3, not
>>                       /lib/ld-linux.so.3 as dynamic linker
>>
>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__sbin/prelink:
>>                       /bin/busybox.nosuid: Using /lib/ld-linux-armhf.so.3, not
>>                       /lib/ld-linux.so.3 as dynamic linker
>>
>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__sbin/prelink:
>>                       /usr/bin/utmpdump.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>                       /lib/ld-linux.so.3 as dynamic linker
>>
>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__sbin/prelink:
>>                       /usr/bin/mesg.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>                       /lib/ld-linux.so.3 as dynamic linker
>>
>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__sbin/prelink:
>>                       /usr/bin/last.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>                       /lib/ld-linux.so.3 as dynamic linker
>>
>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__sbin/prelink:
>>                       /usr/bin/opkg-cl: Using /lib/ld-linux-armhf.so.3, not
>>                       /lib/ld-linux.so.3 as dynamic linker
>>
>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__sbin/prelink:
>>                       /usr/bin/bmw: Using /lib/ld-linux-armhf.so.3, not
>>          /lib/ld-linux.so.3
>>                       as dynamic linker
>>
>>          /opt/yocto/rootfs/tmp/__sysroots/x86_64-linux/usr/__sbin/prelink:
>>                       /usr/bin/wall.sysvinit: Using /lib/ld-linux-armhf.so.3, not
>>                       /lib/ld-linux.so.3 as dynamic linker
>>                       Size after prelinking 49304.
>>                       DEBUG: Shell function prelink_image finished
>>
>>                       Regards,
>>                       Qiang
>>
>>
>>                       --
>>                       _________________________________________________
>>                       yocto mailing list
>>          yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>          <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>__>
>>          https://lists.yoctoproject.__org/listinfo/yocto
>>          <https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
>>
>>
>>                   --
>>                   JCP
>>
>>
>>
>>
>>
>>          --
>>          JCP
>>
>>
>>
>>      --
>>      _________________________________________________
>>      yocto mailing list
>>      yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>      https://lists.yoctoproject.__org/listinfo/yocto
>>      <https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
>


