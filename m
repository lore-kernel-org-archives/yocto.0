Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3BE7E00985; Mon,  5 Jan 2015 04:34:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 435E2E0090F
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 04:34:38 -0800 (PST)
Received: by mail-qc0-f178.google.com with SMTP id b13so17041028qcw.37
	for <yocto@yoctoproject.org>; Mon, 05 Jan 2015 04:34:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=82MGR1D9E2wWxK+4d49hRoyiekeCMMG96i9KlwFs5yA=;
	b=AYoPI6Emc4FjmrZ6IwqFIvVn1+cnFSKcLj4dfIRMLZI9njQEgZ9HMIK08u4vtrh6T5
	FjL3mHMlY8A7RvqgKFFivxtBFspplUutG6pByJ2CXQwfT1n1rnAXV8DxFCXRxqnCo7eb
	iDINQC6rRpR8pJ0v8bCmrl22ekNuMj5SJhjXsKikstmJzAX/HuzGniYUrbCOfZ8s7h1p
	lGB4fsqGS41nXbYRapNYV7yTWXfyTP3HiRfLTvIiFFYLtuY5A0AhMnoXlnksQryN5prO
	5jOntyqI9lghZoC3OkYnECYv0UIowLgjU8s/3Rwp+e2M5/5iKxmuLvJzwT4T0UvI92ZG
	lf/g==
X-Gm-Message-State: ALoCoQmHnesWaq0s0H9SJYbO7lqiZCxtrfYNTAVVjdbh4flnQjA3XoZTzXuv7h/b8A0trHl/4N41
X-Received: by 10.229.48.132 with SMTP id r4mr83951622qcf.5.1420461277971;
	Mon, 05 Jan 2015 04:34:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Mon, 5 Jan 2015 04:34:17 -0800 (PST)
In-Reply-To: <7B6FE55CD594D7478CED8A39DF3BFC0A5E7070FE@ut40svcwem002.atk.com>
References: <7B6FE55CD594D7478CED8A39DF3BFC0A5E7070FE@ut40svcwem002.atk.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 5 Jan 2015 12:34:17 +0000
Message-ID: <CAJTo0LYEsy9VqMHb7xT2GxPAwxNe-jFF2UYwXGFaYRkECE1sEQ@mail.gmail.com>
To: "Moore, Thomas (FtWorth)" <Thomas.Moore2@atk.com>
Cc: =?UTF-8?B?WW9jdG8gUHJvamVjdCDigI5beW9jdG9AeW9jdG9wcm9qZWN0Lm9yZ13igI4=?=
	<yocto@yoctoproject.org>
Subject: Re: Selective append
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
X-List-Received-Date: Mon, 05 Jan 2015 12:34:58 -0000
Content-Type: multipart/alternative; boundary=001a1134050ce42227050be6e95a

--001a1134050ce42227050be6e95a
Content-Type: text/plain; charset=UTF-8

On 2 January 2015 at 21:37, Moore, Thomas (FtWorth) <Thomas.Moore2@atk.com>
wrote:

> My question is this: is there a way to only apply the kernel patch when
> the out-of-tree kernel module recipe is included in an image?
>

No.  One solution would be to configure the driver as a module in the
kernel and putting it in a separate package so your image recipe or machine
configuration can pull in the right driver.

Ross

--001a1134050ce42227050be6e95a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 January 2015 at 21:37, Moore, Thomas (FtWorth) <span dir=3D"ltr">&lt;<=
a href=3D"mailto:Thomas.Moore2@atk.com" target=3D"_blank">Thomas.Moore2@atk=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>My questi=
on is this: is there a way to only apply the kernel patch when the out-of-t=
ree kernel module recipe is included in an image?</div></blockquote><div><b=
r></div><div>No.=C2=A0 One solution would be to configure the driver as a m=
odule in the kernel and putting it in a separate package so your image reci=
pe or machine configuration can pull in the right driver.</div><div><br></d=
iv><div>Ross</div></div></div></div>

--001a1134050ce42227050be6e95a--
