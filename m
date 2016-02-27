Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57186E00B6F; Sat, 27 Feb 2016 04:25:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50967E009D7
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 04:25:29 -0800 (PST)
Received: by mail-wm0-f47.google.com with SMTP id p65so16546999wmp.1
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 04:25:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-transfer-encoding;
	bh=umSA5g1qss3yJbuJJ/8CtrHJ4cs1I9XvQkMohetB2mg=;
	b=XsXAqoisyQ6UTClTOJvoL6k571uxpgsIcGz2tLN8PoXxt/dJlUFzAU44m0FW8aolk0
	xBB9OTtUgJAkOg1daOWxaK6U9VYU1tmf1+n6bBMh3AKvP/Mmj53u5XqEBec9RKBvGs+S
	uCl5aSbBvPpWJ+DcaZ5P2jwMddiGgSHKGwEYTy3QScEpEzfryZg6uDP86eT1g3/76Epi
	HF3zHf2QJpggct1+W3UTUnfOK36jjLtKHCNck7ymyzYAgUYPZ7SzV/6QpNWYL8FUEeOp
	PRr/RMhssUL96eSYnJx2/finEWAGEJYf9aDn4JnYxxOR5ZeaKWiMn7YbkCjO6An1cD9T
	iZNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-transfer-encoding;
	bh=umSA5g1qss3yJbuJJ/8CtrHJ4cs1I9XvQkMohetB2mg=;
	b=Vq1htf9Xa3UXZXB84wErCm9xYY66ATohbRUNVrS7nFvTZVket4R/IIiYHl23RrBgko
	ebOwkvDhQsyDwKWhBumEfkgp7dzA1fXrya1GSJBgtHVFy/4GbT3kriapL9UQW0pRbEET
	oNOo/5ydnwBfgW5wYsYf1J+EbHWUQv4E1W7Lwf/JxFPHLNCtOMIaXZ3C3LoQJY3Umrk/
	VvehCNN7iq+FEk9gIhMMjHlaM1h91bWmeRTZ9OsGLwYGAwiohw4/CFAzlVwqmmGDKiA9
	vDRIGZvfV+cVzMzGKqi2vBMnON6iVZxFTFhZPvVKrxOI0ZHrmeylMPC1aKZ41kozg3Ze
	YDew==
X-Gm-Message-State: AD7BkJKLoDQ3PUhmGrPznxZA5WfzC6AAXSHngLnjJeF/17SOf2NyXRCS2AA3SS9/sYUKq2uuQBk2+x8XieOGKA==
MIME-Version: 1.0
X-Received: by 10.194.86.68 with SMTP id n4mr7347674wjz.150.1456575929052;
	Sat, 27 Feb 2016 04:25:29 -0800 (PST)
Received: by 10.27.9.133 with HTTP; Sat, 27 Feb 2016 04:25:28 -0800 (PST)
In-Reply-To: <20160226212038.GA28071@resin.home>
References: <1456478817-7221-1-git-send-email-net147@gmail.com>
	<20160226171446.GA4154@resin.home>
	<876d8b2d6f4549cebde5792d84860bee@technux.se>
	<CAK18fxGKNWMUh=SmKe+3=GF3ttayvm_DyhtzFztBxvfzdj64sg@mail.gmail.com>
	<20160226195505.GB27062@resin.home>
	<CANwerB1NhH7sSS-zy8GUHVou4-Ny62=QQpGHsjUaXLf9ii1TMg@mail.gmail.com>
	<20160226212038.GA28071@resin.home>
Date: Sat, 27 Feb 2016 23:25:28 +1100
Message-ID: <CANwerB3hkBTe628KYDG0owzUYjTodMT8X8HhzUmpMA+uT2P_CQ@mail.gmail.com>
From: Jonathan Liu <net147@gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: fix path to mkknlimg
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
X-List-Received-Date: Sat, 27 Feb 2016 12:25:32 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 27 February 2016 at 23:21, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Sat, Feb 27, 2016 at 08:03:10AM +1100, Jonathan Liu wrote:
>> On 27 February 2016 at 06:55, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> > On Fri, Feb 26, 2016 at 07:04:28PM +0100, Andrei Gherzan wrote:
>> >>    --
>> >>    Andrei Gherzan
>> >>    On Fri, Feb 26, 2016 at 6:48 PM, Petter Mab=C3=A4cker
>> >>    <[1]petter@technux.se> wrote:
>> >>
>> >>    2016-02-26 18:14 skrev Andrei Gherzan:
>> >>
>> >> On Fri, Feb 26, 2016 at 08:26:57PM +1100, Jonathan Liu wrote:
>> >>
>> >>      The path had libexecdir hardcoded so it was no longer correct wh=
en
>> >>      libexecdir was changed in meta/conf/bitbake.conf from
>> >>      ${libdir}/${BPN} to ${prefix_native}/libexec for nativesdk recip=
es.
>> >>      Fixes "No such file or directory" error when executing
>> >>      do_rpiboot_mkimage. Signed-off-by: Jonathan Liu
>> >>      <[2]net147@gmail.com> --- recipes-kernel/linux/linux-raspberrypi=
.inc
>> >>      | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-) diff --git
>> >>      a/recipes-kernel/linux/linux-raspberrypi.inc
>> >>      b/recipes-kernel/linux/linux-raspberrypi.inc index 70e8bfe..8c7c=
46c
>> >>      100644 --- a/recipes-kernel/linux/linux-raspberrypi.inc +++
>> >>      b/recipes-kernel/linux/linux-raspberrypi.inc @@ -60,7 +60,7 @@
>> >>      do_rpiboot_mkimage() { if test "x${KERNEL_IMAGETYPE}" !=3D "xuIm=
age" ;
>> >>      then if test -n "${KERNEL_DEVICETREE}"; then # Add RPi bootloade=
r
>> >>      trailer to kernel image to enable DeviceTree support -
>> >>      ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok
>> >>      ${KERNEL_OUTPUT} ${KERNEL_OUTPUT} +
>> >>      ${STAGING_LIBEXECDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT}
>> >>      ${KERNEL_OUTPUT} fi fi } -- 2.7.1
>> >>
>> >> Back alive. testing this.
>> >>
>> >> --
>> >> Andrei Gherzan
>> >>
>> >>
>> >>    Hi,
>> >>    I think we should use the older patchset from Maciej Borzecki (tha=
t
>> >>    solves this and some other minor stuffs) instead. It also keeps th=
e
>> >>    rpi-mkimage structure:
>> >>    [3]https://lists.yoctoproject.org/pipermail/yocto/2016-February/02=
8271.
>> >>    html
>> >>    BR Petter
>> >>
>> >>    Very good catch Petter. I'll test that PR.
>> >
>> > Merged the patch set sent by Maciej. Which covers this patch too.
>> > Thanks,
>> >
>> > --
>> > Andrei Gherzan
>>
>> Note that Maciej's patch doesn't really preserve the path on older
>> branches like you expect.
>>
>> On master branch:
>> ${libexecdir}/rpi-mkimage expands to /usr/libexec/rpi-mkimage
>>
>> On daisy branch:
>> ${libexecdir}/rpi-mkimage expands to /usr/lib/rpi-mkimage/rpi-mkimage
>
> This is a very good catch. But for now this patch is not in daisy it is o=
nly in
> master which is supposed to work with poky master. I do understand your
> concern. And I think it is the same thing on jethro too. So you propose r=
elying
> on STAGING_LIBEXECDIR_NATIVE and let it append or not BPN?
>
> --
> Andrei Gherzan

I propose my patch instead which has the following behavior and goes
along with the libexecdir change rather than trying to go against it.

My patch has the following paths for mkknlimg.

daisy:
[...]/sysroots/x86_64-linux/usr/lib/rpi-mkimage/mkknlimg
which matches the previous hardcoded path before the patch so the path
doesn't change with the patch for older branches

master:
[...]/sysroots/x86_64-linux/usr/libexec/mkknlimg

You can then do something similar for U-Boot.

Regards,
Jonathan

