Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00BFAE00E36; Mon, 29 Jan 2018 04:32:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0401DE0084D
	for <yocto@yoctoproject.org>; Mon, 29 Jan 2018 04:32:26 -0800 (PST)
Received: by mail-io0-f178.google.com with SMTP id b198so7439036iof.6
	for <yocto@yoctoproject.org>; Mon, 29 Jan 2018 04:32:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=x19dYJD8FD45H3qwcLao9HVhDhwRGFx23Ud5oCowpl0=;
	b=ACk6o0t2z/g6yKk7djJFwOPcpDpnBl0mjBHRTy9r1L9y9fhepeiSP1NgButpqyleHB
	BgGfXxZ6buX3yPljTeURCFNpGAre0vAOIH6YsYWWpOplkuSO8zCb24KBaiqPqd7TDxrW
	I2XTvtTWQfNG1hywjCow2GuWHcPI1N+ZF3NdeA6kFDFExUS0gDqQ/5d23cJhB2QaDgmn
	7xYpwS0+WaO+9E4oxUMfJvyZglNG20YSBIcE9ARI+CTwVJWwq3BErCnNz5n/YQBFkZIP
	JlBKtw1BBfSPUtRFsEdd3K3thS4CzqX2E3/pLua+BA8U8naXnviIqQeq69MD1Dl189Gg
	Ftig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=x19dYJD8FD45H3qwcLao9HVhDhwRGFx23Ud5oCowpl0=;
	b=n7/kf+ty+PRSNlHbS8oLvuJp6XZVCa79MFNUiQwvDqpMSIQokt/4xu0YlpmcaZMbn/
	lVBejjjZp3EPn2JVCDKYuWa3/UXOyKi/c7yAmKoaGLpbcOUm9BKJ8ZMruFyFPguUO1kc
	K1GJul+jQu5fjr/elgdMd/jT1grWsjxA/StDXEatx1fj6B532bhyRePcI1wTAvW3+LRb
	rQJY2OzHErJJWR71E3zr1S6hEJZNr4WxtHfpUqLR7nkY7aorGk+bwA2iKtJIwy9ZEfNa
	R+l8SgdS8Qa2EnVOirfNkqn3D4CfxpTv6UNhgkTXYZWRR4aRspW5Nwa0ui90FKST/m5v
	l2Sg==
X-Gm-Message-State: AKwxytcE+3Z/0ryy8yHe0ecGzYY4mvPWrePxrB87zvvVZM3MPSABkec1
	Iz1Cef1pKUyKIY827vA4XVTW2M4AqIJWNl1739dbiw==
X-Google-Smtp-Source: AH8x225srYkrjqeQOszTnUHKTOTyIKkoav0pLlNH3Jkgy12qtsGY63zKJOOk2ccMSNtqmVrhuhFAYu99fgrFGknRy+8=
X-Received: by 10.107.133.75 with SMTP id h72mr25190582iod.227.1517229146116; 
	Mon, 29 Jan 2018 04:32:26 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.17.206 with HTTP; Mon, 29 Jan 2018 04:32:05 -0800 (PST)
In-Reply-To: <CAGAf8LyPoW5XORJ=uCBOVT8S2zWvQW6wkzU7yctKwR26We=aGA@mail.gmail.com>
References: <45db0f72-d93f-ebbd-83aa-80ceaeabc083@gmail.com>
	<CAGAf8LyPoW5XORJ=uCBOVT8S2zWvQW6wkzU7yctKwR26We=aGA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 29 Jan 2018 12:32:05 +0000
Message-ID: <CAJTo0LZqeXy9FPJwi19T6f9haWKHj3nVS6dRnfhMje1KAaD5-g@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>,
	openembedded-devel <openembedded-devel@lists.openembedded.org>
Subject: Re: [RFT] Glibc 2.27
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
X-List-Received-Date: Mon, 29 Jan 2018 12:32:28 -0000
Content-Type: multipart/alternative; boundary="001a113ec5e44c2f740563e97019"

--001a113ec5e44c2f740563e97019
Content-Type: text/plain; charset="UTF-8"

On 29 January 2018 at 07:45, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> This one will be tough to integrate. Most of the packages depend on
> this one, which is critical one. On the very bottom. I would say, this
> is a big step, since here somewhere you should draw clear line. And
> this line will be the following: which releases you/YOCTO crew will
> support (back-port to) with Glibc 2.27, and which not?!
>

This one will be easy to integrate: it goes into master and none of the
stable releases.  Stable releases only get upgrades after release is very
limited situations.

Ross

--001a113ec5e44c2f740563e97019
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 29 January 2018 at 07:45, Zoran Stojsavljevic <span dir=
=3D"ltr">&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_bl=
ank">zoran.stojsavljevic@gmail.com</a>&gt;</span> wrote:<br><div class=3D"g=
mail_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This =
one will be tough to integrate. Most of the packages depend on<br>
this one, which is critical one. On the very bottom. I would say, this<br>
is a big step, since here somewhere you should draw clear line. And<br>
this line will be the following: which releases you/YOCTO crew will<br>
support (back-port to) with Glibc 2.27, and which not?!<br></blockquote><di=
v><br></div><div>This one will be easy to integrate: it goes into master an=
d none of the stable releases.=C2=A0 Stable releases only get upgrades afte=
r release is very limited situations.</div><div><br></div><div>Ross=C2=A0</=
div></div></div></div>

--001a113ec5e44c2f740563e97019--
