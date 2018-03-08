Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAD7AE00D6D; Thu,  8 Mar 2018 03:56:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29CFAE00971
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2018 03:56:01 -0800 (PST)
Received: by mail-ua0-f194.google.com with SMTP id j15so761857uan.3
	for <yocto@yoctoproject.org>; Thu, 08 Mar 2018 03:56:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=xHWkxbvaWgT0Y0m94AcuAq0XAwgrq/as548V4nK4NG0=;
	b=Jr6pptb3Vx4anchV0e0CZVbEQYl4QaCqTqZiHvhsxulm0qRN/JcJxq3snAAtaK8cc5
	1HACblzsSuwriqLkuxY9oNiV1/2AVWt8Nn1kQMo775w+aJDStIKonjFjM50/IMZUhGNH
	32akbEW6UMz34u0vf1QJ+6hsyGQrkzCemJseTFyHB/0sfrc5gS1fY4Sc1yZ3SFUgbBwb
	+0HuMx+SPZTCXbueXa1+duK54sJubswsEsMkr7LWvScVCmolHSAmrGCxp5wMbRO5tlz8
	crosGOzEjHfxs/IFmoQb7idPA94H4/LKN8M3A4r37XHvcgWQiX5+RgDk6aiOF9FZk9tL
	el/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=xHWkxbvaWgT0Y0m94AcuAq0XAwgrq/as548V4nK4NG0=;
	b=qXvwGpIrtwS35mNofE/eXjEkfWRBqVQrXlnJ2n8i9G2AuQZawSPooHAz1UJJOWRpP9
	j8FpOu4q5pJ5MUgGRqC4X2lDaOYn5lUs3W4aVn5JCky2f/LuIkj1GiidUOpej28wUvd+
	WmmW6FfRQm0dH8X8xBCFHdu1PsLgLAqymKWLXxwx3w2uwnsDc6HklnnPSfmWjMsXoMYe
	NKRWlE0EUjrfFV9VApsnWFOyuX4ywyTnbDYYs/4sXWAf7tPLT8VKYy1kyeZcNjVoabzQ
	MEw8WU2FTiTiwsGxe5uGp9yvz9wXOd6ZpYaEYcPjM/TJ53fY/d2+HTC6Xx79wvLa+eY7
	+aGA==
X-Gm-Message-State: APf1xPBNVSX/j52eaaG1WylVxui8i4NF3IZiuGBZy8qabLfEoCZyR4BR
	irTwcWgzOksQoyyS0wbSjUNb+3agIVXbl4PYMzaGyg==
X-Google-Smtp-Source: AG47ELvqvdzI7D8RNLfUdhlagYt/huAjTkkwAGcWGV1Zyj9/R951IvxRNqtKvN2/wkra6dyLKPBC7mPahOXK1lmheq0=
X-Received: by 10.159.54.38 with SMTP id r35mr18980642uad.133.1520510160995;
	Thu, 08 Mar 2018 03:56:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.48.69 with HTTP; Thu, 8 Mar 2018 03:55:20 -0800 (PST)
X-Originating-IP: [90.152.4.101]
In-Reply-To: <CAPyrkgxqsR+ejJUod_C227BMn4VLusQwx=f3f8+aK1YGvAxFQw@mail.gmail.com>
References: <CAKHP1duYgAf5jG3Y=Jm4yCPF+H9mcC+VS8u_aeYHGCTrBz1rZQ@mail.gmail.com>
	<CAPyrkgxqsR+ejJUod_C227BMn4VLusQwx=f3f8+aK1YGvAxFQw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 8 Mar 2018 11:55:20 +0000
Message-ID: <CAK18fxFXm3RagR=9EO8VPVxV7Xg=6raQnCcc+rjKDTjJN-cN3Q@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] how to install rpi-config package?
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
X-List-Received-Date: Thu, 08 Mar 2018 11:56:02 -0000
Content-Type: multipart/alternative; boundary="001a11454a080623bd0566e55cc0"

--001a11454a080623bd0566e55cc0
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 8, 2018 at 11:17 AM, Paul Barker <pbarker@toganlabs.com> wrote:

> On Thu, Mar 8, 2018 at 6:20 AM, kk <pinganddu90@gmail.com> wrote:
> > This is ok:
> >     $ bitbake rpi-config
> > But I check the image directory under workdir, I found nothing in it,
> and no
> > command raspi-config.
> >
>
> The rpi-config recipe creates the config.txt file in the
> "tmp/deploy/images/<MACHINE>/bcm2835-bootfiles/" directory (if I've
> got the path right) which is then copied to the boot partition for an
> SD card image.
>
> I believe raspi-config is specific to the Raspbian distribution and
> isn't used in images built with OpenEmbedded.


Paul is correct. Actually there is almost a name clash here. rpi-config in
meta-raspberrypi is a recipe which deploys the config.txt in deploy
directory. The raspbian tool that you refer to is not included / integrated
in oe but has a very similar name: raspi-config . So at this point when
baking rpi-config all you get is a config.txt in the deploy directory.

--
Andrei Gherzan

--001a11454a080623bd0566e55cc0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div><div class=3D"m_8349127269=
566744140gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"lt=
r"><div dir=3D"ltr">On Thu, Mar 8, 2018 at 11:17 AM, Paul Barker <span dir=
=3D"ltr">&lt;<a href=3D"mailto:pbarker@toganlabs.com" target=3D"_blank">pba=
rker@toganlabs.com</a>&gt;</span> wrote:<br></div></div></div></div><div cl=
ass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"m_83491272=
69566744140HOEnZb"><div class=3D"m_8349127269566744140h5">On Thu, Mar 8, 20=
18 at 6:20 AM, kk &lt;<a href=3D"mailto:pinganddu90@gmail.com" target=3D"_b=
lank">pinganddu90@gmail.com</a>&gt; wrote:<br>
&gt; This is ok:<br>
&gt;=C2=A0 =C2=A0 =C2=A0$ bitbake rpi-config<br>
&gt; But I check the image directory under workdir, I found nothing in it, =
and no<br>
&gt; command raspi-config.<br>
&gt;<br>
<br>
</div></div>The rpi-config recipe creates the config.txt file in the<br>
&quot;tmp/deploy/images/&lt;MACHINE&gt;/b<wbr>cm2835-bootfiles/&quot; direc=
tory (if I&#39;ve<br>
got the path right) which is then copied to the boot partition for an<br>
SD card image.<br>
<br>
I believe raspi-config is specific to the Raspbian distribution and<br>
isn&#39;t used in images built with OpenEmbedded.</blockquote><div><br></di=
v><div>Paul is correct. Actually there is almost a name clash here. rpi-con=
fig in meta-raspberrypi is a recipe which deploys the config.txt in deploy =
directory. The raspbian tool that you refer to is not included / integrated=
 in oe but has a very similar name: raspi-config . So at this point when ba=
king rpi-config all you get is a config.txt in the deploy directory.=C2=A0<=
/div><div><br></div><div><div style=3D"color:rgb(34,34,34);font-family:aria=
l,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:norma=
l;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align=
:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:=
0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-de=
coration-color:initial">--</div><span style=3D"color:rgb(34,34,34);font-fam=
ily:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial=
;text-decoration-color:initial;float:none;display:inline">Andrei Gherzan</s=
pan><br></div></div><br></div></div>

--001a11454a080623bd0566e55cc0--
