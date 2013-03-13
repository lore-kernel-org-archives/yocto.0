Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f175.google.com (mail-vc0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAAD3E0073E
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:50:51 -0700 (PDT)
Received: by mail-vc0-f175.google.com with SMTP id p1so702057vcq.34
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:50:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=JotynKu8pPOrsW6NsV6RV/R2hgJ25vmB708daJxLarA=;
	b=O/+sn6r9F121IniBvsCle7S73/2+ushuFg8jpVACNhKe6u43pOD9Ir88AccwT+AlRr
	NWDbyzmdZMRbATXWxJen4L6+daUvXbuGJthVJnmToUMC8AV/9fdnL/KdHDYWMcKx/CcA
	Yxr1+n91sjpWszLbcvKH7+STQLOb7eP9V/8CbLTyiRgE/0WO4X72t3QnIP6or+ttkfXD
	c5pgA/ROtyMIq+naN64+pMegg6g93Skrg597zFNZF97GV0djcluenpMNux3PPomcvlDW
	dzYRClAp07AfcT9zQGdfBeYau/s7xtUXH2WYskLUfPQU59xW5R8/ncWnnRfO2kpM+SUR
	LdvQ==
X-Received: by 10.221.11.16 with SMTP id pc16mr6560951vcb.48.1363197051343;
	Wed, 13 Mar 2013 10:50:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.106.97 with HTTP; Wed, 13 Mar 2013 10:50:31 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <511A7D86.1040703@philipp-wagner.com>
References: <1359582698-24226-1-git-send-email-lists@philipp-wagner.com>
	<1359582698-24226-2-git-send-email-lists@philipp-wagner.com>
	<CAK18fxFWNxYDkoJi1jzkeMsmNpN+3QDvWcxfVJqqPb=HKumChA@mail.gmail.com>
	<511A7D86.1040703@philipp-wagner.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 13 Mar 2013 19:50:31 +0200
Message-ID: <CAK18fxHR30=v6XmhYiNoQe3Uh_C0yum31hyaUhXhajDy5KAO3A@mail.gmail.com>
To: Philipp Wagner <lists@philipp-wagner.com>
X-Gm-Message-State: ALoCoQn+M0SxtPGgvDlu8CAAmVB0Z/d/sLcRIv1iqF+pSLXfDAtTkq5VSwlO0QUPY0jFX4rLS8he
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/2] Choose correct ABI version of graphics binaries
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
X-List-Received-Date: Wed, 13 Mar 2013 17:50:52 -0000
Content-Type: multipart/alternative; boundary=bcaec54eee8001191a04d7d20ce3

--bcaec54eee8001191a04d7d20ce3
Content-Type: text/plain; charset=ISO-8859-1

I will drop this patch as we use useland now as default provider.

Thank you.


On Tue, Feb 12, 2013 at 7:36 PM, Philipp Wagner <lists@philipp-wagner.com>wrote:

> Am 09.02.2013 23:59, Andrei Gherzan wrote:
> > I like this change but I think the best way would be to switch to
> > userland. So we can compile our own libraries. I sent some patches so
> > please give them a try.
>
> I agree that switching to userland is the best solution. I'll give it a
> try in the next couple days and report back.
>
> Philipp
>



-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--bcaec54eee8001191a04d7d20ce3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I will drop this patch as we use useland now as default pr=
ovider.<div><br></div><div style>Thank you.</div></div><div class=3D"gmail_=
extra"><br><br><div class=3D"gmail_quote">On Tue, Feb 12, 2013 at 7:36 PM, =
Philipp Wagner <span dir=3D"ltr">&lt;<a href=3D"mailto:lists@philipp-wagner=
.com" target=3D"_blank">lists@philipp-wagner.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">Am 09.02.2013 23:59, Andre=
i Gherzan wrote:<br>
&gt; I like this change but I think the best way would be to switch to<br>
&gt; userland. So we can compile our own libraries. I sent some patches so<=
br>
&gt; please give them a try.<br>
<br>
</div>I agree that switching to userland is the best solution. I&#39;ll giv=
e it a<br>
try in the next couple days and report back.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Philipp<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"tex=
t-align:center"><div align=3D"left" style=3D"font-family:&#39;Times New Rom=
an&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div>

--bcaec54eee8001191a04d7d20ce3--
