Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 741DCE00EFF; Sun, 24 Jul 2016 19:44:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f193.google.com (mail-qk0-f193.google.com
	[209.85.220.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D9E9E00D03
	for <yocto@yoctoproject.org>; Sun, 24 Jul 2016 19:44:10 -0700 (PDT)
Received: by mail-qk0-f193.google.com with SMTP id q62so12949995qkf.2
	for <yocto@yoctoproject.org>; Sun, 24 Jul 2016 19:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JBaOvtk6XUWb7sp7XBlexSb2Z5tyXWyB5LqfYiFLKCA=;
	b=pIDKRJcxrPLgSZCVfGX8bo9jCirw3cGpWaxjibSbV8yzTm8a1pTtg6qg7ELepm88n/
	ipAG2O6IG4RuOE+9xhEuDJPrIglKS/7wUBx9BHXJmHGhEbua2mHE5OJe5riqhKpcBOnE
	f3/X7Jk0eL5kd9dmuKAT/xqrdxkrK9kjRf2CIfJ1j4JtNCzK1+Jv05qrNkHj7dTHphNB
	LljNiu97wxDidFXFoi8VsC8muHFWAY+CmHSCSGj4qsXWnoNfU1nNuoYPiRRiHzd/lx4U
	zTB2jQVSsRAl8Q8rDX+74zG7F5hAt5ZUgJTpAY27Hp5QEjObXe/KRBgp9cSuBc7Cr35Q
	tNBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JBaOvtk6XUWb7sp7XBlexSb2Z5tyXWyB5LqfYiFLKCA=;
	b=DERhneJOI2a6Jz9n5y7MNMVymrtolPdCbrgFPN29hSnPCrPf7IqHOHKFPzOxVRGXzy
	JfmpENu10rQCy8fdIp6+wuO8ESfgcc+GIpqst+z9LDbB7YP5NfhfIiFuEeEBZ/EGGdgi
	60oI0kjJpyszeENysOrT7gvepbTGVouS1z/6Wxbrqcv2CzxETDA7u4iq/Y9qfbFD/Brm
	ClIzhg/yrsLnVUsMKREN5R31s/E9LdRLYOU3OQQzQqzZg4LWCeEU1SYzmU1JWzqbebYa
	2/4EjXTqHpxugWH9vWJCtmZRZrVeUfGoZvmjX8AzyTrLICs/S3Yda3lrh+o1H9XCMADh
	MyJQ==
X-Gm-Message-State: AEkoouuvNRjB/TaQrb6+oxhcErsBHYk+lMiq9QsgtWIbTWfLZW57Wdgdg20sUIV5GujR8h7u8FxZKkqDMh+nmQ==
X-Received: by 10.55.17.137 with SMTP id 9mr19683071qkr.36.1469414649673; Sun,
	24 Jul 2016 19:44:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.50.137 with HTTP; Sun, 24 Jul 2016 19:44:09 -0700 (PDT)
In-Reply-To: <3b9801df-33bc-ce6b-842b-7dc2f4ee083b@newforest-technology.co.uk>
References: <3b9801df-33bc-ce6b-842b-7dc2f4ee083b@newforest-technology.co.uk>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Sun, 24 Jul 2016 22:44:09 -0400
Message-ID: <CADkTA4M4xCrG_omCqyHw=XLHTjnq19h0Bp-MAzjgw1CbZdtP7A@mail.gmail.com>
To: Chris Sykes <chris@newforest-technology.co.uk>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: linux-yocto: memory leak in krogoth 4.1.28 kernel
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
X-List-Received-Date: Mon, 25 Jul 2016 02:44:11 -0000
Content-Type: multipart/alternative; boundary=001a11474f9838bd0605386cc2e1

--001a11474f9838bd0605386cc2e1
Content-Type: text/plain; charset=UTF-8

On Sun, Jul 24, 2016 at 2:42 PM, Chris Sykes <
chris@newforest-technology.co.uk> wrote:

> Hi,
>
> At the end of last week I hit a known kernel memory leak in the
> linux-yocto 4.1 branch, as delivered in 2.1 / krogoth.  It rather quickly
> results in an OOM kernel panic on my platform (x86, 1G RAM).
>
> The patch below fixed the problem for me:
> http://www.spinics.net/lists/stable/msg138760.html
>
> It's already queued for 4.1.29, but thought I'd mention it here for the
> benefit of the list. Perhaps it might be worth expediting a fix for 2.1?
>
>
There's plenty of other bugs lurking, no real rush to fix something that is
already
queued for -stable .. that's the best place to pick up a fix.



> I also raised bugzilla 10014 - I hope this was the right thing to do...
>
>
Actually, sending a patch is even better. If you've seen the problem, tested
a fix, you are by far in the best position to send a patch to fix the issue.

Just fire something to the linux-yocto list with the information you've
added
above, and it'll go into the queue .. most likely before I get to the
4.1.29 stable :)

Cheers,

Bruce


> --
> Chris Sykes
> New Forest Technology Ltd.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--001a11474f9838bd0605386cc2e1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Jul 24, 2016 at 2:42 PM, Chris Sykes <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:chris@newforest-technology.co.uk" target=3D"_blank">chris@new=
forest-technology.co.uk</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">Hi,<br>
<br>
At the end of last week I hit a known kernel memory leak in the linux-yocto=
 4.1 branch, as delivered in 2.1 / krogoth.=C2=A0 It rather quickly results=
 in an OOM kernel panic on my platform (x86, 1G RAM).<br>
<br>
The patch below fixed the problem for me:<br>
<a href=3D"http://www.spinics.net/lists/stable/msg138760.html" rel=3D"noref=
errer" target=3D"_blank">http://www.spinics.net/lists/stable/msg138760.html=
</a><br>
<br>
It&#39;s already queued for 4.1.29, but thought I&#39;d mention it here for=
 the benefit of the list. Perhaps it might be worth expediting a fix for 2.=
1?<br>
<br></blockquote><div><br></div><div>There&#39;s plenty of other bugs lurki=
ng, no real rush to fix something that is already</div><div>queued for -sta=
ble .. that&#39;s the best place to pick up a fix.</div><div><br></div><div=
>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex">
I also raised bugzilla 10014 - I hope this was the right thing to do...<spa=
n class=3D"HOEnZb"><font color=3D"#888888"><br>
<br></font></span></blockquote><div><br></div><div>Actually, sending a patc=
h is even better. If you&#39;ve seen the problem, tested</div><div>a fix, y=
ou are by far in the best position to send a patch to fix the issue.</div><=
div><br></div><div>Just fire something to the linux-yocto list with the inf=
ormation you&#39;ve added</div><div>above, and it&#39;ll go into the queue =
.. most likely before I get to the 4.1.29 stable :)</div><div><br></div><di=
v>Cheers,</div><div><br></div><div>Bruce</div><div>=C2=A0</div><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><span class=3D"HOEnZb"><font color=3D"#888888">
-- <br>
Chris Sykes<br>
New Forest Technology Ltd.<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature">&quot;T=
hou shalt not follow the NULL pointer, for chaos and madness await thee at =
its end&quot;</div>
</div></div>

--001a11474f9838bd0605386cc2e1--
