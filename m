Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 651D5E00DED; Thu,  1 Feb 2018 06:44:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A823E0082E
	for <yocto@yoctoproject.org>; Thu,  1 Feb 2018 06:44:37 -0800 (PST)
Received: by mail-it0-f51.google.com with SMTP id c16so4444331itc.5
	for <yocto@yoctoproject.org>; Thu, 01 Feb 2018 06:44:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KFoL4cSYczluGfMkAA+u6G5lR1WCPR/jC640bPsS9yo=;
	b=r9Nf0YGB9i0CmibO041ncCYN2qBtGEnRfwq2xmlfylpbtEpAza/LZ9Jma3P7o6YGnb
	gXh709crlTGH7Jp8etqC6zqSP35QML06hDvZgl+kzv1JT82K0OUmJtwUpiQ7PeSi35lB
	vc322g4Tk73T/RFGIA5LD6p3gkkYE1vhaN3a3Gg9tSxGch9Q1+wj8UUO1atS/a8OcFaE
	KXn0IR2OAHliNjJkjl778KRlQcrYcB6+eNBiaIsh/a/gnJDQJ4RDPaYI11bLi66B8S5k
	on3PBDBBYqEuN9A/uq0gCEE2VYHJvYqDXZh9kp04OhbCukrcK37H0sURD49Xcj6+Fu9H
	LORw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KFoL4cSYczluGfMkAA+u6G5lR1WCPR/jC640bPsS9yo=;
	b=YnA7hWTpD1Q7R3jf6ZNmJv00vvLvWUBd7ev852X6HiPz0YbZ+Xce9ZxOiWHsi4lzKw
	TobyIm0J5KgeIM2+8//cv/wANb3I0wJMqdgIIBoMn76SWwbkHhTLcd00pXVHHn4p9BcB
	gKf+SmprcyTyakCS0u7qUtfdoI8eklefx90zW7nufZHyvQfrxMVma4oShRDuPrQ6BM/7
	EnNhEPpb/4GgiAmTimySiSyRx1rf4DQvs+cQ9cl0TzJJvqM4CpiZVzt1PMolGbvT34mf
	5+vH868HJTp+1V4JlxEPOVSCAbrX2dcy4SqdhRLG7mF7RT/Ay8+3T1isEaxkLBAFvRxA
	aheQ==
X-Gm-Message-State: AKwxyteUr6qXZ654Ax8i1FNtWbvvGL+A4atNSAMemoCKhGw4VXEmyHFU
	oOQnLR+DZXpVZalRrVouX96/mhNZN4m9ULIEW+SVpg==
X-Google-Smtp-Source: AH8x224eiEbap7T/tL4qdljRA9E+IfDyAf3/z56mucf6pOVOWTik3G7EaXy/bHgcdlBRnWvHVfFwHOn/NBgwnmDYmQs=
X-Received: by 10.36.215.69 with SMTP id y66mr40673610itg.10.1517496277434;
	Thu, 01 Feb 2018 06:44:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.17.206 with HTTP; Thu, 1 Feb 2018 06:44:17 -0800 (PST)
In-Reply-To: <CAOsp8o_Evg6RvDSuKj_7MBm8GUs8p=SMiTs8DuGEDbPr_hA7dQ@mail.gmail.com>
References: <CAOsp8o_Evg6RvDSuKj_7MBm8GUs8p=SMiTs8DuGEDbPr_hA7dQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 1 Feb 2018 14:44:17 +0000
Message-ID: <CAJTo0LZfeg37KA=XOd-G7QJABy53JC5kJ07+uMo17xjjNq66qw@mail.gmail.com>
To: Michael Habibi <mikehabibi@gmail.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Patching only the target version of a package?
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
X-List-Received-Date: Thu, 01 Feb 2018 14:44:39 -0000
Content-Type: multipart/alternative; boundary="94eb2c0afc4490c9de056427a2eb"

--94eb2c0afc4490c9de056427a2eb
Content-Type: text/plain; charset="UTF-8"

On 1 February 2018 at 14:29, Michael Habibi <mikehabibi@gmail.com> wrote:

> I'm sure this is really simple but I haven't quite wrapped my head around
> it.
>
> We have a bbappend file that supplies a set of patches. It currently has
> the unintended side-effect of patching both the native version used during
> the Yocto build process, and the eventual target version. How do I modify
> the recipe such that it only acts upon the target version?
>
> Would it be something like recipe-cross.bbappend instead of
> recipe.bbappend? Or something similar?
>


SRC_URI_append_class-target = " file://..."

Ross

--94eb2c0afc4490c9de056427a2eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">On 1 February 2018 at 14:29, Mi=
chael Habibi <span dir=3D"ltr">&lt;<a href=3D"mailto:mikehabibi@gmail.com" =
target=3D"_blank">mikehabibi@gmail.com</a>&gt;</span> wrote:<br><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">I&#39;m su=
re this is really simple but I haven&#39;t quite wrapped my head around it.=
<div><br></div><div>We have a bbappend file that supplies a set of patches.=
 It currently has the unintended side-effect of patching both the native ve=
rsion used during the Yocto build process, and the eventual target version.=
 How do I modify the recipe such that it only acts upon the target version?=
</div><div><br></div><div>Would it be something like recipe-cross.bbappend =
instead of recipe.bbappend? Or something similar?</div></div>
</blockquote></div><br></div><div class=3D"gmail_extra"><br></div><div clas=
s=3D"gmail_extra">SRC_URI_append_class-target =3D &quot; file://...&quot;</=
div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</d=
iv></div>

--94eb2c0afc4490c9de056427a2eb--
