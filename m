Return-Path: <vijayakumarmb@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15EF7E00E0C; Thu, 21 Jul 2016 15:34:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vijayakumarmb[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.68 listed in list.dnswl.org]
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36328E00E00
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 15:34:21 -0700 (PDT)
Received: by mail-vk0-f68.google.com with SMTP id s189so7825520vkh.0
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 15:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2QK+nC4XgBo5ZYCkgfSTEgibvyfXr6/KfVBs7lUlmMs=;
	b=We5oslAtl0n4J59oxzlsbiX5plXT55tGv5zBheSSkNfbUyiUJucckBxvKkvB55J8Lu
	txic5FwjYU7w2wG02v9VOzV7sykzWoxDtoF4wxnIGJUEtsXXyDHqh4u1uIjsl18BDrTD
	POcmqeo8sieuT+W90/9TxfzzqN/bwjDMnmS5NzJGw44TWlAp0e8BTTfBsueQpJAsLz9O
	NgOr2/+Em0I+xbhFGdql7hiE9WfwzM2JBANHUjXBXXdlmWL61+TBMfgAyJhpxGsH7Let
	mYNyqrRfOLgayFzzjeiEj5+VpRhOMTc+oGIzhChP6YnGYTOqudzDNdf4ZEtCT4QmdubJ
	Hbhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2QK+nC4XgBo5ZYCkgfSTEgibvyfXr6/KfVBs7lUlmMs=;
	b=mIbRgYyyDiS+8k4wm2x4QKeKoCH56XHQ/CiyDQlgbzvl0JSz0c6yswdjCW1Rt+yAV+
	ewyoCXgZz9lLP/0EbaSEaPXi6j5XCJSla4IimeUfEaj8ARHsexmccVJSDcrHHtLCTsLr
	VCyOAORlx4QNiBcLPvonlKaB6HkXqGRPf4KeFarteZhi0X20mv31xKGi465da9lUUC06
	jQZyOJAx1fcsXjWnRHcl9OCILj9NlkbDHWYtowwECgf2UXpUImchE1qAWFL6oVfWZl6q
	OSvxE53wEZqUz9V49NtRCA65pQ7NnQqzzGhkCeKuzO6gbEI+teMePkzf6+B5sXeY3vGt
	8E9w==
X-Gm-Message-State: AEkoous4ATnrNSH9N4Kl2KMeecz60aSp8BXVwBcm888ke00dY+A7rwKgKzzQAZiL6RVcqeRwrAqz2cfPkmy4bw==
X-Received: by 10.31.73.67 with SMTP id w64mr344421vka.156.1469140460964; Thu,
	21 Jul 2016 15:34:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.70.7 with HTTP; Thu, 21 Jul 2016 15:34:01 -0700 (PDT)
In-Reply-To: <662CD185-8933-4DEF-A46F-F4405875563D@gmail.com>
References: <CAJ58UNn4pFMngrKG8MeffP+GQGTd-qQVE3_Roc01PcWpK_FF9Q@mail.gmail.com>
	<CAJTo0LYdSWbPsMV5DM=KU8MZ1m9_tsCMS-3qRLFDZNf92W8D5w@mail.gmail.com>
	<662CD185-8933-4DEF-A46F-F4405875563D@gmail.com>
From: Vijayakumar Badiger <vijayakumarmb@gmail.com>
Date: Thu, 21 Jul 2016 15:34:01 -0700
Message-ID: <CAJ58UNnokEQS=RD2jeg6mxkvknH_OBgLs9xAc07FA-xEdfD-MQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 21 Jul 2016 22:34:25 -0000
Content-Type: multipart/alternative; boundary=001a114813624d132505382cebc8

--001a114813624d132505382cebc8
Content-Type: text/plain; charset=UTF-8

I am trying to integrate the adb daemon by pulling in the userspace project
from the android system/core.
http://androidxref.com/6.0.1_r10/xref/system/core/
When we try to compile libsync I am getting this error. Can you pls let me
know how to overcome this. Thanks.



On Thu, Jul 21, 2016 at 3:08 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Jul 21, 2016, at 2:59 PM, Burton, Ross <ross.burton@intel.com> wrote:
>
>
> On 21 July 2016 at 22:51, Vijayakumar Badiger <vijayakumarmb@gmail.com>
> wrote:
>
>> /local/mnt/workspace/c_vbadig/LV/poky/build/tmp-glibc/work/aarch64-poky-linux/system-core/git-r17/system/core/libsync/sync.c:24:24:
>> fatal error: linux/sync.h: No such file or directory
>> compilation terminated.
>> make[2]: *** [libsync_la-sync.lo] Error 1
>>
>
> That's not a standard user-space kernel header and doesn't appear to be a
> standard header at all, so the question is where do you expect that header
> to come from?
>
>
> Its from android sync driver for kernel, which is not upstreamed yet.
>
> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>

--001a114813624d132505382cebc8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am trying to integrate the adb daemon by pulling in the =
userspace project from the android system/core.=C2=A0<a href=3D"http://andr=
oidxref.com/6.0.1_r10/xref/system/core/">http://androidxref.com/6.0.1_r10/x=
ref/system/core/</a><div>When we try to compile libsync I am getting this e=
rror. Can you pls let me know how to overcome this. Thanks.</div><div><br><=
/div><div><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">On Thu, Jul 21, 2016 at 3:08 PM, Khem Raj <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div style=3D"word-wr=
ap:break-word"><br><div><span class=3D""><blockquote type=3D"cite"><div>On =
Jul 21, 2016, at 2:59 PM, Burton, Ross &lt;<a href=3D"mailto:ross.burton@in=
tel.com" target=3D"_blank">ross.burton@intel.com</a>&gt; wrote:</div><br><d=
iv><div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">On 21 July 2016 at 22:51, Vijayakumar Badiger <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:vijayakumarmb@gmail.com" target=3D"_blank">vijayakumarmb@gmai=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>/local/m=
nt/workspace/c_vbadig/LV/poky/build/tmp-glibc/work/aarch64-poky-linux/syste=
m-core/git-r17/system/core/libsync/sync.c:24:24: fatal error: linux/sync.h:=
 No such file or directory</div><div>compilation terminated.</div><div>make=
[2]: *** [libsync_la-sync.lo] Error 1</div></blockquote></div><br>That&#39;=
s not a standard user-space kernel header and doesn&#39;t appear to be a st=
andard header at all, so the question is where do you expect that header to=
 come from?</div><div class=3D"gmail_extra"><br></div></div></div></blockqu=
ote><div><br></div></span><div>Its from android sync driver for kernel, whi=
ch is not upstreamed yet.</div><br><blockquote type=3D"cite"><div><div dir=
=3D"ltr"><div class=3D"gmail_extra">Ross</div></div><span class=3D"HOEnZb">=
<font color=3D"#888888">
-- <br>_______________________________________________<br>yocto mailing lis=
t<br><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yoct=
o" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br><=
/font></span></div></blockquote></div><br></div></blockquote></div><br></di=
v>

--001a114813624d132505382cebc8--
