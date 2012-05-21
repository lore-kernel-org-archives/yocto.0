Return-Path: <andrei@gherzan.ro>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E317E0030B
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 13:09:16 -0700 (PDT)
Received: by yenm14 with SMTP id m14so6106245yen.35
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 13:09:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=6jR7UEv6qIVdKyZdps2yGce3a+wPceb+A3HSZw4UoM0=;
	b=Q6CNKUiexPByisBDGva2wJLVfQGXIZqkqCy1+5DWcDwto2t82WSmoz/CFmy3aDKaSU
	5tecT2vhzCuBVVNyVtxkgiOgTNAKqMc+kIf7VfUABy36eDa8ddRYFVBEzdtaKaxW5b+1
	blHzcwJjJ/J3bMn+ud71ktIHvgEEeZIhdDFwNdGUtk5dSVM6pUH/nekEsrOJuW/buBv1
	ifDiCNfPBvR4hZMVI7j8paDZnlJMvARS5lXlEhD9CieRxGnFinbL52HwAtvMIZYabRq6
	oAFiaGkoybW1wUrdoCWrGUQpMZ7WwcF30aLtkTlvB8vMSkwf5RZJhk3o7yLIFUpjgk22
	9K1Q==
Received: by 10.50.219.162 with SMTP id pp2mr7852277igc.40.1337630955656; Mon,
	21 May 2012 13:09:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.25.18 with HTTP; Mon, 21 May 2012 13:08:54 -0700 (PDT)
X-Originating-IP: [79.117.102.5]
In-Reply-To: <EC37B226-4E57-4C84-9510-F6EEC7FF4FCF@keylevel.com>
References: <CAK18fxEh2HW+VQ5yrLdh3pr4hE8ZZzG2ecZXFLy2=40hQ+zYdg@mail.gmail.com>
	<EC37B226-4E57-4C84-9510-F6EEC7FF4FCF@keylevel.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 21 May 2012 23:08:54 +0300
Message-ID: <CAK18fxFT4OfRrOAK2yQrPcMWv0asds7rFM+DvzKW83WcCERr-A@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
X-Gm-Message-State: ALoCoQlmoCDQjstkmg9O/gMLBdJtn/RiwfGTKnI0SxJLlu2L1X5sR/FspQkD7miMmT238qJrkznT
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: RaspberryPi Layer
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 21 May 2012 20:09:16 -0000
Content-Type: multipart/alternative; boundary=14dae9340e05f3d75804c0917934

--14dae9340e05f3d75804c0917934
Content-Type: text/plain; charset=ISO-8859-1

Yes it is. Forget that.
We decided to use a single layer for both distros.


On Mon, May 21, 2012 at 10:59 PM, Chris Tapp <opensource@keylevel.com>wrote:

>
> After seeing:
>
> > After an exchange of messages with Richard, Saul and John Willis ... i
> started start a fork ...
>
> I thought this was now 'the' meta-layer for the RPi. Is that not the case?
> It really would make sense for everyone to pull in the same direction.
>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--14dae9340e05f3d75804c0917934
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Yes it is. Forget that.=A0<div>We decided to use a single layer for both di=
stros.<br>
<br><br><div class=3D"gmail_quote">On Mon, May 21, 2012 at 10:59 PM, Chris =
Tapp <span dir=3D"ltr">&lt;<a href=3D"mailto:opensource@keylevel.com" targe=
t=3D"_blank">opensource@keylevel.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">

<br>
After seeing:<br>
<br>
&gt; After an exchange of messages with Richard, Saul and John Willis ... i=
 started start a fork ...<br>
<br>
I thought this was now &#39;the&#39; meta-layer for the RPi. Is that not th=
e case? It really would make sense for everyone to pull in the same directi=
on.<br>
<br>
Chris Tapp<br>
<br>
<a href=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a><br>
<a href=3D"http://www.keylevel.com" target=3D"_blank">www.keylevel.com</a><=
br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--14dae9340e05f3d75804c0917934--
