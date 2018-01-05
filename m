Return-Path: <kondrashovks1989@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 217B0E00D5F; Fri,  5 Jan 2018 07:06:09 -0800 (PST)
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
	*      [209.85.215.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f44.google.com (mail-lf0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82536E00C02
	for <yocto@yoctoproject.org>; Fri,  5 Jan 2018 07:06:08 -0800 (PST)
Received: by mail-lf0-f44.google.com with SMTP id h5so5452818lfj.2
	for <yocto@yoctoproject.org>; Fri, 05 Jan 2018 07:06:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bTVN6fTss5Ew7r653odImhtOI2oY/rkTuNaEJ7X/dEk=;
	b=Bxzm20VN3U/uI6odeeGinlEF6ox5rFpaCC8nbtNH0B+r7cF0F7w+OKcujrW8/Hcwck
	Rm8fGhnmi67LaCY8oejHl9NsvtvTn0DNsswZmsXzTa49g5o9OGIEQ/iGRD3uVN9vrXnO
	A5hoBxCBjiqKCkSKMNaVjT6psbFuz6E5Fn4ypd0Hy4PizPa6GW/Oli4ceQ+dZqyfqc1g
	IXiP4CCvculHjbs8P2pOgVcVbUevW2ksPtOyW1YTYbAukfzyC36TbEuWxC0Ze6Fr4G47
	7Le9+k/umBSO2WxtTgvd+WN9L99ui2ds8V4Um/CbgLnV976UtDdZQmhqD/d+oWl7LCkk
	TVPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bTVN6fTss5Ew7r653odImhtOI2oY/rkTuNaEJ7X/dEk=;
	b=EQjlMR9AHNPYVZPTiR3Y2NAwsxfY+c4592ObN+GI71iKtSHxehLMZmo8cSyJQW4kcU
	5cG7h7Sxo47izz74KlP/II23rwg2uN/GKruwu3Fie2sg55U65lrlA/5J/LSFXuVryiw7
	+c9WGdZZ8KaPzECLhweqy3u8qIrO7u8JYpBY7EpavSNGx7ZTgkZE/8enEteiMzuc68+8
	pfqM/UiITAqfpYtjfhLaooX5l2W+hAbvU7cgJyUeKGwL6/oFU5i8USv6wcVdRM2n9ics
	crwcoeY5L7G8eTPrzdttqKhIvgUX55r+H0w6N808dcY8YC+Hw8HYkgv/kNTQFKkiu7z5
	DLmA==
X-Gm-Message-State: AKGB3mIiQP3cFS+/N8vZIQ8DqDvXEH60fZrIvnE4BF6AlDIN7qAWcEI+
	5uFadZtkfM5aDB7nocRkqtUwbLvsPwPKAtnOKJs=
X-Google-Smtp-Source: ACJfBotUywzm29MjhjoHEM2xPhKr8gx+6yWM8/SqiBkF9nKExGxDxZL976U8oFOoTJwTgTiCNnR/8eIfv/Bg2GdxkbQ=
X-Received: by 10.46.127.14 with SMTP id a14mr1784178ljd.40.1515164767345;
	Fri, 05 Jan 2018 07:06:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.179.68.181 with HTTP; Fri, 5 Jan 2018 07:06:06 -0800 (PST)
In-Reply-To: <8113993a-10a7-1fee-6784-86a8de8c495b@linux.intel.com>
References: <CACm3r4pXMHtKg53xBTPkLZ=Pnf8sBRrd6GTQsHi+zJ+CZXphPg@mail.gmail.com>
	<8113993a-10a7-1fee-6784-86a8de8c495b@linux.intel.com>
From: Kirill Kondrashov <kondrashovks1989@gmail.com>
Date: Fri, 5 Jan 2018 16:06:06 +0100
Message-ID: <CACm3r4reF3Z3FH_3OruhonWGRoAmuxJh5RnMgTfmZWOmBhbgpw@mail.gmail.com>
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
X-List-Received-Date: Fri, 05 Jan 2018 15:06:09 -0000
Content-Type: multipart/alternative; boundary="089e082eb404bbe08e056208c9d4"

--089e082eb404bbe08e056208c9d4
Content-Type: text/plain; charset="UTF-8"

Thanks for advice, but at the moment it's a bit of a problem, I'm stuck
with poky2.0.3 bound to a specific board, so I will keep up with smart. But
what's the benefit of dnf?

2018-01-05 16:02 GMT+01:00 Alexander Kanavin <
alexander.kanavin@linux.intel.com>:

> On 12/28/2017 01:37 PM, Kirill Kondrashov wrote:
>
>> Is there some existing C/C++ API for smart pm? I have to interface it
>> from Qt software and wonder if there's some other way rather then just
>> intercepting python scripts output.
>>
>
> Upgrade to a recent yocto release, which has replaced dnf with smart. Then
> you can use the official dnf API, although I'm not sure how accessible
> Python APIs are nowadays from C(++).
>
> Alex
>



-- 
--------------------------------------------------------------------------
Best regards,
Kirill Kondrashov
--------------------------------------------------------------------------

--089e082eb404bbe08e056208c9d4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for advice, but at the moment it&#39;s a bit of a p=
roblem, I&#39;m stuck with poky2.0.3 bound to a specific board, so I will k=
eep up with smart. But what&#39;s the benefit of dnf?</div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">2018-01-05 16:02 GMT+01:00 Alexan=
der Kanavin <span dir=3D"ltr">&lt;<a href=3D"mailto:alexander.kanavin@linux=
.intel.com" target=3D"_blank">alexander.kanavin@linux.intel.com</a>&gt;</sp=
an>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On 12/28/2017 01:37=
 PM, Kirill Kondrashov wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Is there some existing C/C++ API for smart pm? I have to interface it from =
Qt software and wonder if there&#39;s some other way rather then just inter=
cepting python scripts output.<br>
</blockquote>
<br></span>
Upgrade to a recent yocto release, which has replaced dnf with smart. Then =
you can use the official dnf API, although I&#39;m not sure how accessible =
Python APIs are nowadays from C(++).<br>
<br>
Alex<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr">-------------------------------------------------------=
-------------------<br>Best regards,</div><div dir=3D"ltr">Kirill Kondrasho=
v<br><div>-----------------------------------------------------------------=
---------</div></div></div></div></div>
</div>

--089e082eb404bbe08e056208c9d4--
