Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A22CE00DB0; Fri, 26 Feb 2016 07:40:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f49.google.com (mail-qg0-f49.google.com
	[209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E18BBE00C30
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 07:40:40 -0800 (PST)
Received: by mail-qg0-f49.google.com with SMTP id d32so11975711qgd.0
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 07:40:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=bJnx8iKROhoA9UpQPwKhPyUjKh5qWJP6wQtv+6yu9k0=;
	b=0uR1idCw1mcvHKwNETrPOFZv33WYanbb7YNancSPYNGJh1hC8agO3dyQhIe7hFf5Lb
	FUnAixkEj8v7wx6VNbaDG2nNY6q8LLbFMkkV95IU6RP+qx09kzlMr/safUjut1XGMtB2
	jaWSRhm1f2w47UryhpzlK8CEhZu1SS2zsxt7vwWXf5BfS0L4OT90epxC1anebmQeVVEr
	WrvKACOVqDgf/Ug67lUlXBTaBimY/b5cn7+oL+xfO4fj82JWuEnJPzwPbthLgfhHOrNa
	mSTXPGKvHA22OGL3VOaNuMoAL3uFv3XXj1tMPALSYASlmfTsv9r5umDd5fLWunAehhWi
	G5Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=bJnx8iKROhoA9UpQPwKhPyUjKh5qWJP6wQtv+6yu9k0=;
	b=EnEzzyW8wS2HflloDlOCO/yWpF5qU9zq00uQiguvEGRuwYDbqr1qk0f4YWhpsrlACl
	6x73pMvKLQkSLqMtA2s1sgspSTGBghro1lGutREFku/0yhXIdy4ToqUOBczoL0/Cb16I
	KY0CaQJgt6B+FhNQZmQ97KwzTv0YTFId2N2OHuJhTQUvXrEFHejxaIXualKV3gqfgImq
	Xp5QA4sDugpryaM+kF3EIPLjbvj9nza1a4wnKtbz0s5+CaqHCMH2EjkmIQnYFpZEnU6r
	htMBBl2akyi1YOcSd/fhqcA336CE0uPTZsU57vVU3R8IVpp0hEgHVSrBob65Sze1zUvJ
	Topg==
X-Gm-Message-State: AD7BkJJap0yGFN3BqoWezzESZGR3W7jTPR8iH1pBmbA+N+AeUPG50SblDGqU06Bab2KfWUitge/FX12Zwhl17g==
X-Received: by 10.140.241.5 with SMTP id m5mr2897695qhc.98.1456501239875; Fri,
	26 Feb 2016 07:40:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Fri, 26 Feb 2016 07:40:10 -0800 (PST)
In-Reply-To: <CANwerB0+Vr6jvHyAW9vW6LT=qJa+GV4g5TbNxqqxDHC4GVWbgA@mail.gmail.com>
References: <1454173548-5806-1-git-send-email-raj.khem@gmail.com>
	<20160223210251.GC10598@ad.chargestorm.se>
	<CALbNGRSLRGvmdTNg6hF8YwGXRPza5Xn8sLLjrcgOrT+B1--+yA@mail.gmail.com>
	<20160224202824.GA5109@ad.chargestorm.se>
	<CAMKF1soW-j3CztWY2gYy=hCGz0O9pV6iLqveAQTbvREvOj=0DQ@mail.gmail.com>
	<CANwerB0+Vr6jvHyAW9vW6LT=qJa+GV4g5TbNxqqxDHC4GVWbgA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 26 Feb 2016 07:40:10 -0800
Message-ID: <CAMKF1srb81bOz0t72pahbe=73kp3ASgHEEmdJB35p+oPhrVbpg@mail.gmail.com>
To: Jonathan Liu <net147@gmail.com>
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
X-List-Received-Date: Fri, 26 Feb 2016 15:40:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 26, 2016 at 3:35 AM, Jonathan Liu <net147@gmail.com> wrote:
> Hi Khem,
>
> I just posted another patch which does basically the same thing but
> uses ${STAGING_LIBEXECDIR_NATIVE}.
> I checked the expansion of ${STAGING_LIBEXECDIR_NATIVE} on daisy
> branch and master.
>
> daisy:
> [...]/sysroots/x86_64-linux/usr/lib/rpi-mkimage/mkknlimg
> which matches the previous hardcoded path before the patch
>
> master:
> [...]/sysroots/x86_64-linux/usr/libexec/mkknlimg
>
> So it looks like my patch should work on older branches too...
>

yes this approach is better. Therefore I have picked it into
kraj/master, I will test it out and push is
shortly.

> Regards,
> Jonathan
>
> On 25 February 2016 at 08:44, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Feb 24, 2016 1:30 PM, "Anders Darander" <anders@chargestorm.se> wrote=
:
>>>
>>> * Andreas M=C3=BCller <schnitzeltony@googlemail.com> [160223 22:38]:
>>> > > * Khem Raj <raj.khem@gmail.com> [160130 18:07]:
>>> > >
>>> > >> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc
>>> > >> b/recipes-kernel/linux/linux-raspberrypi.inc
>>> > >> index 70e8bfe..0798788 100644
>>> > >> --- a/recipes-kernel/linux/linux-raspberrypi.inc
>>> > >> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
>>> > >> @@ -60,7 +60,7 @@ do_rpiboot_mkimage() {
>>> > >>      if test "x${KERNEL_IMAGETYPE}" !=3D "xuImage" ; then
>>> > >>          if test -n "${KERNEL_DEVICETREE}"; then
>>> > >>              # Add RPi bootloader trailer to kernel image to enabl=
e
>>> > >> DeviceTree support
>>> > >> -            ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg
>>> > >> --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
>>> > >> +            ${STAGING_DIR_NATIVE}${libexecdir}/mkknlimg --dtok
>>> > >> ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
>>> > >>          fi
>>> > >>      fi
>>> > >>  }
>>> > This patch is mandatory but there was a serial with additional fixes
>>> > send by Maciej Borzecki on Feb 2nd. I think this is worth taken into
>>> > account.
>>> >
>>>
>>> Yes, that's right.
>>>
>>> If the rest of the patches in that series is non-controversial, could w=
e
>>> have them applied? Otherwise, could we have Khem's patch applied, and
>>> the other series rebased upon that?
>>>
>>
>> This will also make layer incompatible with jethro and older releases. S=
o
>> before applying this patch jethro has to branch out
>>
>>> We've had the master branch non-building for quite a while now...
>>>
>>> I'm just keen to get either of those patches applied to
>>> meta-raspberrypi. I'd like to avoid having to use a local fork as much
>>> as possible...
>>>
>>> Cheers,
>>> Anders
>>>
>>> --
>>> Anders Darander, Senior System Architect
>>> ChargeStorm AB / eStorm AB
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>

