Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DD2EE013DF
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 06:58:20 -0700 (PDT)
Received: by mail-wi0-f175.google.com with SMTP id ez12so3565771wid.8
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 06:58:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=vHvgjb/yLiBY4OnLs/XckUcoi6ybfXVl5pG66Dfdrmc=;
	b=byXpI19pTpfm0mPPhPjFgcIR2RFKE806U+4jpTyocvsWTFhzNHsa5+JqBkmknxB9WX
	q3DDYwbFIWxnLTauz4XScsIH2e0iWpjjn8RP9EDo8Z5R61Pe2Qsy+mPv/DuGp664O7UN
	fFjNRGkl/D8l/4lEiIuE2vA/XFXcbJju1ufm+VK/v3dt+fXf5sgLBnE7Uom00OateO20
	y+ZyqJA+CYPAOIOlkTvG0HHYhRpg1tZcQuPAq2kRhzKTtXAuVZ/Ju134F4f3+1PWHdzx
	nGZEcWHnzYb3ujd9yRYw4Ua2bYyI1h7nZDpQk8F1WkaBJcYMBuUQ5caF8crmUJu0JzeG
	o+qg==
X-Gm-Message-State: ALoCoQkBhcxMQLmaw6e20CL5aA4ncWPahm0wHhazSZz8AXiEBbjRQPp5U8RYlR5EdHEaK1FZVf2X
X-Received: by 10.180.74.164 with SMTP id u4mr5957154wiv.17.1378994300009;
	Thu, 12 Sep 2013 06:58:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.180.91.132 with HTTP; Thu, 12 Sep 2013 06:57:59 -0700 (PDT)
In-Reply-To: <CABhkJRcxDY13w5fWcSVg1Bv6cD-=h1rUTm557JqLB8U3FD=NCw@mail.gmail.com>
References: <CABhkJRdQQ2HaXCrah=544uAn6Ys=gspTdmuSOa2VHv_gJASmKA@mail.gmail.com>
	<CABhkJRcxDY13w5fWcSVg1Bv6cD-=h1rUTm557JqLB8U3FD=NCw@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 12 Sep 2013 15:57:59 +0200
Message-ID: <CAP71WjwqPUS3JTZAswd6ULWXX8CTh4_F1X_MLjJO8tAw47mOYg@mail.gmail.com>
To: Ashish Dalela <ashish.dalela@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Error while building a custom image
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
X-List-Received-Date: Thu, 12 Sep 2013 13:58:22 -0000
Content-Type: multipart/alternative; boundary=f46d043c7f566654c104e630213f

--f46d043c7f566654c104e630213f
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Sep 12, 2013 at 3:52 PM, Ashish Dalela <ashish.dalela@gmail.com>wrote:

> I tried a small change. I removed the packagegroup entry and added the
> following to meta/recipes-extended/images/core-image-basic.bb
>
> IMAGE_INSTALL += "tpmc"
>
> Now, when I do a bitbake core-image-basic, I get this error:
>
> *Error: tpmc not found in the base feeds (qemux86 i586 i486 i386 x86
> noarch any all).*
> *
> *
> Can someone please help? It's probably something quite simple but I'm not
> getting it.
>

did you add your layer to BBLAYERS in conf/bblayer.conf file?

does "bitbake tpmc" actually build your recipe?

--f46d043c7f566654c104e630213f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Sep 12, 2013 at 3:52 PM, Ashish Dalela <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:ashish.dalela@gmail.com" target=3D"_blank">ashish.dalela@gmail.=
com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>I tried a small change. I removed the p=
ackagegroup entry and added the following to meta/recipes-extended/images/<=
a href=3D"http://core-image-basic.bb" target=3D"_blank">core-image-basic.bb=
</a>=A0</div>

<div><br></div><div>
<div>IMAGE_INSTALL +=3D &quot;tpmc&quot;</div></div><div><br></div><div>Now=
, when I do a bitbake core-image-basic, I get this error:</div><div><br></d=
iv><div><div><b>Error: tpmc not found in the base feeds (qemux86 i586 i486 =
i386 x86 noarch any all).</b></div>


</div><div><b><br></b></div><div>Can someone please help? It&#39;s probably=
 something quite simple but I&#39;m not getting it.</div><div></div></block=
quote></div><br>did you add your layer to BBLAYERS in conf/bblayer.conf fil=
e?</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">does &quot;=
bitbake tpmc&quot; actually build your recipe?</div><div class=3D"gmail_ext=
ra"><br></div><div class=3D"gmail_extra"><br></div></div>

--f46d043c7f566654c104e630213f--
