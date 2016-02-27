Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8114DE00BF8; Sat, 27 Feb 2016 05:47:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC9CDE00B6F
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 05:47:21 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id g62so103973263wme.0
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 05:47:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-transfer-encoding;
	bh=VWPHY/7UO2hVeEEcbuHy2Delr5jzBEyaCJLP1B9KBOM=;
	b=qfjgHllDAbJuzX3geUI7Eoil9RfrESCRFRdHh0OuLJtSloj6FhueHQvW3xkyyKsnRX
	4VwQwvyYXQsyA/9J0kdjIB3YmtTYdVVqjglf8ffQHL/tr/8tPkx2+19DlECQF6JJY+6D
	F+LpMSvXRIJZtaQP0XIY83IPK97jT7zb5M3OthMAcPaKQIdTK7jVPW43KTJ9BiQL04Pb
	zX/2W0z1Yps537oT01/RUQ5uD1C9wxo6xMwl+mMREjqLRW4NO2VgUK/I0UPd1J0XH9Gi
	4bA3DZXsMC9SWmgcE8XMVLKlKU8wjtGKP+TPu5YcSfDve+6XW7r7dQtEGAR72NlPbWg5
	vnhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-transfer-encoding;
	bh=VWPHY/7UO2hVeEEcbuHy2Delr5jzBEyaCJLP1B9KBOM=;
	b=C+DUvoM3ZGTSadBCXvpqdpCHNf7w/NT4UoSU33dQ6eUicvgeOfXs6sEMCXH5QwZJfU
	aqtpLl2AKZlP7RXf8gx2s/wc53EtWn6yEjHWjknRXz58pBmkoFQJbso+98Zbvi03rfsZ
	YpLX32hrNJCin2ZLvxpxWF2nOkY89Vsgkpw4oW7EQv8wX6ftOHTbz/sPxHKDZLioaBN9
	OfDdkTbD8Mz46lYkUFriWyzbtuo8rYBzVm8HlO1M53cCBH7S8Vlz8+KhaWiZKmaB+qU6
	lo5+ZwBDpyP+ku+JWREoC8EXqvje0kLh0MNkcSDD8xqMFurvf/0+OHzu1f7gu1mdbCJX
	gnsQ==
X-Gm-Message-State: AD7BkJIX0ZtHcYFOBnYLO/q/ckflzAZHirs+5ASmlwfJkqfdHEvLANi6A/ojugiSOBIa2vcnYd5sq4IzGCfdUw==
MIME-Version: 1.0
X-Received: by 10.28.91.83 with SMTP id p80mr3209188wmb.48.1456580840594; Sat,
	27 Feb 2016 05:47:20 -0800 (PST)
Received: by 10.27.9.133 with HTTP; Sat, 27 Feb 2016 05:47:20 -0800 (PST)
In-Reply-To: <20160227130529.GD28071@resin.home>
References: <1456478817-7221-1-git-send-email-net147@gmail.com>
	<20160226171446.GA4154@resin.home>
	<876d8b2d6f4549cebde5792d84860bee@technux.se>
	<CAK18fxGKNWMUh=SmKe+3=GF3ttayvm_DyhtzFztBxvfzdj64sg@mail.gmail.com>
	<20160226195505.GB27062@resin.home>
	<CANwerB1NhH7sSS-zy8GUHVou4-Ny62=QQpGHsjUaXLf9ii1TMg@mail.gmail.com>
	<20160226212038.GA28071@resin.home>
	<CANwerB3hkBTe628KYDG0owzUYjTodMT8X8HhzUmpMA+uT2P_CQ@mail.gmail.com>
	<20160227130529.GD28071@resin.home>
Date: Sun, 28 Feb 2016 00:47:20 +1100
Message-ID: <CANwerB3smxRujUwCA7sx6W+1rLRmxD0KkxcOKk-=Pf6VmTg_Sg@mail.gmail.com>
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
X-List-Received-Date: Sat, 27 Feb 2016 13:47:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 28 February 2016 at 00:05, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Sat, Feb 27, 2016 at 11:25:28PM +1100, Jonathan Liu wrote:
>> On 27 February 2016 at 23:21, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> > On Sat, Feb 27, 2016 at 08:03:10AM +1100, Jonathan Liu wrote:
>> >> On 27 February 2016 at 06:55, Andrei Gherzan <andrei@gherzan.ro> wrot=
e:
>> >> > On Fri, Feb 26, 2016 at 07:04:28PM +0100, Andrei Gherzan wrote:
>> >> >>    --
>> >> >>    Andrei Gherzan
>> >> >>    On Fri, Feb 26, 2016 at 6:48 PM, Petter Mab=C3=A4cker
>> >> >>    <[1]petter@technux.se> wrote:
>> >> >>
>> >> >>    2016-02-26 18:14 skrev Andrei Gherzan:
>> >> >>
>> >> >> On Fri, Feb 26, 2016 at 08:26:57PM +1100, Jonathan Liu wrote:
>> >> >>
>> >> >>      The path had libexecdir hardcoded so it was no longer correct=
 when
>> >> >>      libexecdir was changed in meta/conf/bitbake.conf from
>> >> >>      ${libdir}/${BPN} to ${prefix_native}/libexec for nativesdk re=
cipes.
>> >> >>      Fixes "No such file or directory" error when executing
>> >> >>      do_rpiboot_mkimage. Signed-off-by: Jonathan Liu
>> >> >>      <[2]net147@gmail.com> --- recipes-kernel/linux/linux-raspberr=
ypi.inc
>> >> >>      | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-) diff --g=
it
>> >> >>      a/recipes-kernel/linux/linux-raspberrypi.inc
>> >> >>      b/recipes-kernel/linux/linux-raspberrypi.inc index 70e8bfe..8=
c7c46c
>> >> >>      100644 --- a/recipes-kernel/linux/linux-raspberrypi.inc +++
>> >> >>      b/recipes-kernel/linux/linux-raspberrypi.inc @@ -60,7 +60,7 @=
@
>> >> >>      do_rpiboot_mkimage() { if test "x${KERNEL_IMAGETYPE}" !=3D "x=
uImage" ;
>> >> >>      then if test -n "${KERNEL_DEVICETREE}"; then # Add RPi bootlo=
ader
>> >> >>      trailer to kernel image to enable DeviceTree support -
>> >> >>      ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok
>> >> >>      ${KERNEL_OUTPUT} ${KERNEL_OUTPUT} +
>> >> >>      ${STAGING_LIBEXECDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT}
>> >> >>      ${KERNEL_OUTPUT} fi fi } -- 2.7.1
>> >> >>
>> >> >> Back alive. testing this.
>> >> >>
>> >> >> --
>> >> >> Andrei Gherzan
>> >> >>
>> >> >>
>> >> >>    Hi,
>> >> >>    I think we should use the older patchset from Maciej Borzecki (=
that
>> >> >>    solves this and some other minor stuffs) instead. It also keeps=
 the
>> >> >>    rpi-mkimage structure:
>> >> >>    [3]https://lists.yoctoproject.org/pipermail/yocto/2016-February=
/028271.
>> >> >>    html
>> >> >>    BR Petter
>> >> >>
>> >> >>    Very good catch Petter. I'll test that PR.
>> >> >
>> >> > Merged the patch set sent by Maciej. Which covers this patch too.
>> >> > Thanks,
>> >> >
>> >> > --
>> >> > Andrei Gherzan
>> >>
>> >> Note that Maciej's patch doesn't really preserve the path on older
>> >> branches like you expect.
>> >>
>> >> On master branch:
>> >> ${libexecdir}/rpi-mkimage expands to /usr/libexec/rpi-mkimage
>> >>
>> >> On daisy branch:
>> >> ${libexecdir}/rpi-mkimage expands to /usr/lib/rpi-mkimage/rpi-mkimage
>> >
>> > This is a very good catch. But for now this patch is not in daisy it i=
s only in
>> > master which is supposed to work with poky master. I do understand you=
r
>> > concern. And I think it is the same thing on jethro too. So you propos=
e relying
>> > on STAGING_LIBEXECDIR_NATIVE and let it append or not BPN?
>> >
>> > --
>> > Andrei Gherzan
>>
>> I propose my patch instead which has the following behavior and goes
>> along with the libexecdir change rather than trying to go against it.
>>
>> My patch has the following paths for mkknlimg.
>>
>> daisy:
>> [...]/sysroots/x86_64-linux/usr/lib/rpi-mkimage/mkknlimg
>> which matches the previous hardcoded path before the patch so the path
>> doesn't change with the patch for older branches
>>
>> master:
>> [...]/sysroots/x86_64-linux/usr/libexec/mkknlimg
>>
>> You can then do something similar for U-Boot.
>
> Indeed I agree and sounds good. One problem though - I merged the Maciej'=
s
> patches.  Would you be able to patch current master and adapt your patch =
on it?
> If not I'll try to do it this weekend. Thanks a lot.
>
> --
> Andrei Gherzan

I have submitted a patchset against current master.

Regards,
Jonathan

