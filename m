Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01DF1E00CF6; Fri, 20 Oct 2017 09:26:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66D48E00CF1
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 09:26:55 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id l68so23600371wmd.5
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 09:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oinVdQo613khvQavxgPe5xezRlc4xa99IuzH9joOl3c=;
	b=ovFwm4793KTIjmPuUzK8n059WWOTV8rw5YMzDjXhbJSxXIlfHEt18Ok7cz9qLmi5mf
	u04/Cldrog/6qbjGUtYDXs3TAaBlaPCyTa267QjFurAwn7V9CLetF6bES/O3s0YFvDHq
	RA1WWlj0NFMvDn0RyZ8eb6I1HH/RqMFLKDkIu2quuQFdnyWppq/WTnFxT6LvTMZl7mlW
	ilhUKkEB/DiAx/mOHb2rckkZ++dBsNH/OuuCKoF1mLeq/PrPtQ8K61XpDeYVwbBY8RG5
	mDIJug5mCplt0TDMzx7GzYngdKZ9vPpGuxplBjx+AnEIeD2IfHfutKsRqbsfNn/vcXE9
	VQwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oinVdQo613khvQavxgPe5xezRlc4xa99IuzH9joOl3c=;
	b=dFrhoVglMTOx+wBbB0wWrx156R/aNhGeA1d2XanTIvhkDfRbOukLmI65uc3Dw7KElG
	CvnPKQT2U0WrVBK424CAbjYAeAyzjIMVqkOjO26rFLR9kEJk5usNyqa6/APH9+ymjUPQ
	4gsTLCYTj0xUwNA3lZFDlFBEDMZP1kCdFFJQ1t5XAMaDBr3izeIOViBFmhBWFw+65KBA
	rZzZQdtfpSPErZtvSGsNLXv+/Y2P6eLRAdZKVovIDzg6wfpxpsQaEJL12jMK0paxMjIQ
	MMf4uQzw+qvr/ttF0GAmNfDVPZsPzKsDkJnlKVNf1x6ZWEcB+fGImsNdy3YkuP2kHHSN
	9pHQ==
X-Gm-Message-State: AMCzsaW/xSn2jWB9ansGzgbKw9RZVdq++KirsrGG2F56ybroqybHVlHs
	Z6AOdcXLyG3tDwKl7sx+URC8gXCIzwUqfN2YSSs=
X-Google-Smtp-Source: ABhQp+RoKFGjmcK8Oro2qoTlz4LoR21z6UPoLN5HQXmj7bDNScimXVYO9nKmBy0oG3rzBJL+O3GASMb4h/DclUlM4Lg=
X-Received: by 10.28.168.83 with SMTP id r80mr1988892wme.59.1508516814218;
	Fri, 20 Oct 2017 09:26:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.183.212 with HTTP; Fri, 20 Oct 2017 09:26:53 -0700 (PDT)
In-Reply-To: <b4892a0c-4562-9d04-1f15-5506e1c3648b@linux.intel.com>
References: <CAAfyv37ogJyGkDSVYSgi61C=3+Y+Z2wXJgg5isHOiXderZ=e-Q@mail.gmail.com>
	<CAJTo0LYbM5HeRgn6iuVwvpYqrWnN-H2f82qMqzXADj5Zn7QdJQ@mail.gmail.com>
	<b4892a0c-4562-9d04-1f15-5506e1c3648b@linux.intel.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 20 Oct 2017 18:26:53 +0200
Message-ID: <CA+chaQd3rrBO8niNGSLvsA181qUQj_zAukk6K77ihBQbb-kEMQ@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: rocko: QA issue with glibc-locale
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
X-List-Received-Date: Fri, 20 Oct 2017 16:26:56 -0000
Content-Type: multipart/alternative; boundary="001a114cc2a0d96a45055bfcf06c"

--001a114cc2a0d96a45055bfcf06c
Content-Type: text/plain; charset="UTF-8"

Similar QA issue is shown when you use:
LOCALE_GENERATION_WITH_CROSS-LOCALEDEF_forcevariable = "0"

which is needed to build glibc-locale with pyro on hosts with glibc-2.26
(with ENABLE_BINARY_LOCALE_GENERATION = "1").

On Fri, Oct 20, 2017 at 11:44 AM, Alexander Kanavin <
alexander.kanavin@linux.intel.com> wrote:

> On 10/19/2017 10:15 PM, Burton, Ross wrote:
>
>> On 19 October 2017 at 12:10, Belisko Marek <marek.belisko@gmail.com
>> <mailto:marek.belisko@gmail.com>> wrote:
>>
>>     I'm using latest origin/rocko
>>     (65d23bd7986615fdfb0f1717b615534a2a14ab80) with no change to build
>>     beaglebone core-image-minimal. While build I got this QA error:
>>
>>     ERROR: glibc-locale-2.26-r0 do_package: QA Issue: glibc-locale:
>>     Files/directories were installed but not shipped in any package:
>>        /usr/share/i18n
>>
>>
>> I've seen this (and some other weird ones) in glibc-locales, and they've
>> always been resolved by just rebuilding the recipe. bitbake glibc-locale
>> -cclean && bitbake glibc-locale might well make it go away.
>>
>
> I'm beginning to wonder if the best way to resolve these elusive
> glibc-locale issues (also the notorious host contamination one) is to throw
> away the existing, extremely convoluted recipe, and do a clean rewrite.
>
> Alex
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114cc2a0d96a45055bfcf06c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Similar QA issue is shown when you use:</div>LOCALE_G=
ENERATION_WITH_CROSS-LOCALEDEF_forcevariable =3D &quot;0&quot;<br><div><br>=
</div><div>which is needed to build glibc-locale with pyro on hosts with gl=
ibc-2.26 (with=C2=A0ENABLE_BINARY_LOCALE_GENERATION =3D &quot;1&quot;).</di=
v></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, O=
ct 20, 2017 at 11:44 AM, Alexander Kanavin <span dir=3D"ltr">&lt;<a href=3D=
"mailto:alexander.kanavin@linux.intel.com" target=3D"_blank">alexander.kana=
vin@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>On 10/19/2017 10:15 PM, Burton, Ross wrote:<span class=3D""><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 19 October 2017 at 12:10, Belisko Marek &lt;<a href=3D"mailto:marek.beli=
sko@gmail.com" target=3D"_blank">marek.belisko@gmail.com</a> &lt;mailto:<a =
href=3D"mailto:marek.belisko@gmail.com" target=3D"_blank">marek.belisko@gma=
il.co<wbr>m</a>&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 I&#39;m using latest origin/rocko<br>
=C2=A0 =C2=A0 (65d23bd7986615fdfb0f1717b6155<wbr>34a2a14ab80) with no chang=
e to build<br>
=C2=A0 =C2=A0 beaglebone core-image-minimal. While build I got this QA erro=
r:<br>
<br>
=C2=A0 =C2=A0 ERROR: glibc-locale-2.26-r0 do_package: QA Issue: glibc-local=
e:<br>
=C2=A0 =C2=A0 Files/directories were installed but not shipped in any packa=
ge:<br>
=C2=A0 =C2=A0 =C2=A0=C2=A0 /usr/share/i18n<br>
<br>
<br>
I&#39;ve seen this (and some other weird ones) in glibc-locales, and they&#=
39;ve always been resolved by just rebuilding the recipe. bitbake glibc-loc=
ale -cclean &amp;&amp; bitbake glibc-locale might well make it go away.<br>
</blockquote>
<br></span>
I&#39;m beginning to wonder if the best way to resolve these elusive glibc-=
locale issues (also the notorious host contamination one) is to throw away =
the existing, extremely convoluted recipe, and do a clean rewrite.<br>
<br>
Alex<div class=3D"HOEnZb"><div class=3D"h5"><br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--001a114cc2a0d96a45055bfcf06c--
