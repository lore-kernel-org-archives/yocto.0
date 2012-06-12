Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12439E006D9
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 19:37:27 -0700 (PDT)
Received: by dadz8 with SMTP id z8so7806135dad.35
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 19:37:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=eDnEsW5SCfG33Y3/y+rZNS6I41rEF8ZgfklY20uQmJI=;
	b=Ft5GB5qsZ8MhcZOj/u/cUUlkGcAczPL8NSITyAKb4ddJ9AP5emibfFydRxUPrP32wU
	67NCNAeQllOXXIcii+DRMlVYaS0sL1sBUtGGMKT7juSdThZg6QK1SAMPik9kwOxq+I7d
	F+pjPYjplB4DZwvAacNjD92JxC+f8LEfAmBo6huJFfNRrj8IEgofDTxU9chhqXYyQz26
	iY74tz3uaGBFHTXzN4uVCCFrAr7T7D08zzTrRONiS9UbQnv6TFWjiFgpychIh8fHr3qk
	siEj1WrXRN504hiQiM7Z0EJU86aEpENgngf/SFlpka736uL7w4l7q1W/M/5caa796vSp
	AzWA==
MIME-Version: 1.0
Received: by 10.68.204.129 with SMTP id ky1mr33749210pbc.32.1339468646546;
	Mon, 11 Jun 2012 19:37:26 -0700 (PDT)
Received: by 10.68.197.4 with HTTP; Mon, 11 Jun 2012 19:37:26 -0700 (PDT)
In-Reply-To: <ADD6A3980E8C39419A432FF422031B4C03113E5D@ORSMSX106.amr.corp.intel.com>
References: <cover.1339443379.git.nitin.a.kamble@intel.com>
	<4FD652E3.3060209@windriver.com>
	<ADD6A3980E8C39419A432FF422031B4C03113E5D@ORSMSX106.amr.corp.intel.com>
Date: Mon, 11 Jun 2012 22:37:26 -0400
Message-ID: <CADkTA4Md4=YrMs-EcXgfor4zCHq32xReXVwOB1L9KsoPW2=RLw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] remove snb rc6 patches from v3.4 kernel repository
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 12 Jun 2012 02:37:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 11, 2012 at 7:23 PM, Kamble, Nitin A
<nitin.a.kamble@intel.com> wrote:
>
>
>> -----Original Message-----
>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>> Sent: Monday, June 11, 2012 1:20 PM
>> To: Kamble, Nitin A
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] [PATCH 0/1] remove snb rc6 patches from v3.4 kernel
>> repository
>>
>> On 12-06-11 03:38 PM, nitin.a.kamble@intel.com wrote:
>> > From: Nitin A Kamble<nitin.a.kamble@intel.com>
>> >
>> > These patches are already part of v3.4 kernel sources. So there is no
>> > need to maintain them in the yocto linux 3.4 repository.
>>
>> dropped. They obviously weren't reference anyway.
>>
>> I assume you'll be doing an associated meta-intel commit to remove the
>> reference in:
>>
>> ./meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
>>
>
> Bruce,
> I think these rc6 patches are still needed for linux-yocto_3.2.bbappend. =
And they are referenced in the sugarbay bsp 3.2 Yocto kernel as you note ab=
ove. The commit I sent is for for v3.4 yocto kernel tree.

Yes, of course it's for 3.4 .. that's where I merged it :)

http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.4/log/?h=3Dmeta

> Are you saying about dropping rc6 patches from the 3.2 kernel tree as wel=
l?

I was more reminding for any updates to the BSP to 3.4 .. i.e. don't
forget to drop
it from the recipes when updating, sine it will thrown an error during patc=
hing.

Cheers,

Bruce

>
> Nitin
>
>> Cheers,
>>
>> Bruce
>>
>> >
>> > Thanks,
>> > Nitin
>> >
>> > The following changes since commit
>> 3fd089debe624c642d7b4d9363f853021d1675b2:
>> >
>> > =A0 =A0checkpoint dir: meta (2012-06-06 16:24:42 -0400)
>> >
>> > are available in the git repository at:
>> > =A0 =A0git://git.yoctoproject.org/linux-yocto-2.6.37-contrib nitin/met=
a
>> >
>> > http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h
>> > =3Dnitin/meta
>> >
>> > Nitin A Kamble (1):
>> > =A0 =A0rc6: remove rc6 patches for snb
>> >
>> > =A0 .../features/tmp/rc6/rc6-kernel-params.patch =A0 =A0 =A0 | =A0 81 =
--------------------
>> > =A0 meta/cfg/kernel-cache/features/tmp/rc6/rc6.scc =A0 =A0 | =A0 =A05 =
-
>> > =A0 .../tmp/rc6/snb-disable-rc6p-fix-precedence.patch =A0| =A0 26 ----=
--
>> > =A0 .../features/tmp/rc6/snb-disable-rc6p.patch =A0 =A0 =A0 =A0| =A0 3=
9 ----------
>> > =A0 .../features/tmp/rc6/snb-enable-rc6.patch =A0 =A0 =A0 =A0 =A0| =A0=
 54 -------------
>> > =A0 5 files changed, 0 insertions(+), 205 deletions(-)
>> > =A0 delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/rc6-
>> kernel-params.patch
>> > =A0 delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/rc6.scc
>> > =A0 delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/snb-
>> disable-rc6p-fix-precedence.patch
>> > =A0 delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/snb-
>> disable-rc6p.patch
>> > =A0 delete mode 100644
>> > meta/cfg/kernel-cache/features/tmp/rc6/snb-enable-rc6.patch
>> >
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

