Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93A1CE00C4D; Wed, 16 Jan 2019 00:50:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
	[209.85.208.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19322E00C28
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 00:50:08 -0800 (PST)
Received: by mail-lj1-f182.google.com with SMTP id g11-v6so4757280ljk.3
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 00:50:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ltAMnjhbKm9flB1FDqc9Bl6I+hNUQJOAL/9WbuyUmU4=;
	b=Kw+VecP79BtfAHytNUxCM/ET3P6hQ1pI+QrTgjsSsBp9sFddgcBj4mnPdo3tO+Clkb
	Cfp9W/BLY1UuDCDTfnoetAc2ukyPZ+zYBh/SP1hAuM1Tlp2j87C/lX/OqEd2VmJRWlSJ
	pLz+T2qtR6/0oyQAhNU7Q4iANViOp5C7JAqyI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ltAMnjhbKm9flB1FDqc9Bl6I+hNUQJOAL/9WbuyUmU4=;
	b=dMJ+MR7pzsXz8QBPPBam9nKghMrhwCTSAfGsXxWVbf43ZiTY3RZVq5tG9CpfSLFzar
	WYdxuijjAdmuKPtqo8imheoFwUTkBrrgmQerpJVDZ03EmfcQW81oD7hPcbKQNLSgbJgL
	iFtriEOuDrSKKaPmdFDf3qXyA9U6trZa/hZhYsoz6DNP5zslt0MDfYxdzLUyTG2BSFlp
	aClxcv9wHUlsXtIM3o+GRaavjwJ9BP1AyOoEhpC3WCJa10DmvoE/+N/nnk3IGAYmgrky
	QVTSguwGM+zwGOrKaoZWYSVZDmW2OZdApZE0ZEKZG8aA46wPWl1PsYsC38QpZwPtepbQ
	ioCw==
X-Gm-Message-State: AJcUukfe8qu/HMOkq9OvBtAzrShS6DYSE6zO/uMG9uoAzWzqSW9Qg7rK
	274T6KsUiOGYt6k7W4KyTbphq603YFUasNFiH6h3DBnMTFQ=
X-Google-Smtp-Source: ALg8bN4lZTMCk/KY1Ro56f9rBLqB0sgj2wgmT9Wz947wOD5iW/l8+rSXqZmqnQN7qFVAqdQepbUamM5+wrOhGB988Lc=
X-Received: by 2002:a2e:551:: with SMTP id 78-v6mr5507047ljf.82.1547628607021; 
	Wed, 16 Jan 2019 00:50:07 -0800 (PST)
MIME-Version: 1.0
References: <CAE_REAuoUGr7L-Cc5_f38wy-Myq1g69D_97wA_cfEu=ULUyAQA@mail.gmail.com>
	<CAE_REAt2p+C+CRSCj=yfRBw4TEkswUP7uTpue8NLu3Gqzgn5xg@mail.gmail.com>
In-Reply-To: <CAE_REAt2p+C+CRSCj=yfRBw4TEkswUP7uTpue8NLu3Gqzgn5xg@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 16 Jan 2019 09:49:55 +0100
Message-ID: <CAP71WjykQrPZpBDEpnhD6c_nEYRD5XweSN5dbU4Bb+q7WO3kmw@mail.gmail.com>
To: Gaurang Shastri <gmshastri@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Community support for any Yocto release
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
X-List-Received-Date: Wed, 16 Jan 2019 08:50:09 -0000
Content-Type: multipart/alternative; boundary="0000000000005dc66c057f8f5d11"

--0000000000005dc66c057f8f5d11
Content-Type: text/plain; charset="UTF-8"

Hello,

On Wed, Jan 16, 2019 at 9:47 AM Gaurang Shastri <gmshastri@gmail.com> wrote:

>
> Hi All,
>
> For how many years yocto community officially support any Yocto release?
> (This includes like bug fixes, CVE fixes, enhancements, etc etc)
>
> For example, the latest release happened on 11/15/2018 (Yocto 2.6), so how
> long this will be supported by community?
>
> Sorry, if this information is already present on some wiki page, but I am
> not able to find it. So pointer to that wiki page will really help.
>

This information is indeed available her:
https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance

"Typically, alongside the latest release the previous two releases are also
maintained."


>
> Regards,
> Gaurang Shastri
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000005dc66c057f8f5d11
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hello,<=
div><br></div></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Wed, Jan 16, 2019 at 9:47 AM Gaurang Shastri &lt;<a href=3D"ma=
ilto:gmshastri@gmail.com">gmshastri@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr"><div><div><div><div><div>Hi All,<br><br>=
</div>For how many years yocto community officially support any Yocto relea=
se? (This includes like bug fixes, CVE fixes, enhancements, etc etc)<br><br=
></div>For example, the latest release happened on 11/15/2018 (Yocto 2.6), =
so how long this will be supported by community?<br><br></div>Sorry, if thi=
s information is already present on some wiki page, but I am not able to fi=
nd it. So pointer to that wiki page will really help.<br></div></div></div>=
</div></div></blockquote><div><br></div><div>This information is indeed ava=
ilable her:</div><div><a href=3D"https://wiki.yoctoproject.org/wiki/Stable_=
branch_maintenance">https://wiki.yoctoproject.org/wiki/Stable_branch_mainte=
nance</a></div><div><br></div><div>&quot;Typically, alongside the latest re=
lease the previous two releases are also maintained.&quot;</div><div>=C2=A0=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv class=3D"gmail_quote"><div dir=3D"ltr"><div><div><br></div>Regards,<br><=
/div>Gaurang Shastri<br></div></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div></div></div>

--0000000000005dc66c057f8f5d11--
