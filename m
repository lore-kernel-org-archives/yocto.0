Return-Path: <markus4dev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B32BE00D36; Fri,  1 Feb 2019 05:54:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (markus4dev[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85C93E00D16
	for <yocto@yoctoproject.org>; Fri,  1 Feb 2019 05:54:25 -0800 (PST)
Received: by mail-wr1-f53.google.com with SMTP id p4so7167262wrt.7
	for <yocto@yoctoproject.org>; Fri, 01 Feb 2019 05:54:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=O7uQrebansYtu67X/xjhRZorCJJyvDojNJm+gIA9Myk=;
	b=XaUttyrYnyiB6RvOQ7fvmIv8mt7T2RAw89DtrlllkiRqTPtBNOnrXLWGG6siPmomRv
	y4BdfkPFXNNVH4soaXmIMyS94Qzmbkedk5GuWXmwYR0O0lBq7QNwo5jzRuGoO5b2BYH7
	N2hPmEs4sijbYYWaiJvYIJFfC896e/lFdO2FgbDdSyVaJzvgQOCKciqy0Z0tq0Q6dHh/
	Iq1kb18JE+ROv+333RS/L6eqznrgjfj9JxPSoFIj+eBAaaa5m6cO8HlWgKOjpU8YijUY
	DhqpRG48BTJgBrPnVpbR7BogLg68a/YNGYK73Nfsb7oU+s5wQYbfJd2vKCO92cSJZDcv
	0xZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=O7uQrebansYtu67X/xjhRZorCJJyvDojNJm+gIA9Myk=;
	b=JCkLcvBBgtXqA9Q46Dex1LVFot9RM1g+kU4KJ5GU7MVwMVxENHYg5v7ZK/ropsu065
	33D34eohBXPpSYiwi9zYI7c1iClhTYOfHg3VEn90PeyEhMr22qDlSRy7gG39Ksd0omM8
	jijhi9EgFB5Go+gkZpgLbVK/J6iQhj+QN1wGlWMfaXKY5DH3i1MgXvS0/no4rdtzYVDw
	ztTH6LajlsqT3av/d58lE4mmLADKEJgvZqfKN2r1vSDD51A8NK5v5eptn2f1IQ+sHWXq
	BlDiZZC+KvjHfo/QAk+tohEgyC2oAxQNWROOgZQAuTLktaXTiJ5zvxA50hAD5Z5ertmy
	T9sg==
X-Gm-Message-State: AJcUukdVvd676QqwXKFHq0K33ZrqxRpEvbhHnV7VX/wQWf8QEovkBShE
	oF8jrTrjRdqUqfvpXdrdV/xYzC7g3CyGQrq5fT8hbw==
X-Google-Smtp-Source: ALg8bN5fwFzOGE7HHIbLUoRHoYDCgWT3qNKmfiHRsLJH0+trgwqIHBXHowOrCUfCpWxr3wo5QwE89kvggxS/ZeXhea8=
X-Received: by 2002:adf:fe8f:: with SMTP id l15mr36997548wrr.313.1549029264320;
	Fri, 01 Feb 2019 05:54:24 -0800 (PST)
MIME-Version: 1.0
References: <CAFd=ocgxmwYraW5JjjrP8WOzyMrF7A=tj8Y8ksaY6tP0H3i=Nw@mail.gmail.com>
	<CAAfyv37uEZ3N7Wno_Dg6jpQ4-SrYQC75Xxjf9tNC+d+L=sG+gw@mail.gmail.com>
In-Reply-To: <CAAfyv37uEZ3N7Wno_Dg6jpQ4-SrYQC75Xxjf9tNC+d+L=sG+gw@mail.gmail.com>
From: Markus W <markus4dev@gmail.com>
Date: Fri, 1 Feb 2019 14:54:13 +0100
Message-ID: <CAFd=oci1eDbkHmQjLh8D6opUPMm4CU3Kf6D4JPXOn==zB2Wp8A@mail.gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Rainbow screen with Raspberry Pi 3 A+ but not on B+
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
X-List-Received-Date: Fri, 01 Feb 2019 13:54:26 -0000
Content-Type: multipart/alternative; boundary="0000000000000bebea0580d57b93"

--0000000000000bebea0580d57b93
Content-Type: text/plain; charset="UTF-8"

Thanks Marek!

I pretty sure it doesn't boot, but I haven't confirmed it as you suggested
it.

I have never connected to the uart interface directly on the GPIO or via
bluetooth. It probably takes me more time to figure it out and to do this
than trying the thud branch as @agherzan has mentioned here:
https://github.com/agherzan/meta-raspberrypi/issues/373

I am also using meta-mender, do I need to upgrade all layers to thud than?

Regards,
Markus



On Fri, 1 Feb 2019 at 13:17, Belisko Marek <marek.belisko@gmail.com> wrote:

> On Fri, Feb 1, 2019 at 1:11 PM Markus W <markus4dev@gmail.com> wrote:
>
>> Hi!
>>
>> I have been running a yocto image (sumo) on a raspberry 3 B+ without any
>> problems, but wanted to test the new raspberry Pi 3 A+ board with it but I
>> just get the Rainbow screen on boot. I have updated meta-openembedded to
>> the latest sumo and meta-raspberry was still up to date with the latest
>> (sumo) and still the same result.
>>
>
>> My question: Has anybody been running sumo on a raspberrypi 3 a+
>> successfully? I have been googling around for issues but can't find
>> anything on the new board and yocto. Seems that I am missing something.
>>
> Can you connect serial console and add enable_uart=1 to config.txt and
> verify? This looks like it doesn't boot. You can also ask on [1]
>
>>
>> Regards,
>> Markus
>>
> --
>>
>
> [1] -  https://github.com/agherzan/meta-raspberrypi/issues
>
> BR,
>
> marek
>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
>

--0000000000000bebea0580d57b93
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Thanks Marek!=C2=A0<div><br></div><div>I =
pretty sure it doesn&#39;t boot, but I haven&#39;t confirmed it as you sugg=
ested it.=C2=A0=C2=A0</div><div><br></div><div>I have never connected to th=
e uart interface directly on the GPIO or via bluetooth. It probably takes m=
e more time to figure it out and to do this than trying the thud branch as=
=C2=A0@agherzan has mentioned here:=C2=A0<a href=3D"https://github.com/aghe=
rzan/meta-raspberrypi/issues/373" target=3D"_blank">https://github.com/aghe=
rzan/meta-raspberrypi/issues/373</a></div><div><br></div><div>I am also usi=
ng meta-mender, do I need to upgrade all layers to thud than?</div><div><br=
></div><div>Regards,</div><div>Markus</div><div><br></div><div><br></div></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Fri, 1 Feb 2019 at 13:17, Belisko Marek &lt;<a href=3D"mailto:marek.=
belisko@gmail.com" target=3D"_blank">marek.belisko@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr">On Fri, Feb 1, 2019 at 1:11 PM Markus W=
 &lt;<a href=3D"mailto:markus4dev@gmail.com" target=3D"_blank">markus4dev@g=
mail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi!<div><br></div><div>=
I have been running a yocto image (sumo) on a raspberry 3 B+ without any pr=
oblems, but wanted to test the new raspberry Pi 3 A+ board with it but I ju=
st get the Rainbow screen on boot. I have updated meta-openembedded to the =
latest sumo and meta-raspberry was still up to date with the latest (sumo) =
and still the same result.=C2=A0=C2=A0</div></div></blockquote><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><br></div><div>=
My question: Has anybody been running sumo on a raspberrypi 3 a+ successful=
ly? I have been googling around for issues but can&#39;t find anything on t=
he new board and yocto. Seems that I am missing something.</div></div></blo=
ckquote><div>Can you connect serial console and add enable_uart=3D1 to conf=
ig.txt and verify? This looks like it doesn&#39;t boot. You can also ask on=
 [1]</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div><br></div><div>Regards,</div><div>Markus=C2=A0=C2=A0=C2=A0 =C2=A0</d=
iv></div></blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">-- =
<br></blockquote><div><br></div><div>[1] -=C2=A0=C2=A0<a href=3D"https://gi=
thub.com/agherzan/meta-raspberrypi/issues" target=3D"_blank">https://github=
.com/agherzan/meta-raspberrypi/issues</a></div><div><br></div><div>BR,</div=
><div><br></div><div>marek</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_-851358140342702868gmail-m_-268158832529782569gmail_signa=
ture">as simple and primitive as possible<br>------------------------------=
-------------------<br>Marek Belisko - OPEN-NANDRA<br>Freelance Developer<b=
r><br>Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>Tel: +421 915 0=
52 184<br>skype: marekwhite<br>twitter: #opennandra<br>web: <a href=3D"http=
://open-nandra.com" target=3D"_blank">http://open-nandra.com</a></div></div=
></div>
</blockquote></div>

--0000000000000bebea0580d57b93--
