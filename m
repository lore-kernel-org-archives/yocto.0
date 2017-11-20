Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0616E00D4D; Mon, 20 Nov 2017 06:17:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f54.google.com (mail-it0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00604E00D27
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 06:17:01 -0800 (PST)
Received: by mail-it0-f54.google.com with SMTP id x13so2015832iti.4
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 06:17:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=c5ZDeUkCmo4yFwmmE+nTTTmFGoWFi/gcxJicfNOVyCA=;
	b=J/6f77bFmDfgTSbxsCNNvckxgJKsp9G22pJ/256u4b3Al3MTjOLHczg9MvYk5JSQJU
	CLkd8Id5gbZ/S9l0rSt0u9Rcww1xzBTjuYVgyiu+dh4i4GQVnY2qy48kk5DsZ/xQpXGW
	YVGiQ7q7Kfkn9gCZ9sIYVeK5QLi02mtkkRfWi4CoBNl28QKWuRkN0/Y4xu81CZ2iFfev
	X05UhyX+zmulV/gIJf4ZL7c5gidRCxQYLY/LBVCQ/2UFZ4G2bMk3MfZG5MgmvHcG93d/
	Rk7PULSJh7f/xltENiz/oFEzFYIPmo2Zvu7VmrlBfiLqkiJmKqCPFowxkymw42wtx19g
	52Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=c5ZDeUkCmo4yFwmmE+nTTTmFGoWFi/gcxJicfNOVyCA=;
	b=rAtnv6pWraaZhsskozNTEThkPe6Wc1U8x1t8VrswaqxaHcJVwwJBJz98aNt6bX46DH
	jokwI0h5in1zrK1P3tstWp6Iqy3FtIqcL0F1LzMw/pMEc577Qqg/0VY8hfWsk+kvj/Uq
	UkBypS1BIw2fBld0oJqpT/BU0kF8JGD3JG7wnmTFIPDj+I//HVlzsZxUhLGbPCGmj0H2
	XTQLESjc27uwSdrEMeJpZYEfuQ45j/xUC/iog31aUMd0YgKXf28wrZwahi961NxHl3NU
	hnyMZNQ359kEutlqyag8oNpHV4SsglbfWJnWfMvyM9gD7nuBfdbxb3gRaDfMHLX7nf3z
	bjkQ==
X-Gm-Message-State: AJaThX6U+2L4H+WIm4upzNQZF4kgdyzzhXP8jLe7oI6LHqXcbpzERtJF
	Zblesm/NtaHkZPws4fkhibRGDB4PxKrCRTcR571/ww==
X-Google-Smtp-Source: AGs4zMZrdRZ34t4h3CH0VA/39WcAZgpxiFsIrIB5REAPPoyz0iHpC4+c6CdGyhhi0Oa37q/6ljpzC2VbRUWfSAL81/4=
X-Received: by 10.36.147.198 with SMTP id y189mr18793472itd.6.1511187420593;
	Mon, 20 Nov 2017 06:17:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.171.132 with HTTP; Mon, 20 Nov 2017 06:16:40 -0800 (PST)
In-Reply-To: <2ff8d5c6.9fa8.15fd953d1ab.Coremail.cddatemp@163.com>
References: <5644f58b.9cec.15fd93414cf.Coremail.cddatemp@163.com>
	<CAJTo0LZUwFBBNDW3Whew-DjwV1frffRknAPOGsSZfZj=6tuRkQ@mail.gmail.com>
	<2ff8d5c6.9fa8.15fd953d1ab.Coremail.cddatemp@163.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 20 Nov 2017 14:16:40 +0000
Message-ID: <CAJTo0LZOc4grvR0wKKmHyBx3tPg6Ae7y6Wp=+Vj7CQbo1=x5hQ@mail.gmail.com>
To: cddatemp <cddatemp@163.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to build a native python extension
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
X-List-Received-Date: Mon, 20 Nov 2017 14:17:03 -0000
Content-Type: multipart/alternative; boundary="94eb2c089e1464d8a2055e6abd6d"

--94eb2c089e1464d8a2055e6abd6d
Content-Type: text/plain; charset="UTF-8"

There's numerous u-boot recipes out there, including on in oe-core. Ideally
customise the u-boot in oe-core instead of writing your own recipe from
scratch.

Ross

On 20 November 2017 at 12:07, cddatemp <cddatemp@163.com> wrote:

> At 2017-11-20 19:35:31, "Burton, Ross" <ross.burton@intel.com> wrote:
>
> inherit native to make the recipe native.
>
> It really help, when my recipe is just a helloworld python extension.
> Unfortunately, this recipe is u-boot.
> It will compile a native python extension named "libfdt", then use it to
> compile u-boot.
> So I cannot add "inherit native" to the u-boot recipe.
>
>
> Ross
>
> On 20 November 2017 at 11:33, cddatemp <cddatemp@163.com> wrote:
>
>> Hi,
>>
>> I add "inherit distutils" in my recipe.
>> It will make my recipe depends on "python-native" and "python".
>> Finally it use arm-gcc to build the python extension.
>> But I want to use x86-gcc to build a native python extension.
>> How to do this?
>>
>> Best Regards
>> cddatemp
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--94eb2c089e1464d8a2055e6abd6d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">There&#39;s numerous u-boot recipes out there, including o=
n in oe-core. Ideally customise the u-boot in oe-core instead of writing yo=
ur own recipe from scratch.<div><br></div><div>Ross</div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On 20 November 2017 at 12:0=
7, cddatemp <span dir=3D"ltr">&lt;<a href=3D"mailto:cddatemp@163.com" targe=
t=3D"_blank">cddatemp@163.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div style=3D"line-height:1.7;color:#000000;font-size:14px;font-=
family:Arial"><span class=3D"">At 2017-11-20 19:35:31, &quot;Burton, Ross&q=
uot; &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.bu=
rton@intel.com</a>&gt; wrote:<br> <blockquote id=3D"m_-382523914461252324is=
ReplyContent" style=3D"PADDING-LEFT:1ex;MARGIN:0px 0px 0px 0.8ex;BORDER-LEF=
T:#ccc 1px solid"><div dir=3D"ltr">inherit native to make the recipe native=
.</div><div dir=3D"ltr"><br></div></blockquote><div></div></span><div>It re=
ally help, when my recipe is just a helloworld python extension.</div><div>=
Unfortunately, this recipe is u-boot.</div><div>It will compile a native py=
thon extension named &quot;libfdt&quot;, then use it to compile u-boot.</di=
v><div>So I cannot add &quot;inherit native&quot; to the u-boot recipe.</di=
v><span class=3D""><div><br></div><blockquote style=3D"PADDING-LEFT:1ex;MAR=
GIN:0px 0px 0px 0.8ex;BORDER-LEFT:#ccc 1px solid"><div dir=3D"ltr"><div><br=
></div><div>Ross</div></div><div class=3D"gmail_extra"><br><div class=3D"gm=
ail_quote">On 20 November 2017 at 11:33, cddatemp <span dir=3D"ltr">&lt;<a =
href=3D"mailto:cddatemp@163.com" target=3D"_blank">cddatemp@163.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div style=3D"line-height:=
1.7;color:#000000;font-size:14px;font-family:Arial"><div>Hi,</div><div><br>=
</div><div>I add &quot;inherit distutils&quot; in my recipe.</div><div>It w=
ill make my recipe depends on &quot;python-native&quot; and &quot;python&qu=
ot;.</div><div>Finally it use arm-gcc to build the python extension.</div><=
div>But I want to use x86-gcc to build a native python extension.</div><div=
>How to do this?</div><div><br></div><div>Best Regards</div><span class=3D"=
m_-382523914461252324HOEnZb"><font color=3D"#888888"><div>cddatemp</div></f=
ont></span></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>
</blockquote></span></div></blockquote></div><br></div>

--94eb2c089e1464d8a2055e6abd6d--
