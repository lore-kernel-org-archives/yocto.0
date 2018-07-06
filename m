Return-Path: <tdhammer99@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6DFFE011DA; Fri,  6 Jul 2018 08:27:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tdhammer99[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2F45E011AE
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 08:27:28 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id n84-v6so24151488oib.9
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2018 08:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=E7kw7ZP90xgp1wrzUVeoS2BPd15KxCpONxNrzR0pets=;
	b=Ri79mhRNmhxvnOlK2FHtzyiuDTExQHcXKYb6FAF8jZBU6YaXRsVGFaraBnvi/1jI0A
	SUugp+CAtT58jSTOpkLhqafLPavHayqOF3NMbRfvulnhvzigIstY86LDSQztSkJ2x99l
	wZmONTf7PzA7VXOtyllK8g9NlcySbD8j/2IWBuhErI2fSejnkd3lOMUCZ/k8D8jFNBQf
	jWzJGxQg7LI6Zcbg7mjGADsTyR/XCKxnNlACaGjR85ESfDQqvvvrqHxCntGyeqhYQ5Cb
	dTlAnU3BQchOe5lXKHc94AWwhrklQzTnBpSueErVNT8LijnIEY6d82vyUoAGA+Cbqtee
	93yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=E7kw7ZP90xgp1wrzUVeoS2BPd15KxCpONxNrzR0pets=;
	b=GfeJlD93x1d0fKkrPVfxvqFEsZA4IVFIpSXETF8eMamNzIu9jBuhNyKFdLVNVWlfaB
	xMk/Z9bBz1X30WPghqbvqU+bL3oClN4/KMSWRMD42vGuzxyuaVieXjYEcsEDCDebLkvR
	i0i24gZjxLYtVUYt+igNjssHZ4jieJxt3zp8aDs+6haVfqdqhV0VTjWieuWczDA7bUw6
	lWFlPeyrE9vTx0cIh4SM675jSDEk0Fm14lAGwhofUHID6mq2UP3baBRisSaF/R38l544
	KkZrSTJnd/688bHdPxUzyX0ayyVjEHm64KSMy1TQNSu2Y8NEb5JlUYTyhjDCh0Zbm9Yc
	XHMA==
X-Gm-Message-State: APt69E2uqTq00maIsYDCM9xRnzy5nEOOhew8bkFHIYzAtBetkWFgH9Sk
	hB8DXgwuZTtxDE8g+a+KK8hyECDB5NQCNhpJVW4=
X-Google-Smtp-Source: AAOMgpeqW7s9+uydvC0irBTpI2TfS7wOz6K+x/ziOX6QhFKiN84BNqXFn1g2WHvJS7S1Yd4Wwx1dCa2U2XfRdMjzQiY=
X-Received: by 2002:aca:3409:: with SMTP id
	b9-v6mr10775582oia.10.1530890847847; 
	Fri, 06 Jul 2018 08:27:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:39a2:0:0:0:0:0 with HTTP;
	Fri, 6 Jul 2018 08:27:27 -0700 (PDT)
In-Reply-To: <CANmTPBZZHDw5BVGSMMx_N+ZtRyLtE0k5+yDVK-Ywh+peciaPVw@mail.gmail.com>
References: <CANmTPBZZHDw5BVGSMMx_N+ZtRyLtE0k5+yDVK-Ywh+peciaPVw@mail.gmail.com>
From: Tim Hammer <tdhammer99@gmail.com>
Date: Fri, 6 Jul 2018 11:27:27 -0400
Message-ID: <CALh9vaVPSTpyqrf7sofXiwmeoTxtWKqiz9OL6S3E=HvZLjnhNw@mail.gmail.com>
To: Simon Chamlian <simon.chamlian@mpbc.ca>
Cc: yocto@yoctoproject.org
Subject: Re: Keeping and modifying Source code in Yocto
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
X-List-Received-Date: Fri, 06 Jul 2018 15:27:29 -0000
Content-Type: multipart/alternative; boundary="0000000000002d0b030570564dbb"

--0000000000002d0b030570564dbb
Content-Type: text/plain; charset="UTF-8"

On Fri, Jul 6, 2018 at 11:20 AM, Simon Chamlian <simon.chamlian@mpbc.ca>
wrote:

> Hi,
>
> Is there a way to keep the source code of a package to be able to modify
> it and then compile?
>
> For example, with LTIB ( Linux Target Image Builder ), it was possible
> with a command to extract the source code from a package, make
> modifications and then re-compile?
>
>
I suggest you take a look at the devtool:
     https://www.yoctoproject.org/software-item/devtool/

https://wiki.yoctoproject.org/wiki/TipsAndTricks/Patching_the_source_for_a_recipe



> Thanks,
> S
>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 

.Tim

--0000000000002d0b030570564dbb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div>On Fri, Jul 6, 2018 at 11:20 AM, Simon Chamlian <=
span dir=3D"ltr">&lt;<a href=3D"mailto:simon.chamlian@mpbc.ca" target=3D"_b=
lank">simon.chamlian@mpbc.ca</a>&gt;</span> wrote:<br></div><div class=3D"g=
mail_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div>Hi,</div><div><br></div><div>Is there a=
 way to keep the source code of a package to be able to modify it and then =
compile?</div><div><br></div><div>For example, with LTIB (
<span>Linux Target Image Builder</span>

), it was possible with a command to extract the source code from a package=
, make modifications and then re-compile?</div><div><br></div></div></block=
quote><div>

<div><br></div><div>I suggest you take a look at the devtool:<br></div><div=
>=C2=A0 =C2=A0 =C2=A0<a href=3D"https://www.yoctoproject.org/software-item/=
devtool/">https://www.yoctoproject.org/software-item/devtool/</a></div><div=
>=C2=A0 =C2=A0 =C2=A0<a href=3D"https://wiki.yoctoproject.org/wiki/TipsAndT=
ricks/Patching_the_source_for_a_recipe">https://wiki.yoctoproject.org/wiki/=
TipsAndTricks/Patching_the_source_for_a_recipe</a></div><div class=3D"gmail=
_extra"><br class=3D"gmail-Apple-interchange-newline">

</div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div></div><div>Thanks,</div><div>S<br></div><div><br></div><div>=
<br></div><div><br></div><div><br></div><br></div>
<br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature"><div dir=3D"ltr"><br><span style=3D"font-family:&quo=
t;arial narrow&quot;,sans-serif">.Tim</span><br></div></div>
</div></div>

--0000000000002d0b030570564dbb--
