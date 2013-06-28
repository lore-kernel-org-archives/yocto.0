Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53125E01482
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 03:53:44 -0700 (PDT)
Received: by mail-ve0-f176.google.com with SMTP id c13so1650461vea.21
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 03:53:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=uTYAjT1OvRA0VNILQafhhU6WXvbsNS/35fLbPS+qORM=;
	b=fWzQV0nls7fAw1BUzbaL5GMlzXfgfptYAkmeHXY8xtrmjsl4kzjpTJZq2NTzpwn3lx
	9ux+F7xPZeIdBkfn2C2vg9CS6SfnpMyEyxKnV/txy8gjcA19vATMYD2NabyaRS9izGNu
	3q6ANi+qzMoaFdJZAdXz2lGbwdp5130vjhBRrrygwfM4x1YcR6RqispdbX5t8Z9TMyw+
	fsxww4PIsgbdvgHJiMmVO8VO2jo4jV6efus+T7vkv/Dd2jMB5DnN/XDXDTz9UHbyVP+J
	ltucy8p/W+tJF7ySuHu/IX4Y6rFw7zcjH5ESS0ftGpZNkHELm9UMskpSK/qL/XE7a4zl
	XmYg==
X-Received: by 10.220.42.147 with SMTP id s19mr5323600vce.46.1372416824156;
	Fri, 28 Jun 2013 03:53:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Fri, 28 Jun 2013 03:53:24 -0700 (PDT)
In-Reply-To: <CANyK_8d7jphmfZq2Pz5hp=jJ_OZ_c5PU67angHeZY5PZ55BqLw@mail.gmail.com>
References: <14A8E2D5-FF50-4903-A839-806D77B12FF8@keylevel.com>
	<76247853.lJbnn8TcbK@helios>
	<CANyK_8d7jphmfZq2Pz5hp=jJ_OZ_c5PU67angHeZY5PZ55BqLw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 28 Jun 2013 11:53:24 +0100
Message-ID: <CAJTo0LZV0dUDb9XqyTuiwCGMUEyVFX1qX5=ngUp+zbxVYFV-hQ@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
X-Gm-Message-State: ALoCoQmgueD+QlEPmYsQgNKixOqBdUxq7fPhI0Aqr64Y8aVwcUjj/e+D2O9hnQbBiZeKHuG9v3Hf
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Bitbake requires Python 2.7.3
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
X-List-Received-Date: Fri, 28 Jun 2013 10:53:47 -0000
Content-Type: text/plain; charset=UTF-8

On 28 June 2013 11:16, Paul Barker <paul@paulbarker.me.uk> wrote:
> Just chiming in to say that sounds excellent. Will this contain a
> known-working make as well for those with a broken make 3.82?

What systems have a broken 3.82?  I'm aware that Debian Experimental
has it, but stable/testing/unstable have a working 3.81.  Certain
older versions of Suse also had a broken 3.82, but they've been fixed
recently after I filed some bugs.  Is it just Fedora 16?

Ross

