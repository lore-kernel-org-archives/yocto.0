Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEBF4E00CFA; Fri, 13 May 2016 07:27:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A1CBE00CEA
	for <yocto@yoctoproject.org>; Fri, 13 May 2016 07:27:37 -0700 (PDT)
Received: by mail-io0-f172.google.com with SMTP id f89so134340240ioi.0
	for <yocto@yoctoproject.org>; Fri, 13 May 2016 07:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5cJNwIYHf3VBmY20KOOWW2ZSMpLRTHHyXP+vgBOLw14=;
	b=zhSgtpkJb35QmEptgedrex11MI0438A8L/MWGPXjqPqJON9fYMk0tY/lrAl3mrkuhK
	E+u8a/NHaqA9EP3sfoCwRcJ9yrEh0RV0TKrZxTZ/pH/HCgsTynyTmJd8a4YAyec+UL0R
	Xq5hlj2c9pgnUEKWSGFgtXn0q0I8mZXJgjolrSAQBKkZ0USHNYTTHN3KYHFprxcOpMQR
	UDhtLmoc84Ht0x6hkXauQ2KS8kJnHsBdykHflokJxVIvFCUxnqQC0XpDmCpVXW0rcqce
	7sBelC2fGaHHMx52DXClFyAD9thEP1MwrbmtatYG8xvnZYo3cCzmESh0fWegmdEW8UrQ
	eG1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5cJNwIYHf3VBmY20KOOWW2ZSMpLRTHHyXP+vgBOLw14=;
	b=UgQqgJ+GwTHfaQBH5KBO+bDZEYFrxfhgkSQTgkVm7MFPdNDzkiV6ewsnCy4LED9I5r
	Ww4mcJg9+u5r5SCztwPBUZe7WTSRJwGr+B/JlxOF3fm0vZmlDMMfBDefe1Ascih/DgLP
	8WHbkBvtNhN8EU8m0Kfvvtux0/70zBcwwts8C73LVCkY4zmMwa4gMJZfEedEr76OGe+J
	SdSAwV9wwzJ6BrdtczxMz4gylMFH935dkCXfcOnxq4hxQ3oH+ZkE3tTo0/az+RzXYUlQ
	TuRGyEYYkC3gCWsvA/kxm5nvoPvva6T0AMvZDu9YnLnIZUyNcr2eqSoQkFtGS5YVAHte
	axOQ==
X-Gm-Message-State: AOPr4FUa2p3cUetH/PF6wRFP/yuAhcU8SievrYZJaleaSKkrcJ0NvcoVRIbMR9Um/MwvsuXz/2hqRP21+erM5ZaY
X-Received: by 10.36.57.211 with SMTP id l202mr2120106ita.22.1463149656435;
	Fri, 13 May 2016 07:27:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Fri, 13 May 2016 07:27:17 -0700 (PDT)
In-Reply-To: <OFC36EA607.02D6E8DD-ONC1257FB2.004DE08A-C1257FB2.004EE4C4@esa-grimma.de>
References: <OFC36EA607.02D6E8DD-ONC1257FB2.004DE08A-C1257FB2.004EE4C4@esa-grimma.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 13 May 2016 15:27:17 +0100
Message-ID: <CAJTo0LZQbXuRXehsZMJL8nNZP=YxG+OjmZMMMr4eyWTn_GPXKg@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: autotools error when building libdbus-c++; autoreconf "possibly undefined macro: AC_DEFINE"
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
X-List-Received-Date: Fri, 13 May 2016 14:27:40 -0000
Content-Type: multipart/alternative; boundary=001a114ab3ca86fdb60532ba13f6

--001a114ab3ca86fdb60532ba13f6
Content-Type: text/plain; charset=UTF-8

On 13 May 2016 at 15:21, <S.Jaritz@esa-grimma.de> wrote:

> I try to build the libdbus-c++ libary. The build process is based on
> autotools. When compiling it  do_configure throws an error. The macro
> "AC_DEFINE" is not found. Any idea how to make autoreconf run?
>

Try also inheriting pkgconfig.  I've noticed that if the pkgconfig macros
are not present then autoreconf fails in *very* strange ways.

Ross

--001a114ab3ca86fdb60532ba13f6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 May 2016 at 15:21,  <span dir=3D"ltr">&lt;<a href=3D"mailto:S.Jaritz@=
esa-grimma.de" target=3D"_blank">S.Jaritz@esa-grimma.de</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><font size=3D"2" face=3D"sans-serif">I=
 try to build the libdbus-c++ libary.
The build process is based on autotools. When compiling it =C2=A0do_configu=
re
throws an error. The macro &quot;AC_DEFINE&quot; is not found. Any idea
how to make autoreconf run?</font>
<br></blockquote></div><br>Try also inheriting pkgconfig.=C2=A0 I&#39;ve no=
ticed that if the pkgconfig macros are not present then autoreconf fails in=
 *very* strange ways.</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></div>

--001a114ab3ca86fdb60532ba13f6--
