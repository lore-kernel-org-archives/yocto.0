Return-Path: <ryansvb91@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A867E009C8; Mon, 20 Jul 2015 16:12:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ryansvb91[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 093EAE008D4
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 16:12:13 -0700 (PDT)
Received: by iggf3 with SMTP id f3so93387981igg.1
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 16:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=JhVTehBrEFEhQedWAuF4dBCiQ0iNVG74GuLGDzHQfTI=;
	b=AWL6W7sEAYnSMHW319mn1u3VyDfE/jDHPZ0Sh741i4m19k7HmBDi94winVPBla7wuw
	ORj020EJTpl6wDRxo28HOQ9MXf1voa1+J3ellf4djUqX0ZgVsYkp0arAqti5IG8VDL7u
	fNfHk5sPqkgNZECAroOZfDGse9n1+cIJF+aJpFy4Bcq8FDoz+L1XzEmWMZrpnZteM11g
	QFN00vu2N02JEvapkBfkrIeIB/D4qRiDu8ZaBRUNkudjCc9ohz+wGXBBh1OwCod+sl1V
	+VAdxASc+MqCj4+KNEjV2aNYHAeR7L7XiIv/dSJHSbCTgDuhLinbUdNWJHCSyiIFN373
	eWMw==
MIME-Version: 1.0
X-Received: by 10.107.138.13 with SMTP id m13mr27500502iod.24.1437433932731;
	Mon, 20 Jul 2015 16:12:12 -0700 (PDT)
Received: by 10.79.116.78 with HTTP; Mon, 20 Jul 2015 16:12:12 -0700 (PDT)
In-Reply-To: <55AB2842.6070405@windriver.com>
References: <CAMeZNHSyDNsKD0aX0P_cnpS3o8jZPkGcN8d0ZDnWFhrC3P1cHw@mail.gmail.com>
	<55AB1F48.2050404@windriver.com> <55AB2842.6070405@windriver.com>
Date: Mon, 20 Jul 2015 16:12:12 -0700
Message-ID: <CAMeZNHRhXXCNaaeZUTCkwH5ovopPSEddwiuhc93K1VFqpYyqVA@mail.gmail.com>
From: Ryan Soussan <ryansvb91@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, yocto@yoctoproject.org
Subject: Re: Problem overwriting default kernel config values
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
X-List-Received-Date: Mon, 20 Jul 2015 23:12:18 -0000
Content-Type: multipart/alternative; boundary=001a113f1ef2f2ddb4051b56aa1b

--001a113f1ef2f2ddb4051b56aa1b
Content-Type: text/plain; charset=UTF-8

On Sat, Jul 18, 2015 at 9:32 PM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> On 2015-07-18 11:53 PM, Bruce Ashfield wrote:
>
>> On 2015-07-17 9:35 PM, Ryan Soussan wrote:
>>
>>> Hello,
>>> We're having a problem overwriting the default linux kernel config
>>> values.  We tried adding our own .cfg file to our layer and appending it
>>> to the source url of the linux-yocto bitbake file.  The variable in our
>>> case is not getting overwritten though (changing CONFIG_ATH5K=m to =y).
>>> Here's some relevant output from mismatch.txt:
>>> Value requested for CONFIG_ATH5K not in final .config
>>>        Requested value:  CONFIG_ATH5K=y
>>>                  Actual value:     CONFIG_ATH5K=m
>>>
>>> And basically the same error message in missing_required.cfg.  So it
>>> looks like yocto is seeing our request but ignoring it.  The source code
>>> for these messages is located here:
>>>
>>> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-kernel-tools/tree/tools/kconf_check
>>>
>>>
>>> We were following the instructions for editing the config file located
>>> in the linux directory of the meta-skeleton layer in poky.   Any help
>>> would be appreciated!
>>>
>>>
>> What release/branch are you using ? This is a test case that I run
>> ever release (and use every day), so the overrides do work.
>>
>> The kernel configuration system doesn't have the opportunity to
>> ignore settings. They are consolidated and then passed to the kernel's
>> config subsystem and then the results audited.
>>
>> I'll run a similar test here, since if something else later in the
>> configuration is selecting that driver as a module, or another constraint
>> is kicking in .. you will end up with a module, no matter what you
>> set in your fragment.
>>
>
> And yes, it was a contraint in the end. I needed this in my fragment to
> flip ATH5K to =y
>
> CONFIG_ATH5K=y
> CONFIG_ATH_CARDS=y
> CONFIG_ATH_COMMON=y
> CONFIG_CFG80211=y
> CONFIG_R8723AU=y
> CONFIG_MAC80211=y
>
> I'm working on some diagnostics and symbol lookups that will help with
> this in the future .. but it is much more challenging than you'd expect!
>
> Cheers,
>
> Bruce
>
>
>> Bruce
>>
>>  Thanks,
>>> Ryan
>>>
>>>
>>>
>>
> Thanks so much for the help - adding the other configuration options fixed
the bug for us!

Best,
Ryan

--001a113f1ef2f2ddb4051b56aa1b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sat, Jul 18, 2015 at 9:32 PM, Bruce Ashfield <span dir=3D"ltr">&lt;<=
a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank">bruce.ashf=
ield@windriver.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-colo=
r:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><div class=3D"=
"><div class=3D"h5">On 2015-07-18 11:53 PM, Bruce Ashfield wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
On 2015-07-17 9:35 PM, Ryan Soussan wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
Hello,<br>
We&#39;re having a problem overwriting the default linux kernel config<br>
values.=C2=A0 We tried adding our own .cfg file to our layer and appending =
it<br>
to the source url of the linux-yocto bitbake file.=C2=A0 The variable in ou=
r<br>
case is not getting overwritten though (changing CONFIG_ATH5K=3Dm to =3Dy).=
<br>
Here&#39;s some relevant output from mismatch.txt:<br>
Value requested for CONFIG_ATH5K not in final .config<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0Requested value:=C2=A0 CONFIG_ATH5K=3Dy<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Actual value:=
=C2=A0 =C2=A0 =C2=A0CONFIG_ATH5K=3Dm<br>
<br>
And basically the same error message in missing_required.cfg.=C2=A0 So it<b=
r>
looks like yocto is seeing our request but ignoring it.=C2=A0 The source co=
de<br>
for these messages is located here:<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/yocto-kernel-tools/tre=
e/tools/kconf_check" rel=3D"noreferrer" target=3D"_blank">http://git.yoctop=
roject.org/cgit/cgit.cgi/yocto-kernel-tools/tree/tools/kconf_check</a><br>
<br>
<br>
We were following the instructions for editing the config file located<br>
in the linux directory of the meta-skeleton layer in poky.=C2=A0 =C2=A0Any =
help<br>
would be appreciated!<br>
<br>
</blockquote>
<br>
What release/branch are you using ? This is a test case that I run<br>
ever release (and use every day), so the overrides do work.<br>
<br>
The kernel configuration system doesn&#39;t have the opportunity to<br>
ignore settings. They are consolidated and then passed to the kernel&#39;s<=
br>
config subsystem and then the results audited.<br>
<br>
I&#39;ll run a similar test here, since if something else later in the<br>
configuration is selecting that driver as a module, or another constraint<b=
r>
is kicking in .. you will end up with a module, no matter what you<br>
set in your fragment.<br>
</blockquote>
<br></div></div>
And yes, it was a contraint in the end. I needed this in my fragment to<br>
flip ATH5K to =3Dy<br>
<br>
CONFIG_ATH5K=3Dy<br>
CONFIG_ATH_CARDS=3Dy<br>
CONFIG_ATH_COMMON=3Dy<br>
CONFIG_CFG80211=3Dy<br>
CONFIG_R8723AU=3Dy<br>
CONFIG_MAC80211=3Dy<br>
<br>
I&#39;m working on some diagnostics and symbol lookups that will help with<=
br>
this in the future .. but it is much more challenging than you&#39;d expect=
!<br>
<br>
Cheers,<br>
<br>
Bruce<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
<br>
Bruce<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
Thanks,<br>
Ryan<br>
<br>
<br>
</blockquote>
<br>
</blockquote>
<br>
</blockquote></div>Thanks so much for the help - adding the other configura=
tion options fixed the bug for us! =C2=A0<div><br></div><div>Best,</div><di=
v>Ryan</div></div></div>

--001a113f1ef2f2ddb4051b56aa1b--
