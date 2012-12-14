Return-Path: <b.hutchman@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD10CE00294
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 13:57:49 -0800 (PST)
Received: by mail-ee0-f48.google.com with SMTP id b57so2276346eek.35
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 13:57:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=8SQk/glDZHQeEnTZqB6ZllGo3mSWhS7ctpdkSLDG+iI=;
	b=l8QsCpkbtf+QHro4M5EPbmJEsLQf15REbUolnK/MAZ9XC+suMnMEvUC2URLn95HEGT
	w0g8qA4dwWQ1EsbamnNHk+i2oMSlBkBLhwbLY1ScJhJXH3kTlEVze6IDjCIy7fy0dDTj
	s7RnbOrmsEBQjDZJMijeNx/yQSYZajX7w2OXzO3pTJw+3GVxfSCojNML06FovZ6d8koE
	5+9wXTpK2DXdriaAy9O+4K7rkFYYDbN1dAEb094ez3sWMjWalcsDlPiummhuQs/Q2R0z
	I04+3pkPB/UYW9AkDeX22V5K/F77OtLXxjH0OTMwWvL1WvkImXcMw61KRXANz9kC2wXS
	TbSw==
MIME-Version: 1.0
Received: by 10.14.206.197 with SMTP id l45mr18450771eeo.17.1355522268622;
	Fri, 14 Dec 2012 13:57:48 -0800 (PST)
Received: by 10.223.127.138 with HTTP; Fri, 14 Dec 2012 13:57:48 -0800 (PST)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46B6C012@ORSMSX101.amr.corp.intel.com>
References: <50CB8173.4030801@am.sony.com>
	<CAJTo0LaHPuYMnasJJ3dvufb6HYy9rpf8CUpkB8CcwMNSyux5NQ@mail.gmail.com>
	<50CB9004.60908@windriver.com>
	<C6510F6D410BB64A8C15398EDC6B847C46B6C012@ORSMSX101.amr.corp.intel.com>
Date: Fri, 14 Dec 2012 16:57:48 -0500
Message-ID: <CAFZh4h-nVqnzFVH8SsmKyJL+=8DPa6ew-YQG1=dy2j13kxCtSA@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What is GMAE?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 14 Dec 2012 21:57:50 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 14, 2012 at 4:09 PM, Zhang, Jessica <jessica.zhang@intel.com> w=
rote:
> Actually I talked with Richard regarding retiring the toolchain targets (=
meta-toolchain and meta-toolchain-gmae) as Mark mentioned that now we can b=
uild a toolchain matching the >image.  Also, we're continue improving adt-i=
nstaller which also allows you to setup sysroot using the target image as w=
ell.  Richard's concern is there maybe some legacy user that >preferred the=
 toolchain target. With the latest changes in toolchain generation which re=
ally maps to target images, probably we should unplug to legacy ones to mak=
e the toolchain generation more streamline.  Thoughts or concerns?

I'm one of the users that is stuck using Edison 6.0.  I'm desperate
for the ability to generate a toolchain and sysroot that matches our
target.  Right now I have to build meta-toolchain and then manually
look in the tmp for sysroot-destdir related stuff from our build and
copy it to the sysroot in /opt/poky and hand that out to developers.
When our sister group overseas makes a change that effects the sysroot
it breaks our build and I have to figure out what happened and
manually adjust our sysroot to fix the problem.  I sure would like to
be able to just do an update and then bitbake the toolchain to pick up
the changes.  I figure we are stuck with Edison for a while ... can I
back port these toolchain features you all are talking about to
Edison?

Regards,

Brian

