Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 633D1E009CA; Sat, 20 Oct 2018 16:18:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
	[209.85.222.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB601E008DB
	for <yocto@yoctoproject.org>; Sat, 20 Oct 2018 16:18:13 -0700 (PDT)
Received: by mail-ua1-f46.google.com with SMTP id c89so8702162uac.10
	for <yocto@yoctoproject.org>; Sat, 20 Oct 2018 16:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=+X+eL2JicVd5wJJnV8WkhVKi6jZY4xSFgZPJVkBArAo=;
	b=u/TluMwR8mZ1ZZr16GmKDP5lWx4ArFsMXYm9ZrI22LRJC2Z6SGNJdk8rivxHsSkjCk
	vEG8aBS/VdKhpZrDjGmifIilaSLHeWyd3AmPs3V4OSBMhBwRcxOWBq7bWX5pKz0W5hmG
	/Flf+paKdRiA4mLd5vCnmSrTrwzWKpAT+sGMdlJFRZ/oeYQgImVylpv3jcBoxB0T/sAS
	uCXWiCVvi5ktghIMTFyNMpfjeXw8ElvX6XMi4s12JFqytSjcAnKfwqk7a5V+RfjJ23nj
	TdwSB3QHltkTiARCdHaNgZ+XvB+A0noUOw2pi8IzC25Y2UVH1JDziJZFXC/An1b3Nen0
	1icg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=+X+eL2JicVd5wJJnV8WkhVKi6jZY4xSFgZPJVkBArAo=;
	b=en6IMA1Be8iX7tjdsz6y+ydzutTM6AdRw6M2C8CWeidkBt1MjIlJSj2vVj2hTpjaN9
	XYlYiZtGeFh0ixYzWdnKdVDjYCXjTidxLujYP0qDv+XcZyvbACu+XiHirx1dNhaKJwmh
	5v83k6cfV/ILCQLzup6BqlHlGSABtBaEVcdbvm+xSjjnQf86NgoRg7N0k+Ey66z/NqeE
	BkSaNzYibN0TKrWt3vuv8xcNrIWUUkm/dH33hjl6+Vn4zGsuhEzsRdHb0baTrl7VO3PU
	k8QJe44aIw2fzLfbHDqZU71edqE29Iav8JC+9Ru/f7qEn0vrjv7slKlPttuVs2toyYbQ
	iM4g==
X-Gm-Message-State: ABuFfogcDqd+1kTp3oRrGVB6GqC1V/ne8ImgWC7mcNOuAmVVIr3HNf+1
	ez/R0kdqlN5olCkkNDYh216EELcFuvetVN/a+20=
X-Google-Smtp-Source: ACcGV61CLhhpXCR9aUQYTL1Iu1GNQMUDqopUiKuajjBcA8LsOUVJgA2Yx/fOnanqTHSR+tRpNmZi7Wsys62UXCvSoeI=
X-Received: by 2002:ab0:740d:: with SMTP id r13mr16680059uap.126.1540077492526;
	Sat, 20 Oct 2018 16:18:12 -0700 (PDT)
MIME-Version: 1.0
References: <ead8ad97-856d-03bb-4444-dc6e4a472d61@kernel.org>
	<20181017232705.HQN68.75473.root@cdptpa-web09>
	<CAKRytNw_TCeqAfN9TG2y6L6WAO+FNZkzE2S7DWyBM9OzWZQ18Q@mail.gmail.com>
	<004d01d466e9$3c7daf70$b5790e50$@san.rr.com>
	<0cba098f-4179-ec8a-73a5-bb2815806e59@kernel.org>
	<9dd76a25-1560-5bca-64d3-e6dd57a44ccc@windriver.com>
	<20181018190803.GB25172@mentor.com>
	<da77004b-e0df-82c1-7f87-9ccba1a33ea3@kernel.org>
	<CAKRytNw3JGUrWcm66P1PrEDAsNCUro7st+m2b-4xmxSuL1LWkQ@mail.gmail.com>
In-Reply-To: <CAKRytNw3JGUrWcm66P1PrEDAsNCUro7st+m2b-4xmxSuL1LWkQ@mail.gmail.com>
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Sun, 21 Oct 2018 01:18:01 +0200
Message-ID: <CAKRytNwgfUv_7OLFK5HDCH6_DmZAxdN-MiR47+dpPhEMLNfOng@mail.gmail.com>
To: Sinan Kaya <okaya@kernel.org>
Cc: yocto@yoctoproject.org
Subject: Re: [selinux] sumo compilation
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
X-List-Received-Date: Sat, 20 Oct 2018 23:18:14 -0000
Content-Type: multipart/alternative; boundary="000000000000de65aa0578b13b88"

--000000000000de65aa0578b13b88
Content-Type: text/plain; charset="UTF-8"

I reverted the commit as described and finally I'm able to build.

However, after using -minimal version and booting with selinux=1 and
enforcing=0, when I run this command: "fixfiles -f -F relabel" I get this
error:

Cleaning out /tmp
fixfiles: No suitable file systems found
Cleaning up labels on /tmp
secon: SELinux is not enabled
cat: /initial_contexts/unlabeled: No such file or directory

I don't understand why it's happening.

I'm trying on the official iMX6 evaluation kit by NXP.

Il giorno gio 18 ott 2018 alle ore 23:13 Stefano Cappa <
stefano.cappa.ks89@gmail.com> ha scritto:

> Thank you
>
> Il gio 18 ott 2018, 22:48 Sinan Kaya <okaya@kernel.org> ha scritto:
>
>> On 10/18/2018 3:08 PM, Joe MacDonald wrote:
>> >> Sorry, I thought it had been created.  I'm going to be traveling the
>> >> next few days to ELC-E, but I will try to get to it if someone else
>> >> does not first.
>> > Yeah, Mark and I are both going to be at ELC-E this week, we'll get it
>> > sorted out.
>>
>> thanks.
>>
>

--000000000000de65aa0578b13b88
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I reverted the commit as described and finally I&#39;m abl=
e to build.<div><br></div><div>However, after using -minimal version and bo=
oting with selinux=3D1 and enforcing=3D0, when I run this command: &quot;fi=
xfiles -f -F relabel&quot; I get this error:</div><div><br><div><div>Cleani=
ng out /tmp</div><div>fixfiles: No suitable file systems found</div><div>Cl=
eaning up labels on /tmp</div><div>secon: SELinux is not enabled</div><div>=
cat: /initial_contexts/unlabeled: No such file or directory</div></div></di=
v><div><br></div><div>I don&#39;t understand why it&#39;s happening.</div><=
div><br></div><div>I&#39;m trying on the official iMX6 evaluation kit by NX=
P.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">Il giorno gio=
 18 ott 2018 alle ore 23:13 Stefano Cappa &lt;<a href=3D"mailto:stefano.cap=
pa.ks89@gmail.com">stefano.cappa.ks89@gmail.com</a>&gt; ha scritto:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">Thank you<br><br><div class=3D"gmail_quote=
"><div dir=3D"ltr">Il gio 18 ott 2018, 22:48 Sinan Kaya &lt;<a href=3D"mail=
to:okaya@kernel.org" target=3D"_blank">okaya@kernel.org</a>&gt; ha scritto:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">On 10/18/2018 3:08 PM, Joe MacDona=
ld wrote:<br>
&gt;&gt; Sorry, I thought it had been created.=C2=A0 I&#39;m going to be tr=
aveling the<br>
&gt;&gt; next few days to ELC-E, but I will try to get to it if someone els=
e<br>
&gt;&gt; does not first.<br>
&gt; Yeah, Mark and I are both going to be at ELC-E this week, we&#39;ll ge=
t it<br>
&gt; sorted out.<br>
<br>
thanks.<br>
</blockquote></div>
</blockquote></div>

--000000000000de65aa0578b13b88--
