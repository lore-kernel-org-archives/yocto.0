Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.407.1575417244520909376
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 15:54:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@korgrd-com.20150623.gappssmtp.com header.s=20150623 header.b=opj9fH/0;
 spf=none, err=permanent DNS error (domain: korgrd.com, ip: 140.211.169.56, mailfrom: stevep@korgrd.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64F11E00EBC; Tue,  3 Dec 2019 15:54:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.197 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF752E00EBA
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2019 15:54:01 -0800 (PST)
Received: by mail-oi1-f197.google.com with SMTP id 23so2715722oii.4
        for <yocto@yoctoproject.org>; Tue, 03 Dec 2019 15:54:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=korgrd-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rexw3W41iRpm46H+8z9xlCrWwx4BCCRvA5JeISRBK3s=;
        b=opj9fH/0Y1iEdeR3Q3Y4hy7qvPFncdEK9Ou4r3e6esyIuvm2deBIDsTuV8gxBImV4V
         0PPUXQGR9+OrW3bMinRWQrmkTdBg4SIN49XwNmvUzXa0+TJP8RqMkFzUHi2bG8je4iOf
         oahdzzFCpht3dFugd4tXE8PJiL74Bbm4wJp70Nd+ZYNTuavqdfclL08yfRBL6gt2oqTO
         +xOvjR4s14pIlcOlvcrFunW9tH61eteqlpbR04CSPYNzpgzW81tvrhxAwEdnukcYLG5r
         Fr8va6MAFagZKA4nnOv3l3/xEuK+NAq+DYQ8mSRGP2O3/qA3dNDY+kZCj60R6dQLKX9m
         D7FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rexw3W41iRpm46H+8z9xlCrWwx4BCCRvA5JeISRBK3s=;
        b=rMxXLiOcbwkzIXztmpszbLkT0M8+WVMF35GO6fwpzpxc5SIlng4qqPBQBN7fs20cCe
         eDH1DsxkVLFIJZ4UjmXd9+CvScdSzpjmEJFMeEL3mV1ikqGNOAKYUMgFX66SV+W9+fFG
         So6JcSQekW5P53ykgJElQsXvmA/1XZ5Pz65LSLT4a8NfzdhWpHb07yf2CA6r9NVMXzMw
         Ptuk1bDhHWktDTM+ThtN4mLM3XJe2NRWSg+hd0206077VIxfVc7HZxpN7lhVzv87Nkn6
         k5B8ak4b3/SoqRAyJE941HImJQJ9ESrM7BzSuRh5mP9qdSo0WSfgSF/vBnG22mVQ+jMd
         EKxQ==
X-Gm-Message-State: APjAAAV/RiS+H2L0i/aMYT93pzkdR8vneSSu+Ps6Mk0ZHVhKT7i5L3lI
	PmCR9aKQh0voF3tANonV9Mz4M8GfXSpHCF8V5mrdGg==
X-Google-Smtp-Source: APXvYqw3MhQVYYpzMpHY0JKUWSxuqbXbATbYz0CzaaG6JzrXQjZVu3Hz2QiKB1isrPeOUwEIrzkzOr3TU64eACfuP80=
X-Received: by 2002:aca:670b:: with SMTP id z11mr236847oix.79.1575417241176;
 Tue, 03 Dec 2019 15:54:01 -0800 (PST)
MIME-Version: 1.0
References: <7D6FCC3C-A8B1-4EE7-875F-E544DCC3B44A@korgrd.com>
 <d6a7e59a-cc6a-aa34-21a5-47c73062f9e1@gherzan.ro> <CAMKF1srHdfY1=Qbb7vURbMauc5VcPiKzH6_AGht86ChoJKvDZQ@mail.gmail.com>
 <097a8fe9-979d-aa3f-68ad-2c9e0bea6853@gherzan.ro> <CAMKF1sq39xefZFVEVafJ6yuRuinUtZ8odrPSJ4POiq49zevwPw@mail.gmail.com>
 <352DF122-AE8C-4549-A04B-27EEF9A73AE5@gherzan.ro> <20191103182512.GA28946@localhost>
 <9F6E6EE0-4FF9-4251-9B7B-37A734DA4824@korgrd.com> <20191104161127.GC5390@localhost>
 <3DE4E470-5A63-4B19-A587-49A771B96850@korgrd.com> <F621167E-B505-491A-ABD2-1ED5600129F8@korgrd.com>
 <86097C68-F833-4B01-8EE0-177BD9D26D76@korgrd.com> <E49C09B9-FF9C-42E7-BFD9-CA55D367AFF6@korgrd.com>
 <CAMKF1spV20XYyTXkeXus7gJNReJQDBQARJbzd5CBsWURDwLSVQ@mail.gmail.com>
In-Reply-To: <CAMKF1spV20XYyTXkeXus7gJNReJQDBQARJbzd5CBsWURDwLSVQ@mail.gmail.com>
From: "Steve Pavao" <stevep@korgrd.com>
Date: Tue, 3 Dec 2019 18:53:50 -0500
Message-ID: <CAD6wmC_cAA8feUd_sbmrX42g4MZN+ichifLnDMvbfSMtaLnHmQ@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] poky linux build fails if ARM erratum mfix linker switch is specified
To: Khem Raj <raj.khem@gmail.com>
Cc: Andrei Gherzan <andrei@gherzan.ro>, Yocto Project <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000008a4e80598d569b3"

--00000000000008a4e80598d569b3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 7, 2019 at 2:03 PM Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On Thu, Nov 7, 2019 at 10:42 AM Steve Pavao <stevep@korgrd.com> wrote:
>
>> > On Nov 4, 2019, at 4:26 PM, Steve Pavao <stevep@korgrd.com> wrote:
>> >
>> >> On Nov 4, 2019, at 11:32 AM, Steve Pavao <stevep@korgrd.com> wrote:
>> >>>
>> >>> On Nov 4, 2019, at 11:16 AM, Steve Pavao <stevep@korgrd.com> wrote:
>> >>>>
>> >>>> On Nov 4, 2019, at 11:11 AM, Adrian Bunk <bunk@stusta.de> wrote:
>> >>>>
>> >>>> On Mon, Nov 04, 2019 at 10:48:57AM -0500, Steve Pavao wrote:
>> >>>>>
>> >>>>>> On Nov 3, 2019, at 1:25 PM, Adrian Bunk <bunk@stusta.de> wrote:
>> >>>>>>
>> >>>>>> On Sun, Nov 03, 2019 at 05:56:45PM +0000, Andrei Gherzan wrote:
>> >>>>>>> On 3 November 2019 13:18:53 GMT, Khem Raj <raj.khem@gmail.com>
>> wrote:
>> >>>>>>>> On Sun, Nov 3, 2019 at 2:46 AM Andrei Gherzan <andrei@gherzan.r=
o
>> >
>> >>>>>>>> wrote:
>> >>>>>>>>> I was thinking about this. The erratum seems to show that this
>> >>>>>>>> applies
>> >>>>>>>>> to all revisions of a53. So it sounds like we should add it in
>> >>>>>>>>> `tune-cortexa53.inc`.
>> >>>>>>>>>
>> >>>>>>>>
>> >>>>>>>> Up to r0b4 only so maybe not all a53 implementations are impact=
ed
>> >>>>>>>>
>> >>>>>>>
>> >>>>>>> As far as I know that is the latest revision. Do you mean that
>> newer revision might come up with this fixed?
>> >>>>>>
>> >>>>>> It is fixed in some r0p4 implementations, indicated in REVIDR[8].
>> >>>>>
>> >>>>> I am closer to understanding why I experience an error when
>> building with the ARM errata switches.
>> >>>>>
>> >>>>> I believe it is related to 32-bit app support in my poky Linux
>> 64-bit build (I add this to support vcgencmd and vcdbg 32-bit apps.)
>> >>>>>
>> >>>>> When I remove the 32-bit support, the build completes OK.  As of
>> now, adding the following seems to work fine to acheive this:
>> >>>>>
>> >>>>> TARGET_CC_ARCH_append +=3D " -mfix-cortex-a53-843419
>> -mfix-cortex-a53-835769=E2=80=9D
>> >>>>>
>> >>>>> Something in the following block seems to be the culprit.:
>> >>>>>
>> >>>>> # for vcgencmd and vcdbg 32-bit executable support in the OS image
>> (comment out for -c populate_sdk)
>> >>>>> require conf/multilib.conf
>> >>>>> MULTILIBS =3D "multilib:lib32"
>> >>>>> DEFAULTTUNE_virtclass-multilib-lib32 =3D "armv7a"
>> >>>>> IMAGE_INSTALL_append +=3D " vcgencmd lib32-glibc lib32-libgcc
>> lib32-libstdc++ vcdbg rpi-setup \
>> >>>>> =E2=80=9C
>> >>>>>
>> >>>>> I will post again when I have localized the build problem further.
>> Maybe there=E2=80=99s some 64-bit vs. 32-bit build confusion going on, a=
nd the
>> armv7a default tune switch for 32-bits is colliding with the errata
>> switches.
>> >>>>
>> >>>> The errata switches are only valid for aarch64, not for armv7a.
>> >>>> There is likely some kind of "invalid option" earlier in your build=
.
>> >>>
>> >>> To conitnue to be able to use the 32-bit app support, perhaps I must
>> do this:
>> >>>
>> >>> DEFAULTTUNE_virtclass-multilib-lib32 =3D =E2=80=9Carmv7a
>> -mno-fix-cortex-a53-843419 -mno-fix-cortex-a53-835769=E2=80=9D
>> >>
>> >> This doesn=E2=80=99t work.
>> >>
>> >> If I wish to keep the 32-bit app support in my build, I=E2=80=99ll ne=
ed to
>> devise a way to make sure those ARM errata flags are only applied to the
>> aarch64 portion of the compile/link for the target, not to the multilib
>> 32-bit app support portion.
>> >
>> > Andrei and/or Khem,
>> >
>> > Could you advise an approach that allows to use the ARM errata switche=
s
>> for the aarch64 portion of the build for the target, but which will NOT
>> specify the ARM errata switches for our supplementary 32-bit portion of =
the
>> build for the target?  (This supplementary 32-bit portion of the build i=
s
>> to support the 32-bit vcgencmd app, and contains multilib and some
>> additional 32-bit libraires.  Please see earlier post for the syntax we =
use
>> in our local.conf.)
>>
>>
>> I've been able to rebuild 64-bit Linux code with the ARM errata switches=
,
>> by adding the following line to the end of
>> /meta/conf/machine/include/arm/arch-arm64.inc,
>>
>> TUNE_CCARGS +=3D "${@bb.utils.contains("TUNE_FEATURES", "aarch64", "
>> -mfix-cortex-a53-843419 -mfix-cortex-a53-835769", "" ,d)}=E2=80=9D
>
>
> This should be in tune-cortexa53.inc
>

I took care of this locally on my system in that file for now.

That said, in your opinion, what is the best way to have this change be
applied permanently to that file in the meta layer?  Should I be the one to
try to make the change and generate a pull request, or is it best if
someone who is already regularly involved in meta layer maintenance and
testing gives it a closer look and does it the way they think is best?

Steve Pavao
Korg R&D

--00000000000008a4e80598d569b3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 7, 2019 at 2:03 PM Khem R=
aj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><br></d=
iv><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Thu, Nov 7, 2019 at 10:42 AM Steve Pavao &lt;<a href=3D"mailto:stevep@=
korgrd.com" target=3D"_blank">stevep@korgrd.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">&gt; On Nov 4, 2019, at 4:26=
 PM, Steve Pavao &lt;<a href=3D"mailto:stevep@korgrd.com" target=3D"_blank"=
>stevep@korgrd.com</a>&gt; wrote:<br>
&gt; <br>
&gt;&gt; On Nov 4, 2019, at 11:32 AM, Steve Pavao &lt;<a href=3D"mailto:ste=
vep@korgrd.com" target=3D"_blank">stevep@korgrd.com</a>&gt; wrote:<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; On Nov 4, 2019, at 11:16 AM, Steve Pavao &lt;<a href=3D"mailto=
:stevep@korgrd.com" target=3D"_blank">stevep@korgrd.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; On Nov 4, 2019, at 11:11 AM, Adrian Bunk &lt;<a href=3D"ma=
ilto:bunk@stusta.de" target=3D"_blank">bunk@stusta.de</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; On Mon, Nov 04, 2019 at 10:48:57AM -0500, Steve Pavao wrot=
e:<br>
&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt; On Nov 3, 2019, at 1:25 PM, Adrian Bunk &lt;<a hre=
f=3D"mailto:bunk@stusta.de" target=3D"_blank">bunk@stusta.de</a>&gt; wrote:=
<br>
&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt; On Sun, Nov 03, 2019 at 05:56:45PM +0000, Andrei G=
herzan wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 3 November 2019 13:18:53 GMT, Khem Raj &lt;=
<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com<=
/a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On Sun, Nov 3, 2019 at 2:46 AM Andrei Gher=
zan &lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherz=
an.ro</a>&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I was thinking about this. The erratum=
 seems to show that this<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; applies<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; to all revisions of a53. So it sounds =
like we should add it in<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; `tune-cortexa53.inc`.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Up to r0b4 only so maybe not all a53 imple=
mentations are impacted<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; As far as I know that is the latest revision. =
Do you mean that newer revision might come up with this fixed? <br>
&gt;&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt;&gt; It is fixed in some r0p4 implementations, indicate=
d in REVIDR[8].<br>
&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt; I am closer to understanding why I experience an error=
 when building with the ARM errata switches.<br>
&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt; I believe it is related to 32-bit app support in my po=
ky Linux 64-bit build (I add this to support vcgencmd and vcdbg 32-bit apps=
.)<br>
&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt; When I remove the 32-bit support, the build completes =
OK.=C2=A0 As of now, adding the following seems to work fine to acheive thi=
s:<br>
&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt; TARGET_CC_ARCH_append +=3D &quot; -mfix-cortex-a53-843=
419 -mfix-cortex-a53-835769=E2=80=9D<br>
&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt; Something in the following block seems to be the culpr=
it.:<br>
&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt; # for vcgencmd and vcdbg 32-bit executable support in =
the OS image (comment out for -c populate_sdk)<br>
&gt;&gt;&gt;&gt;&gt; require conf/multilib.conf<br>
&gt;&gt;&gt;&gt;&gt; MULTILIBS =3D &quot;multilib:lib32&quot;<br>
&gt;&gt;&gt;&gt;&gt; DEFAULTTUNE_virtclass-multilib-lib32 =3D &quot;armv7a&=
quot;<br>
&gt;&gt;&gt;&gt;&gt; IMAGE_INSTALL_append +=3D &quot; vcgencmd lib32-glibc =
lib32-libgcc lib32-libstdc++ vcdbg rpi-setup \<br>
&gt;&gt;&gt;&gt;&gt; =E2=80=9C<br>
&gt;&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt;&gt; I will post again when I have localized the build prob=
lem further.=C2=A0 Maybe there=E2=80=99s some 64-bit vs. 32-bit build confu=
sion going on, and the armv7a default tune switch for 32-bits is colliding =
with the errata switches.<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; The errata switches are only valid for aarch64, not for ar=
mv7a.<br>
&gt;&gt;&gt;&gt; There is likely some kind of &quot;invalid option&quot; ea=
rlier in your build.<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; To conitnue to be able to use the 32-bit app support, perhaps =
I must do this:<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; DEFAULTTUNE_virtclass-multilib-lib32 =3D =E2=80=9Carmv7a -mno-=
fix-cortex-a53-843419 -mno-fix-cortex-a53-835769=E2=80=9D<br>
&gt;&gt; <br>
&gt;&gt; This doesn=E2=80=99t work.<br>
&gt;&gt; <br>
&gt;&gt; If I wish to keep the 32-bit app support in my build, I=E2=80=99ll=
 need to devise a way to make sure those ARM errata flags are only applied =
to the aarch64 portion of the compile/link for the target, not to the multi=
lib 32-bit app support portion.<br>
&gt; <br>
&gt; Andrei and/or Khem,<br>
&gt; <br>
&gt; Could you advise an approach that allows to use the ARM errata switche=
s for the aarch64 portion of the build for the target, but which will NOT s=
pecify the ARM errata switches for our supplementary 32-bit portion of the =
build for the target?=C2=A0 (This supplementary 32-bit portion of the build=
 is to support the 32-bit vcgencmd app, and contains multilib and some addi=
tional 32-bit libraires.=C2=A0 Please see earlier post for the syntax we us=
e in our local.conf.)<br>
<br>
<br>
I&#39;ve been able to rebuild 64-bit Linux code with the ARM errata switche=
s, by adding the following line to the end of /meta/conf/machine/include/ar=
m/arch-arm64.inc, <br>
<br>
TUNE_CCARGS +=3D &quot;${@bb.utils.contains(&quot;TUNE_FEATURES&quot;, &quo=
t;aarch64&quot;, &quot; -mfix-cortex-a53-843419 -mfix-cortex-a53-835769&quo=
t;, &quot;&quot; ,d)}=E2=80=9D</blockquote><div dir=3D"auto"><br></div><div=
 dir=3D"auto">This should be in tune-cortexa53.inc=C2=A0</div></div></div><=
/blockquote><div><br></div><div>I took care of this locally on my system in=
 that file for now.</div><div><br></div><div>That said, in your opinion, wh=
at is the best way to have this change be applied permanently to that file =
in the meta layer?=C2=A0 Should I be the one to try to make the change and =
generate a pull request, or is it best if someone who is already regularly =
involved in meta layer maintenance and testing gives it a closer look and d=
oes it the way they think is best?</div><div><br></div><div>Steve Pavao</di=
v><div>Korg R&amp;D</div></div></div>

--00000000000008a4e80598d569b3--
