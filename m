Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18F73E00655
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 15:24:24 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id k6so6214455lbo.35
	for <yocto@yoctoproject.org>; Thu, 06 Dec 2012 15:24:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=7A9C1JwkiZ30xNbpE8OCrg+CxOXVwhoA+bDobxh9J8g=;
	b=jp5w/mxkQAdKjqy2NfheUoSz6MmDhTKPN8f4d7LH5a2ta2g89ZKbHwyGq1oyk0t7Ju
	sZJh5nPZExxRKMVc9JgV9eflqOnQS83hjvR/qxfS03TM1Rgo4BERsJb6SnVcDphcsvOm
	YNNzfSwolQJK58HkAoVdLQ9Nd7q6NDFKxcVVmBcFsXG+NZQmkiR6YPDdRjmrm13DXyRm
	IcmfWle5KDW2+OIZIF5Cf0CKMnm97XKxPlkwFjPVEjkTvCyRojrpF7NcmZaXosVt1NKC
	feBlfJffNwe0Ikb+y2cmbiw3Vf9ZnEjngsp8GDDyHCvl3uNsYB5JH8qxZw0gj+Ip+YGj
	Yhzw==
Received: by 10.152.104.44 with SMTP id gb12mr3562886lab.11.1354836263862;
	Thu, 06 Dec 2012 15:24:23 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.42.162 with HTTP; Thu, 6 Dec 2012 15:24:03 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1212061812580.3304@oneiric>
References: <alpine.DEB.2.02.1212061650350.4116@oneiric>
	<CABcZAN=JuymHBYdL8kZUjcYjScfjKAJwYJibP6R=7Xkto1Gh1g@mail.gmail.com>
	<alpine.DEB.2.02.1212061731550.4523@oneiric>
	<CABcZANkhN-Nx_TfeRDnt2+96HtAwyb_Lp-fM7GBkKWs=a0Ad8A@mail.gmail.com>
	<alpine.DEB.2.02.1212061812580.3304@oneiric>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 6 Dec 2012 16:24:03 -0700
X-Google-Sender-Auth: 2vupfaVs_vqTSU_Nb9A1AxjO33w
Message-ID: <CABcZANk525GkR-T=6OLvpac4p8gwQ8hG-oEEaZU7RC+5nu2JZw@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: FILESEXTRAPATHS needs to be explained *way* better
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Dec 2012 23:24:25 -0000
Content-Type: multipart/alternative; boundary=f46d04088ef53c81f804d037668d

--f46d04088ef53c81f804d037668d
Content-Type: text/plain; charset=UTF-8

On Thu, Dec 6, 2012 at 4:16 PM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:

>   ok, that's just silly (but that could be the 9% quebec beer
> talking).  if i'm working with just one layer, then this:
>
> FILESEXTRAPATHS_prepend := "rday"
>
> works fine:
>
> FILESPATH="rday/linux-gnueabi:rday/arm:rday/build-linux:rday/pn-netbase:...
>
> if that fails with more than one layer, then that is, quite simply,
> asinine.
>

I really don't see why you're failing to grasp such a basic concept as a
colon separated variable. Do you think you can add something to PATH
without adding a colon?
-- 
Christopher Larson

--f46d04088ef53c81f804d037668d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_extra">On Thu, Dec 6, 2012 at 4:16 PM, Robert P. J. Day=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_=
blank">rpjday@crashcourse.ca</a>&gt;</span> wrote:<br><div class=3D"gmail_q=
uote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">

<div id=3D":tg">=C2=A0 ok, that&#39;s just silly (but that could be the 9% =
quebec beer<br>
talking). =C2=A0if i&#39;m working with just one layer, then this:<br>
<br>
FILESEXTRAPATHS_prepend :=3D &quot;rday&quot;<br>
<br>
works fine:<br>
<br>
FILESPATH=3D&quot;rday/linux-gnueabi:rday/arm:rday/build-linux:rday/pn-netb=
ase:...<br>
<br>
if that fails with more than one layer, then that is, quite simply,<br>
asinine.</div></blockquote></div><br>I really don&#39;t see why you&#39;re =
failing to grasp such a basic concept as a colon separated variable. Do you=
 think you can add something to PATH without adding a colon?<br>-- <br>

Christopher Larson<br>
</div>

--f46d04088ef53c81f804d037668d--
