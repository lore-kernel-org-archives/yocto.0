Return-Path: <zoleelikesdebian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFC89E00A4F; Fri, 19 Oct 2018 15:05:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoleelikesdebian[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.54 listed in list.dnswl.org]
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
	[209.85.208.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A69B7E00971
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2018 15:05:17 -0700 (PDT)
Received: by mail-ed1-f54.google.com with SMTP id w19-v6so32734713eds.1
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2018 15:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=0oy2VXx9sqlDcCEWDwlBes6rz+Gffwg6K7C8Ovl1j3w=;
	b=VLWebf4rppD4RMTkRNaKB7RLzh9x5FcL9s6Crb8XnPxL6oskXVRfZeZO4YhxQBucU2
	t+Lfd6FQUNq6xZJxK4BiVqHG5jWDJnbP4xI8s0UJOASY1e6KhZCZ4vvR/dm8C0DL+Zbk
	t8sHMd9DUGoj7xuztmD8Ngm1ScoWQ9nKY4f4soXc9AoEwTMq6V3q0fejf2tv7drng0nr
	RwiH6datnkUKeZ9xPW1N8MJoKTULYZBtx9RXqtj7e4+R5/ku4PUlKnHhqHha+MyVwa0D
	maUqDkAwlILHMWRCm2VB/bF2sPKKdne8wuyWmx9pRZwBeRgHP8WnJCdzfoWZdG5OJjHg
	mX/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=0oy2VXx9sqlDcCEWDwlBes6rz+Gffwg6K7C8Ovl1j3w=;
	b=eYfzlUtRAKmztcAomuWnPvHKWf81D6K6CKHRDq1D2tRfQU+8UDwbZ1oyVWL1J7HUOQ
	z9D68xgSYkZAppj2x7yX9lP+hPqRqFXOmGq5l1qgeL6+sIjtCZGVxYm/VP8B2Hj5n0Ir
	wdYLi97MCN4FNDluQsHPlTtEGUJ9qDVSTJRSKnLfHab8YqJZYUPcm1YiWNFC3Dnr7xFr
	Y48f8AO0ESwQuC3Tc8OFyj5Jh+E3eLDLU4w0OgxeBaRaE2iO+qy0O1Yhtugae3VGu4HK
	mpneQeGYrMuUIWvoCpkSS1aadkfY6nQiNMS1U8cMRJehlmnErZp7CJ7A1re5W4VD6G4/
	3rtw==
X-Gm-Message-State: ABuFfoiwbmhcWd7377dbNt/1U9YhiFANwnUIm8VstOW4QurUGwz9iJ5z
	SOEFo8js+AALY5FLbs3BS89+dHg32eB1awx50QKY
X-Google-Smtp-Source: ACcGV60gsRQHJcmXqmzJRAFBHrhJU8oTz4Ck4OGdHL5ecnftNdWEasOQ4jY29Q7IHvfyXv2KfyEiGRHeCEHsZS5LmPE=
X-Received: by 2002:a50:95c6:: with SMTP id
	x6-v6mr6884213eda.113.1539986716848; 
	Fri, 19 Oct 2018 15:05:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAK4Yt2=eSqSqREuVatD=oHfDYcYODt=p2+Rw3K+UPWx11K5zYQ@mail.gmail.com>
	<CAK18fxFxB62gR8+0neuyYzZTNeZuDuJQorJqritXgtfB8HxpWw@mail.gmail.com>
In-Reply-To: <CAK18fxFxB62gR8+0neuyYzZTNeZuDuJQorJqritXgtfB8HxpWw@mail.gmail.com>
From: Zolee K <zoleelikesdebian@gmail.com>
Date: Sat, 20 Oct 2018 00:05:06 +0200
Message-ID: <CAK4Yt2mR=+k7Bzok3yYsoP=cfxq=p2dctAFtuXp3Wmf50=JKWg@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: yocto@yoctoproject.org
Subject: Re: meta-layer raspberry
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
X-List-Received-Date: Fri, 19 Oct 2018 22:05:19 -0000
Content-Type: multipart/alternative; boundary="0000000000003774ac05789c197a"

--0000000000003774ac05789c197a
Content-Type: text/plain; charset="UTF-8"

Cool, thanks!

On 2018. Oct 20., Sat at 0:04, Andrei Gherzan <andrei@gherzan.ro> wrote:

>
> Hi,
>
> On Fri, Oct 19, 2018 at 11:39 PM Zolee K <zoleelikesdebian@gmail.com>
> wrote:
>
>> Hello,
>>
>> Do you know if I include tha raspberrypi layer it would compile to a
>> raspberry pi 1 machine as well or only to the later models?
>>
>>
> RaspberryPi 1 should work just fine.
> --
> Andrei Gherzan
>

--0000000000003774ac05789c197a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Cool, thanks!</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
">On 2018. Oct 20., Sat at 0:04, Andrei Gherzan &lt;<a href=3D"mailto:andre=
i@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><br><div class=3D"gmail_quote"><div>Hi,</div=
><div><br></div><div dir=3D"ltr">On Fri, Oct 19, 2018 at 11:39 PM Zolee K &=
lt;<a href=3D"mailto:zoleelikesdebian@gmail.com" target=3D"_blank">zoleelik=
esdebian@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
div dir=3D"auto">Hello,</div><div dir=3D"auto"><br></div><div dir=3D"auto">=
Do you know if I include tha raspberrypi layer it would compile to a raspbe=
rry pi 1 machine as well or only to the later models?</div><div dir=3D"auto=
"><br></div></blockquote><div><br></div><div>RaspberryPi 1 should work just=
 fine.</div><div><div>--</div>Andrei Gherzan</div></div></div>
</blockquote></div></div>

--0000000000003774ac05789c197a--
