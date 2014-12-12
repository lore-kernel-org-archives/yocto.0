Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAA90E0084E; Fri, 12 Dec 2014 07:43:46 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39F2EE002A6
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 07:43:34 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id sBCFhV5b006527
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Fri, 12 Dec 2014 07:43:31 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.230) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.174.1; Fri, 12 Dec 2014 07:43:30 -0800
Message-ID: <548B0D21.6040805@windriver.com>
Date: Fri, 12 Dec 2014 09:43:29 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Qiang Yu <yuq825@gmail.com>
References: <CAKGbVbu0YsX18JUF89ec-6M8yUCHnfAM5B7ERQNiAYHTALJ8Bw@mail.gmail.com>	<CAAA4K6J_MjbyeL7Js1hw5C=7BqKFger1sanOtxjCe6tLBaQhvQ@mail.gmail.com>	<CAKGbVbuRpjsk2TViL=yhLOnp9Sguw3f29HHLaXE-xtt9Pud5HA@mail.gmail.com>	<CAAA4K6+dayiFaCo07ynMjefPkLjg5_54m2G16VExdUe-TpUYCg@mail.gmail.com>	<54871A7E.1050806@windriver.com>	<CAKGbVbv4-orudnvHJYBUZy25MX96Rx2=DEahEDUFxToPOwediQ@mail.gmail.com>	<5487B76E.7010708@windriver.com>	<5488D2C4.4040704@windriver.com>
	<CAKGbVbs63PKWSdOk4B53M3iAO4tz1o9wbUQU2ip8tcTphLGJ9A@mail.gmail.com>
In-Reply-To: <CAKGbVbs63PKWSdOk4B53M3iAO4tz1o9wbUQU2ip8tcTphLGJ9A@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 12 Dec 2014 15:43:47 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/12/14, 12:57 AM, Qiang Yu wrote:
> Hi Mark,
>
> I have used the 81bab23a4661fdaaa859325d6d3603__811ecf1849 version prelink to
> build my image.
> Prelink run smoothly without output like before, the image is also modified, so
> the prelink works.
> My application also run correctly. But how can I make sure the prelink take
> effect when I start an
> executable?
>
> Here attaches the do_rootfs log:
> NOTE: ###### Generate images #######
> NOTE: Executing mklibs_optimize_image ...
> DEBUG: Executing shell function mklibs_optimize_image
> DEBUG: Shell function mklibs_optimize_image finished
> NOTE: Executing prelink_image ...
> DEBUG: Executing shell function prelink_image
> Size before prelinking 49340.
> Size after prelinking 49592.
> DEBUG: Shell function prelink_image finished

You can verify the binary has been prelinked via a number of steps:

*) Start with the size comparison, you should see it change.  (It did, so thats 
good)

*) Look at a binary in your image, such as /bin/busybox, look for the 
'.gnu.prelink_undo' section:

   objdump -x bin/busybox

  29 .gnu.prelink_undo 00000900  0000000000000000  0000000000000000  000b1b48  2**3
                   CONTENTS, READONLY


*) Switch to comparing a library, i.e. /lib64/libc.so.6:

readelf -S bin/libc.so.6

Compare the original to the rootfs filesystem.  You'll see the Address values 
have changed.  On the target system you can look at "/proc/self/maps" and grep 
'libc'  You'll see the load range, it should match the one from the readelf -S 
output.

*) Actually gather load time statistics from ld.so:

Probably the easiest of the methods..  but requires you to actually run the 
binaries in question to check behavior.  On the target:

LD_DEBUG=statistics <binary>

With prelink working the result will be something like:

root@qemu12:~# LD_DEBUG=statistics /bin/busybox
        126:                      number of relocations: 0
        126:           number of relocations from cache: 21
        126:             number of relative relocations: 0

(output)

        126:
        126:     runtime linker statistics:
        126:                final number of relocations: 0
        126:     final number of relocations from cache: 21

vs w/o prelink:

root@qemu12:~# LD_DEBUG=statistics /bin/busybox
        174:                      number of relocations: 126
        174:           number of relocations from cache: 0
        174:             number of relative relocations: 0

(output)

        174:
        174:     runtime linker statistics:
        174:                final number of relocations: 140
        174:     final number of relocations from cache: 0

--Mark


> Regards,
> Qiang
>
>
>
>
> On Thu, Dec 11, 2014 at 7:09 AM, Mark Hatle <mark.hatle@windriver.com
> <mailto:mark.hatle@windriver.com>> wrote:
>
>     On 12/9/14, 9:01 PM, Mark Hatle wrote:
>
>         On 12/9/14, 8:41 PM, Qiang Yu wrote:
>
>             I have submitted a bug here:
>             https://bugzilla.yoctoproject.__org/show_bug.cgi?id=7056
>             <https://bugzilla.yoctoproject.org/show_bug.cgi?id=7056>
>
>
>         (Responded in the bug as well...)  I have a test version of the cross
>         prelink
>         with the ARM HF patch available, as commit:
>
>         2cde4ff118b5244f5577d9bc585c1e__e521740af0
>
>         To enable it, use the following in your local.conf:
>
>         SRCREV_pn-prelink = "__2cde4ff118b5244f5577d9bc585c1e__e521740af0"
>
>
>     That link breaks regular arm prelink, it also missed a patch for the
>     prelink-rtld.
>
>     Got a new one:
>
>     SRCREV_pn-prelink = "__81bab23a4661fdaaa859325d6d3603__811ecf1849"
>
>     --Mark
>
>
>         If this works for you, I'll finish the patch and submit the changes.
>
>         --Mark
>
>             Regards,
>             Qiang
>
>             On Tue, Dec 9, 2014 at 11:51 PM, Mark Hatle
>             <mark.hatle@windriver.com <mailto:mark.hatle@windriver.com>
>             <mailto:mark.hatle@windriver.__com
>             <mailto:mark.hatle@windriver.com>>> wrote:
>
>                   On 12/8/14, 3:55 AM, Jegan Chandru wrote:
>
>                       I recommend you to file a bug here
>             https://bugzilla.yoctoproject.____org/
>                       <https://bugzilla.__yoctoproject.org/
>             <https://bugzilla.yoctoproject.org/>> if not
>                       done already. You may get a proper answer on armhf support
>             there. From
>                       what I
>                       see, (someone please correct me if I am wrong), there is
>             no prelink
>                       dynamic link
>                       armhf patch. You can also create and submit the patch for
>             review. AFAIK,
>                       you are
>                       gonna need to something like below,
>
>                       .dynamic_linker = "/lib/ld-linux-armhf.so.3" in arch-arm.c.
>
>                       This is not tested though. Please do a test yourselves.
>
>
>                   See: http://marc.info/?l=fedora-____arm&m=135417053128837&w=2
>             <http://marc.info/?l=fedora-__arm&m=135417053128837&w=2>
>                   <http://marc.info/?l=fedora-__arm&m=135417053128837&w=2
>             <http://marc.info/?l=fedora-arm&m=135417053128837&w=2>>
>
>                   Nobody had requested prelink support for armhf up to this point.
>
>                   Open an enhancement / bug and assign it to me.  I'll do what I
>             can to
>                   integrate the patch officially.
>
>                   I had been waiting for the prelink upstream to merge this, but
>             they never
>                   bothered to, so I'll have to make it a Yocto Project
>             'cross-prelink'
>                   specific path.
>
>                   --Mark
>
>                       -JC
>
>                       On Mon, Dec 8, 2014 at 1:52 PM, Qiang Yu <yuq825@gmail.com
>             <mailto:yuq825@gmail.com>
>                       <mailto:yuq825@gmail.com <mailto:yuq825@gmail.com>>
>                       <mailto:yuq825@gmail.com <mailto:yuq825@gmail.com>
>             <mailto:yuq825@gmail.com <mailto:yuq825@gmail.com>>>> wrote:
>
>                            Thanks for your reply. I almost give up.
>
>                            You mean that current yocto build doesn't support
>             hard float ABI
>                       prelink,
>                            and the prelink source code needs to
>                            be modified to use ld-linux-armhf.so.3?
>
>                            So this problem affect all armhf build of yocto, in
>             other words prelink
>                            doesn't work for yocto armhf at all now?
>
>                            Regards,
>                            Qiang
>
>                            On Mon, Dec 8, 2014 at 3:28 PM, Jegan Chandru
>             <pcjegan@gmail.com <mailto:pcjegan@gmail.com>
>                       <mailto:pcjegan@gmail.com <mailto:pcjegan@gmail.com>>
>                            <mailto:pcjegan@gmail.com <mailto:pcjegan@gmail.com>
>             <mailto:pcjegan@gmail.com <mailto:pcjegan@gmail.com>>>> wrote:
>
>                                Hi,
>
>                                I think it has to do with the
>             ld-linux-armhf.so.3. May be you
>                       should
>                                tell prelink that you have hard float ARM ABI to
>             prelink for, than
>                                ld-linux.so.3 . It means you need to add
>             ld-linux-armhf.so.3 as a
>                                dynamic linker.
>                                You should patch the prelink source to get this done.
>
>                                HTH.
>
>                                -JC
>
>
>
>                                On Fri, Dec 5, 2014 at 7:41 AM, Qiang Yu
>             <yuq825@gmail.com <mailto:yuq825@gmail.com>
>                       <mailto:yuq825@gmail.com <mailto:yuq825@gmail.com>>
>                                <mailto:yuq825@gmail.com
>             <mailto:yuq825@gmail.com> <mailto:yuq825@gmail.com
>             <mailto:yuq825@gmail.com>>>> wrote:
>
>                                    Hi all,
>
>                                    I'm building a image with local.conf:
>                                    USER_CLASSES ?= "buildstats image-mklibs
>             image-prelink"
>
>                                    but I think prelink does nothing on my image,
>             because the
>                       MD5SUM is
>                                    the same before and after
>                                    the prelink stage. The mklibs stage is also
>             strange not print
>                                    anything. How to make prelink and
>                                    mklibs really work?
>
>                                    Here is the log of log.do_rootfs:
>
>                                    NOTE: ###### Generate images #######
>                                    NOTE: Executing mklibs_optimize_image ...
>                                    DEBUG: Executing shell function
>             mklibs_optimize_image
>                                    DEBUG: Shell function mklibs_optimize_image
>             finished
>                                    NOTE: Executing prelink_image ...
>                                    DEBUG: Executing shell function prelink_image
>                                    Size before prelinking 49304.
>
>
>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____sbin/prelink:
>                                    /sbin/fstab-decode: Using
>             /lib/ld-linux-armhf.so.3, not
>                                    /lib/ld-linux.so.3 as dynamic linker
>
>
>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____sbin/prelink:
>                                    /sbin/bootlogd: Using
>             /lib/ld-linux-armhf.so.3, not
>                                    /lib/ld-linux.so.3 as dynamic linker
>
>
>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____sbin/prelink:
>                                    /sbin/killall5: Using
>             /lib/ld-linux-armhf.so.3, not
>                                    /lib/ld-linux.so.3 as dynamic linker
>
>
>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____sbin/prelink:
>                                    /sbin/init.sysvinit: Using
>             /lib/ld-linux-armhf.so.3, not
>                                    /lib/ld-linux.so.3 as dynamic linker
>
>
>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____sbin/prelink:
>                                    /sbin/halt.sysvinit: Using
>             /lib/ld-linux-armhf.so.3, not
>                                    /lib/ld-linux.so.3 as dynamic linker
>
>
>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____sbin/prelink:
>                                    /sbin/shutdown.sysvinit: Using
>             /lib/ld-linux-armhf.so.3, not
>                                    /lib/ld-linux.so.3 as dynamic linker
>
>
>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____sbin/prelink:
>                                    /sbin/runlevel.sysvinit: Using
>             /lib/ld-linux-armhf.so.3, not
>                                    /lib/ld-linux.so.3 as dynamic linker
>
>
>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____sbin/prelink:
>                                    /usr/sbin/dropbearmulti: Using
>             /lib/ld-linux-armhf.so.3, not
>                                    /lib/ld-linux.so.3 as dynamic linker
>
>
>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____sbin/prelink:
>                                    /bin/mountpoint.sysvinit: Using
>             /lib/ld-linux-armhf.so.3, not
>                                    /lib/ld-linux.so.3 as dynamic linker
>
>
>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____sbin/prelink:
>                                    /bin/busybox.suid: Using
>             /lib/ld-linux-armhf.so.3, not
>                                    /lib/ld-linux.so.3 as dynamic linker
>
>
>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____sbin/prelink:
>                                    /bin/busybox.nosuid: Using
>             /lib/ld-linux-armhf.so.3, not
>                                    /lib/ld-linux.so.3 as dynamic linker
>
>
>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____sbin/prelink:
>                                    /usr/bin/utmpdump.sysvinit: Using
>             /lib/ld-linux-armhf.so.3, not
>                                    /lib/ld-linux.so.3 as dynamic linker
>
>
>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____sbin/prelink:
>                                    /usr/bin/mesg.sysvinit: Using
>             /lib/ld-linux-armhf.so.3, not
>                                    /lib/ld-linux.so.3 as dynamic linker
>
>
>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____sbin/prelink:
>                                    /usr/bin/last.sysvinit: Using
>             /lib/ld-linux-armhf.so.3, not
>                                    /lib/ld-linux.so.3 as dynamic linker
>
>
>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____sbin/prelink:
>                                    /usr/bin/opkg-cl: Using
>             /lib/ld-linux-armhf.so.3, not
>                                    /lib/ld-linux.so.3 as dynamic linker
>
>
>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____sbin/prelink:
>                                    /usr/bin/bmw: Using /lib/ld-linux-armhf.so.3, not
>                       /lib/ld-linux.so.3
>                                    as dynamic linker
>
>
>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____sbin/prelink:
>                                    /usr/bin/wall.sysvinit: Using
>             /lib/ld-linux-armhf.so.3, not
>                                    /lib/ld-linux.so.3 as dynamic linker
>                                    Size after prelinking 49304.
>                                    DEBUG: Shell function prelink_image finished
>
>                                    Regards,
>                                    Qiang
>
>
>                                    --
>
>             ___________________________________________________
>                                    yocto mailing list
>             yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>             <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>__>
>                       <mailto:yocto@yoctoproject.org
>             <mailto:yocto@yoctoproject.org> <mailto:yocto@yoctoproject.org
>             <mailto:yocto@yoctoproject.org>__>__>
>             https://lists.yoctoproject.____org/listinfo/yocto
>                       <https://lists.yoctoproject.__org/listinfo/yocto
>             <https://lists.yoctoproject.org/listinfo/yocto>>
>
>
>
>
>                                --
>                                JCP
>
>
>
>
>
>                       --
>                       JCP
>
>
>
>                   --
>                   ___________________________________________________
>                   yocto mailing list
>             yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>             <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>__>
>             https://lists.yoctoproject.____org/listinfo/yocto
>                   <https://lists.yoctoproject.__org/listinfo/yocto
>             <https://lists.yoctoproject.org/listinfo/yocto>>
>
>
>
>
>     --
>     _________________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.__org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
>
>


