Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C66DE00D6B; Wed, 22 May 2019 00:55:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
	[209.85.128.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF1AAE00D5D
	for <yocto@yoctoproject.org>; Wed, 22 May 2019 00:55:15 -0700 (PDT)
Received: by mail-wm1-f51.google.com with SMTP id t5so1095539wmh.3
	for <yocto@yoctoproject.org>; Wed, 22 May 2019 00:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=KAWHqX/ylfce0frZyyfNCmECxkRrYzyFlX9qeB5T/xg=;
	b=Llo4j/M9FAEcITrYgCGz9yymqxEG6ZeytK6lbZbTkB4TtnA/wxeSq2nhw1/03PqS9b
	vW5ZPpj8933hTXzhSkgt7CZ2cZctAw5AZoNuQPmOcMK6eGfYCA78YjKxWRq9c05IAkVm
	N2XYvHB47gNxx4NKe9Ayk+5xPb/fL3Ak9A3/FXsoNRBMm4X9W6i/HywpyJ9UkWYEfr0u
	oOzg1mplXOK6c9FE3ON6fAEFZRH0seDw2OgTqMiWn3KfwfcqU4uRNsZqIiOd3Gswc4j2
	Pp84d76mCrkxqC7UTfAOFYlKXhPlAhLKoYzzuLZQ4w6/RplI3LvHt/v18x3nLYRjlie0
	vhgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=KAWHqX/ylfce0frZyyfNCmECxkRrYzyFlX9qeB5T/xg=;
	b=oTo5hpJ/m1SZkAaEHRAnlHAtT37j8AF1sSm8kAyZRacFGTDEDF1G2xgdIOxDU5yDJd
	ExjoNwErTzZCQQAJhawsXypYSDa0JF8Ki/B511XervbeKIoWMLtw/0644bn6uXT0cEYG
	oKaMUaArCG9hBl0MbCooy4ZDrTBsOCIwM86T6YGMs+1g6roodZMYRHQIyUlK+rh1Ff8e
	qa7H/mYJb7ue/4+CmqbsFAhJmtuJNMdRan3ruN3RVtCdeku1IVEjKCdVFaVNqwfu6ejs
	qZYEm4ZpnXDx0nC1HyUk3+o8vW6oFGSJsqYV8K8fJqiPJcTDP0jIyhfQ8YdNVTNYZWjE
	C3wQ==
X-Gm-Message-State: APjAAAUBlPY7A/tvuJ7m/GydbWU4dTwE6wqsJTT9Ua0elLiXB8sHaE+l
	COU1e1z4D+qXQOzbOg3Dk0Kq9wBZHImlgW8svVI=
X-Google-Smtp-Source: APXvYqzvino33RtKkb7ovXgLp96SK9ncKBUcQ2PfI/sUPc1vQOuo3noUuDeXwFsInzQnV9ItLjECC86Ngb6Hhm0K8no=
X-Received: by 2002:a1c:9a8c:: with SMTP id c134mr6274564wme.20.1558511714832; 
	Wed, 22 May 2019 00:55:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv36rHpLWA0sO=nZHePMHVjLBpsUgGmPUXpQ2gObF7+2gJA@mail.gmail.com>
	<CANNYZj_E0+sizpK0gvTa3H_8r1wZtW2sY3S2rz7PbMnU99Zv8w@mail.gmail.com>
	<CAAfyv34RLBR_vJqnZxnW5T_+SyGU8Mtn4eM_gzKuFcCoMx2y_w@mail.gmail.com>
	<CANNYZj--jzkXeyqGiMms05wvD0yQvWt1uUmJD9xGe3=xrN7b5Q@mail.gmail.com>
	<CAAfyv37ZAPU-5HZP+LpXM6oeuoscnku_rOzCDFXNuoVC+zOFcQ@mail.gmail.com>
	<7247318a-7294-4879-bc0b-6af506cab3ca@www.fastmail.com>
In-Reply-To: <7247318a-7294-4879-bc0b-6af506cab3ca@www.fastmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Wed, 22 May 2019 07:55:03 +0200
Message-ID: <CAAfyv36_6ogbb8no=FvAETbaw8SVSAeSd-mkwqFt9Tz-4Tx7Gg@mail.gmail.com>
To: Paul Barker <paul@betafive.co.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: setting SRC_URI runtime - possible options
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
X-List-Received-Date: Wed, 22 May 2019 07:55:18 -0000
Content-Type: multipart/alternative; boundary="00000000000024179805897549cb"

--00000000000024179805897549cb
Content-Type: text/plain; charset="UTF-8"

On Wed, May 22, 2019 at 9:50 AM Paul Barker <paul@betafive.co.uk> wrote:

> On Tue, 21 May 2019, at 11:23, Belisko Marek wrote:
> > On Tue, May 21, 2019 at 12:14 PM Alexander Kanavin
> > <alex.kanavin@gmail.com> wrote:
> > > You can write a class which sets the template for SRC_URI and then a
> > >  series of recipes that inherit the class, and define the variable that
> > >  would turn the template into the actual URI.
> > OK I think it make sense. So parsing of config file will be done in
> > class and then class will be used in recipes to set correct SRU_URI.
> > Do you have any idea what is wrong with actual code I posted? Why it is
> > doing some strange things? Thanks.
>
> You're setting the SRC_URI value only in the do_fetch task. It's needed in
> at least the do_unpack task as well and possibly other tasks.
>
> You could look at setting this in an anonymous python function instead if
> you really need to parse a config file.
>
Yes I was using anonymous python function before but  then when project was
unpacked the SRCPV + SRCREV was somehow not updated.
I'll try to look more on it and debug. Thanks.

>
> --
> Paul Barker
> Managing Director & Principal Engineer
> Beta Five Ltd
>

BR,

marek
-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--00000000000024179805897549cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, May 22, 2019 at 9:50 AM Paul Bark=
er &lt;<a href=3D"mailto:paul@betafive.co.uk">paul@betafive.co.uk</a>&gt; w=
rote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">On Tue, 21 May 2019, at 11:23, Belisko Marek wrote:<br>
&gt; On Tue, May 21, 2019 at 12:14 PM Alexander Kanavin <br>
&gt; &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>&gt; wrote:<br>
&gt; &gt; You can write a class which sets the template for SRC_URI and the=
n a<br>
&gt; &gt;=C2=A0 series of recipes that inherit the class, and define the va=
riable that<br>
&gt; &gt;=C2=A0 would turn the template into the actual URI.<br>
&gt; OK I think it make sense. So parsing of config file will be done in <b=
r>
&gt; class and then class will be used in recipes to set correct SRU_URI.<b=
r>
&gt; Do you have any idea what is wrong with actual code I posted? Why it i=
s <br>
&gt; doing some strange things? Thanks.<br>
<br>
You&#39;re setting the SRC_URI value only in the do_fetch task. It&#39;s ne=
eded in at least the do_unpack task as well and possibly other tasks.<br>
<br>
You could look at setting this in an anonymous python function instead if y=
ou really need to parse a config file.<br></blockquote><div>Yes I was using=
 anonymous python function before but=C2=A0 then when project was unpacked =
the SRCPV=C2=A0+ SRCREV was somehow not updated.</div><div>I&#39;ll try to =
look more on it and debug. Thanks.</div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">
<br>
-- <br>
Paul Barker<br>
Managing Director &amp; Principal Engineer<br>
Beta Five Ltd<br>
</blockquote></div><br clear=3D"all"><div>BR,</div><div><br></div><div>mare=
k</div>-- <br><div dir=3D"ltr" class=3D"gmail_signature">as simple and prim=
itive as possible<br>-------------------------------------------------<br>M=
arek Belisko - OPEN-NANDRA<br>Freelance Developer<br><br>Ruska Nova Ves 219=
 | Presov, 08005 Slovak Republic<br>Tel: +421 915 052 184<br>skype: marekwh=
ite<br>twitter: #opennandra<br>web: <a href=3D"http://open-nandra.com" targ=
et=3D"_blank">http://open-nandra.com</a></div></div>

--00000000000024179805897549cb--
