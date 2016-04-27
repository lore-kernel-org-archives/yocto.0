Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3D0DE00D7D; Wed, 27 Apr 2016 01:53:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47425E00D79
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 01:53:29 -0700 (PDT)
Received: by mail-ig0-f171.google.com with SMTP id m9so34200509ige.1
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 01:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lwfa8BJL5SYaBWticY86LwIaK5uEYAXoozuNZGY7ZJE=;
	b=uU4bykzP8wjB05IQjqoOZDhe/+ujSOsOBMWftGzHTTbfO6ABjPwArAXHPknb8tQqQn
	H0/QK8CB3AZqeE6bRLHvke4llZK6p+8YCHSnyhiP39L8ez+l45QgiRBXKDXIR4sycg5J
	naojKFyn0Op4D5+9H66EBg5jVly4Nwwj94b/AJM6pl6QcTVTcqiGltdl4jDR5ggNgTOF
	yfcAryPoBACLJIw/sPlXDkWGA0uBN9VwYUk+TYtuEQpiSZK8jeAzB1l60nRcjg8zpaBZ
	Uo7HLk3aFZ8u+YNL9Nub0lHkiBy7rWWeu2aZj93/7DrrmbWh2P56yiTAo/GgoeU419KP
	7Bew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lwfa8BJL5SYaBWticY86LwIaK5uEYAXoozuNZGY7ZJE=;
	b=mGLNZ7K1QijejTknIik1USrwlAI4oynz6CXjHq/hdylWdoauetfQCSNflYPIoTM2If
	KsMdU0+1imguS0lccxJxS5/qvot+dBHAlLK5SXGWR0vvc9xCOyOBEPw8NiSueyisMcZK
	uFPbGuCf+zswvGGM2LW0j14pa9QBMx3hnwhldYHfWhjocJp9UrZ+aYvp9kP+YWHIR7CB
	sF/ZPlaS4/lcflnxSJa+JNAt0hsfVjzars/btwDui7NsTAMu42YibabRW9A5ErT12g7U
	Whlp4f/qSn/EolPCIBNts3+XzieCs6tDmC8VlVQ/VZnuMnsjHJhlLgjgO87UvHwYh4r/
	+bgA==
X-Gm-Message-State: AOPr4FVjaFLJ31AtVbgnHNBcRwDAA5I3CDJK6LL5ag5RokUjlUrza+S85Yw75ITuLq+fhKwQ6LREe22SgDw3XTWN
X-Received: by 10.50.150.1 with SMTP id ue1mr24101938igb.52.1461747209154;
	Wed, 27 Apr 2016 01:53:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Wed, 27 Apr 2016 01:53:09 -0700 (PDT)
In-Reply-To: <CAJTo0Lb25x1H44nGn05d6qBVLDpyiaZ3XW40fdrAWcP_D+qYwg@mail.gmail.com>
References: <B1D22563-F31B-4EF1-90D6-16EB391134D5@gmail.com>
	<CACS+7ZSpWgziO+GF++25dM7kgP4SZ_GDV+-DcEMQ_YUGyEEnfQ@mail.gmail.com>
	<CAMKF1spQn114r9dCAk9z7c3hw-NJp3pVoVP+f3gao2mhLTBHYg@mail.gmail.com>
	<CAMKF1spwimpQwSE38B5jWmyZXwMKy6znMEF9p-NmTM4mGGr+4g@mail.gmail.com>
	<CAJTo0Lb25x1H44nGn05d6qBVLDpyiaZ3XW40fdrAWcP_D+qYwg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 27 Apr 2016 09:53:09 +0100
Message-ID: <CAJTo0LZZ3Hs_yrm5ceik4j8Orv-UQ9T72Wu=R_PCRKw4Y9-WCw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <openembedded-devel@lists.openembedded.org>,
	OE Core mailing list <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 6 Recipes
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
X-List-Received-Date: Wed, 27 Apr 2016 08:53:32 -0000
Content-Type: multipart/alternative; boundary=001a11c30f0a274d2e0531738b5a

--001a11c30f0a274d2e0531738b5a
Content-Type: text/plain; charset=UTF-8

Finally made errors.yp do the right thing:
http://errors.yoctoproject.org/Errors/Latest/?filter=91ef7bf5ad13304827e2ef06738f7fc28ed650f6&type=commit
is a list of all the failures.

Ross

On 27 April 2016 at 09:02, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 21 April 2016 at 04:06, Khem Raj <raj.khem@gmail.com> wrote:
>
>> I have updated
>>
>> http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/gcc-6
>>
>> With few more patches added now. Most of packages in OE-Core are
>> building fine except linux-yocto on mips and ppc
>>
>
> I threw this at the autobuilder.  Lots of c++ failures on various
> architectures.
>
> https://autobuilder.yoctoproject.org/main/tgrid, the row for SHA 91ef.
>
> Ross
>

--001a11c30f0a274d2e0531738b5a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Finally made errors.yp do the right thing:=C2=A0<a href=3D=
"http://errors.yoctoproject.org/Errors/Latest/?filter=3D91ef7bf5ad13304827e=
2ef06738f7fc28ed650f6&amp;type=3Dcommit">http://errors.yoctoproject.org/Err=
ors/Latest/?filter=3D91ef7bf5ad13304827e2ef06738f7fc28ed650f6&amp;type=3Dco=
mmit</a> is a list of all the failures.<div><br></div><div>Ross</div></div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 27 April 2016 =
at 09:02, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@=
intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"=
><span class=3D""><br><div class=3D"gmail_quote">On 21 April 2016 at 04:06,=
 Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" targe=
t=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">=
<div>I have updated<br>
<br>
<a href=3D"http://git.openembedded.org/openembedded-core-contrib/log/?h=3Dk=
raj/gcc-6" rel=3D"noreferrer" target=3D"_blank">http://git.openembedded.org=
/openembedded-core-contrib/log/?h=3Dkraj/gcc-6</a><br>
<br>
With few more patches added now. Most of packages in OE-Core are<br>
building fine except linux-yocto on mips and ppc</div></blockquote></div><b=
r></span>I threw this at the autobuilder.=C2=A0 Lots of c++ failures on var=
ious architectures.</div><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra"><a href=3D"https://autobuilder.yoctoproject.org/main/tgrid" t=
arget=3D"_blank">https://autobuilder.yoctoproject.org/main/tgrid</a>, the r=
ow for SHA 91ef.<span class=3D"HOEnZb"><font color=3D"#888888"><br></font><=
/span></div><span class=3D"HOEnZb"><font color=3D"#888888"><div class=3D"gm=
ail_extra"><br></div><div class=3D"gmail_extra">Ross</div></font></span></d=
iv>
</blockquote></div><br></div>

--001a11c30f0a274d2e0531738b5a--
