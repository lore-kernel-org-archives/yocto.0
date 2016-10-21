Return-Path: <changhyeok.bae@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5812DE00848; Fri, 21 Oct 2016 15:04:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (changhyeok.bae[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13CF3E0074C
	for <yocto@yoctoproject.org>; Fri, 21 Oct 2016 15:04:36 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id c78so8368918wme.0
	for <yocto@yoctoproject.org>; Fri, 21 Oct 2016 15:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9J82kCXwkMQOyP9hPUrpEDVpKjmND2onhns1iR56vRc=;
	b=EkglntXWign2S4RE5stEozfG5XsV0tAQOiakeiwoS4jwC8GrmE+udfY8h3EYga5ezn
	GfhOvP7W0Ug8IuAuhiFmMxJ/+q5qtLYuhHY1dSFGNm5kk0+e5dYCCEgyNGF1sETaOHnW
	rHbkuh0NNYUaEexn4nQnijh4UKQzf3jjPuP0ycZVqhWWsr1JObZwDJoV4VGcuNXhONDc
	o5zL0fzSky7IFsZ0Ygd/swupBLn3HkL5m/rm1Iw6hBd4oU/rQwlvHKAGWb5Fcaf4cDVz
	5S9mGEopOlAwv+KYQvlVtqY/qTT8Ab2/P2ARhAVZ/F4PtwOlauEqe57uX3aZBjEuEma6
	qcJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9J82kCXwkMQOyP9hPUrpEDVpKjmND2onhns1iR56vRc=;
	b=XHi4aIPdArXH1cICfnIEhPYzNOknu75POOjcviW7mT///0rgLA0FrJtwm5+/d25cXG
	l3Q9+FXsTuSmXBhjlaC2b36uqfpNv5hW7Qx1TjwMA6ArQfwaQ2QbgzDiHhlLHs/kZMAf
	Cx8WEKGVgC3CLoaEVbN5BNghDLuPpjTe0AH9iYU+F/qK8qQPFnY702SH3gU5PVXTE2oC
	Iz+pXiVyfE6IceZsEU4Lz/4npmbVd83iJCE1PM8Pkvgs2pAddkQJTnCshJZqXbiytwW/
	J2+ya7QXJm0NLxT5zzKxSJZXO6XoTO/4j77xGZuN9gns/IHTwCspLV1RGXcQG78FG+xP
	cBog==
X-Gm-Message-State: ABUngvcgZphULct5eyIJ8lJL4atXpVeMueG+2FBWWq8vPE7+simA1/zySGJfYTjbfiGEi+Rr3FqKSbTrKmMpXA==
X-Received: by 10.194.171.225 with SMTP id ax1mr2753123wjc.48.1477087475933;
	Fri, 21 Oct 2016 15:04:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.152.129 with HTTP; Fri, 21 Oct 2016 15:04:35 -0700 (PDT)
In-Reply-To: <CAPd5en-LgksAxOe4RdPLgGVyMVd6ktkvssDZxm_eHJG-PyLAXQ@mail.gmail.com>
References: <CAPd5en-LgksAxOe4RdPLgGVyMVd6ktkvssDZxm_eHJG-PyLAXQ@mail.gmail.com>
From: Changhyeok Bae <changhyeok.bae@gmail.com>
Date: Sat, 22 Oct 2016 07:04:35 +0900
Message-ID: <CACrLJgCLLUiNSGQtd98PuXYghJhsQWaTxUA++0yCJmY_pgbirw@mail.gmail.com>
To: adam paul <adapau00@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: no wlan interface on raspberry pi 3
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
X-List-Received-Date: Fri, 21 Oct 2016 22:04:43 -0000
Content-Type: multipart/alternative; boundary=089e013c689e4e27c3053f673a6a

--089e013c689e4e27c3053f673a6a
Content-Type: text/plain; charset=UTF-8

Please see https://at.projects.genivi.org/jira/browse/GDP-399.

Thanks
Changhyeok

2016-10-21 13:17 GMT+09:00 adam paul <adapau00@gmail.com>:

> Hi,
>     I have loaded yocto krogoth branch bsp to boot raspberry pi 3. After
> the boot up, ifconfig lists only eth0 and lo. no wlan0 is listed.
> i have checked the loaded modules, lsmod lists cfg80211. How to enable
> wlan0?
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--089e013c689e4e27c3053f673a6a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Please see=C2=A0<a href=3D"https://at.projects.genivi.org/=
jira/browse/GDP-399">https://at.projects.genivi.org/jira/browse/GDP-399</a>=
.<div><br></div><div>Thanks</div><div>Changhyeok</div></div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">2016-10-21 13:17 GMT+09:00 adam =
paul <span dir=3D"ltr">&lt;<a href=3D"mailto:adapau00@gmail.com" target=3D"=
_blank">adapau00@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><div dir=3D"ltr"><span style=3D"font-size:12.8px">Hi,</span><div style=3D=
"font-size:12.8px">=C2=A0 =C2=A0 I have loaded yocto krogoth branch bsp to =
boot raspberry pi 3. After the boot up, ifconfig lists only eth0 and lo. no=
 wlan0 is listed.</div><div style=3D"font-size:12.8px">i have checked the l=
oaded modules, lsmod lists cfg80211. How to enable wlan0?</div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--089e013c689e4e27c3053f673a6a--
