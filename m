Return-Path: <jfabernathy@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BDDEE0138C
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 14:15:13 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gyh3 with SMTP id 3so7096034gyh.35
	for <yocto@yoctoproject.org>; Mon, 07 Nov 2011 14:15:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=si4wJHz/io6Uex/qUTKWjb6EwsmwGJ7vm4IydgjiuYA=;
	b=r8Xtwb+DAfbZDY176R7ZhurINYginrODq88ne4QQMxQbWnQttISBs73jnWE3FwFRnM
	7kfUDv0u5d5a6AXPpsuWCP2DdZJ+fUme1omJrF2hh6AslRzb/d48s1if9y/4SRrFLGwE
	dmgqnVJS2TwarFutCQdAp5WDmmV4hAfasKtHY=
MIME-Version: 1.0
Received: by 10.236.155.74 with SMTP id i50mr38344769yhk.23.1320704112460;
	Mon, 07 Nov 2011 14:15:12 -0800 (PST)
Received: by 10.236.109.134 with HTTP; Mon, 7 Nov 2011 14:15:12 -0800 (PST)
In-Reply-To: <4EB85604.50109@mlbassoc.com>
References: <CANFv2Ene=ZfVOzs76fsW7XNRm7K_0DNDB=q90AHV5Zs3KxcjNw@mail.gmail.com>
	<4EB85604.50109@mlbassoc.com>
Date: Mon, 7 Nov 2011 17:15:12 -0500
Message-ID: <CANFv2EmUKNvvYppCoU71du5mU0dG7hXwAc-jbzSDQrBGF2oq1g@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: use case howto?
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
X-List-Received-Date: Mon, 07 Nov 2011 22:15:13 -0000
Content-Type: multipart/alternative; boundary=20cf303b42397a051204b12c639f

--20cf303b42397a051204b12c639f
Content-Type: text/plain; charset=ISO-8859-1

I thought the idea was to build a recipe for your device that could create
the software complete with all the pieces. Certainly, having a list of
packages that you need to install via zypper is fine, but I thought that
not the concept behind Yocto???

Sorry for the dumb questions.

Jim A

On Mon, Nov 7, 2011 at 5:04 PM, Gary Thomas <gary@mlbassoc.com> wrote:

>  On 2011-11-07 14:59, James Abernathy wrote:
>
>> I approach embedded Linux from a path of taking a Distro like Ubuntu or
>> Fedora and chopping it down to a working set of code that forms the final
>> solution.  Obviously, not the same
>> methology as Yocto.  With some success with the current methods, it's
>> difficult to see the advantages of Yocto.  I'm reading what I can find to
>> get smarting on Yocto, but like most
>> new concepts, you try to compare what you used to do with how to do it
>> with the new concept.
>> For example, if I use a distro, I can install packages really simply with
>> yum or apt-get; update them the same way. If I start with a Yocto meta-???
>> that's closest to my hardware
>> solution, and get it working at a base level, how do I add things, like
>> browsers, or other application?
>>
>
> Using very similar tools - zypper is just like yum, or if
> you choose to use ipk packages, opkg
>
> --
> ------------------------------**------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------**------------------------------
>

--20cf303b42397a051204b12c639f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>I thought the idea was to build a recipe for your device that could cr=
eate the software complete with all the pieces. Certainly, having a list of=
 packages that you need to install via zypper is fine, but I thought that n=
ot the concept behind Yocto???</div>

<div>=A0</div>
<div>Sorry for the dumb questions.</div>
<div>=A0</div>
<div>Jim A<br><br></div>
<div class=3D"gmail_quote">On Mon, Nov 7, 2011 at 5:04 PM, Gary Thomas <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a=
>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT: #ccc 1px solid; MARGIN: 0px 0px 0px 0.8ex=
; PADDING-LEFT: 1ex" class=3D"gmail_quote">
<div class=3D"HOEnZb">
<div class=3D"h5">On 2011-11-07 14:59, James Abernathy wrote:<br>
<blockquote style=3D"BORDER-LEFT: #ccc 1px solid; MARGIN: 0px 0px 0px 0.8ex=
; PADDING-LEFT: 1ex" class=3D"gmail_quote">I approach embedded Linux from a=
 path of taking a Distro like Ubuntu or Fedora and chopping it down to a wo=
rking set of code that forms the final solution. =A0Obviously, not the same=
<br>
methology as Yocto. =A0With some success with the current methods, it&#39;s=
 difficult to see the advantages of Yocto. =A0I&#39;m reading what I can fi=
nd to get smarting on Yocto, but like most<br>new concepts, you try to comp=
are what you used to do with how to do it with the new concept.<br>
For example, if I use a distro, I can install packages really simply with y=
um or apt-get; update them the same way. If I start with a Yocto meta-??? t=
hat&#39;s closest to my hardware<br>solution, and get it working at a base =
level, how do I add things, like browsers, or other application?<br>
</blockquote><br></div></div>Using very similar tools - zypper is just like=
 yum, or if<br>you choose to use ipk packages, opkg<span class=3D"HOEnZb"><=
font color=3D"#888888"><br><br>-- <br>------------------------------<u></u>=
------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>MLB =
Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>----------=
--------------------<u></u>------------------------------<br></font></span>=
</blockquote></div><br>

--20cf303b42397a051204b12c639f--
