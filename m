Return-Path: <kondrashovks1989@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70A77E00D5F; Fri,  5 Jan 2018 07:21:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kondrashovks1989[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD47FE00CE8
	for <yocto@yoctoproject.org>; Fri,  5 Jan 2018 07:21:54 -0800 (PST)
Received: by mail-lf0-f42.google.com with SMTP id g63so5463054lfl.11
	for <yocto@yoctoproject.org>; Fri, 05 Jan 2018 07:21:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nipaE7D70Bc4M5pNacE9rujkVbhWBcouxunI6itmpyU=;
	b=X+vfRd8u7bEWeuW2dBQTzxpuqvn/JP4Lufc8yRxgMIZaEeX+seOb8puTFjTS6CJeIA
	RJGzuS/BMoWu5XhJw8oUmBHu+oeK32i8oa7jlYKbAxXykYT5In5YkFkuU3cZeRYYofjy
	1VV6oy3pWfu/bevBc3ZnWzdfRRl/M0yEGtmnHt+EqUB8dWEMQ0KVnNjeK9EyOap4uBMa
	ANLo2IqLDoNQto/NEqbwhT7O0Y5yHPJG++1UpJcYmvnsqYvR7qyea7nR28ufJOryZVNy
	ebUdKXj9+ia7EGSpYzZZ8TJO1thDtFrT+eyPl44TG9o5GBq4FMiRLe7pQAKgHrtyVxEB
	Fb1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nipaE7D70Bc4M5pNacE9rujkVbhWBcouxunI6itmpyU=;
	b=SQB1T3q8tfWL7bNU6tVZfRc+KH2w6WbE5rIjSL/rW4K/gQYludqjrYwt4LLwNxMq+d
	IyfAvJ+ipwOrtcgs7zjpwn2v4I0BFJplCJhc1E5z+dkubhHzzJmsZP0qgShY+EETcuw0
	RwgiYFJf0N1/asBnl25MVHp5JBbrCCVI0LzmIlqe4a3HPUcEY44as+bs4+ufQQ1WTwBB
	vLnsOzAZ185bzqrJPWiHnsY2d1+UEtFEinC4RPlS04lp/+YIxrnRdwZXg0JW0yzyVg28
	f99Y5dT0u8/UyO7hY+IX5V1pm0YMNQFaQmztx08A877qnKu2xqQWuPG+VxwVEX9Gz7EX
	nwNg==
X-Gm-Message-State: AKwxytfkksubRBb5uosjs7Je9qRJB0TQfRYLIqg48kRqQHrg8zak+O/P
	76P7iD6jAAA3SN+81n7Sv9F+2RJyadfFdFuoIUg=
X-Google-Smtp-Source: ACJfBot8VgSIEK/7IY5IG2aJL9qoKhaNtEyqvihEeu9UKdi2GR/nnNUmjR+/UCn7PLocVGcgaTJEyhSb3PHBeFhrSeQ=
X-Received: by 10.25.208.146 with SMTP id h140mr1632770lfg.29.1515165713820;
	Fri, 05 Jan 2018 07:21:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.179.68.181 with HTTP; Fri, 5 Jan 2018 07:21:53 -0800 (PST)
In-Reply-To: <d002fdc9-23f5-d323-a796-1ed33238dfd7@linux.intel.com>
References: <CACm3r4pXMHtKg53xBTPkLZ=Pnf8sBRrd6GTQsHi+zJ+CZXphPg@mail.gmail.com>
	<8113993a-10a7-1fee-6784-86a8de8c495b@linux.intel.com>
	<CACm3r4reF3Z3FH_3OruhonWGRoAmuxJh5RnMgTfmZWOmBhbgpw@mail.gmail.com>
	<d002fdc9-23f5-d323-a796-1ed33238dfd7@linux.intel.com>
From: Kirill Kondrashov <kondrashovks1989@gmail.com>
Date: Fri, 5 Jan 2018 16:21:53 +0100
Message-ID: <CACm3r4ok+hfE7qMSO_FL4QLFFgu2GAfkw7ccOqT51_KyRYT_bg@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
X-Mailman-Approved-At: Mon, 08 Jan 2018 02:36:23 -0800
Cc: yocto@yoctoproject.org
Subject: Re: Smart Project Manager
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
X-List-Received-Date: Fri, 05 Jan 2018 15:21:55 -0000
Content-Type: multipart/alternative; boundary="001a1140097c25f1cc05620902d5"

--001a1140097c25f1cc05620902d5
Content-Type: text/plain; charset="UTF-8"

Yeah, indeed, the manufacturer of the boards officially provides BSP only
for 2.0-based releases. That sucks, but that's how it works. At least
they're not gonna make BSP individually for our needs :)

Actually smartpm covers the things I need. That's sad to know that it's
abandoned.

2018-01-05 16:15 GMT+01:00 Alexander Kanavin <
alexander.kanavin@linux.intel.com>:

> On 01/05/2018 05:06 PM, Kirill Kondrashov wrote:
>
>> Thanks for advice, but at the moment it's a bit of a problem, I'm stuck
>> with poky2.0.3 bound to a specific board, so I will keep up with smart. But
>> what's the benefit of dnf?
>>
>
> Talk to the provider of the BSP layer, and ask why you need to be stuck
> with an ancient version of the YP.
>
> Dnf is not abandonware like smartpm is, for one thing :) It's actively
> maintained and supports python 3.x.
>
> Alex
>



-- 
--------------------------------------------------------------------------
Best regards,
Kirill Kondrashov
--------------------------------------------------------------------------

--001a1140097c25f1cc05620902d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yeah, indeed, the manufacturer of the boards officially pr=
ovides BSP only for 2.0-based releases. That sucks, but that&#39;s how it w=
orks. At least they&#39;re not gonna make BSP individually for our needs :)=
<div><br></div><div>Actually smartpm covers the things I need. That&#39;s s=
ad to know that it&#39;s abandoned.</div></div><div class=3D"gmail_extra"><=
br><div class=3D"gmail_quote">2018-01-05 16:15 GMT+01:00 Alexander Kanavin =
<span dir=3D"ltr">&lt;<a href=3D"mailto:alexander.kanavin@linux.intel.com" =
target=3D"_blank">alexander.kanavin@linux.intel.com</a>&gt;</span>:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><span class=3D"">On 01/05/2018 05:06 PM, Kirill =
Kondrashov wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Thanks for advice, but at the moment it&#39;s a bit of a problem, I&#39;m s=
tuck with poky2.0.3 bound to a specific board, so I will keep up with smart=
. But what&#39;s the benefit of dnf?<br>
</blockquote>
<br></span>
Talk to the provider of the BSP layer, and ask why you need to be stuck wit=
h an ancient version of the YP.<br>
<br>
Dnf is not abandonware like smartpm is, for one thing :) It&#39;s actively =
maintained and supports python 3.x.<br>
<br>
Alex<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr">-------------------------------------------------------=
-------------------<br>Best regards,</div><div dir=3D"ltr">Kirill Kondrasho=
v<br><div>-----------------------------------------------------------------=
---------</div></div></div></div></div>
</div>

--001a1140097c25f1cc05620902d5--
