Return-Path: <pauroy2@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1AC3E00B05; Mon, 15 May 2017 09:48:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pauroy2[at]gmail.com)
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
	*      [74.125.83.44 listed in list.dnswl.org]
Received: from mail-pg0-f44.google.com (mail-pg0-f44.google.com [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FE6FE00AF0
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 09:48:49 -0700 (PDT)
Received: by mail-pg0-f44.google.com with SMTP id u28so62858388pgn.1
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 09:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=3GRjvEKSxUZTEwuPqGIW4XDfDJmmVPFea7Ksx1M+G0Y=;
	b=iTFhzG1uZoIOG262QhSXVvFSyFYgNEqtvUKzBbL8ZzDzYJIrd4JTSa4jKfYBVN9m3b
	MgnVuti59hHT7OT/ePwcVXOKol8PF6rPKjr3zQFF4uUmZO9o5GBZD53NpXAjx06KwbNH
	6NRKP2hCJRLvM23P7gtx9l2flLL6WsZ22g5JvVrrnWErg+8o89h7r3tupX01C0MJOvdo
	c+QqcQnkiW6mMwbf8ALH2vWnOsVg/+aGFuFO7er0m27RMsHViW+zL1/Bjui1Acfvu33O
	ntYIyQsciRRDTnsVjW997h+ptIYgRNUA8/ZLCYyqDJn/re1bZMDzMHTbb902CpPMQ/G3
	Fntw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=3GRjvEKSxUZTEwuPqGIW4XDfDJmmVPFea7Ksx1M+G0Y=;
	b=bx6LRGKl08o0bI74YKUoIkk2T2LkPwZp4kc1PqdGj6V2yeNkjdYhTEtsTUe2D03BFo
	1T6DRkpFDkQxQOfk7se2lRb8M9ptNhm2SEhFH1ExCPo9s1Q3sohzRRm9FAK+f1IVNyD7
	CHF5FPEMEbGsJDtyY3idz2PXyoKsWdZNJdwlatzM/BXAo67Ck9vlUsardE03cKxPemkh
	kUpad0aAGO+f5zKROTM6FCF7NlfibJVzUzxlAr7V5lYTwzuArFQ5UusoZSn9KmJlIu4M
	c8u9KXnm/J0HeqXIhAtMncFXNv/wAlOKWOUyDgUK19BY40J75mTWqB4+CJue4S4miNZ/
	j3NA==
X-Gm-Message-State: AODbwcCLLhdlAVpkpTqvOvjE2suYDwlFK5+QWyKu2Qr/BG4F346+a35p
	hkYuXQutQf4npfcPkueDQ7o7tNvSWN6cu+A=
X-Received: by 10.99.168.1 with SMTP id o1mr7125729pgf.105.1494866929267; Mon,
	15 May 2017 09:48:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.137.129 with HTTP; Mon, 15 May 2017 09:48:47 -0700 (PDT)
In-Reply-To: <CAFVox_5RZbWEDjtgsQ7rjYvquf3qujcGOnqOBUQv54c5Bf1zzw@mail.gmail.com>
References: <CAFVox_7=0RXos320Lzr_8vpdJkTpp2UfHrvTf64qYM51S1VZGQ@mail.gmail.com>
	<628cb835f0dfe54ac11a1ceb35245ef0@herrie.org>
	<CAFVox_5RZbWEDjtgsQ7rjYvquf3qujcGOnqOBUQv54c5Bf1zzw@mail.gmail.com>
From: Paul Roy <pauroy2@gmail.com>
Date: Mon, 15 May 2017 18:48:47 +0200
Message-ID: <CAFVox_4seqD3GqCL+akuMh+jfAQ+S2A1N6ROOU4ReTrsX_Xkng@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: kernel/ libc compatibility problems
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
X-List-Received-Date: Mon, 15 May 2017 16:48:53 -0000
Content-Type: multipart/alternative; boundary="94eb2c1be9a44e486f054f92d40d"

--94eb2c1be9a44e486f054f92d40d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Some more info...Tryed with:

GLIBC_EXTRA_OECONF =3D "--with-tls --with-cpu=3Dgeode --enable-kernel=3D2.6=
.32"

and still the same result. Maybe --enable-kernel=3D2.6.32 must be applied i=
n
global TUNE_CCARGS for this machine?

2017-05-15 13:44 GMT+02:00 Paul Roy <pauroy2@gmail.com>:

> Thanks Herman
>
> I=C2=B4m using kernel 3.10 and glibc 2.17. For this last one, i don=C2=B4=
t see same
> restrictions as in the page you sent.
> I=C2=B4m confused about where in Yocto, is the key to this ...because usi=
ng
> same library/kernel combination works for x86_64.
>
> Regards
> Paul
>

--94eb2c1be9a44e486f054f92d40d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Some more info...Tryed with: <br><br>GLIBC_EXTRA_OECO=
NF =3D &quot;--with-tls --with-cpu=3Dgeode  --enable-kernel=3D2.6.32&quot; =
<br><br></div>and still the same result. Maybe --enable-kernel=3D2.6.32 mus=
t be applied in global TUNE_CCARGS for this machine?<br></div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">2017-05-15 13:44 GMT+02:00 Pau=
l Roy <span dir=3D"ltr">&lt;<a href=3D"mailto:pauroy2@gmail.com" target=3D"=
_blank">pauroy2@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><div dir=3D"ltr"><div><div><div><div>Thanks Herman<br><br></div>I=C2=B4m u=
sing kernel 3.10 and glibc 2.17. For this last one, i don=C2=B4t see same r=
estrictions as in the page you sent.<br></div>I=C2=B4m confused about where=
 in Yocto, is the key to this ...because using same library/kernel combinat=
ion works for x86_64.<br><br></div>Regards<span class=3D"HOEnZb"><font colo=
r=3D"#888888"><br></font></span></div><span class=3D"HOEnZb"><font color=3D=
"#888888">Paul <br></font></span></div>
</blockquote></div><br></div>

--94eb2c1be9a44e486f054f92d40d--
