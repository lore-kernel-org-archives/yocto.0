Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9143E00E46; Thu, 10 May 2018 02:22:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9844AE00D60
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 02:22:55 -0700 (PDT)
Received: by mail-io0-f172.google.com with SMTP id e20-v6so2247812iof.4
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 02:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qd1MwIvC6xUQtSYbNpcPlk+otYdQoqQ/B87TaHDnndA=;
	b=IoOgtsLHHLNzkN/kwH3pK7txsbJnpHP+ZHyfGB70Y8fBWCC1Qii53EilTnEcou+e5N
	gk96+ygkdrirvo4uY6iD5I4PeX/kFHxFt8xy9IfJ2gTep3bM43S/hpn/n+LNJObSsxva
	CpbtX0CHn2Qmoi2H8Hmz5TTnM0/3Nr7ki5O/iuiEHd/r6Nka5ysdAN6tCf7GUU+UHPoN
	7d+kI+TXgPndRybp/fzwwJtXpS8b/ktDQtFOIbYS4tM7FVdoWnMY/HKbhtABlNpjwPIp
	d/fcZLuKlnKrmknfv1ChtymtuKsw5oj366zPOAcob1d4rR0Di0BKXd1dqJrvHF02ExQg
	rZeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qd1MwIvC6xUQtSYbNpcPlk+otYdQoqQ/B87TaHDnndA=;
	b=j0+SptDEBMc7xsBJecEFm9TyI/QaKgaxfyEeQShoeAV8IEliQPjBXyGxQDGeZOg5SF
	2bVXUJ4sU7IpNnrabClTqMLwxn63vdICmEDiUfIOdYQhrFri+y6Srdwwcxz0TV83Q7d9
	JAVHyzDaLcUZ8uWITNxIe9eRWw+hCnrFujJJUHndIwrBRLfF5cBI73PmnjAytbBUd2rw
	tOEi0th+0Gl7Gk27fiLRvAER8+K2BRTLAhZKtdJWOtF/tJpFVyWP4qR59TWUQhz+DULm
	OBXITEDQ+bENEgrorVHsnYCDq6oW4oS9s1ZWYfbk2qnBgiRr8WgFC85380jJBuCUXoEm
	LXSg==
X-Gm-Message-State: ALKqPwfxrAPEDyts9w4A/f300nNmZk1makN77jxqX9smj96SNTSiWXoD
	ZplFWACV4XTQ/rljO+0zdRuYAqOXKZXnjF7W7z32BQ==
X-Google-Smtp-Source: AB8JxZpSXeqYp4rhp001qrg+lf7nhZCYBV3dYKnsmOtU83ioV2Fz6N73L/4qLg0H4CPQX+usftRXCJQ/qt7z+wZD0JQ=
X-Received: by 2002:a6b:752:: with SMTP id 79-v6mr645698ioh.216.1525944174898; 
	Thu, 10 May 2018 02:22:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.239.11 with HTTP; Thu, 10 May 2018 02:22:34 -0700 (PDT)
In-Reply-To: <CAMTWR-Np4pd8tytDdOoabzEZsqU=2w95Y9ddh6UOsD4-F4eDCw@mail.gmail.com>
References: <CAMTWR-MFckD=GaqL-iteivzh7fPn+MHtYES+gGkWZyOMu7E9sQ@mail.gmail.com>
	<d2ed93c9-f746-6e37-c959-66a5eebfb93d@windriver.com>
	<CAMTWR-Np4pd8tytDdOoabzEZsqU=2w95Y9ddh6UOsD4-F4eDCw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 10 May 2018 10:22:34 +0100
Message-ID: <CAJTo0LaOOAhnPbUJ2DfWyaty5GM4JBNrGS-+44jt8p+iO4+kqA@mail.gmail.com>
To: Piotr Piwko <piotr.piwko@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Check IMAGE_FEATURES content in recipe
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
X-List-Received-Date: Thu, 10 May 2018 09:22:56 -0000
Content-Type: multipart/alternative; boundary="0000000000007e042f056bd690d5"

--0000000000007e042f056bd690d5
Content-Type: text/plain; charset="UTF-8"

On 10 May 2018 at 09:59, Piotr Piwko <piotr.piwko@gmail.com> wrote:

>
>> VAR set in recipe A cannot be accessed by recipe B.
>>
>
> All right, but what about DISTRO_FEATURES? It is available everywhere, so
> maybe there is some possibility to do so ...
>

You need to think about what actually happens.  This is a valid bitbake
call:

$ bitbake image-foo image-bar

image-foo and image-bar both contain recipe-flob.  recipe-flob will be
built *once* to generate the packages, and those packages used to build
both images.  If image-foo is read-only and image-bar is read/write, the
*same packages* will be reused.  recipe-flob has no idea that foo is
read-only and bar is read/write because the IMAGE_FEATURES assignments are
specific to those image recipes.

There are global variables (such as DISTRO_FEATURES) and the *default*
IMAGE_FEATURES is also available globally, but that won't help you here.

Ross

--0000000000007e042f056bd690d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 10 May 2018 at 09:59, Piotr Piwko <span dir=3D"ltr">&lt=
;<a href=3D"mailto:piotr.piwko@gmail.com" target=3D"_blank">piotr.piwko@gma=
il.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gm=
ail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gm=
ail_quote"><span class=3D""><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div bgcolor=3D"=
#FFFFFF" text=3D"#000000"><div class=3D"m_2303106346380240168m_-38253942832=
86796240moz-cite-prefix"><br>VAR set in recipe A cannot be accessed by reci=
pe B.<br></div></div></blockquote><div><br></div></span><div>All right, but=
 what about DISTRO_FEATURES? It is available everywhere, so maybe there is =
some possibility to do so ...</div></div></div></blockquote><div><br></div>=
<div>You need to think about what actually happens.=C2=A0 This is a valid b=
itbake call:</div><div><br></div><div>$ bitbake image-foo image-bar</div><d=
iv><br></div><div>image-foo and image-bar both contain recipe-flob. =C2=A0r=
ecipe-flob will be built *once* to generate the packages, and those package=
s used to build both images.=C2=A0 If image-foo is read-only and image-bar =
is read/write, the *same packages* will be reused. =C2=A0recipe-flob has no=
 idea that foo is read-only and bar is read/write because the IMAGE_FEATURE=
S assignments are specific to those image recipes.</div><div><br></div><div=
>There are global variables (such as DISTRO_FEATURES) and the *default* IMA=
GE_FEATURES is also available globally, but that won&#39;t help you here.</=
div><div><br></div><div>Ross</div></div></div></div>

--0000000000007e042f056bd690d5--
