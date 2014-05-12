Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BC88E00B00; Mon, 12 May 2014 09:18:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 420 seconds by postgrey-1.32 at yocto-www;
	Mon, 12 May 2014 09:18:46 PDT
Received: from mail-qg0-f47.google.com (unknown [209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B44EE00985
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 09:18:46 -0700 (PDT)
Received: by mail-qg0-f47.google.com with SMTP id j107so7880117qga.20
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 09:18:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=gdwCYIuaOgP8PBIBKfsv6lSSWqaD3BCwOv9iZNtbnd4=;
	b=Nhc4ZVQfXVq903SMKs+ZePkwGNpWISPvGnA0NG/hfQQRbsNtYSl9UaMRRUEGh+ESWZ
	EFsSppdtFEvynj8VQo+CS3NxIw4PVrXFSZ/tHg3IICSh83G1CV8Vh4FVFg6r+x8CEqY+
	Md9oFw3zdPsQ2N8Xo5Ero2z3wtChf0SmsgSzM3GPawRPOsIqHIlLYCjx5aj16T2D3ykm
	drL47XtwIPWw+m0n/1O8qY0WGTO27boite6vmycZKTjNVJnWbp6sJsxfGnzmjzE+c04r
	PCVkUDaafLyPxFumKf6zahe4KtylQwd+dNCFu/2G2YOMqC1IevpDizblJFioGXfVVfRG
	aCXQ==
X-Received: by 10.140.86.178 with SMTP id p47mr37649224qgd.66.1399911105880;
	Mon, 12 May 2014 09:11:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.112 with HTTP; Mon, 12 May 2014 09:11:25 -0700 (PDT)
In-Reply-To: <5370EAA2.8060104@windriver.com>
References: <CAMCfZKH4u4oix7Ks_8CtyZJYPdyyPB_ECNMYJK=r3KzL0_FZ5Q@mail.gmail.com>
	<CAMKF1spVm46k7s+xm0BKCu6=sHR4npEbHLfAUVfQDOve9thc0A@mail.gmail.com>
	<CAMCfZKGF=dftUZ2AEwmUBCaGjBLOn5PAnrWuf4hDviu_3anNrw@mail.gmail.com>
	<CAMKF1sqfnZnMVufmitCS-C1QU6PCzOcqqJWmNrYE1J7JnBf5fg@mail.gmail.com>
	<CAMCfZKEZgu_o1fqK3jR8kTxmMKVVStuskM7AcmQJXzdkaP7Z-A@mail.gmail.com>
	<CAMCfZKFHkaAHV0mUZeYoDuS1V5VvBx_7z4BRO27UoGqpO=vJ0w@mail.gmail.com>
	<536D0CF4.6030107@windriver.com> <5370EAA2.8060104@windriver.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Mon, 12 May 2014 13:11:25 -0300
Message-ID: <CAMCfZKFQ_bvQUNRL8ZCQ6tW6FRmedbHw3d4gge7tScCAeHMVpw@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RPM to Verify Installed Packages
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
X-List-Received-Date: Mon, 12 May 2014 16:18:55 -0000
Content-Type: multipart/alternative; boundary=001a11c13d5c2ee87b04f9363485

--001a11c13d5c2ee87b04f9363485
Content-Type: text/plain; charset=ISO-8859-1

Mark,

On Mon, May 12, 2014 at 12:37 PM, Mark Hatle <mark.hatle@windriver.com>wrote:

> On 5/9/14, 12:14 PM, Mark Hatle wrote:
>
>> On 5/7/14, 7:46 AM, Diego Sueiro wrote:
>>
>>> Folks,
>>>
>>
>> I'm looking at this issue.  I'd suggest you open a bug in the Yocto
>> Project
>> bugzilla.  Feel free to assign it to me.  (I'll end up with it anyway...)
>>
>
> I opened a bug, 6309.  I've sent a fix for master, and we can work it back
> into previous versions once approved by oe-core.


Thanks for your effort.

Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11c13d5c2ee87b04f9363485
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Mark,</div><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">On Mon, May 12, 2014 at 12:37 PM, Mar=
k Hatle <span dir=3D"ltr">&lt;<a href=3D"mailto:mark.hatle@windriver.com" t=
arget=3D"_blank">mark.hatle@windriver.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On 5/9/14, 12:14 PM, Mark Ha=
tle wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 5/7/14, 7:46 AM, Diego Sueiro wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Folks,<br>
</blockquote>
<br>
I&#39;m looking at this issue. =A0I&#39;d suggest you open a bug in the Yoc=
to Project<br>
bugzilla. =A0Feel free to assign it to me. =A0(I&#39;ll end up with it anyw=
ay...)<br>
</blockquote>
<br></div>
I opened a bug, 6309. =A0I&#39;ve sent a fix for master, and we can work it=
 back into previous versions once approved by oe-core.</blockquote></div><b=
r>Thanks for your effort.<br><br clear=3D"all"><div><div dir=3D"ltr"><div>R=
egards,</div>

<div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administrador do Embarcados=
<br><a href=3D"http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&=
amp;utm_medium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" targ=
et=3D"_blank">www.embarcados.com.br</a><br>

<br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--001a11c13d5c2ee87b04f9363485--
