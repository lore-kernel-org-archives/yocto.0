Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E171CE0145B
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2012 09:54:07 -0700 (PDT)
Received: from mail-ie0-f176.google.com ([209.85.223.176])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 11 Oct 2012 09:54:05 -0700
Received: by mail-ie0-f176.google.com with SMTP id k11so3885482iea.35
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2012 09:54:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=oFxhqRjZf+LP62KXLxN75+LUpiXuvDe0BYJTyYK7mWE=;
	b=dJ2r7NA0CFqxIxH2jJ19eXPxhkjrTLaVUDm4CvHchxDkYgkj9PHGy+MzEPb0a/7RCd
	9xtN1M7As/dlm8N4AVHSZCOdVjEAWyYKNVCFMj5liWyfG/VBWAepTbnuOG2wWUTOIo/v
	v6vkYvCta9LO6f9SHJ4XAczRRWTqUW1ByE8svultgakSNkajigQBuiENS7OzBltoD689
	+t5SdjnUFjnnZ9+oAoNwEOo9kvYgAxR/62nZTg38Di9b43ex/1uOFHTRl+dyyxeKzzDE
	AHLWzVVMj/yczQvJEyScIKGBEpJncucCxWR8kpGRgY10Jr3Npz3p5VSaO8/TNMDUycXE
	4ByA==
Received: by 10.42.65.6 with SMTP id j6mr1308027ici.2.1349974444482; Thu, 11
	Oct 2012 09:54:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.141.70 with HTTP; Thu, 11 Oct 2012 09:53:43 -0700 (PDT)
In-Reply-To: <ADD6A3980E8C39419A432FF422031B4C1573164F@ORSMSX106.amr.corp.intel.com>
References: <cover.1349820369.git.nitin.a.kamble@intel.com>
	<e349d9f28dd0b1064fffd14b337770ee6574e7cd.1349820369.git.nitin.a.kamble@intel.com>
	<CAJTo0LYmbD=HJEECJC7usk7A7tLwDxnrFm-pxUoRo2=qyKGyvQ@mail.gmail.com>
	<ADD6A3980E8C39419A432FF422031B4C1573164F@ORSMSX106.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 11 Oct 2012 17:53:43 +0100
Message-ID: <CAJTo0LaA9FMThnZpb+F3T8d_XfUqFW55BXUns57jW92Phi_wGw@mail.gmail.com>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
X-Gm-Message-State: ALoCoQnWbn2bv7fpQsEtqsD6MJtdJbKDvjY3cgRr9UH1iVGfgQwEZpow1ws/zH1G08v0ITlXgGBL
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: [PATCH 2/5] crownbay.conf: specify the 8.0.4 version as preferred version of mesa-dri
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
X-List-Received-Date: Thu, 11 Oct 2012 16:54:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 11 October 2012 00:10, Kamble, Nitin A <nitin.a.kamble@intel.com> wrote:
>    So far I have tested with glxgears and glxinfo with the 8.0.4 version =
of mesa-dri. And I did not find any issues. And Tom has been testing the sa=
me way so far without any complaints. If there is something which can help =
things test further, it would be nice to add it to the poky tree; so that i=
t can become part of standard tests, and QA also can use it.

A slightly better test than glxgears that is in oe-core is in
libclutter-glx-1.0-examples.  Run "test-interactive
test_cairo_flowers" in a terminal, you should get flowers falling down
the screen.

(on cdt, this results in a PVR driver error - #3280)

Ross

