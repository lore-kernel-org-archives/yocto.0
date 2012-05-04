Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86607E0044D
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 13:54:17 -0700 (PDT)
Received: by lagu2 with SMTP id u2so3231796lag.35
	for <yocto@yoctoproject.org>; Fri, 04 May 2012 13:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=AGUmz8Q7EwyILseFahS1DxsY/pKbdnrkYL2dkqIVsFo=;
	b=bD5tLYeEH+w4uL3VyO1GYampq2wEMLcfu14dfxTvHTKhVLJCAYPIacpADE33kaX2Ht
	RIBctDQ+/EIbn/w+r6ISpzvqlxzcYzpT+8Xc7qXq0C4zKMWLGwvCJZzpnJ/9CCQFimml
	bapm7PNQS7MiSzZLLb4C+E5j5Ux4i1rROkqIXUPr/JhVhJwmHSSttRhMf39ZmJt38mq1
	GLZALBoQEKvxsLtukyAMbAYmAxVntMlTwLe71eNPmqwKGF9EdVRTuDlzY1s6Sa5HnWY0
	VkwD2pWc5n0rXp8YLLwQvU80z75HJYGtWp2rA1v3IzGi4mKHno0ORog2IzskUSiV4a6d
	O7kA==
Received: by 10.112.86.101 with SMTP id o5mr3616745lbz.1.1336164856238; Fri,
	04 May 2012 13:54:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.152.129.134 with HTTP; Fri, 4 May 2012 13:53:45 -0700 (PDT)
In-Reply-To: <FF473BAD-04D9-4409-9B7E-D49AD4B4AA11@keylevel.com>
References: <FF473BAD-04D9-4409-9B7E-D49AD4B4AA11@keylevel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 4 May 2012 13:53:45 -0700
Message-ID: <CAMKF1srzXUyJsfNALUdVng9-UAP1+oMgdq=fcNM3Txncua4yGw@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: GCC patch failures with 7.0.0
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
X-List-Received-Date: Fri, 04 May 2012 20:54:18 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, May 4, 2012 at 12:00 PM, Chris Tapp <opensource@keylevel.com> wrote:
> Building core-image-sato I get a patch failure when cache-amnesia.patch is applied in gcc-cross.
>
> If I then run bitbake -c patch gcc-cross I get the same error, but if I -c clean and then -c patch it applies as it should.
>
> Any ideas what could be causing this? Could this be a parallel make artefact?
>

thinking that you are building from scratch it should have already patched tree
during gcc-cross-initial build so I wonder why is it trying to repatch it during
gcc-cross build. Could be some checksum issue where suddenly bitake thinks it
needs to repatch it.

> Chris Tapp

