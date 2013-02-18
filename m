Return-Path: <twoerner@gmail.com>
Received: from mail-oa0-f43.google.com (mail-oa0-f43.google.com
	[209.85.219.43]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 9AC1BE0071D
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2013 15:50:01 -0800 (PST)
Received: by mail-oa0-f43.google.com with SMTP id l10so6378020oag.16
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2013 15:50:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=qYFzJ+ZSeLYOXiU6r0F5swXJMj8zWcu0uHbLTs5wq6c=;
	b=MvOKg0G+3E6k7Hk9iV3f3uPyax+sDihpEh5mvwgep7PQi5JbBI7Ohfjbi3sIEXWHgf
	iX7HsCEO8e8vdjjkigqiEFjPA6/eoF3P+cCn6IpoL9uMlAzd45BHzzp2AsqJL3bulJeK
	yuDspZpoeduTMEzvYTe3Ap5983unHuTnXXSxe63f3dg/elUlG/DxVDQz0Sy0gjwaEeLD
	WlDOcPmLsSeC0w5RkO7X+SCYFQWje29fUe2P3CfLagnLB4CQZXj6xI4zqw1nAT8iHd8v
	fy571PXTaZjHexlQT0q7ZUFi/YZxz9wS603y4/ISjdOClhr0eVidytP4923jHL8sppGt
	Sg7Q==
MIME-Version: 1.0
X-Received: by 10.60.169.147 with SMTP id ae19mr6982940oec.27.1361231400670;
	Mon, 18 Feb 2013 15:50:00 -0800 (PST)
Received: by 10.76.75.36 with HTTP; Mon, 18 Feb 2013 15:50:00 -0800 (PST)
In-Reply-To: <1360981747.1691.29.camel@empanada>
References: <1360981747.1691.29.camel@empanada>
Date: Mon, 18 Feb 2013 18:50:00 -0500
Message-ID: <CAHUNapT64nNKXw5Hb0NFMn2BOxV60qTZZLszgFgDD20-RpiTNw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: Re: Updated Yocto Hands-on Kernel Lab available
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
X-List-Received-Date: Mon, 18 Feb 2013 23:50:01 -0000
Content-Type: text/plain; charset=ISO-8859-1

I can't figure out what I'm doing wrong, but I can't get lab3 to work.

Following the instructions in the pdf I first tried doing lab3
incrementally (build/test, build/test, build/test) and it didn't work.
Then I tried deleting (tmp, sstate, etc), trying again, and it still
didn't work.

Build Configuration:
BB_VERSION        = "1.16.0"
TARGET_ARCH       = "i586"
TARGET_OS         = "linux"
MACHINE           = "lab3-qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta
meta-yocto
meta-yocto-bsp
meta-lab3-qemux86 = "danny:45f95b5f3381097672dd43077f267aa716a02b4c"

I then copied the meta-lab3-qemux86 layer to where I was working with
the master branch of poky (hmm... I guess I could have just edited
bblayers.conf without needing the hassle of the copy), retried the
exercise, and it worked.

Build Configuration:
BB_VERSION        = "1.17.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "SUSE-LINUX-12.2"
TARGET_SYS        = "i586-poky-linux"
MACHINE           = "lab3-qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20130218"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta
meta-yocto
meta-yocto-bsp
meta-lab3-qemux86 = "master:c7b23ab68aafc04d9830ef318015912e5d4f0672"

Note that the above information is a bit misleading.
"meta-lab3-qemux86" is just a plain directory without any .git so
there is no "master" or "danny" of "meta-lab3-qemux86". The "master"
and "danny" branches are of the enclosing poky repository.

In the case where it doesn't work, the module is built and included in
the image, but it isn't loaded automatically during boot. Working off
master, the module is loaded during boot automatically.

