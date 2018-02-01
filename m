Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EF8CE00CF1; Thu,  1 Feb 2018 07:34:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D30B8E0082E
	for <yocto@yoctoproject.org>; Thu,  1 Feb 2018 07:34:52 -0800 (PST)
Received: by mail-it0-f41.google.com with SMTP id n206so4292178itg.1
	for <yocto@yoctoproject.org>; Thu, 01 Feb 2018 07:34:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mpchE51eEdexS9CoxaUS5vNi3DkLmnYFO2++eMXEP04=;
	b=vbQtGtb0xu9h71AsC8e6gD5CFpJPJDDuuxAk6GFC9GN8JuMfwk2bOOuZCRgEw9qgX7
	GzcFk09OE8gb0TUOLk/ejHBx839adYkElD0kcUbWjeGw9hObi7jv/pKJ8xTGNnJyQvLQ
	nXqxlx/qVSLfB0COK/DLu+WX6RKLrJFRV9GIm1ge6FPXKsJSUnftsBGf5kv6bWWIN6Q0
	EXW+r4acoA6bMoTDLAbOlc0RhhQ1ruOWJFSoc+oZJO1/70T9i4hD5xDY7BIMlBsl+Jmk
	eTY1AH3RyA4oLDZXzWYX0vxtgcFE+ZnBAWCj2/rBhDGu0D7VKkyEw821r5u6Wcuy4+t+
	xU7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mpchE51eEdexS9CoxaUS5vNi3DkLmnYFO2++eMXEP04=;
	b=BI2NbCv8OYRoc2tMyDHfEy8ysl4scg+9QbR0dIhLfSExqDgkr9mnpwTQFrjaFWvLGs
	X1a8G7NSEFNfKFmjjcG13nUCmhVQFjboH4x+sbfAoMpgZ+wEUDu1aALhVvaW3YECAvEH
	O3roYvIuwyzhAfM8YgPn+0hfb5yTUPjEBmIhZfZIMwf8saEDqsOZuap6hT/7x5Da9wNj
	1XnB71FBIRgTZXtA/55Sz0Hi2uowfdGvRYcHw2aSmgW4RY+/M9ZkRsBJw7w4+pkamFX4
	Paw3gEtI4GXifeMh1vqG8Zo7a65Sax2LXaYAH0CIuYmljZIa+ZwDZTqmIxqjJL8cM/Rw
	2NbA==
X-Gm-Message-State: AKwxytcF4nGsI+y/82JDdllqwbxts3O04qypn6TbzzUNhAd2T6QeVjwH
	XMhb8ueCOhRvXaIlAt1wemzF6k0Pr9DxS7o+jSqzbQ==
X-Google-Smtp-Source: AH8x225745viE2Ta/2XmTMo2uPw/TLoJn6yzMkCVHWxGShaCqlWMGeXGTbTeu8LXU5FRQW3NKXuk/THHJ2xINY1GHqY=
X-Received: by 10.36.185.84 with SMTP id k20mr6936778iti.124.1517499292084;
	Thu, 01 Feb 2018 07:34:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.17.206 with HTTP; Thu, 1 Feb 2018 07:34:31 -0800 (PST)
In-Reply-To: <CAOsp8o83H+_rTgZANb9c9SoLEbMpg6L_O-vAYAygPrNjeMpaFw@mail.gmail.com>
References: <CAOsp8o_Evg6RvDSuKj_7MBm8GUs8p=SMiTs8DuGEDbPr_hA7dQ@mail.gmail.com>
	<CAJTo0LZfeg37KA=XOd-G7QJABy53JC5kJ07+uMo17xjjNq66qw@mail.gmail.com>
	<CAOsp8o83H+_rTgZANb9c9SoLEbMpg6L_O-vAYAygPrNjeMpaFw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 1 Feb 2018 15:34:31 +0000
Message-ID: <CAJTo0LYh9Y879OZejijDrvdvXvbYGsyeOb9vLm2ahdfiK3Dg9Q@mail.gmail.com>
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
X-List-Received-Date: Thu, 01 Feb 2018 15:34:53 -0000
Content-Type: multipart/alternative; boundary="f403045d96c2408223056428560b"

--f403045d96c2408223056428560b
Content-Type: text/plain; charset="UTF-8"

On 1 February 2018 at 15:03, Michael Habibi <mikehabibi@gmail.com> wrote:

> So let's say my whole bbappend file is only necessary for the target
> version. Can I rename the whole thing package-target.bbappend (add the
> -target suffix) and it will only append it to the recipe when building the
> target? Is "target" the actual suffix or is it a placeholder for something
> more specific? I have only seen -native, -cross, and some other ones that
> don't seem to apply to this case.
>
>
That won't work, as native and cross suffixes in recipes are for humans,
not bitbake.

Ross

--f403045d96c2408223056428560b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 1 February 2018 at 15:03, Michael Habibi <span dir=3D"l=
tr">&lt;<a href=3D"mailto:mikehabibi@gmail.com" target=3D"_blank">mikehabib=
i@gmail.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">So let&#39=
;s say my whole bbappend file is only necessary for the target version. Can=
 I rename the whole thing package-target.bbappend (add the -target suffix) =
and it will only append it to the recipe when building the target? Is &quot=
;target&quot; the actual suffix or is it a placeholder for something more s=
pecific? I have only seen -native, -cross, and some other ones that don&#39=
;t seem to apply to this case.</div><div class=3D"HOEnZb"><div class=3D"h5"=
><div class=3D"gmail_extra"><br></div></div></div></blockquote><div><br></d=
iv><div>That won&#39;t work, as native and cross suffixes in recipes are fo=
r humans, not bitbake.</div><div><br></div><div>Ross=C2=A0</div></div></div=
></div>

--f403045d96c2408223056428560b--
