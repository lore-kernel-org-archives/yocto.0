Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71C01E00E69; Thu, 14 Apr 2016 10:43:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D32E0E00D7D
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 10:43:04 -0700 (PDT)
Received: by mail-ig0-f182.google.com with SMTP id kb1so3632792igb.0
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 10:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=ELjxePXaGWzlpHSqPK46aerJ5DmBTeK9vCLN+7fpg1M=;
	b=D3n3Zus6NqmiBs+X9f3R0boH+FZVw7BjHAVTFjeD4Q8WvjrJLOgYYc8JlUifqCnzJN
	9XMJc4c2Zc5rdwbEYk80GmRr10GPTmoHN9tc7hbna2tk/tCoMNHSWzmASWfqurcRHG5Q
	eaTmWUX5EWGxPpwNMl9r3GT2Zkr3tdJyCEjGztDCctwU6JYz0d0rMdBkFbJeu4+dTqTF
	nj+kbNnhJC6AX8dzQB5XkFnzuZOvHdFgKpEnKop0vzv3o/qS5Tq2HIZLxUIhb5BPiTKH
	HR2BHZdxzxvq3dkpIJh6sIPJ4AzuUpU/mt2PMO4T6nmrt31GucxO2KRzWkYyoXW1VubW
	u/iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=ELjxePXaGWzlpHSqPK46aerJ5DmBTeK9vCLN+7fpg1M=;
	b=dUZd/Ua5Ch/xVfmZl11PPOBKBAtOnQGgW/QxT6V75bH43piZp1tCLCWxpzvad3rqBG
	wFw7yaw9bJTCJBbuEHeaYzDeSC34h+6HzkdZMgY20gMm2TCdEcczn0hYMK7uH2XfLSem
	JMxS6VyRSVYvWr5UZHr+UjMKR5aDwZejofNAXZIND5Bi/AhOaQg55llJQ/dlwwBOUYXl
	BXy5r5eMvAzzLWYQHPJJQIg91MjrT9Y6CIlUF3oz/0JT+qEBo4soACVosegmubgbHKp2
	g3G26voR5bnfbvqNmnlet8HRBZlqnSL2bYbnJgS9HiTj8ODVNrqWiVdjmJt72T63ZOZ0
	yRdQ==
X-Gm-Message-State: AOPr4FWi0SSz5h/Ta1Rj/HuqCb54RQ4B1w4M4Hl1Fau1YBQe36ix96ITXSzv2NqKgKEPlB09floqGItfnJJq1w==
X-Received: by 10.50.221.169 with SMTP id qf9mr18321763igc.13.1460655784221;
	Thu, 14 Apr 2016 10:43:04 -0700 (PDT)
MIME-Version: 1.0
References: <009201d19673$710b33a0$53219ae0$@softtools.com>
In-Reply-To: <009201d19673$710b33a0$53219ae0$@softtools.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Thu, 14 Apr 2016 17:42:54 +0000
Message-ID: <CABcZANkVC3qdywVZedFTNzgADnUB24SEJBKSdNHV85SGRH2jjA@mail.gmail.com>
To: Sid Price <sidprice@softtools.com>, yocto@yoctoproject.org
Subject: Re: environment setup script
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
X-List-Received-Date: Thu, 14 Apr 2016 17:43:06 -0000
Content-Type: multipart/alternative; boundary=f46d042ac020286f600530756dca

--f46d042ac020286f600530756dca
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 14, 2016 at 10:39 AM Sid Price <sidprice@softtools.com> wrote:

> Hello, I am new to Yocto and relatively new to Linux. I am working my way
> through the =E2=80=9CGetting Started=E2=80=9D guide and I have met a prob=
lem. I am trying
> to run the =E2=80=9Cenvironment-setup =E2=80=A6=E2=80=9D script for the a=
rm platform. First I
> notice that when I list the folder /opt/poky/2.0.1 I see the scripts but
> they are not shown as executable. Is this correct? When I try the followi=
ng
> command I am told =E2=80=9CPermission denied=E2=80=9D:
>
>
>
> /opt/poky/2.0.1/environment-setup-armv5e-poky-linux-gnueabi
>
>
>
> If I use sudo I see =E2=80=9Ccommand not found=E2=80=9D
>

The setup script has to be *sourced* into your shell, not run. The
instructions most likely included a leading '.' but you missed it. Either
type '. /opt/poky/2.0.1/environment-setup-armv5e-poky-linux-gnueabi' or
'source /opt/poky/2.0.1/environment-setup-armv5e-poky-linux-gnueabi' in
your shell.

--f46d042ac020286f600530756dca
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu=
, Apr 14, 2016 at 10:39 AM Sid Price &lt;<a href=3D"mailto:sidprice@softtoo=
ls.com">sidprice@softtools.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72"><div><p c=
lass=3D"MsoNormal">Hello, I am new to Yocto and relatively new to Linux. I =
am working my way through the =E2=80=9CGetting Started=E2=80=9D guide and I=
 have met a problem. I am trying to run the =E2=80=9Cenvironment-setup =E2=
=80=A6=E2=80=9D script for the arm platform. First I notice that when I lis=
t the folder /opt/poky/2.0.1 I see the scripts but they are not shown as ex=
ecutable. Is this correct? When I try the following command I am told =E2=
=80=9CPermission denied=E2=80=9D:<u></u><u></u></p><p class=3D"MsoNormal"><=
u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">/opt/poky/2.0.1/environment-s=
etup-armv5e-poky-linux-gnueabi<u></u><u></u></p><p class=3D"MsoNormal"><u><=
/u>=C2=A0<u></u></p><p class=3D"MsoNormal">If I use sudo I see =E2=80=9Ccom=
mand not found=E2=80=9D</p></div></div></blockquote><div><br></div><div>The=
 setup script has to be *sourced* into your shell, not run. The instruction=
s most likely included a leading &#39;.&#39; but you missed it. Either type=
 &#39;. <span style=3D"line-height:1.5">/opt/poky/2.0.1/environment-</span>=
<span style=3D"line-height:1.5">setup-armv5e-poky-linux-</span><span style=
=3D"line-height:1.5">gnueabi&#39; or &#39;source=C2=A0</span><span style=3D=
"line-height:1.5">/opt/poky/2.0.1/environment-</span><span style=3D"line-he=
ight:1.5">setup-armv5e-poky-linux-</span><span style=3D"line-height:1.5">gn=
ueabi&#39; in your shell.</span></div></div></div>

--f46d042ac020286f600530756dca--
