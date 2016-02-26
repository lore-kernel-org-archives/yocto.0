Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4207E00D58; Fri, 26 Feb 2016 03:35:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf0-f175.google.com (mail-pf0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC1CAE00D40
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 03:35:27 -0800 (PST)
Received: by mail-pf0-f175.google.com with SMTP id w128so3306833pfb.2
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 03:35:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-transfer-encoding;
	bh=/kEK3SnDH/P8gcGOxJwLfFw7dnWFyA7HrxBC37yabTk=;
	b=gYbeYeMCmwuEtrkWQMhO9AhVMegDhiBlC8xOWYK9UCf2FiJGfmwkwGSJNoCR15m4H6
	HjaNieeQnaOP8AAGwgUte+LjIKxYvDudKY8SVj0pechN96Z1t1dAOtOl4S530zT40HAm
	YwmOyOXua+ILmuAcIbRf9HE0oSKGScWosGZmlRoPeukgCh3b4kx3n3eEtZWjHZE41Zi2
	tiN3JMlAkQt7/b9qn302qEJIdMuH5EkA/asJ95bnRivASI0U0qrjEgvR6PRK41kNX9Qm
	jr5b56WODsay+m9AN48DP2MSjwJNGu1gifaI0VYNiDv8LsisyxzmkSKr1Ts6htb+aaRX
	esEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-transfer-encoding;
	bh=/kEK3SnDH/P8gcGOxJwLfFw7dnWFyA7HrxBC37yabTk=;
	b=b1Ph7QLWDC+k+tqKwfz3duQ98X1cxHaQyXKy4ve2CUxBLu5TJVVQt6EewNPqgRq+bX
	CxRxDHvkqas9ObQeUvzXU+zWIkQh1X3QRAVskcy7EYKDK2p3zX7ve7Z7ll+b8Kp9Tmx4
	39s/ujRRjb+Dz29jNPAqQXiKb8x6rDaO+oAS12dZL3yMz5cdr54mNGlTHYOTpXT0gNTx
	IcFbVLcNQ+wNBLz62U/GcTEKjxPw72eeN2dRtke1VVHPptYxH3R2/CgbmoH1Qky5Z6Ss
	TwGQPlJa/XMbHPdQBmGtam/b97ELyjOVIXerpnL9qc+bc7hcMz/ef9j9f1+KtjjYkKpb
	07uQ==
X-Gm-Message-State: AD7BkJLRUgb1VS6cuCrlOCJ581hFIVB9VzqUjdXliL3RlLRVOPErosBbMCNJeoHpPPfTrxi75KGyUt1/5Z6uEw==
MIME-Version: 1.0
X-Received: by 10.98.16.198 with SMTP id 67mr1316832pfq.21.1456486526662; Fri,
	26 Feb 2016 03:35:26 -0800 (PST)
Received: by 10.66.155.201 with HTTP; Fri, 26 Feb 2016 03:35:26 -0800 (PST)
In-Reply-To: <CAMKF1soW-j3CztWY2gYy=hCGz0O9pV6iLqveAQTbvREvOj=0DQ@mail.gmail.com>
References: <1454173548-5806-1-git-send-email-raj.khem@gmail.com>
	<20160223210251.GC10598@ad.chargestorm.se>
	<CALbNGRSLRGvmdTNg6hF8YwGXRPza5Xn8sLLjrcgOrT+B1--+yA@mail.gmail.com>
	<20160224202824.GA5109@ad.chargestorm.se>
	<CAMKF1soW-j3CztWY2gYy=hCGz0O9pV6iLqveAQTbvREvOj=0DQ@mail.gmail.com>
Date: Fri, 26 Feb 2016 22:35:26 +1100
Message-ID: <CANwerB0+Vr6jvHyAW9vW6LT=qJa+GV4g5TbNxqqxDHC4GVWbgA@mail.gmail.com>
From: Jonathan Liu <net147@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Adjust for libexecdir changes
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
X-List-Received-Date: Fri, 26 Feb 2016 11:35:30 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Khem,

I just posted another patch which does basically the same thing but
uses ${STAGING_LIBEXECDIR_NATIVE}.
I checked the expansion of ${STAGING_LIBEXECDIR_NATIVE} on daisy
branch and master.

daisy:
[...]/sysroots/x86_64-linux/usr/lib/rpi-mkimage/mkknlimg
which matches the previous hardcoded path before the patch

master:
[...]/sysroots/x86_64-linux/usr/libexec/mkknlimg

So it looks like my patch should work on older branches too...

Regards,
Jonathan

On 25 February 2016 at 08:44, Khem Raj <raj.khem@gmail.com> wrote:
>
> On Feb 24, 2016 1:30 PM, "Anders Darander" <anders@chargestorm.se> wrote:
>>
>> * Andreas M=C3=BCller <schnitzeltony@googlemail.com> [160223 22:38]:
>> > > * Khem Raj <raj.khem@gmail.com> [160130 18:07]:
>> > >
>> > >> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc
>> > >> b/recipes-kernel/linux/linux-raspberrypi.inc
>> > >> index 70e8bfe..0798788 100644
>> > >> --- a/recipes-kernel/linux/linux-raspberrypi.inc
>> > >> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
>> > >> @@ -60,7 +60,7 @@ do_rpiboot_mkimage() {
>> > >>      if test "x${KERNEL_IMAGETYPE}" !=3D "xuImage" ; then
>> > >>          if test -n "${KERNEL_DEVICETREE}"; then
>> > >>              # Add RPi bootloader trailer to kernel image to enable
>> > >> DeviceTree support
>> > >> -            ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg
>> > >> --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
>> > >> +            ${STAGING_DIR_NATIVE}${libexecdir}/mkknlimg --dtok
>> > >> ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
>> > >>          fi
>> > >>      fi
>> > >>  }
>> > This patch is mandatory but there was a serial with additional fixes
>> > send by Maciej Borzecki on Feb 2nd. I think this is worth taken into
>> > account.
>> >
>>
>> Yes, that's right.
>>
>> If the rest of the patches in that series is non-controversial, could we
>> have them applied? Otherwise, could we have Khem's patch applied, and
>> the other series rebased upon that?
>>
>
> This will also make layer incompatible with jethro and older releases. So
> before applying this patch jethro has to branch out
>
>> We've had the master branch non-building for quite a while now...
>>
>> I'm just keen to get either of those patches applied to
>> meta-raspberrypi. I'd like to avoid having to use a local fork as much
>> as possible...
>>
>> Cheers,
>> Anders
>>
>> --
>> Anders Darander, Senior System Architect
>> ChargeStorm AB / eStorm AB
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

