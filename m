Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6455E00CEF; Fri,  1 Dec 2017 07:15:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f180.google.com (mail-ot0-f180.google.com
	[74.125.82.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F073E00C59
	for <yocto@yoctoproject.org>; Fri,  1 Dec 2017 07:15:48 -0800 (PST)
Received: by mail-ot0-f180.google.com with SMTP id v21so9291170oth.6
	for <yocto@yoctoproject.org>; Fri, 01 Dec 2017 07:15:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Log6VAIu4xPzH0qdGzM7vMZeT7TuCbI7F8QcT5uHjiI=;
	b=kHFoQfPqslr0HSLmAY55Azt3BIvYBvxNBgUT64V+EspcZprNNZ4ZtEyGPcz8ldrzqX
	1UfPQKSlyOcHFLhYmupuu3cgDTfQnT5ed364kNBbRho96e13dy7nWXstB3QDa4xLKC12
	7TOkrg6w+1HylN6cdBo+8u0TOn8Wd/+MW10PnkH2otnpiYJ5VD1hWYay1t6hRemF2Sgz
	4hgZJw6pynmSZg9QIJ2c+RsOd34+Lf6jHrLXm5xzMi3xu2M9kqx+mMvS1f548aqnVEzJ
	rR4f2TcjjWsY+hj661zjZy+mAXo/KEnwd7oTsKGz6Cz4scqNxuaUc35Gxzzdntzdw01B
	GBwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Log6VAIu4xPzH0qdGzM7vMZeT7TuCbI7F8QcT5uHjiI=;
	b=C/uPOq7P0Ypbam5PP/JaVxUP1F5IfBiJq7JeVGS2bIldFYb0FmmGmnngtviJ/lCntC
	TpDzMl7ZJGRNep4DWE/gTaLdBT64Ii4UAHGlUf8GyvxOD1lfrTDf3dEucCwfu3w4gMKA
	Pkqoo5qUbFQALyLBj/nnbBKCldWoOsUnJ+sWwVyXdUZ6zecf/AjfRB+0vUqAoFalXvMV
	FYDVO1oV8XPaHmLedoxjh+EAcbh5MuUkbfLMboenOM7AWO/h3cP7jypiAuCFff3m2eAW
	9KKZNa4zi7z8aE9HI8yrrxXgj+y9anSnJJQvm5/z+iDQTQ0Jrzla3J1QhPMyIiU6WIJv
	mNWA==
X-Gm-Message-State: AJaThX74FnWPlkmQSq6oH3DkPXStgCs0T3zHTnI3jrPOoUkQQB+2t7Bz
	u7k6ZDtYrJGv1XY/d4iXE1J7JCKFCseYTmdl7s29DqBS
X-Google-Smtp-Source: AGs4zMa3GKNneWKCPUCTDhQj+T3gYL8HL3qXES3cIQEwI2CwAzS5hjSA9KWnZR2Auyoh+rafR2TXgTegrC68s5awYkE=
X-Received: by 10.157.17.80 with SMTP id p16mr7855552otp.305.1512141347341;
	Fri, 01 Dec 2017 07:15:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Fri, 1 Dec 2017 07:15:46 -0800 (PST)
In-Reply-To: <f025a6f43d84a016ffe06e78f4967daf@sw-optimization.com>
References: <CAE0QtjP3GYLNDQHZaE1-M9pDvLuP6AtnAMD_xduv5ZwFJfZ9BQ@mail.gmail.com>
	<4c8c114e6c9cc6e224e49e1f237016f6@sw-optimization.com>
	<f025a6f43d84a016ffe06e78f4967daf@sw-optimization.com>
From: Jerry Lian <jerry.lian@gmail.com>
Date: Fri, 1 Dec 2017 10:15:46 -0500
Message-ID: <CAE0QtjNKpPWUq---XQY4i2Z7ovsE1HH9xMND=kuY6YCPm0rMnw@mail.gmail.com>
To: Eric Schwarz <eas@sw-optimization.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Yocto SDK: how to deploy application with step "make install" to target?
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
X-List-Received-Date: Fri, 01 Dec 2017 15:15:49 -0000
Content-Type: multipart/alternative; boundary="001a1134eba0dbca78055f48d72c"

--001a1134eba0dbca78055f48d72c
Content-Type: text/plain; charset="UTF-8"

Thanks Eric for your explanation!
* (I know I can build the app within yocto build, but sometimes I prefer
the SDK method outside yocto build.)
* So just copy manually? I thought there are some tricks  that I don't know.

Now I have follow-up question:
* It seems that "make install" will copy different files to different
folders
* Can I do like these:?
--- make
--- copy (via scp)
--- make install
* Or it needs to be:
--- make
--- make install
--- copy (via scp) -----then how do I know: what files to go which folder?
--- can you explain:
    "... you may supply a custom install prefix directory to configure."
--- how?

Thanks!





On Fri, Dec 1, 2017 at 9:34 AM, Eric Schwarz <eas@sw-optimization.com>
wrote:

> Am 01.12.2017 15:16, schrieb Eric Schwarz:
>
> Hi Jerry,
>>
>> Am 01.12.2017 15:07, schrieb Jerry Lian:
>>
>> I am new to embedded linux, and some concepts confuse me:
>>> * I have downloaded an Autotools-based application to run on my board.
>>> * If I boot the board with original image/original SDK, I normally
>>> build/install it with steps:
>>> ----- ./bootstrap
>>> ----- ./configure
>>> ----- make
>>> ----- make install
>>>
>>
>> You may build your app within yocto build process so your application is
>> contained in your rootFS directly.
>>
>> * Now if I boot the board with yocto image without SDK, how can I deploy
>>> the application?
>>> ---- (surely I do "bitbake -c populate_sdk some-image", and source the
>>> environment!)
>>>
>>> ----- ./bootstrap (Yocto SDK on host)
>>> ----- ./configure (Yocto SDK on host)
>>> ----- make         (Yocto SDK on host)
>>> ----- make install (???)
>>>
>>
>> If you build it w/ the SDK outside of the yocto build process just
>> install it to a local directory and copy all the stuff w/ e.g. scp onto
>> your boards rootFS.
>>
>
> ... you may supply a custom install prefix directory to configure.
>
>
>
>> * How to do "make install"? (I want to install it on target, but how?)
>>>
>>> Thanks!
>>>
>>
>> Cheers
>> Eric
>>
>

--001a1134eba0dbca78055f48d72c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Eric for your explanation!=C2=A0<div>* (I know I ca=
n build the app within yocto build, but sometimes I prefer the SDK method o=
utside yocto build.)</div><div><div>* So just copy manually? I thought ther=
e are some tricks=C2=A0 that I don&#39;t know.</div><div><br><div>Now I hav=
e follow-up question:</div></div><div>* It seems that &quot;make install&qu=
ot; will copy different files to different folders</div><div>* Can I do lik=
e these:?</div><div>--- make</div><div>--- copy (via scp)=C2=A0</div><div>-=
-- make install</div><div>* Or it needs to be:</div><div>--- make</div><div=
>--- make install</div><div>--- copy (via scp) -----then how do I know: wha=
t files to go which folder?</div><div><span style=3D"font-size:12.8px">--- =
can you explain:</span></div><div><span style=3D"font-size:12.8px">=C2=A0 =
=C2=A0 &quot;... you may supply a custom install prefix directory to config=
ure.&quot; --- how?</span><br></div><div><br></div><div>Thanks!</div><div><=
br></div><div><br></div><div><br></div><div><br></div></div></div><div clas=
s=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Dec 1, 2017 at 9:3=
4 AM, Eric Schwarz <span dir=3D"ltr">&lt;<a href=3D"mailto:eas@sw-optimizat=
ion.com" target=3D"_blank">eas@sw-optimization.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><span class=3D"">Am 01.12.2017 15:16, schri=
eb Eric Schwarz:<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi Jerry,<br>
<br>
Am 01.12.2017 15:07, schrieb Jerry Lian:<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I am new to embedded linux, and some concepts confuse me:<br>
* I have downloaded an Autotools-based application to run on my board.<br>
* If I boot the board with original image/original SDK, I normally build/in=
stall it with steps:<br>
----- ./bootstrap<br>
----- ./configure<br>
----- make<br>
----- make install<br>
</blockquote>
<br>
You may build your app within yocto build process so your application is co=
ntained in your rootFS directly.<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
* Now if I boot the board with yocto image without SDK, how can I deploy th=
e application?<br>
---- (surely I do &quot;bitbake -c populate_sdk some-image&quot;, and sourc=
e the environment!)<br>
<br>
----- ./bootstrap (Yocto SDK on host)<br>
----- ./configure (Yocto SDK on host)<br>
----- make=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(Yocto SDK on host)<br>
----- make install (???)<br>
</blockquote>
<br>
If you build it w/ the SDK outside of the yocto build process just install =
it to a local directory and copy all the stuff w/ e.g. scp onto your boards=
 rootFS.<br>
</blockquote>
<br></span>
... you may supply a custom install prefix directory to configure.<div clas=
s=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
* How to do &quot;make install&quot;? (I want to install it on target, but =
how?)<br>
<br>
Thanks!<br>
</blockquote>
<br>
Cheers<br>
Eric<br>
</blockquote>
</div></div></blockquote></div><br></div>

--001a1134eba0dbca78055f48d72c--
