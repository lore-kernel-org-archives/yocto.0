Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 482FAE00C43; Wed,  3 Feb 2016 10:44:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F079E00C39
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 10:44:05 -0800 (PST)
Received: by mail-io0-f172.google.com with SMTP id g73so66225416ioe.3
	for <yocto@yoctoproject.org>; Wed, 03 Feb 2016 10:44:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=g30jPtoAZQyhhCaTI+SW6rBA8IpGfumAavaERGEPZRE=;
	b=rS0m9CcT+wqK0MaBmR2MsKv+KLVVJ1N0/31KAravjnblE4nQi5UswSrYADfcdJlujH
	tRqcGRs+gCBREuwSjzYqctDVf8xoCmW9LfWyzuU6hgTOZC/CdtlkKsDG0BlRjqFKb3F0
	ma4xnoFBHO45vyJbo4uYNVDTTFmtC31XInhilg8ZiEwh/BDbUJzTg0zkKmg9YXdH6NY+
	NC3kwbXBTaqAn4zrwe/FZwH8giHn9Br236Zj0PQM6sOvZzXOiRz05olroEEvcq42PT1c
	M2W7+im0SzxseIUxdtKyFMO/ocyQJNft0BNywp4RyrV1OSUfRz6Lm4cGTW7pC9IRNDSE
	FwyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=g30jPtoAZQyhhCaTI+SW6rBA8IpGfumAavaERGEPZRE=;
	b=aKB18GBn6FcHgNsBfL7/JSTjNWq30So5PZSoGn1BqtHiXh0oVpBVWZCbJY+0c8/93M
	146ll6er8lmm9ue2SyrkYFt2sZEqh+2nw5D4SXPYCP4NzHOJrJwIn4YE0Euq3/rPsP7R
	OmYjmb5ORFXK+JqS5zqAfgzGhXRzI3DKu4p/AtchuZpswm+O2+5nlvdR6M/VOL67vJW/
	YantfhxXU9UdhBU0CBwHsi7ODwYxM9nlXGMisvIWLwVKjbYg46g5KBFI3upRRo8Xb/vP
	vdM9Z1eWUbcCjK5b+ZM0ZyA9lhqJz1n3E9rrwGbYkG6LM0IWoS5byTRoeLXvYys5J6n/
	C7fg==
X-Gm-Message-State: AG10YOSuEGwRDr7RR9tCAtSuWXubY0EeEjfyeTAUwj3h4hHXyIIJKc2oT2bzpS1o4nsjGgiOtIif/W1x3BlQEAQN
X-Received: by 10.107.164.15 with SMTP id n15mr4535609ioe.148.1454525045202;
	Wed, 03 Feb 2016 10:44:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Wed, 3 Feb 2016 10:43:45 -0800 (PST)
In-Reply-To: <CALf_N3bW91zwfebcdvfseHFKQrnykSdAsvodjchVKGr2eym-2w@mail.gmail.com>
References: <CALf_N3a0K0mODhMwBLJgDV5MEDd14CkxJAnWEX=+kLG=Q8NRxA@mail.gmail.com>
	<CAJTo0LbiKF0w=NeNFRYmh_fc73HYH-1Zg6p1-8r46-oexFt6-A@mail.gmail.com>
	<CALf_N3bW91zwfebcdvfseHFKQrnykSdAsvodjchVKGr2eym-2w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 3 Feb 2016 18:43:45 +0000
Message-ID: <CAJTo0LaSUoPmurmL6xwy10h-SMSWSk0iedLjkPGAD=6cm-YX0g@mail.gmail.com>
To: Mark T <mtl1nuxd3v@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Which Toolchain is being used to build Yocto ?
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
X-List-Received-Date: Wed, 03 Feb 2016 18:44:09 -0000
Content-Type: multipart/alternative; boundary=001a11377682a3083f052ae2004f

--001a11377682a3083f052ae2004f
Content-Type: text/plain; charset=UTF-8

On 3 February 2016 at 18:15, Mark T <mtl1nuxd3v@gmail.com> wrote:

> Thanks. That makes sense; all the cross compile tools are built using the
> Host machines native toolchain on the host then the cross-toolchain used to
> cross compile yocto for the target.
>

Correct.

Ross

--001a11377682a3083f052ae2004f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 February 2016 at 18:15, Mark T <span dir=3D"ltr">&lt;<a href=3D"mailto=
:mtl1nuxd3v@gmail.com" target=3D"_blank">mtl1nuxd3v@gmail.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Thanks. That ma=
kes sense; all the cross compile tools are built using the Host machines na=
tive toolchain on the host then the cross-toolchain used to cross compile y=
octo for the target.</div></blockquote><div><br></div><div>Correct.</div><d=
iv><br></div><div>Ross=C2=A0</div></div></div></div>

--001a11377682a3083f052ae2004f--
