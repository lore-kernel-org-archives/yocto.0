Return-Path: <vijayakumarmb@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89D8FE00E96; Thu, 21 Jul 2016 17:20:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vijayakumarmb[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f68.google.com (mail-vk0-f68.google.com
	[209.85.213.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B5C2E00E87
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 17:20:42 -0700 (PDT)
Received: by mail-vk0-f68.google.com with SMTP id w127so7961873vkh.1
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 17:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XutBNfDh2JMhzlsUTQfijOZlHpbvohi4DOr/LZCrMOg=;
	b=HHNN0Vgpjw2MYhSmc4Cu6ZmBDHIySAcZE34QSqT50Q5xjMcfe9OF+yjKPucTFvGy2Y
	Jl7Em9we3Ua/dYhQCr2x0MoXBWskCULValI7FDgLwECs7Mp+aRNi//DVVADtS3s43+dY
	UBoxfK8ngP33oFPldzSYIHyUWxqeS8piW6b4Rx9UpRxKj09z58/7dYSsxtt2LP55v7WT
	g5prAkwuZOWV5rkP27J8YkIb1LeOX5VjezwlqErVA5kb6SUisJm2ghyfRxp81FeHKG+P
	Ymkv5WQGxXpuvV52qizmJTo7e7Szjk6MfVAI48deU3OHkMZlC/evZNjjDIQ6bM9RTfYo
	2Kiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XutBNfDh2JMhzlsUTQfijOZlHpbvohi4DOr/LZCrMOg=;
	b=NrL1Mp6z6jGHGboHX+kNi2Tl/TLxyx0jVTLZkmzF3PKjYaFfvdaHj210NxATzzxnia
	uAzbIbeQIubOnXhzq9vDu1ltu93bHXB1DiS4ulhP5HMWKO7hCAjgT69KQViGSm2nvXpR
	5p/PBHcPGRrNZ1DB+kDiO4KG7J5ruhEkpceGW2320kgg/GVXXxQOLbELZYxzTu6k7l+s
	WZHV+9Y6R8fVCFFmvmNMIhwFD+/DChkAId23uvfQS/2VRRW930dsdrUeBg1T4FaerLWo
	6rTitBEfnEEKUxk+L94KfPKrHPYSrRSsbmZw6qtgsroxLL4N7kNHaLLW/ElgwBG/1/qr
	xOEg==
X-Gm-Message-State: AEkooutWPKgS57ySYHZnZn2t/VwpEHqA4zzD9j8XGQZjC4CzagWxv9hKG6RLR+EVk9bisZ+u8WbDnyqSCVpwcg==
X-Received: by 10.176.2.202 with SMTP id 68mr552998uah.7.1469146841854; Thu,
	21 Jul 2016 17:20:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.70.7 with HTTP; Thu, 21 Jul 2016 17:20:22 -0700 (PDT)
In-Reply-To: <3D08749C-C5D5-46A4-BC0F-1E6C99655620@gmail.com>
References: <CAJ58UNn4pFMngrKG8MeffP+GQGTd-qQVE3_Roc01PcWpK_FF9Q@mail.gmail.com>
	<CAJTo0LYdSWbPsMV5DM=KU8MZ1m9_tsCMS-3qRLFDZNf92W8D5w@mail.gmail.com>
	<662CD185-8933-4DEF-A46F-F4405875563D@gmail.com>
	<CAJ58UNnokEQS=RD2jeg6mxkvknH_OBgLs9xAc07FA-xEdfD-MQ@mail.gmail.com>
	<3D08749C-C5D5-46A4-BC0F-1E6C99655620@gmail.com>
From: Vijayakumar Badiger <vijayakumarmb@gmail.com>
Date: Thu, 21 Jul 2016 17:20:22 -0700
Message-ID: <CAJ58UN=ZNBHx+HHeyM-=QmuDqr8bZJh8iN8ok9idTDeOc1W-_A@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error during adding a new recipe.
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
X-List-Received-Date: Fri, 22 Jul 2016 00:20:46 -0000
Content-Type: multipart/alternative; boundary=001a113b18a0a1b9b905382e674f

--001a113b18a0a1b9b905382e674f
Content-Type: text/plain; charset=UTF-8

The sync driver is already ported in the kernel.  I just need to get this
compilation error fixed. I tried adding below change to kernel bb file but
still I get that same error.

PACKAGES =+ "kernel-headers"
FILES_kernel-headers = "${KDIR}/usr/include"


Cheers
Vijay


On Thu, Jul 21, 2016 at 4:11 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Jul 21, 2016, at 3:34 PM, Vijayakumar Badiger <vijayakumarmb@gmail.com>
> wrote:
>
> I am trying to integrate the adb daemon by pulling in the userspace
> project from the android system/core.
> http://androidxref.com/6.0.1_r10/xref/system/core/
> When we try to compile libsync I am getting this error. Can you pls let me
> know how to overcome this. Thanks.
>
>
>
> you need to port the sync driver to kernel you are using and also it
> should be patching the kernel-headers package since it seems they are also
> exposing
> some APIs to userspace.
>
>
> On Thu, Jul 21, 2016 at 3:08 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>>
>> On Jul 21, 2016, at 2:59 PM, Burton, Ross <ross.burton@intel.com> wrote:
>>
>>
>> On 21 July 2016 at 22:51, Vijayakumar Badiger <vijayakumarmb@gmail.com>
>> wrote:
>>
>>> /local/mnt/workspace/c_vbadig/LV/poky/build/tmp-glibc/work/aarch64-poky-linux/system-core/git-r17/system/core/libsync/sync.c:24:24:
>>> fatal error: linux/sync.h: No such file or directory
>>> compilation terminated.
>>> make[2]: *** [libsync_la-sync.lo] Error 1
>>>
>>
>> That's not a standard user-space kernel header and doesn't appear to be a
>> standard header at all, so the question is where do you expect that header
>> to come from?
>>
>>
>> Its from android sync driver for kernel, which is not upstreamed yet.
>>
>> Ross
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>
>

--001a113b18a0a1b9b905382e674f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The sync driver is already ported in the kernel.=C2=A0 I j=
ust need to get this compilation error fixed. I tried adding below change t=
o kernel bb file but still I get that same error.<div><br></div><div><div>P=
ACKAGES =3D+ &quot;kernel-headers&quot;</div><div>FILES_kernel-headers =3D =
&quot;${KDIR}/usr/include&quot;</div></div><div><br></div><div><br></div><d=
iv>Cheers</div><div>Vijay</div><div><br></div></div><div class=3D"gmail_ext=
ra"><br><div class=3D"gmail_quote">On Thu, Jul 21, 2016 at 4:11 PM, Khem Ra=
j <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bl=
ank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><div style=3D"word-wrap:break-word"><br><div><span class=3D""><blockqu=
ote type=3D"cite"><div>On Jul 21, 2016, at 3:34 PM, Vijayakumar Badiger &lt=
;<a href=3D"mailto:vijayakumarmb@gmail.com" target=3D"_blank">vijayakumarmb=
@gmail.com</a>&gt; wrote:</div><br><div><div dir=3D"ltr">I am trying to int=
egrate the adb daemon by pulling in the userspace project from the android =
system/core.=C2=A0<a href=3D"http://androidxref.com/6.0.1_r10/xref/system/c=
ore/" target=3D"_blank">http://androidxref.com/6.0.1_r10/xref/system/core/<=
/a><div>When we try to compile libsync I am getting this error. Can you pls=
 let me know how to overcome this. Thanks.</div><div><br></div><div><br></d=
iv></div></div></blockquote><div><br></div></span><div>you need to port the=
 sync driver to kernel you are using and also it should be patching the ker=
nel-headers package since it seems they are also exposing</div><div>some AP=
Is to userspace.</div><span class=3D""><br><blockquote type=3D"cite"><div><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Jul 21, 20=
16 at 3:08 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gm=
ail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div style=3D"word-wrap:break-word"><br><div><sp=
an><blockquote type=3D"cite"><div>On Jul 21, 2016, at 2:59 PM, Burton, Ross=
 &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton=
@intel.com</a>&gt; wrote:</div><br><div><div dir=3D"ltr"><div class=3D"gmai=
l_extra"><br><div class=3D"gmail_quote">On 21 July 2016 at 22:51, Vijayakum=
ar Badiger <span dir=3D"ltr">&lt;<a href=3D"mailto:vijayakumarmb@gmail.com"=
 target=3D"_blank">vijayakumarmb@gmail.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div>/local/mnt/workspace/c_vbadig/LV/poky/build/tm=
p-glibc/work/aarch64-poky-linux/system-core/git-r17/system/core/libsync/syn=
c.c:24:24: fatal error: linux/sync.h: No such file or directory</div><div>c=
ompilation terminated.</div><div>make[2]: *** [libsync_la-sync.lo] Error 1<=
/div></blockquote></div><br>That&#39;s not a standard user-space kernel hea=
der and doesn&#39;t appear to be a standard header at all, so the question =
is where do you expect that header to come from?</div><div class=3D"gmail_e=
xtra"><br></div></div></div></blockquote><div><br></div></span><div>Its fro=
m android sync driver for kernel, which is not upstreamed yet.</div><br><bl=
ockquote type=3D"cite"><div><div dir=3D"ltr"><div class=3D"gmail_extra">Ros=
s</div></div><span><font color=3D"#888888">
-- <br>_______________________________________________<br>yocto mailing lis=
t<br><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yoct=
o" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br><=
/font></span></div></blockquote></div><br></div></blockquote></div><br></di=
v>
</div></blockquote></span></div><br></div></blockquote></div><br></div>

--001a113b18a0a1b9b905382e674f--
