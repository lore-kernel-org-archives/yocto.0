Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6E1CE00E53; Fri, 14 Oct 2016 00:45:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9878FE00CCA
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 00:45:30 -0700 (PDT)
Received: by mail-it0-f50.google.com with SMTP id k64so1238570itb.0
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 00:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FuKWod/ZF7hLqzcOEYTEiSwXW/WYNmiz1CM1vsl5Z04=;
	b=Z5hZyZi0mFn8BEqKGbPLtHbei9A4n8+pHp4DtpqSyFlr5fhnqt4y7qyHtpvhKCk5ki
	u+jlYd7meTYLSXiztf5dVenmxefYK6q5newq8jJUcccWAiiUyJ9QwnM4++NACrHqgAac
	75AyeCheQl2A24bs2mHTu/bb0htpkQlDZDXdCud34RDG/8BB1l3kdoVH7vroFruXsl6G
	/j8YCBWySQEI3UjQ1gia5lf/BFI/x6UYBeg7UUWfP4GTjuZgGME5mdfTjKEbHVmgZMjT
	HRGz0qjZlKmsiev4l/vdlcw1Svp7DMTjzpHxAJEYbaJKq80V9ORjHIKmHVSW3vpzH5iB
	mqJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FuKWod/ZF7hLqzcOEYTEiSwXW/WYNmiz1CM1vsl5Z04=;
	b=BOay/SsV23Ar3Hb6U6RFNnljDim/ffBZbkvkxYLWbcTl5PrR7V9nHDAmYqItaHMH+6
	bS7S5ycmEs4Zw/mNbW0OMhKT/TClGRXfT0qOOcoJQDlQ4z5pqIUR+cPJi8p/HDOTEHb8
	HIQsyjI2y0C8Rh8zzj+rfayf8b6jM9VDehjVuO4wiRKmbu+3p/LEaxB+0AXPOgnKQrkd
	Ow04TVNbNUAqL2bV4Bodz5NY8N04f7qD8CawtfVxINSymoMchPCOoiC69AFCvM/n6uJr
	p5SfCoCKfuNgAF5+E9sfqcCfeBr2i1Zwm0CK7UxAbbBNNJBoRgNhqatMzYQNCebF/4HA
	UJQQ==
X-Gm-Message-State: AA6/9RnJspWhVoWh1M6gwLPo5EF1m63bRzJVM4PZqioGl14vMjEBUfJVSokhHLYEeSLH2BCMwdF+SPZp95+nS49F
X-Received: by 10.36.153.194 with SMTP id a185mr10414983ite.70.1476431129751; 
	Fri, 14 Oct 2016 00:45:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.155.66 with HTTP; Fri, 14 Oct 2016 00:45:09 -0700 (PDT)
In-Reply-To: <CAEV+hqzzWJV35x1dqTzrBg4vJn7L=n445jazcotECoKkmF8wOw@mail.gmail.com>
References: <CAEV+hqwr5pp_EaLd=7cU8=cfKPQcAgr0ghmgYPn-hH8zyCE-Qw@mail.gmail.com>
	<CAJTo0Lao9tQ+R01H7J-O5nUmC6=rjiysLK05U6VP1faRGRM9ew@mail.gmail.com>
	<CAEV+hqzzWJV35x1dqTzrBg4vJn7L=n445jazcotECoKkmF8wOw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 14 Oct 2016 08:45:09 +0100
Message-ID: <CAJTo0LYhXKgQ_UqpepO1nvKTGos0J4ra-_O+qj1c5djtzcZTSA@mail.gmail.com>
To: Contrib Open Source <contrib.open.source@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto recipe license
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
X-List-Received-Date: Fri, 14 Oct 2016 07:45:33 -0000
Content-Type: multipart/alternative; boundary=94eb2c08e5180646b0053ece6980

--94eb2c08e5180646b0053ece6980
Content-Type: text/plain; charset=UTF-8

On 14 October 2016 at 06:23, Contrib Open Source <
contrib.open.source@gmail.com> wrote:

> Here "metadata" stands for "oe-core recipe", right ?
>

"metadata" includes all the recipes and classes in oe-core.


> What if we extend (*.bbappend) a GPLv2 recipe: is it "contaminated" or not
> ?
>

Presumably (note: I Am Not A Lawyer), which is why metadata is licensed
under the MIT.

Ross

--94eb2c08e5180646b0053ece6980
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 14 October 2016 at 06:23, Contrib Open Source <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:contrib.open.source@gmail.com" target=3D"_blank">contrib.open=
.source@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
div>Here &quot;metadata&quot; stands for &quot;oe-core recipe&quot;, right =
?</div></blockquote><div><br></div><div>&quot;metadata&quot; includes all t=
he recipes and classes in oe-core.</div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div>What if we extend (*.bbappend) a GPLv2 recipe: is it &qu=
ot;contaminated&quot; or not ?</div></blockquote></div><br>Presumably (note=
: I Am Not A Lawyer), which is why metadata is licensed under the MIT.</div=
><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div>=
</div>

--94eb2c08e5180646b0053ece6980--
