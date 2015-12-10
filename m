Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C29AE00BFE; Thu, 10 Dec 2015 14:11:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 722D3E00ADF
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 14:11:37 -0800 (PST)
Received: by iofh3 with SMTP id h3so108255457iof.3
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 14:11:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=tdR8cHtUDA4K/nD+uffT4EunMKcssRv7LWpz8VgHSCU=;
	b=VjJ3F7GlQlLVW0b7rUuzlPn/kdolybnYJw4I5ySahsnv60SrRJzh2q7a2LjMUTYI2z
	xlD4RclSSqu/eoakcJEJEsfI0eTHd4YxmxfcdbsFVxQAJQfTr7kX77Njy7IHC8LCpMRD
	IrPHINgmnBiYU/UMoDNOy20Zq3wZm41hwRe1Z/MTcC1ZE7a1lyky1uHLYrClTuep/Q2E
	kBD7+xqRdFUFQU/JAcqGihkIrmxjmlkZGGdUYOYEYAqfshrjXWwV9GI5UAf8MrKOdjF1
	rAVKak9JhE1KPKsyThQ3tn966PN9mcis468Fsa8OBud18oNm4DD5hOu2LaKx9IzR6U5k
	96pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=tdR8cHtUDA4K/nD+uffT4EunMKcssRv7LWpz8VgHSCU=;
	b=VwSsZZAF0K9R74uSe2az7DB3xAyK0Lspkl0tKg51jihA/83Cp/2XpXEvUF/TfJ8MQ2
	r+RS/k7BGnrRq/sMiYAsRpIcaLiq5UleSq3k8gBgXAa5CXlc4Vn5Yy5U2ETGON9R+5ul
	9Gq6LnpG/HOhkG8x5QwkMUKhu4vGNX1b9Y20u4QvZKvQBWpPhDRABbt6fPo/wYzaw739
	oHuNqNzhLf7q+0P32JubgEOf1KoX4m0riXq56cFflWC22550triPGryU7IjPREXYfH9r
	Pi/OLgTa2yP2LKvwiqXv1SFYNV539Rh0E14C21nWcvlvd69EV7W1QCDyJDaD1gmhlUU8
	TrJg==
X-Gm-Message-State: ALoCoQl2wfRMPLwPhzcZ6NEoYvRY3QzKAnL53phJMsYNdnOON4wg80yFWmrs+1ZSSo/KeLFBFW8ow9E0BzLSHT074bFcM6NUVef25k0qDiBjxs0Fe8E0yEM=
X-Received: by 10.107.3.144 with SMTP id e16mr12945281ioi.99.1449785497399;
	Thu, 10 Dec 2015 14:11:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.136.141 with HTTP; Thu, 10 Dec 2015 14:11:18 -0800 (PST)
In-Reply-To: <CAOsp8o9=GXehbV42_yS1Mu9aBkHMMg_K92oQU9uREb3XP=BHdA@mail.gmail.com>
References: <CAOsp8o9_bzZg5nYsPrqiCNOm+SBphZpwmY1eGqav2g2ULYCCSw@mail.gmail.com>
	<CAJTo0LYeq6+bW4Db5UsLMtRF1M6gijfeSiSyS2frvyHSXzjrRg@mail.gmail.com>
	<CAOsp8o9=GXehbV42_yS1Mu9aBkHMMg_K92oQU9uREb3XP=BHdA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 10 Dec 2015 22:11:18 +0000
Message-ID: <CAJTo0LabtkMD2VtvmaXNc0DeZ3JQdeiAfsMq=o48CUqPJPxxHQ@mail.gmail.com>
To: Michael Habibi <mikehabibi@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Best practice for building a large amount of source files
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
X-List-Received-Date: Thu, 10 Dec 2015 22:11:42 -0000
Content-Type: multipart/alternative; boundary=001a113ecf409314f90526927d98

--001a113ecf409314f90526927d98
Content-Type: text/plain; charset=UTF-8

On 10 December 2015 at 22:07, Michael Habibi <mikehabibi@gmail.com> wrote:

> Ross, I will likely try a different workflow if we enter production
> environment with yocto. Right now I am just doing yocto integration testing
> myself, and want to simplify things as much as possible for myself :)
>

A simply workflow would be a local git repo with all the sources in,  and
then a recipe with a git SRC_URI pointing at the local directory.

Ross

--001a113ecf409314f90526927d98
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 10 December 2015 at 22:07, Michael Habibi <span dir=3D"ltr">&lt;<a href=
=3D"mailto:mikehabibi@gmail.com" target=3D"_blank">mikehabibi@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Ross,=
 I will likely try a different workflow if we enter production environment =
with yocto. Right now I am just doing yocto integration testing myself, and=
 want to simplify things as much as possible for myself :)</div></blockquot=
e><div><br></div><div>A simply workflow would be a local git repo with all =
the sources in, =C2=A0and then a recipe with a git SRC_URI pointing at the =
local directory.</div><div><br></div><div>Ross</div></div></div></div>

--001a113ecf409314f90526927d98--
