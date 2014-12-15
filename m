Return-Path: <yuq825@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 712EDE00830; Sun, 14 Dec 2014 23:39:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuq825[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 338F0E007DF
	for <yocto@yoctoproject.org>; Sun, 14 Dec 2014 23:39:11 -0800 (PST)
Received: by mail-ig0-f177.google.com with SMTP id z20so4611361igj.10
	for <yocto@yoctoproject.org>; Sun, 14 Dec 2014 23:39:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=BRtsAQsX6PUTPcHTDoXfJ6L0iHgXQ1EUnilhihraKmY=;
	b=pc2sA2zRljf3VZ5v0N7cBHRHTh4PvqVLfJJwi6Zw4vRRvsoB8fa0PEs1wcGtlvWJvN
	/gUNzdJoKXB6PhKYbJrtL0cqzmXj8GNlCDoLdxuTfZpLJSmjt+t9rEBzKN+W3CCp0tbe
	hForF0RESMzMwdzGh1hjvNG7Zjg2YrWNuwO+Qyez8090CNANwx0NXP3oq9hCN/5Ukr3F
	aX8OkS/GNU7Al+pURTF+Vcz7Ocl7bcnu3QWUIdFjxVib1VDe5HCF1LWGueugTc1YViLy
	ghwk7qYZqn6BcW5GcSco9xy9bPeXRyaGVk/QLU9g9ApvKEFfLn3nL2UK9Hoe2nNiUrJb
	mW0A==
MIME-Version: 1.0
X-Received: by 10.107.46.28 with SMTP id i28mr27358867ioo.73.1418629150438;
	Sun, 14 Dec 2014 23:39:10 -0800 (PST)
Received: by 10.107.0.8 with HTTP; Sun, 14 Dec 2014 23:39:10 -0800 (PST)
In-Reply-To: <548B0D21.6040805@windriver.com>
References: <CAKGbVbu0YsX18JUF89ec-6M8yUCHnfAM5B7ERQNiAYHTALJ8Bw@mail.gmail.com>
	<CAAA4K6J_MjbyeL7Js1hw5C=7BqKFger1sanOtxjCe6tLBaQhvQ@mail.gmail.com>
	<CAKGbVbuRpjsk2TViL=yhLOnp9Sguw3f29HHLaXE-xtt9Pud5HA@mail.gmail.com>
	<CAAA4K6+dayiFaCo07ynMjefPkLjg5_54m2G16VExdUe-TpUYCg@mail.gmail.com>
	<54871A7E.1050806@windriver.com>
	<CAKGbVbv4-orudnvHJYBUZy25MX96Rx2=DEahEDUFxToPOwediQ@mail.gmail.com>
	<5487B76E.7010708@windriver.com> <5488D2C4.4040704@windriver.com>
	<CAKGbVbs63PKWSdOk4B53M3iAO4tz1o9wbUQU2ip8tcTphLGJ9A@mail.gmail.com>
	<548B0D21.6040805@windriver.com>
Date: Mon, 15 Dec 2014 15:39:10 +0800
Message-ID: <CAKGbVbvx2TjeRX4qucUKufABk0GfWWh+1ZknQ9g4DT7fNtPVoA@mail.gmail.com>
From: Qiang Yu <yuq825@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
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
X-List-Received-Date: Mon, 15 Dec 2014 07:39:22 -0000
Content-Type: multipart/alternative; boundary=001a11352f72947c8b050a3c56cd

--001a11352f72947c8b050a3c56cd
Content-Type: text/plain; charset=UTF-8

Thanks, Mark. All points have been checked, prelink really works for my
armhf build.

       160:                 number of relocations: 0
       160:      number of relocations from cache: 157
       160:        number of relative relocations: 0

Regards,
Qiang

On Fri, Dec 12, 2014 at 11:43 PM, Mark Hatle <mark.hatle@windriver.com>
wrote:

> On 12/12/14, 12:57 AM, Qiang Yu wrote:
>
>> Hi Mark,
>>
>> I have used the 81bab23a4661fdaaa859325d6d3603__811ecf1849 version
>> prelink to
>> build my image.
>> Prelink run smoothly without output like before, the image is also
>> modified, so
>> the prelink works.
>> My application also run correctly. But how can I make sure the prelink
>> take
>> effect when I start an
>> executable?
>>
>> Here attaches the do_rootfs log:
>> NOTE: ###### Generate images #######
>> NOTE: Executing mklibs_optimize_image ...
>> DEBUG: Executing shell function mklibs_optimize_image
>> DEBUG: Shell function mklibs_optimize_image finished
>> NOTE: Executing prelink_image ...
>> DEBUG: Executing shell function prelink_image
>> Size before prelinking 49340.
>> Size after prelinking 49592.
>> DEBUG: Shell function prelink_image finished
>>
>
> You can verify the binary has been prelinked via a number of steps:
>
> *) Start with the size comparison, you should see it change.  (It did, so
> thats good)
>
> *) Look at a binary in your image, such as /bin/busybox, look for the
> '.gnu.prelink_undo' section:
>
>   objdump -x bin/busybox
>
>  29 .gnu.prelink_undo 00000900  0000000000000000  0000000000000000
> 000b1b48  2**3
>                   CONTENTS, READONLY
>
>
> *) Switch to comparing a library, i.e. /lib64/libc.so.6:
>
> readelf -S bin/libc.so.6
>
> Compare the original to the rootfs filesystem.  You'll see the Address
> values have changed.  On the target system you can look at
> "/proc/self/maps" and grep 'libc'  You'll see the load range, it should
> match the one from the readelf -S output.
>
> *) Actually gather load time statistics from ld.so:
>
> Probably the easiest of the methods..  but requires you to actually run
> the binaries in question to check behavior.  On the target:
>
> LD_DEBUG=statistics <binary>
>
> With prelink working the result will be something like:
>
> root@qemu12:~# LD_DEBUG=statistics /bin/busybox
>        126:                      number of relocations: 0
>        126:           number of relocations from cache: 21
>        126:             number of relative relocations: 0
>
> (output)
>
>        126:
>        126:     runtime linker statistics:
>        126:                final number of relocations: 0
>        126:     final number of relocations from cache: 21
>
> vs w/o prelink:
>
> root@qemu12:~# LD_DEBUG=statistics /bin/busybox
>        174:                      number of relocations: 126
>        174:           number of relocations from cache: 0
>        174:             number of relative relocations: 0
>
> (output)
>
>        174:
>        174:     runtime linker statistics:
>        174:                final number of relocations: 140
>        174:     final number of relocations from cache: 0
>
> --Mark
>
>
>  Regards,
>> Qiang
>>
>>
>>
>>
>> On Thu, Dec 11, 2014 at 7:09 AM, Mark Hatle <mark.hatle@windriver.com
>> <mailto:mark.hatle@windriver.com>> wrote:
>>
>>     On 12/9/14, 9:01 PM, Mark Hatle wrote:
>>
>>         On 12/9/14, 8:41 PM, Qiang Yu wrote:
>>
>>             I have submitted a bug here:
>>             https://bugzilla.yoctoproject.__org/show_bug.cgi?id=7056
>>             <https://bugzilla.yoctoproject.org/show_bug.cgi?id=7056>
>>
>>
>>         (Responded in the bug as well...)  I have a test version of the
>> cross
>>         prelink
>>         with the ARM HF patch available, as commit:
>>
>>         2cde4ff118b5244f5577d9bc585c1e__e521740af0
>>
>>         To enable it, use the following in your local.conf:
>>
>>         SRCREV_pn-prelink = "__2cde4ff118b5244f5577d9bc585c1e
>> __e521740af0"
>>
>>
>>     That link breaks regular arm prelink, it also missed a patch for the
>>     prelink-rtld.
>>
>>     Got a new one:
>>
>>     SRCREV_pn-prelink = "__81bab23a4661fdaaa859325d6d3603__811ecf1849"
>>
>>     --Mark
>>
>>
>>         If this works for you, I'll finish the patch and submit the
>> changes.
>>
>>         --Mark
>>
>>             Regards,
>>             Qiang
>>
>>             On Tue, Dec 9, 2014 at 11:51 PM, Mark Hatle
>>             <mark.hatle@windriver.com <mailto:mark.hatle@windriver.com>
>>             <mailto:mark.hatle@windriver.__com
>>             <mailto:mark.hatle@windriver.com>>> wrote:
>>
>>                   On 12/8/14, 3:55 AM, Jegan Chandru wrote:
>>
>>                       I recommend you to file a bug here
>>             https://bugzilla.yoctoproject.____org/
>>                       <https://bugzilla.__yoctoproject.org/
>>             <https://bugzilla.yoctoproject.org/>> if not
>>                       done already. You may get a proper answer on armhf
>> support
>>             there. From
>>                       what I
>>                       see, (someone please correct me if I am wrong),
>> there is
>>             no prelink
>>                       dynamic link
>>                       armhf patch. You can also create and submit the
>> patch for
>>             review. AFAIK,
>>                       you are
>>                       gonna need to something like below,
>>
>>                       .dynamic_linker = "/lib/ld-linux-armhf.so.3" in
>> arch-arm.c.
>>
>>                       This is not tested though. Please do a test
>> yourselves.
>>
>>
>>                   See: http://marc.info/?l=fedora-___
>> _arm&m=135417053128837&w=2
>>             <http://marc.info/?l=fedora-__arm&m=135417053128837&w=2>
>>
>>                   <http://marc.info/?l=fedora-__arm&m=135417053128837&w=2
>>             <http://marc.info/?l=fedora-arm&m=135417053128837&w=2>>
>>
>>                   Nobody had requested prelink support for armhf up to
>> this point.
>>
>>                   Open an enhancement / bug and assign it to me.  I'll do
>> what I
>>             can to
>>                   integrate the patch officially.
>>
>>                   I had been waiting for the prelink upstream to merge
>> this, but
>>             they never
>>                   bothered to, so I'll have to make it a Yocto Project
>>             'cross-prelink'
>>                   specific path.
>>
>>                   --Mark
>>
>>                       -JC
>>
>>                       On Mon, Dec 8, 2014 at 1:52 PM, Qiang Yu <
>> yuq825@gmail.com
>>             <mailto:yuq825@gmail.com>
>>                       <mailto:yuq825@gmail.com <mailto:yuq825@gmail.com>>
>>                       <mailto:yuq825@gmail.com <mailto:yuq825@gmail.com>
>>             <mailto:yuq825@gmail.com <mailto:yuq825@gmail.com>>>> wrote:
>>
>>                            Thanks for your reply. I almost give up.
>>
>>                            You mean that current yocto build doesn't
>> support
>>             hard float ABI
>>                       prelink,
>>                            and the prelink source code needs to
>>                            be modified to use ld-linux-armhf.so.3?
>>
>>                            So this problem affect all armhf build of
>> yocto, in
>>             other words prelink
>>                            doesn't work for yocto armhf at all now?
>>
>>                            Regards,
>>                            Qiang
>>
>>                            On Mon, Dec 8, 2014 at 3:28 PM, Jegan Chandru
>>             <pcjegan@gmail.com <mailto:pcjegan@gmail.com>
>>                       <mailto:pcjegan@gmail.com <mailto:pcjegan@gmail.com
>> >>
>>                            <mailto:pcjegan@gmail.com <mailto:
>> pcjegan@gmail.com>
>>             <mailto:pcjegan@gmail.com <mailto:pcjegan@gmail.com>>>>
>> wrote:
>>
>>                                Hi,
>>
>>                                I think it has to do with the
>>             ld-linux-armhf.so.3. May be you
>>                       should
>>                                tell prelink that you have hard float ARM
>> ABI to
>>             prelink for, than
>>                                ld-linux.so.3 . It means you need to add
>>             ld-linux-armhf.so.3 as a
>>                                dynamic linker.
>>                                You should patch the prelink source to get
>> this done.
>>
>>                                HTH.
>>
>>                                -JC
>>
>>
>>
>>                                On Fri, Dec 5, 2014 at 7:41 AM, Qiang Yu
>>             <yuq825@gmail.com <mailto:yuq825@gmail.com>
>>                       <mailto:yuq825@gmail.com <mailto:yuq825@gmail.com>>
>>                                <mailto:yuq825@gmail.com
>>             <mailto:yuq825@gmail.com> <mailto:yuq825@gmail.com
>>             <mailto:yuq825@gmail.com>>>> wrote:
>>
>>                                    Hi all,
>>
>>                                    I'm building a image with local.conf:
>>                                    USER_CLASSES ?= "buildstats
>> image-mklibs
>>             image-prelink"
>>
>>                                    but I think prelink does nothing on my
>> image,
>>             because the
>>                       MD5SUM is
>>                                    the same before and after
>>                                    the prelink stage. The mklibs stage is
>> also
>>             strange not print
>>                                    anything. How to make prelink and
>>                                    mklibs really work?
>>
>>                                    Here is the log of log.do_rootfs:
>>
>>                                    NOTE: ###### Generate images #######
>>                                    NOTE: Executing mklibs_optimize_image
>> ...
>>                                    DEBUG: Executing shell function
>>             mklibs_optimize_image
>>                                    DEBUG: Shell function
>> mklibs_optimize_image
>>             finished
>>                                    NOTE: Executing prelink_image ...
>>                                    DEBUG: Executing shell function
>> prelink_image
>>                                    Size before prelinking 49304.
>>
>>
>>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____
>> sbin/prelink:
>>                                    /sbin/fstab-decode: Using
>>             /lib/ld-linux-armhf.so.3, not
>>                                    /lib/ld-linux.so.3 as dynamic linker
>>
>>
>>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____
>> sbin/prelink:
>>                                    /sbin/bootlogd: Using
>>             /lib/ld-linux-armhf.so.3, not
>>                                    /lib/ld-linux.so.3 as dynamic linker
>>
>>
>>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____
>> sbin/prelink:
>>                                    /sbin/killall5: Using
>>             /lib/ld-linux-armhf.so.3, not
>>                                    /lib/ld-linux.so.3 as dynamic linker
>>
>>
>>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____
>> sbin/prelink:
>>                                    /sbin/init.sysvinit: Using
>>             /lib/ld-linux-armhf.so.3, not
>>                                    /lib/ld-linux.so.3 as dynamic linker
>>
>>
>>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____
>> sbin/prelink:
>>                                    /sbin/halt.sysvinit: Using
>>             /lib/ld-linux-armhf.so.3, not
>>                                    /lib/ld-linux.so.3 as dynamic linker
>>
>>
>>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____
>> sbin/prelink:
>>                                    /sbin/shutdown.sysvinit: Using
>>             /lib/ld-linux-armhf.so.3, not
>>                                    /lib/ld-linux.so.3 as dynamic linker
>>
>>
>>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____
>> sbin/prelink:
>>                                    /sbin/runlevel.sysvinit: Using
>>             /lib/ld-linux-armhf.so.3, not
>>                                    /lib/ld-linux.so.3 as dynamic linker
>>
>>
>>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____
>> sbin/prelink:
>>                                    /usr/sbin/dropbearmulti: Using
>>             /lib/ld-linux-armhf.so.3, not
>>                                    /lib/ld-linux.so.3 as dynamic linker
>>
>>
>>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____
>> sbin/prelink:
>>                                    /bin/mountpoint.sysvinit: Using
>>             /lib/ld-linux-armhf.so.3, not
>>                                    /lib/ld-linux.so.3 as dynamic linker
>>
>>
>>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____
>> sbin/prelink:
>>                                    /bin/busybox.suid: Using
>>             /lib/ld-linux-armhf.so.3, not
>>                                    /lib/ld-linux.so.3 as dynamic linker
>>
>>
>>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____
>> sbin/prelink:
>>                                    /bin/busybox.nosuid: Using
>>             /lib/ld-linux-armhf.so.3, not
>>                                    /lib/ld-linux.so.3 as dynamic linker
>>
>>
>>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____
>> sbin/prelink:
>>                                    /usr/bin/utmpdump.sysvinit: Using
>>             /lib/ld-linux-armhf.so.3, not
>>                                    /lib/ld-linux.so.3 as dynamic linker
>>
>>
>>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____
>> sbin/prelink:
>>                                    /usr/bin/mesg.sysvinit: Using
>>             /lib/ld-linux-armhf.so.3, not
>>                                    /lib/ld-linux.so.3 as dynamic linker
>>
>>
>>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____
>> sbin/prelink:
>>                                    /usr/bin/last.sysvinit: Using
>>             /lib/ld-linux-armhf.so.3, not
>>                                    /lib/ld-linux.so.3 as dynamic linker
>>
>>
>>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____
>> sbin/prelink:
>>                                    /usr/bin/opkg-cl: Using
>>             /lib/ld-linux-armhf.so.3, not
>>                                    /lib/ld-linux.so.3 as dynamic linker
>>
>>
>>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____
>> sbin/prelink:
>>                                    /usr/bin/bmw: Using
>> /lib/ld-linux-armhf.so.3, not
>>                       /lib/ld-linux.so.3
>>                                    as dynamic linker
>>
>>
>>               /opt/yocto/rootfs/tmp/____sysroots/x86_64-linux/usr/____
>> sbin/prelink:
>>                                    /usr/bin/wall.sysvinit: Using
>>             /lib/ld-linux-armhf.so.3, not
>>                                    /lib/ld-linux.so.3 as dynamic linker
>>                                    Size after prelinking 49304.
>>                                    DEBUG: Shell function prelink_image
>> finished
>>
>>                                    Regards,
>>                                    Qiang
>>
>>
>>                                    --
>>
>>             ___________________________________________________
>>                                    yocto mailing list
>>             yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>             <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org
>> >__>
>>                       <mailto:yocto@yoctoproject.org
>>             <mailto:yocto@yoctoproject.org> <mailto:
>> yocto@yoctoproject.org
>>             <mailto:yocto@yoctoproject.org>__>__>
>>             https://lists.yoctoproject.____org/listinfo/yocto
>>                       <https://lists.yoctoproject.__org/listinfo/yocto
>>             <https://lists.yoctoproject.org/listinfo/yocto>>
>>
>>
>>
>>
>>                                --
>>                                JCP
>>
>>
>>
>>
>>
>>                       --
>>                       JCP
>>
>>
>>
>>                   --
>>                   ___________________________________________________
>>                   yocto mailing list
>>             yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>             <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org
>> >__>
>>             https://lists.yoctoproject.____org/listinfo/yocto
>>                   <https://lists.yoctoproject.__org/listinfo/yocto
>>             <https://lists.yoctoproject.org/listinfo/yocto>>
>>
>>
>>
>>
>>     --
>>     _________________________________________________
>>     yocto mailing list
>>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>     https://lists.yoctoproject.__org/listinfo/yocto
>>     <https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
>>
>

--001a11352f72947c8b050a3c56cd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+VGhhbmtzLCBNYXJrLiBBbGwgcG9pbnRzIGhhdmUgYmVlbiBjaGVja2Vk
LCBwcmVsaW5rIHJlYWxseSB3b3JrcyBmb3IgbXkgYXJtaGYgYnVpbGQuPGRpdj48YnI+PC9kaXY+
PGRpdj48ZGl2PsKgIMKgIMKgIMKgMTYwOjxzcGFuIGNsYXNzPSIiIHN0eWxlPSJ3aGl0ZS1zcGFj
ZTpwcmUiPgk8L3NwYW4+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIG51bWJlciBvZiByZWxvY2F0
aW9uczogMDwvZGl2PjxkaXY+wqAgwqAgwqAgwqAxNjA6PHNwYW4gY2xhc3M9IiIgc3R5bGU9Indo
aXRlLXNwYWNlOnByZSI+CTwvc3Bhbj4gwqAgwqAgwqBudW1iZXIgb2YgcmVsb2NhdGlvbnMgZnJv
bSBjYWNoZTogMTU3PC9kaXY+PGRpdj7CoCDCoCDCoCDCoDE2MDo8c3BhbiBjbGFzcz0iIiBzdHls
ZT0id2hpdGUtc3BhY2U6cHJlIj4JPC9zcGFuPiDCoCDCoCDCoCDCoG51bWJlciBvZiByZWxhdGl2
ZSByZWxvY2F0aW9uczogMDwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+UmVnYXJkcyw8L2Rpdj48
L2Rpdj48ZGl2PlFpYW5nPC9kaXY+PC9kaXY+PGRpdiBjbGFzcz0iZ21haWxfZXh0cmEiPjxicj48
ZGl2IGNsYXNzPSJnbWFpbF9xdW90ZSI+T24gRnJpLCBEZWMgMTIsIDIwMTQgYXQgMTE6NDMgUE0s
IE1hcmsgSGF0bGUgPHNwYW4gZGlyPSJsdHIiPiZsdDs8YSBocmVmPSJtYWlsdG86bWFyay5oYXRs
ZUB3aW5kcml2ZXIuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFyay5oYXRsZUB3aW5kcml2ZXIuY29t
PC9hPiZndDs8L3NwYW4+IHdyb3RlOjxicj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUi
IHN0eWxlPSJtYXJnaW46MCAwIDAgLjhleDtib3JkZXItbGVmdDoxcHggI2NjYyBzb2xpZDtwYWRk
aW5nLWxlZnQ6MWV4Ij48c3BhbiBjbGFzcz0iIj5PbiAxMi8xMi8xNCwgMTI6NTcgQU0sIFFpYW5n
IFl1IHdyb3RlOjxicj4NCjwvc3Bhbj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0
eWxlPSJtYXJnaW46MCAwIDAgLjhleDtib3JkZXItbGVmdDoxcHggI2NjYyBzb2xpZDtwYWRkaW5n
LWxlZnQ6MWV4Ij4NCkhpIE1hcmssPGJyPg0KPGJyPg0KSSBoYXZlIHVzZWQgdGhlIDgxYmFiMjNh
NDY2MWZkYWFhODU5MzI1ZDZkMzYwMzx1PjwvdT5fXzgxMWVjZjE4NDkgdmVyc2lvbiBwcmVsaW5r
IHRvPHNwYW4gY2xhc3M9IiI+PGJyPg0KYnVpbGQgbXkgaW1hZ2UuPGJyPg0KUHJlbGluayBydW4g
c21vb3RobHkgd2l0aG91dCBvdXRwdXQgbGlrZSBiZWZvcmUsIHRoZSBpbWFnZSBpcyBhbHNvIG1v
ZGlmaWVkLCBzbzxicj4NCnRoZSBwcmVsaW5rIHdvcmtzLjxicj4NCk15IGFwcGxpY2F0aW9uIGFs
c28gcnVuIGNvcnJlY3RseS4gQnV0IGhvdyBjYW4gSSBtYWtlIHN1cmUgdGhlIHByZWxpbmsgdGFr
ZTxicj4NCmVmZmVjdCB3aGVuIEkgc3RhcnQgYW48YnI+DQpleGVjdXRhYmxlPzxicj4NCjxicj4N
CkhlcmUgYXR0YWNoZXMgdGhlIGRvX3Jvb3RmcyBsb2c6PGJyPg0KTk9URTogIyMjIyMjIEdlbmVy
YXRlIGltYWdlcyAjIyMjIyMjPGJyPg0KTk9URTogRXhlY3V0aW5nIG1rbGlic19vcHRpbWl6ZV9p
bWFnZSAuLi48YnI+DQpERUJVRzogRXhlY3V0aW5nIHNoZWxsIGZ1bmN0aW9uIG1rbGlic19vcHRp
bWl6ZV9pbWFnZTxicj4NCkRFQlVHOiBTaGVsbCBmdW5jdGlvbiBta2xpYnNfb3B0aW1pemVfaW1h
Z2UgZmluaXNoZWQ8YnI+DQpOT1RFOiBFeGVjdXRpbmcgcHJlbGlua19pbWFnZSAuLi48YnI+DQpE
RUJVRzogRXhlY3V0aW5nIHNoZWxsIGZ1bmN0aW9uIHByZWxpbmtfaW1hZ2U8YnI+DQpTaXplIGJl
Zm9yZSBwcmVsaW5raW5nIDQ5MzQwLjxicj4NClNpemUgYWZ0ZXIgcHJlbGlua2luZyA0OTU5Mi48
YnI+DQpERUJVRzogU2hlbGwgZnVuY3Rpb24gcHJlbGlua19pbWFnZSBmaW5pc2hlZDxicj4NCjwv
c3Bhbj48L2Jsb2NrcXVvdGU+DQo8YnI+DQpZb3UgY2FuIHZlcmlmeSB0aGUgYmluYXJ5IGhhcyBi
ZWVuIHByZWxpbmtlZCB2aWEgYSBudW1iZXIgb2Ygc3RlcHM6PGJyPg0KPGJyPg0KKikgU3RhcnQg
d2l0aCB0aGUgc2l6ZSBjb21wYXJpc29uLCB5b3Ugc2hvdWxkIHNlZSBpdCBjaGFuZ2UuwqAgKEl0
IGRpZCwgc28gdGhhdHMgZ29vZCk8YnI+DQo8YnI+DQoqKSBMb29rIGF0IGEgYmluYXJ5IGluIHlv
dXIgaW1hZ2UsIHN1Y2ggYXMgL2Jpbi9idXN5Ym94LCBsb29rIGZvciB0aGUgJiMzOTsuZ251LnBy
ZWxpbmtfdW5kbyYjMzk7IHNlY3Rpb246PGJyPg0KPGJyPg0KwqAgb2JqZHVtcCAteCBiaW4vYnVz
eWJveDxicj4NCjxicj4NCsKgMjkgLmdudS5wcmVsaW5rX3VuZG8gMDAwMDA5MDDCoCAwMDAwMDAw
MDAwMDAwMDAwwqAgMDAwMDAwMDAwMDAwMDAwMMKgIDAwMGIxYjQ4wqAgMioqMzxicj4NCsKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIENPTlRFTlRTLCBSRUFET05MWTxicj4NCjxicj4NCjxicj4N
CiopIFN3aXRjaCB0byBjb21wYXJpbmcgYSBsaWJyYXJ5LCBpLmUuIC9saWI2NC9saWJjLnNvLjY6
PGJyPg0KPGJyPg0KcmVhZGVsZiAtUyBiaW4vbGliYy5zby42PGJyPg0KPGJyPg0KQ29tcGFyZSB0
aGUgb3JpZ2luYWwgdG8gdGhlIHJvb3RmcyBmaWxlc3lzdGVtLsKgIFlvdSYjMzk7bGwgc2VlIHRo
ZSBBZGRyZXNzIHZhbHVlcyBoYXZlIGNoYW5nZWQuwqAgT24gdGhlIHRhcmdldCBzeXN0ZW0geW91
IGNhbiBsb29rIGF0ICZxdW90Oy9wcm9jL3NlbGYvbWFwcyZxdW90OyBhbmQgZ3JlcCAmIzM5O2xp
YmMmIzM5O8KgIFlvdSYjMzk7bGwgc2VlIHRoZSBsb2FkIHJhbmdlLCBpdCBzaG91bGQgbWF0Y2gg
dGhlIG9uZSBmcm9tIHRoZSByZWFkZWxmIC1TIG91dHB1dC48YnI+DQo8YnI+DQoqKSBBY3R1YWxs
eSBnYXRoZXIgbG9hZCB0aW1lIHN0YXRpc3RpY3MgZnJvbSBsZC5zbzo8YnI+DQo8YnI+DQpQcm9i
YWJseSB0aGUgZWFzaWVzdCBvZiB0aGUgbWV0aG9kcy4uwqAgYnV0IHJlcXVpcmVzIHlvdSB0byBh
Y3R1YWxseSBydW4gdGhlIGJpbmFyaWVzIGluIHF1ZXN0aW9uIHRvIGNoZWNrIGJlaGF2aW9yLsKg
IE9uIHRoZSB0YXJnZXQ6PGJyPg0KPGJyPg0KTERfREVCVUc9c3RhdGlzdGljcyAmbHQ7YmluYXJ5
Jmd0Ozxicj4NCjxicj4NCldpdGggcHJlbGluayB3b3JraW5nIHRoZSByZXN1bHQgd2lsbCBiZSBz
b21ldGhpbmcgbGlrZTo8YnI+DQo8YnI+DQpyb290QHFlbXUxMjp+IyBMRF9ERUJVRz1zdGF0aXN0
aWNzIC9iaW4vYnVzeWJveDxicj4NCsKgIMKgIMKgIMKgMTI2OsKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIG51bWJlciBvZiByZWxvY2F0aW9uczogMDxicj4NCsKgIMKgIMKgIMKgMTI2
OsKgIMKgIMKgIMKgIMKgIMKgbnVtYmVyIG9mIHJlbG9jYXRpb25zIGZyb20gY2FjaGU6IDIxPGJy
Pg0KwqAgwqAgwqAgwqAxMjY6wqAgwqAgwqAgwqAgwqAgwqAgwqBudW1iZXIgb2YgcmVsYXRpdmUg
cmVsb2NhdGlvbnM6IDA8YnI+DQo8YnI+DQoob3V0cHV0KTxicj4NCjxicj4NCsKgIMKgIMKgIMKg
MTI2Ojxicj4NCsKgIMKgIMKgIMKgMTI2OsKgIMKgIMKgcnVudGltZSBsaW5rZXIgc3RhdGlzdGlj
czo8YnI+DQrCoCDCoCDCoCDCoDEyNjrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBmaW5hbCBudW1i
ZXIgb2YgcmVsb2NhdGlvbnM6IDA8YnI+DQrCoCDCoCDCoCDCoDEyNjrCoCDCoCDCoGZpbmFsIG51
bWJlciBvZiByZWxvY2F0aW9ucyBmcm9tIGNhY2hlOiAyMTxicj4NCjxicj4NCnZzIHcvbyBwcmVs
aW5rOjxicj4NCjxicj4NCnJvb3RAcWVtdTEyOn4jIExEX0RFQlVHPXN0YXRpc3RpY3MgL2Jpbi9i
dXN5Ym94PGJyPg0KwqAgwqAgwqAgwqAxNzQ6wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgbnVtYmVyIG9mIHJlbG9jYXRpb25zOiAxMjY8YnI+DQrCoCDCoCDCoCDCoDE3NDrCoCDCoCDC
oCDCoCDCoCDCoG51bWJlciBvZiByZWxvY2F0aW9ucyBmcm9tIGNhY2hlOiAwPGJyPg0KwqAgwqAg
wqAgwqAxNzQ6wqAgwqAgwqAgwqAgwqAgwqAgwqBudW1iZXIgb2YgcmVsYXRpdmUgcmVsb2NhdGlv
bnM6IDA8YnI+DQo8YnI+DQoob3V0cHV0KTxicj4NCjxicj4NCsKgIMKgIMKgIMKgMTc0Ojxicj4N
CsKgIMKgIMKgIMKgMTc0OsKgIMKgIMKgcnVudGltZSBsaW5rZXIgc3RhdGlzdGljczo8YnI+DQrC
oCDCoCDCoCDCoDE3NDrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBmaW5hbCBudW1iZXIgb2YgcmVs
b2NhdGlvbnM6IDE0MDxicj4NCsKgIMKgIMKgIMKgMTc0OsKgIMKgIMKgZmluYWwgbnVtYmVyIG9m
IHJlbG9jYXRpb25zIGZyb20gY2FjaGU6IDA8YnI+DQo8YnI+DQotLU1hcms8YnI+DQo8YnI+DQo8
YnI+DQo8YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MCAwIDAg
LjhleDtib3JkZXItbGVmdDoxcHggI2NjYyBzb2xpZDtwYWRkaW5nLWxlZnQ6MWV4Ij48c3BhbiBj
bGFzcz0iIj4NClJlZ2FyZHMsPGJyPg0KUWlhbmc8YnI+DQo8YnI+DQo8YnI+DQo8YnI+DQo8YnI+
DQpPbiBUaHUsIERlYyAxMSwgMjAxNCBhdCA3OjA5IEFNLCBNYXJrIEhhdGxlICZsdDs8YSBocmVm
PSJtYWlsdG86bWFyay5oYXRsZUB3aW5kcml2ZXIuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFyay5o
YXRsZUB3aW5kcml2ZXIuY29tPC9hPjxicj48L3NwYW4+PHNwYW4gY2xhc3M9IiI+DQombHQ7bWFp
bHRvOjxhIGhyZWY9Im1haWx0bzptYXJrLmhhdGxlQHdpbmRyaXZlci5jb20iIHRhcmdldD0iX2Js
YW5rIj5tYXJrLmhhdGxlQHdpbmRyaXZlci48dT48L3U+Y29tPC9hPiZndDsmZ3Q7IHdyb3RlOjxi
cj4NCjxicj4NCsKgIMKgIE9uIDEyLzkvMTQsIDk6MDEgUE0sIE1hcmsgSGF0bGUgd3JvdGU6PGJy
Pg0KPGJyPg0KwqAgwqAgwqAgwqAgT24gMTIvOS8xNCwgODo0MSBQTSwgUWlhbmcgWXUgd3JvdGU6
PGJyPg0KPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgSSBoYXZlIHN1Ym1pdHRlZCBhIGJ1ZyBoZXJl
Ojxicj48L3NwYW4+DQrCoCDCoCDCoCDCoCDCoCDCoCA8YSBocmVmPSJodHRwczovL2J1Z3ppbGxh
LnlvY3RvcHJvamVjdC4iIHRhcmdldD0iX2JsYW5rIj5odHRwczovL2J1Z3ppbGxhLnlvY3RvcHJv
amVjdC48L2E+PHU+PC91Pl9fb3JnL3Nob3dfYnVnLmNnaT9pZD03MDU2PHNwYW4gY2xhc3M9IiI+
PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgJmx0OzxhIGhyZWY9Imh0dHBzOi8vYnVnemlsbGEueW9j
dG9wcm9qZWN0Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9NzA1NiIgdGFyZ2V0PSJfYmxhbmsiPmh0dHBz
Oi8vYnVnemlsbGEuPHU+PC91PnlvY3RvcHJvamVjdC5vcmcvc2hvd19idWcuY2dpPzx1PjwvdT5p
ZD03MDU2PC9hPiZndDs8YnI+DQo8YnI+DQo8YnI+DQrCoCDCoCDCoCDCoCAoUmVzcG9uZGVkIGlu
IHRoZSBidWcgYXMgd2VsbC4uLinCoCBJIGhhdmUgYSB0ZXN0IHZlcnNpb24gb2YgdGhlIGNyb3Nz
PGJyPg0KwqAgwqAgwqAgwqAgcHJlbGluazxicj4NCsKgIMKgIMKgIMKgIHdpdGggdGhlIEFSTSBI
RiBwYXRjaCBhdmFpbGFibGUsIGFzIGNvbW1pdDo8YnI+DQo8YnI+PC9zcGFuPg0KwqAgwqAgwqAg
wqAgMmNkZTRmZjExOGI1MjQ0ZjU1NzdkOWJjNTg1YzFlPHU+PC91Pl9fZTUyMTc0MGFmMDxzcGFu
IGNsYXNzPSIiPjxicj4NCjxicj4NCsKgIMKgIMKgIMKgIFRvIGVuYWJsZSBpdCwgdXNlIHRoZSBm
b2xsb3dpbmcgaW4geW91ciBsb2NhbC5jb25mOjxicj4NCjxicj48L3NwYW4+DQrCoCDCoCDCoCDC
oCBTUkNSRVZfcG4tcHJlbGluayA9ICZxdW90O19fPHU+PC91PjJjZGU0ZmYxMThiNTI0NGY1NTc3
ZDliYzU4NWMxZTx1PjwvdT5fX2U1MjE3NDBhZjAmcXVvdDs8c3BhbiBjbGFzcz0iIj48YnI+DQo8
YnI+DQo8YnI+DQrCoCDCoCBUaGF0IGxpbmsgYnJlYWtzIHJlZ3VsYXIgYXJtIHByZWxpbmssIGl0
IGFsc28gbWlzc2VkIGEgcGF0Y2ggZm9yIHRoZTxicj4NCsKgIMKgIHByZWxpbmstcnRsZC48YnI+
DQo8YnI+DQrCoCDCoCBHb3QgYSBuZXcgb25lOjxicj4NCjxicj48L3NwYW4+DQrCoCDCoCBTUkNS
RVZfcG4tcHJlbGluayA9ICZxdW90O19fPHU+PC91PjgxYmFiMjNhNDY2MWZkYWFhODU5MzI1ZDZk
MzYwMzx1PjwvdT5fXzgxMWVjZjE4NDkmcXVvdDs8c3BhbiBjbGFzcz0iIj48YnI+DQo8YnI+DQrC
oCDCoCAtLU1hcms8YnI+DQo8YnI+DQo8YnI+DQrCoCDCoCDCoCDCoCBJZiB0aGlzIHdvcmtzIGZv
ciB5b3UsIEkmIzM5O2xsIGZpbmlzaCB0aGUgcGF0Y2ggYW5kIHN1Ym1pdCB0aGUgY2hhbmdlcy48
YnI+DQo8YnI+DQrCoCDCoCDCoCDCoCAtLU1hcms8YnI+DQo8YnI+DQrCoCDCoCDCoCDCoCDCoCDC
oCBSZWdhcmRzLDxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIFFpYW5nPGJyPg0KPGJyPg0KwqAgwqAg
wqAgwqAgwqAgwqAgT24gVHVlLCBEZWMgOSwgMjAxNCBhdCAxMTo1MSBQTSwgTWFyayBIYXRsZTxi
cj4NCsKgIMKgIMKgIMKgIMKgIMKgICZsdDs8YSBocmVmPSJtYWlsdG86bWFyay5oYXRsZUB3aW5k
cml2ZXIuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFyay5oYXRsZUB3aW5kcml2ZXIuY29tPC9hPiAm
bHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYXJrLmhhdGxlQHdpbmRyaXZlci5jb20iIHRhcmdl
dD0iX2JsYW5rIj5tYXJrLmhhdGxlQHdpbmRyaXZlci48dT48L3U+Y29tPC9hPiZndDs8YnI+PC9z
cGFuPg0KwqAgwqAgwqAgwqAgwqAgwqAgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFyay5o
YXRsZUB3aW5kcml2ZXIuIiB0YXJnZXQ9Il9ibGFuayI+bWFyay5oYXRsZUB3aW5kcml2ZXIuPC9h
Pl88dT48L3U+X2NvbTxzcGFuIGNsYXNzPSIiPjxicj4NCsKgIMKgIMKgIMKgIMKgIMKgICZsdDtt
YWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hcmsuaGF0bGVAd2luZHJpdmVyLmNvbSIgdGFyZ2V0PSJf
YmxhbmsiPm1hcmsuaGF0bGVAd2luZHJpdmVyLjx1PjwvdT5jb208L2E+Jmd0OyZndDsmZ3Q7IHdy
b3RlOjxicj4NCjxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIE9uIDEyLzgvMTQsIDM6
NTUgQU0sIEplZ2FuIENoYW5kcnUgd3JvdGU6PGJyPg0KPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgSSByZWNvbW1lbmQgeW91IHRvIGZpbGUgYSBidWcgaGVyZTxicj48L3Nw
YW4+DQrCoCDCoCDCoCDCoCDCoCDCoCA8YSBocmVmPSJodHRwczovL2J1Z3ppbGxhLnlvY3RvcHJv
amVjdC4iIHRhcmdldD0iX2JsYW5rIj5odHRwczovL2J1Z3ppbGxhLnlvY3RvcHJvamVjdC48L2E+
PHU+PC91Pl9fX19vcmcvPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgJmx0
OzxhIGhyZWY9Imh0dHBzOi8vYnVnemlsbGEuIiB0YXJnZXQ9Il9ibGFuayI+aHR0cHM6Ly9idWd6
aWxsYS48L2E+X188YSBocmVmPSJodHRwOi8veW9jdG9wcm9qZWN0Lm9yZy8iIHRhcmdldD0iX2Js
YW5rIj55b2N0b3Byb2plPHU+PC91PmN0Lm9yZy88L2E+PHNwYW4gY2xhc3M9IiI+PGJyPg0KwqAg
wqAgwqAgwqAgwqAgwqAgJmx0OzxhIGhyZWY9Imh0dHBzOi8vYnVnemlsbGEueW9jdG9wcm9qZWN0
Lm9yZy8iIHRhcmdldD0iX2JsYW5rIj5odHRwczovL2J1Z3ppbGxhLjx1PjwvdT55b2N0b3Byb2pl
Y3Qub3JnLzwvYT4mZ3Q7Jmd0OyBpZiBub3Q8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCBkb25lIGFscmVhZHkuIFlvdSBtYXkgZ2V0IGEgcHJvcGVyIGFuc3dlciBvbiBhcm1o
ZiBzdXBwb3J0PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgdGhlcmUuIEZyb208YnI+DQrCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB3aGF0IEk8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCBzZWUsIChzb21lb25lIHBsZWFzZSBjb3JyZWN0IG1lIGlmIEkgYW0gd3Jv
bmcpLCB0aGVyZSBpczxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIG5vIHByZWxpbms8YnI+DQrCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBkeW5hbWljIGxpbms8YnI+DQrCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBhcm1oZiBwYXRjaC4gWW91IGNhbiBhbHNvIGNyZWF0ZSBh
bmQgc3VibWl0IHRoZSBwYXRjaCBmb3I8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCByZXZpZXcuIEFG
QUlLLDxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHlvdSBhcmU8YnI+DQrC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBnb25uYSBuZWVkIHRvIHNvbWV0aGluZyBs
aWtlIGJlbG93LDxicj4NCjxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIC5k
eW5hbWljX2xpbmtlciA9ICZxdW90Oy9saWIvbGQtbGludXgtYXJtaGYuc28uMyZxdW90OyBpbiBh
cmNoLWFybS5jLjxicj4NCjxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIFRo
aXMgaXMgbm90IHRlc3RlZCB0aG91Z2guIFBsZWFzZSBkbyBhIHRlc3QgeW91cnNlbHZlcy48YnI+
DQo8YnI+DQo8YnI+PC9zcGFuPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgU2VlOiA8YSBo
cmVmPSJodHRwOi8vbWFyYy5pbmZvLz9sPWZlZG9yYS1fX19fYXJtJmFtcDttPTEzNTQxNzA1MzEy
ODgzNyZhbXA7dz0yIiB0YXJnZXQ9Il9ibGFuayI+aHR0cDovL21hcmMuaW5mby8/bD1mZWRvcmEt
X19fPHU+PC91Pl9hcm0mYW1wO209MTM1NDE3MDUzMTI4ODM3JmFtcDt3PTI8L2E+PGJyPg0KwqAg
wqAgwqAgwqAgwqAgwqAgJmx0OzxhIGhyZWY9Imh0dHA6Ly9tYXJjLmluZm8vP2w9ZmVkb3JhLV9f
YXJtJmFtcDttPTEzNTQxNzA1MzEyODgzNyZhbXA7dz0yIiB0YXJnZXQ9Il9ibGFuayI+aHR0cDov
L21hcmMuaW5mby8/bD1mZWRvcmEtX188dT48L3U+YXJtJmFtcDttPTEzNTQxNzA1MzEyODgzNyZh
bXA7dz0yPC9hPiZndDs8ZGl2PjxkaXYgY2xhc3M9Img1Ij48YnI+DQrCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCAmbHQ7PGEgaHJlZj0iaHR0cDovL21hcmMuaW5mby8/bD1mZWRvcmEtX19hcm0m
YW1wO209MTM1NDE3MDUzMTI4ODM3JmFtcDt3PTIiIHRhcmdldD0iX2JsYW5rIj5odHRwOi8vbWFy
Yy5pbmZvLz9sPWZlZG9yYS1fXzx1PjwvdT5hcm0mYW1wO209MTM1NDE3MDUzMTI4ODM3JmFtcDt3
PTI8L2E+PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgJmx0OzxhIGhyZWY9Imh0dHA6Ly9tYXJjLmlu
Zm8vP2w9ZmVkb3JhLWFybSZhbXA7bT0xMzU0MTcwNTMxMjg4MzcmYW1wO3c9MiIgdGFyZ2V0PSJf
YmxhbmsiPmh0dHA6Ly9tYXJjLmluZm8vP2w9ZmVkb3JhLTx1PjwvdT5hcm0mYW1wO209MTM1NDE3
MDUzMTI4ODM3JmFtcDt3PTI8L2E+Jmd0OyZndDs8YnI+DQo8YnI+DQrCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCBOb2JvZHkgaGFkIHJlcXVlc3RlZCBwcmVsaW5rIHN1cHBvcnQgZm9yIGFybWhm
IHVwIHRvIHRoaXMgcG9pbnQuPGJyPg0KPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
T3BlbiBhbiBlbmhhbmNlbWVudCAvIGJ1ZyBhbmQgYXNzaWduIGl0IHRvIG1lLsKgIEkmIzM5O2xs
IGRvIHdoYXQgSTxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIGNhbiB0bzxicj4NCsKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIGludGVncmF0ZSB0aGUgcGF0Y2ggb2ZmaWNpYWxseS48YnI+DQo8YnI+
DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBJIGhhZCBiZWVuIHdhaXRpbmcgZm9yIHRoZSBw
cmVsaW5rIHVwc3RyZWFtIHRvIG1lcmdlIHRoaXMsIGJ1dDxicj4NCsKgIMKgIMKgIMKgIMKgIMKg
IHRoZXkgbmV2ZXI8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBib3RoZXJlZCB0bywg
c28gSSYjMzk7bGwgaGF2ZSB0byBtYWtlIGl0IGEgWW9jdG8gUHJvamVjdDxicj4NCsKgIMKgIMKg
IMKgIMKgIMKgICYjMzk7Y3Jvc3MtcHJlbGluayYjMzk7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgc3BlY2lmaWMgcGF0aC48YnI+DQo8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCAtLU1hcms8YnI+DQo8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAt
SkM8YnI+DQo8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBPbiBNb24sIERl
YyA4LCAyMDE0IGF0IDE6NTIgUE0sIFFpYW5nIFl1ICZsdDs8YSBocmVmPSJtYWlsdG86eXVxODI1
QGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnl1cTgyNUBnbWFpbC5jb208L2E+PGJyPg0KwqAg
wqAgwqAgwqAgwqAgwqAgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86eXVxODI1QGdtYWlsLmNv
bSIgdGFyZ2V0PSJfYmxhbmsiPnl1cTgyNUBnbWFpbC5jb208L2E+Jmd0Ozxicj4NCsKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOnl1cTgy
NUBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj55dXE4MjVAZ21haWwuY29tPC9hPiAmbHQ7bWFp
bHRvOjxhIGhyZWY9Im1haWx0bzp5dXE4MjVAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+eXVx
ODI1QGdtYWlsLmNvbTwvYT4mZ3Q7Jmd0Ozxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOnl1cTgyNUBnbWFpbC5jb20iIHRhcmdl
dD0iX2JsYW5rIj55dXE4MjVAZ21haWwuY29tPC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzp5dXE4MjVAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+eXVxODI1QGdtYWlsLmNvbTwvYT4m
Z3Q7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86eXVx
ODI1QGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnl1cTgyNUBnbWFpbC5jb208L2E+ICZsdDtt
YWlsdG86PGEgaHJlZj0ibWFpbHRvOnl1cTgyNUBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj55
dXE4MjVAZ21haWwuY29tPC9hPiZndDsmZ3Q7Jmd0OyZndDsgd3JvdGU6PGJyPg0KPGJyPg0KwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBUaGFua3MgZm9yIHlvdXIgcmVw
bHkuIEkgYWxtb3N0IGdpdmUgdXAuPGJyPg0KPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqBZb3UgbWVhbiB0aGF0IGN1cnJlbnQgeW9jdG8gYnVpbGQgZG9lc24m
IzM5O3Qgc3VwcG9ydDxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIGhhcmQgZmxvYXQgQUJJPGJyPg0K
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgcHJlbGluayw8YnI+DQrCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGFuZCB0aGUgcHJlbGluayBzb3VyY2UgY29k
ZSBuZWVkcyB0bzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
YmUgbW9kaWZpZWQgdG8gdXNlIGxkLWxpbnV4LWFybWhmLnNvLjM/PGJyPg0KPGJyPg0KwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBTbyB0aGlzIHByb2JsZW0gYWZmZWN0
IGFsbCBhcm1oZiBidWlsZCBvZiB5b2N0bywgaW48YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCBvdGhl
ciB3b3JkcyBwcmVsaW5rPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBkb2VzbiYjMzk7dCB3b3JrIGZvciB5b2N0byBhcm1oZiBhdCBhbGwgbm93Pzxicj4NCjxi
cj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgUmVnYXJkcyw8YnI+
DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoFFpYW5nPGJyPg0KPGJy
Pg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBPbiBNb24sIERlYyA4
LCAyMDE0IGF0IDM6MjggUE0sIEplZ2FuIENoYW5kcnU8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCAm
bHQ7PGEgaHJlZj0ibWFpbHRvOnBjamVnYW5AZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+cGNq
ZWdhbkBnbWFpbC5jb208L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOnBjamVnYW5AZ21h
aWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+cGNqZWdhbkBnbWFpbC5jb208L2E+Jmd0Ozxicj4NCsKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRv
OnBjamVnYW5AZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+cGNqZWdhbkBnbWFpbC5jb208L2E+
ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOnBjamVnYW5AZ21haWwuY29tIiB0YXJnZXQ9Il9i
bGFuayI+cGNqZWdhbkBnbWFpbC5jb208L2E+Jmd0OyZndDs8YnI+DQrCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOnBjamVn
YW5AZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+cGNqZWdhbkBnbWFpbC5jb208L2E+ICZsdDtt
YWlsdG86PGEgaHJlZj0ibWFpbHRvOnBjamVnYW5AZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+
cGNqZWdhbkBnbWFpbC5jb208L2E+Jmd0Ozxicj4NCsKgIMKgIMKgIMKgIMKgIMKgICZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOnBjamVnYW5AZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+cGNq
ZWdhbkBnbWFpbC5jb208L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOnBjamVnYW5AZ21h
aWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+cGNqZWdhbkBnbWFpbC5jb208L2E+Jmd0OyZndDsmZ3Q7
Jmd0OyB3cm90ZTo8YnI+DQo8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoEhpLDxicj4NCjxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgSSB0aGluayBpdCBoYXMgdG8gZG8gd2l0aCB0aGU8YnI+DQrCoCDC
oCDCoCDCoCDCoCDCoCBsZC1saW51eC1hcm1oZi5zby4zLiBNYXkgYmUgeW91PGJyPg0KwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgc2hvdWxkPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB0ZWxsIHByZWxpbmsgdGhhdCB5b3UgaGF2ZSBo
YXJkIGZsb2F0IEFSTSBBQkkgdG88YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCBwcmVsaW5rIGZvciwg
dGhhbjxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
bGQtbGludXguc28uMyAuIEl0IG1lYW5zIHlvdSBuZWVkIHRvIGFkZDxicj4NCsKgIMKgIMKgIMKg
IMKgIMKgIGxkLWxpbnV4LWFybWhmLnNvLjMgYXMgYTxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZHluYW1pYyBsaW5rZXIuPGJyPg0KwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBZb3Ugc2hvdWxkIHBhdGNoIHRo
ZSBwcmVsaW5rIHNvdXJjZSB0byBnZXQgdGhpcyBkb25lLjxicj4NCjxicj4NCsKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgSFRILjxicj4NCjxicj4NCsKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgLUpDPGJyPg0KPGJyPg0K
PGJyPg0KPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBPbiBGcmksIERlYyA1LCAyMDE0IGF0IDc6NDEgQU0sIFFpYW5nIFl1PGJyPg0KwqAgwqAgwqAg
wqAgwqAgwqAgJmx0OzxhIGhyZWY9Im1haWx0bzp5dXE4MjVAZ21haWwuY29tIiB0YXJnZXQ9Il9i
bGFuayI+eXVxODI1QGdtYWlsLmNvbTwvYT4gJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86eXVx
ODI1QGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnl1cTgyNUBnbWFpbC5jb208L2E+Jmd0Ozxi
cj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICZsdDttYWlsdG86PGEgaHJlZj0i
bWFpbHRvOnl1cTgyNUBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj55dXE4MjVAZ21haWwuY29t
PC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzp5dXE4MjVAZ21haWwuY29tIiB0YXJnZXQ9
Il9ibGFuayI+eXVxODI1QGdtYWlsLmNvbTwvYT4mZ3Q7Jmd0Ozxicj4NCsKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWls
dG86eXVxODI1QGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnl1cTgyNUBnbWFpbC5jb208L2E+
PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86eXVxODI1
QGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnl1cTgyNUBnbWFpbC5jb208L2E+Jmd0OyAmbHQ7
bWFpbHRvOjxhIGhyZWY9Im1haWx0bzp5dXE4MjVAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+
eXVxODI1QGdtYWlsLmNvbTwvYT48YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzp5dXE4MjVAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+eXVxODI1QGdt
YWlsLmNvbTwvYT4mZ3Q7Jmd0OyZndDsmZ3Q7IHdyb3RlOjxicj4NCjxicj4NCsKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgSGkgYWxsLDxicj4NCjxi
cj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
SSYjMzk7bSBidWlsZGluZyBhIGltYWdlIHdpdGggbG9jYWwuY29uZjo8YnI+DQrCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoFVTRVJfQ0xBU1NFUyA/
PSAmcXVvdDtidWlsZHN0YXRzIGltYWdlLW1rbGliczxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIGlt
YWdlLXByZWxpbmsmcXVvdDs8YnI+DQo8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGJ1dCBJIHRoaW5rIHByZWxpbmsgZG9lcyBub3RoaW5n
IG9uIG15IGltYWdlLDxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIGJlY2F1c2UgdGhlPGJyPg0KwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgTUQ1U1VNIGlzPGJyPg0KwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB0aGUgc2FtZSBiZWZvcmUg
YW5kIGFmdGVyPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqB0aGUgcHJlbGluayBzdGFnZS4gVGhlIG1rbGlicyBzdGFnZSBpcyBhbHNvPGJy
Pg0KwqAgwqAgwqAgwqAgwqAgwqAgc3RyYW5nZSBub3QgcHJpbnQ8YnI+DQrCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGFueXRoaW5nLiBIb3cgdG8g
bWFrZSBwcmVsaW5rIGFuZDxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgbWtsaWJzIHJlYWxseSB3b3JrPzxicj4NCjxicj4NCsKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgSGVyZSBpcyB0aGUg
bG9nIG9mIGxvZy5kb19yb290ZnM6PGJyPg0KPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBOT1RFOiAjIyMjIyMgR2VuZXJhdGUgaW1hZ2Vz
ICMjIyMjIyM8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoE5PVEU6IEV4ZWN1dGluZyBta2xpYnNfb3B0aW1pemVfaW1hZ2UgLi4uPGJyPg0K
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBERUJV
RzogRXhlY3V0aW5nIHNoZWxsIGZ1bmN0aW9uPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgbWtsaWJz
X29wdGltaXplX2ltYWdlPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqBERUJVRzogU2hlbGwgZnVuY3Rpb24gbWtsaWJzX29wdGltaXplX2lt
YWdlPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgZmluaXNoZWQ8YnI+DQrCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoE5PVEU6IEV4ZWN1dGluZyBwcmVs
aW5rX2ltYWdlIC4uLjxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgREVCVUc6IEV4ZWN1dGluZyBzaGVsbCBmdW5jdGlvbiBwcmVsaW5rX2lt
YWdlPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBTaXplIGJlZm9yZSBwcmVsaW5raW5nIDQ5MzA0Ljxicj4NCjxicj4NCjxicj48L2Rpdj48
L2Rpdj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIC9vcHQveW9jdG8vcm9vdGZzL3RtcC9fX19fPHU+
PC91PnN5c3Jvb3RzL3g4Nl82NC1saW51eC91c3IvX19fXzx1PjwvdT5zYmluL3ByZWxpbms6PHNw
YW4gY2xhc3M9IiI+PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAvc2Jpbi9mc3RhYi1kZWNvZGU6IFVzaW5nPGJyPg0KwqAgwqAgwqAgwqAg
wqAgwqAgL2xpYi9sZC1saW51eC1hcm1oZi5zby4zLCBub3Q8YnI+DQrCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoC9saWIvbGQtbGludXguc28uMyBh
cyBkeW5hbWljIGxpbmtlcjxicj4NCjxicj4NCjxicj48L3NwYW4+DQrCoCDCoCDCoCDCoCDCoCDC
oCDCoCAvb3B0L3lvY3RvL3Jvb3Rmcy90bXAvX19fXzx1PjwvdT5zeXNyb290cy94ODZfNjQtbGlu
dXgvdXNyL19fX188dT48L3U+c2Jpbi9wcmVsaW5rOjxzcGFuIGNsYXNzPSIiPjxicj4NCsKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgL3NiaW4vYm9v
dGxvZ2Q6IFVzaW5nPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgL2xpYi9sZC1saW51eC1hcm1oZi5z
by4zLCBub3Q8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoC9saWIvbGQtbGludXguc28uMyBhcyBkeW5hbWljIGxpbmtlcjxicj4NCjxicj4N
Cjxicj48L3NwYW4+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCAvb3B0L3lvY3RvL3Jvb3Rmcy90bXAv
X19fXzx1PjwvdT5zeXNyb290cy94ODZfNjQtbGludXgvdXNyL19fX188dT48L3U+c2Jpbi9wcmVs
aW5rOjxzcGFuIGNsYXNzPSIiPjxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgL3NiaW4va2lsbGFsbDU6IFVzaW5nPGJyPg0KwqAgwqAgwqAg
wqAgwqAgwqAgL2xpYi9sZC1saW51eC1hcm1oZi5zby4zLCBub3Q8YnI+DQrCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoC9saWIvbGQtbGludXguc28u
MyBhcyBkeW5hbWljIGxpbmtlcjxicj4NCjxicj4NCjxicj48L3NwYW4+DQrCoCDCoCDCoCDCoCDC
oCDCoCDCoCAvb3B0L3lvY3RvL3Jvb3Rmcy90bXAvX19fXzx1PjwvdT5zeXNyb290cy94ODZfNjQt
bGludXgvdXNyL19fX188dT48L3U+c2Jpbi9wcmVsaW5rOjxzcGFuIGNsYXNzPSIiPjxicj4NCsKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgL3NiaW4v
aW5pdC5zeXN2aW5pdDogVXNpbmc8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCAvbGliL2xkLWxpbnV4
LWFybWhmLnNvLjMsIG5vdDxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgL2xpYi9sZC1saW51eC5zby4zIGFzIGR5bmFtaWMgbGlua2VyPGJy
Pg0KPGJyPg0KPGJyPjwvc3Bhbj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIC9vcHQveW9jdG8vcm9v
dGZzL3RtcC9fX19fPHU+PC91PnN5c3Jvb3RzL3g4Nl82NC1saW51eC91c3IvX19fXzx1PjwvdT5z
YmluL3ByZWxpbms6PHNwYW4gY2xhc3M9IiI+PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAvc2Jpbi9oYWx0LnN5c3Zpbml0OiBVc2luZzxi
cj4NCsKgIMKgIMKgIMKgIMKgIMKgIC9saWIvbGQtbGludXgtYXJtaGYuc28uMywgbm90PGJyPg0K
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAvbGli
L2xkLWxpbnV4LnNvLjMgYXMgZHluYW1pYyBsaW5rZXI8YnI+DQo8YnI+DQo8YnI+PC9zcGFuPg0K
wqAgwqAgwqAgwqAgwqAgwqAgwqAgL29wdC95b2N0by9yb290ZnMvdG1wL19fX188dT48L3U+c3lz
cm9vdHMveDg2XzY0LWxpbnV4L3Vzci9fX19fPHU+PC91PnNiaW4vcHJlbGluazo8c3BhbiBjbGFz
cz0iIj48YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoC9zYmluL3NodXRkb3duLnN5c3Zpbml0OiBVc2luZzxicj4NCsKgIMKgIMKgIMKgIMKg
IMKgIC9saWIvbGQtbGludXgtYXJtaGYuc28uMywgbm90PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAvbGliL2xkLWxpbnV4LnNvLjMgYXMg
ZHluYW1pYyBsaW5rZXI8YnI+DQo8YnI+DQo8YnI+PC9zcGFuPg0KwqAgwqAgwqAgwqAgwqAgwqAg
wqAgL29wdC95b2N0by9yb290ZnMvdG1wL19fX188dT48L3U+c3lzcm9vdHMveDg2XzY0LWxpbnV4
L3Vzci9fX19fPHU+PC91PnNiaW4vcHJlbGluazo8c3BhbiBjbGFzcz0iIj48YnI+DQrCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoC9zYmluL3J1bmxl
dmVsLnN5c3Zpbml0OiBVc2luZzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIC9saWIvbGQtbGludXgt
YXJtaGYuc28uMywgbm90PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAvbGliL2xkLWxpbnV4LnNvLjMgYXMgZHluYW1pYyBsaW5rZXI8YnI+
DQo8YnI+DQo8YnI+PC9zcGFuPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgL29wdC95b2N0by9yb290
ZnMvdG1wL19fX188dT48L3U+c3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vzci9fX19fPHU+PC91PnNi
aW4vcHJlbGluazo8c3BhbiBjbGFzcz0iIj48YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoC91c3Ivc2Jpbi9kcm9wYmVhcm11bHRpOiBVc2lu
Zzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIC9saWIvbGQtbGludXgtYXJtaGYuc28uMywgbm90PGJy
Pg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAv
bGliL2xkLWxpbnV4LnNvLjMgYXMgZHluYW1pYyBsaW5rZXI8YnI+DQo8YnI+DQo8YnI+PC9zcGFu
Pg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgL29wdC95b2N0by9yb290ZnMvdG1wL19fX188dT48L3U+
c3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vzci9fX19fPHU+PC91PnNiaW4vcHJlbGluazo8c3BhbiBj
bGFzcz0iIj48YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoC9iaW4vbW91bnRwb2ludC5zeXN2aW5pdDogVXNpbmc8YnI+DQrCoCDCoCDCoCDC
oCDCoCDCoCAvbGliL2xkLWxpbnV4LWFybWhmLnNvLjMsIG5vdDxicj4NCsKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgL2xpYi9sZC1saW51eC5zby4z
IGFzIGR5bmFtaWMgbGlua2VyPGJyPg0KPGJyPg0KPGJyPjwvc3Bhbj4NCsKgIMKgIMKgIMKgIMKg
IMKgIMKgIC9vcHQveW9jdG8vcm9vdGZzL3RtcC9fX19fPHU+PC91PnN5c3Jvb3RzL3g4Nl82NC1s
aW51eC91c3IvX19fXzx1PjwvdT5zYmluL3ByZWxpbms6PHNwYW4gY2xhc3M9IiI+PGJyPg0KwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAvYmluL2J1
c3lib3guc3VpZDogVXNpbmc8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCAvbGliL2xkLWxpbnV4LWFy
bWhmLnNvLjMsIG5vdDxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgL2xpYi9sZC1saW51eC5zby4zIGFzIGR5bmFtaWMgbGlua2VyPGJyPg0K
PGJyPg0KPGJyPjwvc3Bhbj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIC9vcHQveW9jdG8vcm9vdGZz
L3RtcC9fX19fPHU+PC91PnN5c3Jvb3RzL3g4Nl82NC1saW51eC91c3IvX19fXzx1PjwvdT5zYmlu
L3ByZWxpbms6PHNwYW4gY2xhc3M9IiI+PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAvYmluL2J1c3lib3gubm9zdWlkOiBVc2luZzxicj4N
CsKgIMKgIMKgIMKgIMKgIMKgIC9saWIvbGQtbGludXgtYXJtaGYuc28uMywgbm90PGJyPg0KwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAvbGliL2xk
LWxpbnV4LnNvLjMgYXMgZHluYW1pYyBsaW5rZXI8YnI+DQo8YnI+DQo8YnI+PC9zcGFuPg0KwqAg
wqAgwqAgwqAgwqAgwqAgwqAgL29wdC95b2N0by9yb290ZnMvdG1wL19fX188dT48L3U+c3lzcm9v
dHMveDg2XzY0LWxpbnV4L3Vzci9fX19fPHU+PC91PnNiaW4vcHJlbGluazo8c3BhbiBjbGFzcz0i
Ij48YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoC91c3IvYmluL3V0bXBkdW1wLnN5c3Zpbml0OiBVc2luZzxicj4NCsKgIMKgIMKgIMKgIMKg
IMKgIC9saWIvbGQtbGludXgtYXJtaGYuc28uMywgbm90PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAvbGliL2xkLWxpbnV4LnNvLjMgYXMg
ZHluYW1pYyBsaW5rZXI8YnI+DQo8YnI+DQo8YnI+PC9zcGFuPg0KwqAgwqAgwqAgwqAgwqAgwqAg
wqAgL29wdC95b2N0by9yb290ZnMvdG1wL19fX188dT48L3U+c3lzcm9vdHMveDg2XzY0LWxpbnV4
L3Vzci9fX19fPHU+PC91PnNiaW4vcHJlbGluazo8c3BhbiBjbGFzcz0iIj48YnI+DQrCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoC91c3IvYmluL21l
c2cuc3lzdmluaXQ6IFVzaW5nPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgL2xpYi9sZC1saW51eC1h
cm1oZi5zby4zLCBub3Q8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoC9saWIvbGQtbGludXguc28uMyBhcyBkeW5hbWljIGxpbmtlcjxicj4N
Cjxicj4NCjxicj48L3NwYW4+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCAvb3B0L3lvY3RvL3Jvb3Rm
cy90bXAvX19fXzx1PjwvdT5zeXNyb290cy94ODZfNjQtbGludXgvdXNyL19fX188dT48L3U+c2Jp
bi9wcmVsaW5rOjxzcGFuIGNsYXNzPSIiPjxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgL3Vzci9iaW4vbGFzdC5zeXN2aW5pdDogVXNpbmc8
YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCAvbGliL2xkLWxpbnV4LWFybWhmLnNvLjMsIG5vdDxicj4N
CsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgL2xp
Yi9sZC1saW51eC5zby4zIGFzIGR5bmFtaWMgbGlua2VyPGJyPg0KPGJyPg0KPGJyPjwvc3Bhbj4N
CsKgIMKgIMKgIMKgIMKgIMKgIMKgIC9vcHQveW9jdG8vcm9vdGZzL3RtcC9fX19fPHU+PC91PnN5
c3Jvb3RzL3g4Nl82NC1saW51eC91c3IvX19fXzx1PjwvdT5zYmluL3ByZWxpbms6PHNwYW4gY2xh
c3M9IiI+PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAvdXNyL2Jpbi9vcGtnLWNsOiBVc2luZzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIC9s
aWIvbGQtbGludXgtYXJtaGYuc28uMywgbm90PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAvbGliL2xkLWxpbnV4LnNvLjMgYXMgZHluYW1p
YyBsaW5rZXI8YnI+DQo8YnI+DQo8YnI+PC9zcGFuPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgL29w
dC95b2N0by9yb290ZnMvdG1wL19fX188dT48L3U+c3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vzci9f
X19fPHU+PC91PnNiaW4vcHJlbGluazo8c3BhbiBjbGFzcz0iIj48YnI+DQrCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoC91c3IvYmluL2JtdzogVXNp
bmcgL2xpYi9sZC1saW51eC1hcm1oZi5zby4zLCBub3Q8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCAvbGliL2xkLWxpbnV4LnNvLjM8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGFzIGR5bmFtaWMgbGlua2VyPGJyPg0K
PGJyPg0KPGJyPjwvc3Bhbj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIC9vcHQveW9jdG8vcm9vdGZz
L3RtcC9fX19fPHU+PC91PnN5c3Jvb3RzL3g4Nl82NC1saW51eC91c3IvX19fXzx1PjwvdT5zYmlu
L3ByZWxpbms6PHNwYW4gY2xhc3M9IiI+PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAvdXNyL2Jpbi93YWxsLnN5c3Zpbml0OiBVc2luZzxi
cj4NCsKgIMKgIMKgIMKgIMKgIMKgIC9saWIvbGQtbGludXgtYXJtaGYuc28uMywgbm90PGJyPg0K
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAvbGli
L2xkLWxpbnV4LnNvLjMgYXMgZHluYW1pYyBsaW5rZXI8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoFNpemUgYWZ0ZXIgcHJlbGlua2luZyA0
OTMwNC48YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoERFQlVHOiBTaGVsbCBmdW5jdGlvbiBwcmVsaW5rX2ltYWdlIGZpbmlzaGVkPGJyPg0K
PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBSZWdhcmRzLDxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgUWlhbmc8YnI+DQo8YnI+DQo8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoC0tPGJyPg0KPGJyPjwvc3Bhbj4NCsKgIMKg
IMKgIMKgIMKgIMKgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzx1PjwvdT5fX19fX19f
X19fX19fX19fX19fX188c3BhbiBjbGFzcz0iIj48YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHlvY3RvIG1haWxpbmcgbGlzdDxicj4NCsKg
IMKgIMKgIMKgIMKgIMKgIDxhIGhyZWY9Im1haWx0bzp5b2N0b0B5b2N0b3Byb2plY3Qub3JnIiB0
YXJnZXQ9Il9ibGFuayI+eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzwvYT4gJmx0O21haWx0bzo8YSBo
cmVmPSJtYWlsdG86eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZyIgdGFyZ2V0PSJfYmxhbmsiPnlvY3Rv
QHlvY3RvcHJvamVjdC5vcmc8L2E+PHU+PC91PiZndDs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCAm
bHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzp5b2N0b0B5b2N0b3Byb2plY3Qub3JnIiB0YXJnZXQ9
Il9ibGFuayI+eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzwvYT4gJmx0O21haWx0bzo8YSBocmVmPSJt
YWlsdG86eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZyIgdGFyZ2V0PSJfYmxhbmsiPnlvY3RvQHlvY3Rv
cHJvamVjdC5vcmc8L2E+PHU+PC91PiZndDtfXyZndDs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzp5b2N0b0B5b2N0b3Byb2pl
Y3Qub3JnIiB0YXJnZXQ9Il9ibGFuayI+eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzwvYT48YnI+DQrC
oCDCoCDCoCDCoCDCoCDCoCAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzp5b2N0b0B5b2N0b3By
b2plY3Qub3JnIiB0YXJnZXQ9Il9ibGFuayI+eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzwvYT48dT48
L3U+Jmd0OyAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzp5b2N0b0B5b2N0b3Byb2plY3Qub3Jn
IiB0YXJnZXQ9Il9ibGFuayI+eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzwvYT48YnI+PC9zcGFuPg0K
wqAgwqAgwqAgwqAgwqAgwqAgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86eW9jdG9AeW9jdG9w
cm9qZWN0Lm9yZyIgdGFyZ2V0PSJfYmxhbmsiPnlvY3RvQHlvY3RvcHJvamVjdC5vcmc8L2E+PHU+
PC91PiZndDtfXyZndDtfXyZndDs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCA8YSBocmVmPSJodHRw
czovL2xpc3RzLnlvY3RvcHJvamVjdC4iIHRhcmdldD0iX2JsYW5rIj5odHRwczovL2xpc3RzLnlv
Y3RvcHJvamVjdC48L2E+X19fPHU+PC91Pl9vcmcvbGlzdGluZm8veW9jdG88c3BhbiBjbGFzcz0i
Ij48YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAmbHQ7PGEgaHJlZj0iaHR0
cHM6Ly9saXN0cy55b2N0b3Byb2plY3QuIiB0YXJnZXQ9Il9ibGFuayI+aHR0cHM6Ly9saXN0cy55
b2N0b3Byb2plY3QuPC9hPl9fPHU+PC91Pm9yZy9saXN0aW5mby95b2N0bzxicj4NCsKgIMKgIMKg
IMKgIMKgIMKgICZsdDs8YSBocmVmPSJodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlz
dGluZm8veW9jdG8iIHRhcmdldD0iX2JsYW5rIj5odHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC48
dT48L3U+b3JnL2xpc3RpbmZvL3lvY3RvPC9hPiZndDsmZ3Q7PGJyPg0KPGJyPg0KPGJyPg0KPGJy
Pg0KPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAt
LTxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgSkNQ
PGJyPg0KPGJyPg0KPGJyPg0KPGJyPg0KPGJyPg0KPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgLS08YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBKQ1A8
YnI+DQo8YnI+DQo8YnI+DQo8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAtLTxicj48
L3NwYW4+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX188dT48L3U+X19fX19fX19fX19fX19fX19fX19fPHNwYW4gY2xhc3M9IiI+PGJyPg0K
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgeW9jdG8gbWFpbGluZyBsaXN0PGJyPg0KwqAgwqAg
wqAgwqAgwqAgwqAgPGEgaHJlZj0ibWFpbHRvOnlvY3RvQHlvY3RvcHJvamVjdC5vcmciIHRhcmdl
dD0iX2JsYW5rIj55b2N0b0B5b2N0b3Byb2plY3Qub3JnPC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9
Im1haWx0bzp5b2N0b0B5b2N0b3Byb2plY3Qub3JnIiB0YXJnZXQ9Il9ibGFuayI+eW9jdG9AeW9j
dG9wcm9qZWN0Lm9yZzwvYT48dT48L3U+Jmd0Ozxicj4NCsKgIMKgIMKgIMKgIMKgIMKgICZsdDtt
YWlsdG86PGEgaHJlZj0ibWFpbHRvOnlvY3RvQHlvY3RvcHJvamVjdC5vcmciIHRhcmdldD0iX2Js
YW5rIj55b2N0b0B5b2N0b3Byb2plY3Qub3JnPC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzp5b2N0b0B5b2N0b3Byb2plY3Qub3JnIiB0YXJnZXQ9Il9ibGFuayI+eW9jdG9AeW9jdG9wcm9q
ZWN0Lm9yZzwvYT48dT48L3U+Jmd0O19fJmd0Ozxicj48L3NwYW4+DQrCoCDCoCDCoCDCoCDCoCDC
oCA8YSBocmVmPSJodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC4iIHRhcmdldD0iX2JsYW5rIj5o
dHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC48L2E+X19fPHU+PC91Pl9vcmcvbGlzdGluZm8veW9j
dG88c3BhbiBjbGFzcz0iIj48YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAmbHQ7PGEg
aHJlZj0iaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3QuIiB0YXJnZXQ9Il9ibGFuayI+aHR0cHM6
Ly9saXN0cy55b2N0b3Byb2plY3QuPC9hPl9fPHU+PC91Pm9yZy9saXN0aW5mby95b2N0bzxicj4N
CsKgIMKgIMKgIMKgIMKgIMKgICZsdDs8YSBocmVmPSJodHRwczovL2xpc3RzLnlvY3RvcHJvamVj
dC5vcmcvbGlzdGluZm8veW9jdG8iIHRhcmdldD0iX2JsYW5rIj5odHRwczovL2xpc3RzLnlvY3Rv
cHJvamVjdC48dT48L3U+b3JnL2xpc3RpbmZvL3lvY3RvPC9hPiZndDsmZ3Q7PGJyPg0KPGJyPg0K
PGJyPg0KPGJyPg0KPGJyPg0KwqAgwqAgLS08YnI+PC9zcGFuPjxzcGFuIGNsYXNzPSIiPg0KwqAg
wqAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPHU+PC91Pl9fX19fX19fX19fX19fX19f
X188YnI+DQrCoCDCoCB5b2N0byBtYWlsaW5nIGxpc3Q8YnI+DQrCoCDCoCA8YSBocmVmPSJtYWls
dG86eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZyIgdGFyZ2V0PSJfYmxhbmsiPnlvY3RvQHlvY3RvcHJv
amVjdC5vcmc8L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOnlvY3RvQHlvY3RvcHJvamVj
dC5vcmciIHRhcmdldD0iX2JsYW5rIj55b2N0b0B5b2N0b3Byb2plY3Qub3JnPC9hPjx1PjwvdT4m
Z3Q7PGJyPg0KwqAgwqAgPGEgaHJlZj0iaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3QuIiB0YXJn
ZXQ9Il9ibGFuayI+aHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3QuPC9hPl9fPHU+PC91Pm9yZy9s
aXN0aW5mby95b2N0bzxicj4NCsKgIMKgICZsdDs8YSBocmVmPSJodHRwczovL2xpc3RzLnlvY3Rv
cHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8iIHRhcmdldD0iX2JsYW5rIj5odHRwczovL2xpc3Rz
LnlvY3RvcHJvamVjdC48dT48L3U+b3JnL2xpc3RpbmZvL3lvY3RvPC9hPiZndDs8YnI+DQo8YnI+
DQo8YnI+DQo8L3NwYW4+PC9ibG9ja3F1b3RlPg0KPGJyPg0KPC9ibG9ja3F1b3RlPjwvZGl2Pjxi
cj48L2Rpdj4NCg==

--001a11352f72947c8b050a3c56cd--
