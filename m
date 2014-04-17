Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30311E00C1E
	for <yocto@yoctoproject.org>; Thu, 17 Apr 2014 16:26:22 -0700 (PDT)
Received: by mail-ie0-f178.google.com with SMTP id lx4so1001139iec.23
	for <yocto@yoctoproject.org>; Thu, 17 Apr 2014 16:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=UMcP06PIRzYCQNRPRK7cfmQQ2iZg1tu5RawmsY4fiOo=;
	b=DwHWfy+Rt9oSCyRD5vFi74kUsbNe8pNd/czA+tU/3wBXK1cKqDbaAl7WoT4LSGCVEF
	oLenImlODv1ZSBLqvw7fbZvlLEJfCxXraXksQmS0WkyGbTTDHF3NKoDowv514dGpTimY
	Bl7RM/fI51Yk9FMzOdkEOWLSp4Y7T4W00Y2RFKPn39GTB4nDZhsKoBaRzjVmHZHEn3RY
	0Gb8NxeGqPx+ej6satO/SVtfuguBFV0CPIBp3iXxvS3YRqF18s8M8ZOeh3VLEz6FuS3h
	iEYqo43H9PZ/6LmMsmHTDW/RB8p4sIukGforNMuYKorkThEPzpcz1/EvkNL0am72mG8a
	8uCQ==
X-Received: by 10.50.60.72 with SMTP id f8mr238856igr.20.1397777182055; Thu,
	17 Apr 2014 16:26:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.229.14 with HTTP; Thu, 17 Apr 2014 16:25:51 -0700 (PDT)
In-Reply-To: <5350483C.6060400@ti.com>
References: <534C0415.20701@mlbassoc.com>
	<3130526.9zUpmp9SKQ@peggleto-mobl5.ger.corp.intel.com>
	<20140415162639.GC11339@denix.org>
	<16254891.OyPbf7clBT@peggleto-mobl5.ger.corp.intel.com>
	<20140415171601.GD11339@denix.org> <20140415174112.GE11339@denix.org>
	<20140415194307.GG11339@denix.org> <534DBB9E.2030608@mlbassoc.com>
	<20140417191042.GK11339@denix.org> <5350483C.6060400@ti.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 17 Apr 2014 16:25:51 -0700
Message-ID: <CAMKF1so9KGnhQKiHvXu-Uh2zJDyYZs1psM6QQAP-y_Uzp53Ytg@mail.gmail.com>
To: William Mills <wmills@ti.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: BBB doesn't boot
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
X-List-Received-Date: Thu, 17 Apr 2014 23:26:23 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 17, 2014 at 2:31 PM, William Mills <wmills@ti.com> wrote:
> On 04/17/2014 03:10 PM, Denys Dmytriyenko wrote:
>>
>> On Tue, Apr 15, 2014 at 05:07:10PM -0600, Gary Thomas wrote:
>>>
>>> On 2014-04-15 13:43, Denys Dmytriyenko wrote:
>>>>
>>>> On Tue, Apr 15, 2014 at 01:41:12PM -0400, Denys Dmytriyenko wrote:
>>>>>>>>>
>>>>>>>>> Some other things I tried with a "long" TMPDIR path (note that it=
's
>>>>>>>>> the
>>>>>>>>> TMPDIR path that makes the difference - in my tests I've been usi=
ng
>>>>>>>>> /home/paul/poky/build2/much/longer/path/to/tmp). None of this
>>>>>>>>> helped:
>>>>>>>>>
>>>>>>>>> * kernel built with gcc 4.7.2 and binutils 2.23.2
>>>>>>>>> * u-boot built with gcc 4.7.2 and binutils 2.23.2
>>>>>>>>> * u-boot from
>>>>>>>>> http://downloads.angstrom-distribution.org/demo/beaglebone/
>>>>>>>>> * earlyprintk and CONFIG_DEBUG_LL - no additional output printed
>>>>>>>>>
>>>>>>>>> I think we're now at the point where we'd benefit from someone wi=
th
>>>>>>>>> better
>>>>>>>>> knowledge debugging the issue.
>>>>>>>>
>>>>>>>>
>>>>>>>> Ok, should we expand the search area? Since this is supposed to be
>>>>>>>> vanilla
>>>>>>>> 3.14 kernel, can we try other platforms and see if they are
>>>>>>>> similarly
>>>>>>>> affected? I'll try pinging our kernel guys for any ideas...
>>>>>>>
>>>>>>>
>>>>>>> As far as I know it has only been observed with beaglebone (both
>>>>>>> white and
>>>>>>> black, if it makes a difference). FWIW, qemuarm images from the
>>>>>>> autobuilder
>>>>>>> boot just fine, and apparently the same is true of edgerouter
>>>>>>> (different
>>>>>>> architecture but also uses u-boot).
>>>>>>
>>>>>>
>>>>>> But do those other platforms use uImage or zImage?
>>>>
>>>>
>>>> I don't yet know what is going on, but building in the same directory
>>>> with
>>>> sources (B =3D S) makes it work regarless of the path length:
>>>>
>>>>
>>>> /OE/RAM/poky-111111111111111111111111111111111111111111111111111111111=
111111111111111111111111111111111111111111111111/22222222222222222222222222=
222222222222222222222222222222222222222222/33333333333333333333333333333333=
33333333333333333333/tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.1=
4+gitAUTOINC+928d7b2dda_0143c6ebb4-r0/linux
>>>>
>>>> So, I just commented out setting kernel-specific B in linux-yocto.inc
>>>> and any
>>>> kernel now boots with long path:
>>>>
>>>> #B =3D "${WORKDIR}/linux-${PACKAGE_ARCH}-${LINUX_KERNEL_TYPE}-build"
>>>>
>>>> I'm copying Richard and Bruce directly to see if they may have a quick
>>>> insight
>>>> and/or accept it as a workaround for the release. I'll keep digging
>>>> further,
>>>> but if anyone cares to verify the above workaround works for them, I
>>>> would
>>>> appreciate. Thanks!
>>>>
>>>
>>> Verified - I rebuilt the kernel in a working tree with a longer
>>> path (one in fact that had failed before) and it boots fine.
>>>
>>> Wonder what ${B} !=3D ${S} is doing wacky...?
>>
>>
>> Gary, et al,
>>
>> I've just submitted a patch to oe-core and yocto MLs that fixes this iss=
ue
>> -
>> could you please test it in your setup and confirm? Thanks!
>>
>
> I updated Stefan's bug w/ more explanation.
> I verified that Stefan's uImage-bad failed for me and then added the
> following to uEnv.txt:
> fdtaddr=3D0x88000000

hmmm so it seems kernel size grew enough to overwrite the area where
uboot would put divice tree ?
has happened to me on ppc with kernel+initramfs where initramfs kept growin=
g

>
> uImage-bad (and uImage-good) worked w/ the above change to uEnv.txt.
> Denys' patch fixes all the defaults in u-boot so that no uEnv.txt change =
is
> needed.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

