Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.560.1575418018690564072
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 16:06:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kgFZOWqr;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C64DE00EBC; Tue,  3 Dec 2019 16:06:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.160.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6E5AE00EBA
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2019 16:06:55 -0800 (PST)
Received: by mail-qt1-f176.google.com with SMTP id w47so5828658qtk.4
        for <yocto@yoctoproject.org>; Tue, 03 Dec 2019 16:06:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ge7M9DsEjl466UsNoe6WTMJIxDMbAF2kQoNW1NoGdUk=;
        b=kgFZOWqrEMflSMa1kPaW2npA8B6/5eupfJoFG0qzJ7bN5dVAe1DR934Cws/qdPPHy5
         hghHzZmDubcWHfCOnnNpw58de3e6tW9TMZS/aMzkbKyFeJk4SacGIra1/IEeB59fnMeX
         a5cocIu1gVw2zQaQc985LaJdTFq7rjchdamFCRmxq8omPGF0qms632776qdU1PNUHTgK
         LoiKhQYcvXRjv3xbwRFWDTd7u+r+YMpyoN7LI9tTY8mi7aRzgRdl0pOGjOcYfTSwWCX2
         M4CxuHQI/aramc70Fqpvfjdy+Net8n6NSz2v8rNwKaoKHAeP8P/yqyzb/KP/TAECjx3F
         MQhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ge7M9DsEjl466UsNoe6WTMJIxDMbAF2kQoNW1NoGdUk=;
        b=ORoJ7W5kOZpbLFdFaU9iloiZqkmBM61BrP8ht2mTWJ8eKQAN6YmE1jTvLBfxqw+jCB
         XesTqF6gm2il20llY+1Wd8zLKv54wl1pk74vW162J7Z44OYsf9VL/N63pIiaLT782dxA
         Yi5Ua7PNiEC+PrYIgHe+XWKvn5mjxaIzXu2XE77mrniVyWkmlDyvCks22MRLmPRdZnzl
         Pf81DEnwYLdZg+Dz/mSTx7qbtzLDIVkZ784wENfma19DkPw+moCijeWhmkEBJW+PfUq2
         Cpema82pJHiIeMnJ49Ch6vgTmSo9ELvltUmoRfYC04KOxjtNcykw7GmIElDdEplSHLI+
         YKpg==
X-Gm-Message-State: APjAAAUZWhOdFWOH16leZsLlqWxJBCNyVKYRglyAq5cTfJVMBL8SpLkV
	HIYAcNsOB2peOwTM3TDaRzGtVGgKCTdiXReX5WzA8snY
X-Google-Smtp-Source: APXvYqyX8DeqIN/xJ2WhnQNkTzRVHZQ8C0DhUYoYUrBb+oZogBt0M7brPmGOyjNl5dchSQBpfEDGQNEYMEkc3l1KpU0=
X-Received: by 2002:ac8:145:: with SMTP id f5mr277896qtg.194.1575418014591;
 Tue, 03 Dec 2019 16:06:54 -0800 (PST)
MIME-Version: 1.0
References: <7D6FCC3C-A8B1-4EE7-875F-E544DCC3B44A@korgrd.com>
 <d6a7e59a-cc6a-aa34-21a5-47c73062f9e1@gherzan.ro> <CAMKF1srHdfY1=Qbb7vURbMauc5VcPiKzH6_AGht86ChoJKvDZQ@mail.gmail.com>
 <097a8fe9-979d-aa3f-68ad-2c9e0bea6853@gherzan.ro> <CAMKF1sq39xefZFVEVafJ6yuRuinUtZ8odrPSJ4POiq49zevwPw@mail.gmail.com>
 <352DF122-AE8C-4549-A04B-27EEF9A73AE5@gherzan.ro> <20191103182512.GA28946@localhost>
 <9F6E6EE0-4FF9-4251-9B7B-37A734DA4824@korgrd.com> <20191104161127.GC5390@localhost>
 <3DE4E470-5A63-4B19-A587-49A771B96850@korgrd.com> <F621167E-B505-491A-ABD2-1ED5600129F8@korgrd.com>
 <86097C68-F833-4B01-8EE0-177BD9D26D76@korgrd.com> <E49C09B9-FF9C-42E7-BFD9-CA55D367AFF6@korgrd.com>
 <CAMKF1spV20XYyTXkeXus7gJNReJQDBQARJbzd5CBsWURDwLSVQ@mail.gmail.com> <CAD6wmC_cAA8feUd_sbmrX42g4MZN+ichifLnDMvbfSMtaLnHmQ@mail.gmail.com>
In-Reply-To: <CAD6wmC_cAA8feUd_sbmrX42g4MZN+ichifLnDMvbfSMtaLnHmQ@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 3 Dec 2019 16:06:25 -0800
Message-ID: <CAMKF1spWqX3BOFaoBgyJ2UL4NHUSUAS9w_4U=uPpobQccVsPhw@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] poky linux build fails if ARM erratum mfix linker switch is specified
To: Steve Pavao <stevep@korgrd.com>
Cc: Andrei Gherzan <andrei@gherzan.ro>, Yocto Project <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 3, 2019 at 3:54 PM Steve Pavao <stevep@korgrd.com> wrote:
>
>
>
> On Thu, Nov 7, 2019 at 2:03 PM Khem Raj <raj.khem@gmail.com> wrote:
>>
>>
>>
>> On Thu, Nov 7, 2019 at 10:42 AM Steve Pavao <stevep@korgrd.com> wrote:
>>>
>>> > On Nov 4, 2019, at 4:26 PM, Steve Pavao <stevep@korgrd.com> wrote:
>>> >
>>> >> On Nov 4, 2019, at 11:32 AM, Steve Pavao <stevep@korgrd.com> wrote:
>>> >>>
>>> >>> On Nov 4, 2019, at 11:16 AM, Steve Pavao <stevep@korgrd.com> wrote:
>>> >>>>
>>> >>>> On Nov 4, 2019, at 11:11 AM, Adrian Bunk <bunk@stusta.de> wrote:
>>> >>>>
>>> >>>> On Mon, Nov 04, 2019 at 10:48:57AM -0500, Steve Pavao wrote:
>>> >>>>>
>>> >>>>>> On Nov 3, 2019, at 1:25 PM, Adrian Bunk <bunk@stusta.de> wrote:
>>> >>>>>>
>>> >>>>>> On Sun, Nov 03, 2019 at 05:56:45PM +0000, Andrei Gherzan wrote:
>>> >>>>>>> On 3 November 2019 13:18:53 GMT, Khem Raj <raj.khem@gmail.com> =
wrote:
>>> >>>>>>>> On Sun, Nov 3, 2019 at 2:46 AM Andrei Gherzan <andrei@gherzan.=
ro>
>>> >>>>>>>> wrote:
>>> >>>>>>>>> I was thinking about this. The erratum seems to show that thi=
s
>>> >>>>>>>> applies
>>> >>>>>>>>> to all revisions of a53. So it sounds like we should add it i=
n
>>> >>>>>>>>> `tune-cortexa53.inc`.
>>> >>>>>>>>>
>>> >>>>>>>>
>>> >>>>>>>> Up to r0b4 only so maybe not all a53 implementations are impac=
ted
>>> >>>>>>>>
>>> >>>>>>>
>>> >>>>>>> As far as I know that is the latest revision. Do you mean that =
newer revision might come up with this fixed?
>>> >>>>>>
>>> >>>>>> It is fixed in some r0p4 implementations, indicated in REVIDR[8]=
.
>>> >>>>>
>>> >>>>> I am closer to understanding why I experience an error when build=
ing with the ARM errata switches.
>>> >>>>>
>>> >>>>> I believe it is related to 32-bit app support in my poky Linux 64=
-bit build (I add this to support vcgencmd and vcdbg 32-bit apps.)
>>> >>>>>
>>> >>>>> When I remove the 32-bit support, the build completes OK.  As of =
now, adding the following seems to work fine to acheive this:
>>> >>>>>
>>> >>>>> TARGET_CC_ARCH_append +=3D " -mfix-cortex-a53-843419 -mfix-cortex=
-a53-835769=E2=80=9D
>>> >>>>>
>>> >>>>> Something in the following block seems to be the culprit.:
>>> >>>>>
>>> >>>>> # for vcgencmd and vcdbg 32-bit executable support in the OS imag=
e (comment out for -c populate_sdk)
>>> >>>>> require conf/multilib.conf
>>> >>>>> MULTILIBS =3D "multilib:lib32"
>>> >>>>> DEFAULTTUNE_virtclass-multilib-lib32 =3D "armv7a"
>>> >>>>> IMAGE_INSTALL_append +=3D " vcgencmd lib32-glibc lib32-libgcc lib=
32-libstdc++ vcdbg rpi-setup \
>>> >>>>> =E2=80=9C
>>> >>>>>
>>> >>>>> I will post again when I have localized the build problem further=
.  Maybe there=E2=80=99s some 64-bit vs. 32-bit build confusion going on, a=
nd the armv7a default tune switch for 32-bits is colliding with the errata =
switches.
>>> >>>>
>>> >>>> The errata switches are only valid for aarch64, not for armv7a.
>>> >>>> There is likely some kind of "invalid option" earlier in your buil=
d.
>>> >>>
>>> >>> To conitnue to be able to use the 32-bit app support, perhaps I mus=
t do this:
>>> >>>
>>> >>> DEFAULTTUNE_virtclass-multilib-lib32 =3D =E2=80=9Carmv7a -mno-fix-c=
ortex-a53-843419 -mno-fix-cortex-a53-835769=E2=80=9D
>>> >>
>>> >> This doesn=E2=80=99t work.
>>> >>
>>> >> If I wish to keep the 32-bit app support in my build, I=E2=80=99ll n=
eed to devise a way to make sure those ARM errata flags are only applied to=
 the aarch64 portion of the compile/link for the target, not to the multili=
b 32-bit app support portion.
>>> >
>>> > Andrei and/or Khem,
>>> >
>>> > Could you advise an approach that allows to use the ARM errata switch=
es for the aarch64 portion of the build for the target, but which will NOT =
specify the ARM errata switches for our supplementary 32-bit portion of the=
 build for the target?  (This supplementary 32-bit portion of the build is =
to support the 32-bit vcgencmd app, and contains multilib and some addition=
al 32-bit libraires.  Please see earlier post for the syntax we use in our =
local.conf.)
>>>
>>>
>>> I've been able to rebuild 64-bit Linux code with the ARM errata switche=
s, by adding the following line to the end of /meta/conf/machine/include/ar=
m/arch-arm64.inc,
>>>
>>> TUNE_CCARGS +=3D "${@bb.utils.contains("TUNE_FEATURES", "aarch64", " -m=
fix-cortex-a53-843419 -mfix-cortex-a53-835769", "" ,d)}=E2=80=9D
>>
>>
>> This should be in tune-cortexa53.inc
>
>
> I took care of this locally on my system in that file for now.
>
> That said, in your opinion, what is the best way to have this change be a=
pplied permanently to that file in the meta layer?  Should I be the one to =
try to make the change and generate a pull request, or is it best if someon=
e who is already regularly involved in meta layer maintenance and testing g=
ives it a closer look and does it the way they think is best?
>

I would expect a patch from you since you are in thick of it and have
tested the solution, So please go ahead and create a pull request on
github. We can review and iterate of patch then


> Steve Pavao
> Korg R&D
