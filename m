Return-Path: <djszapi@archlinux.us>
Received: from mail-pb0-f42.google.com (mail-pb0-f42.google.com
	[209.85.160.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0531E013A2
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 13:59:32 -0700 (PDT)
Received: by mail-pb0-f42.google.com with SMTP id un1so10228704pbc.29
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 13:59:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=Bm4npqZFe9VMS/eNL98pkTSTgyDlFGp2xVtqY9kx5+A=;
	b=XLj3MAGuOJc20KIwxFWNGTgh+HITcQKG9JRBAkDjNvq2yPsCA9c4O0AMyKUgBiIqVW
	25YBI6/QmBklBh0KQ22rt36cRb+1ihSP+/7gtHLZjK8OzzcvmSoVgtSEd2XZMy8P3q0T
	QFHmKRGqzPPpYVVgtSfnVSX8XDLu7cvfbzRs3rpUxN6wdtEt9Zq0pIKDiJc3vcmpXcbm
	T3PyGOOZhh6bbveob3w9epbj1bLiOjALB35FMifb8xuQ2iN/TY4Tt8BUDoKZP+px3aCu
	hvV/NbBg/C9/Cjs759WDXfGT1uE1T1RJ6idLBGbCuRUQRZqKeHTWCfQHwuKz2O+QAy7B
	Rawg==
MIME-Version: 1.0
X-Received: by 10.66.119.35 with SMTP id kr3mr45727133pab.149.1374699571809;
	Wed, 24 Jul 2013 13:59:31 -0700 (PDT)
Sender: djszapi@archlinux.us
Received: by 10.70.37.237 with HTTP; Wed, 24 Jul 2013 13:59:31 -0700 (PDT)
In-Reply-To: <CAFZh4h-TnF1J9j_AaWF4tSt4=oWD=tAttmrGLiT7ux7Nxs429A@mail.gmail.com>
References: <CAOMwXhMEn64Yw7GQbUKccg8_wSUaRpEDALAHwGj7BEWpiK+rsQ@mail.gmail.com>
	<CAFZh4h-TnF1J9j_AaWF4tSt4=oWD=tAttmrGLiT7ux7Nxs429A@mail.gmail.com>
Date: Wed, 24 Jul 2013 21:59:31 +0100
X-Google-Sender-Auth: Qky_FX7o6AGv_PnnitTS1HDla2Y
Message-ID: <CAOMwXhPXW4_vf6ResX-BJcpvxp6Dv3YhKV4MkoksMBcD45qv=w@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: Brian Hutchinson <b.hutchman@gmail.com>
X-Gm-Message-State: ALoCoQlmtaCu0Md7L8gg1pAJE1gU1gCcGqv0o74YHg39Bpy6wjGdKAef1koOZb5+h66iY3b0oGgt
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: External toolchain (sourcery)
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
X-List-Received-Date: Wed, 24 Jul 2013 20:59:33 -0000
Content-Type: multipart/alternative; boundary=047d7b0721caa69c0e04e2482f8d

--047d7b0721caa69c0e04e2482f8d
Content-Type: text/plain; charset=ISO-8859-1

1) Is that really from sourcery?
2) What documentation?
3) BTW, the question was whether sourcery is officially supported.


On Wed, Jul 24, 2013 at 9:55 PM, Brian Hutchinson <b.hutchman@gmail.com>wrote:

> On Wed, Jul 24, 2013 at 10:49 AM, Laszlo Papp <lpapp@kde.org> wrote:
>
>> Hi,
>>
>> is this officially supported by the Yocto project? I would not like to
>> use Yocto for my own purposes if it is something unsupported, and I would
>> need to put a significant investment into to it to make the releases
>> buildable, et cetera.
>>
>> Many thanks,
>> Laszlo
>>
>>
> Check out the documentation but bitbake meta-toolchain or one of the
> similar flavors should give you what you are looking for.
>
> Regards,
>
> Brian
>

--047d7b0721caa69c0e04e2482f8d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family:arial,sans-serif;font-size:12.7=
27272033691406px">1) Is that really from sourcery?</span><div style=3D"font=
-family:arial,sans-serif;font-size:12.727272033691406px">2) What documentat=
ion?</div>
<div style=3D"font-family:arial,sans-serif;font-size:12.727272033691406px">=
3) BTW, the question was whether sourcery is officially supported.</div></d=
iv><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed, Ju=
l 24, 2013 at 9:55 PM, Brian Hutchinson <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:b.hutchman@gmail.com" target=3D"_blank">b.hutchman@gmail.com</a>&gt;</=
span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On W=
ed, Jul 24, 2013 at 10:49 AM, Laszlo Papp <span dir=3D"ltr">&lt;<a href=3D"=
mailto:lpapp@kde.org" target=3D"_blank">lpapp@kde.org</a>&gt;</span> wrote:=
<br>
</div></div><div class=3D"gmail_quote"><div><div class=3D"h5"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">
<div dir=3D"ltr">Hi,<div><br></div><div>is this officially supported by the=
 Yocto project? I would not like to use Yocto for my own purposes if it is =
something unsupported, and I would need to put a significant investment int=
o to it to make the releases buildable, et cetera.</div>


<div><br></div><div>Many thanks,</div><div>Laszlo</div></div>
<br></blockquote><div><br></div></div></div><div>Check out the documentatio=
n but bitbake meta-toolchain or one of the similar flavors should give you =
what you are looking for.</div><div><br></div><div>Regards,</div><div>
<br></div><div>
Brian=A0</div></div>
</blockquote></div><br></div>

--047d7b0721caa69c0e04e2482f8d--
