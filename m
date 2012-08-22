Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84574E013B7
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 13:23:03 -0700 (PDT)
Received: by eabd1 with SMTP id d1so2057eab.35
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 13:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=V+nyEPWgorue/6mKWAOfIuo2tjBb2/uLnQEQjkFBpaA=;
	b=xl0ukCEaT+bx41eWJmj5lHmNicJutyHadFy2QgvqFchLF/zsqiq/KcRIRaj3phPfxh
	krMScjjZTf5x869aqI2SAl+kakX2CHHsbcg9EvPHD+3ugT0/+6se9ikI6rj2/9RMk8FS
	K+QpWjtwIqd7PmN8gVIUPylFzfH5c3r9GaEb85/Ctp3y4M/WW/43VyIUpFCcT4aLPtoQ
	RItZfFsVSx+IMZfyEMbBuDfZd+M0L2gBF0YPoPbJIhBYYqKy/pIEYlCCr3tpRcTiNs33
	+GwdKdbTaRpiOhSBVBBvt3SNo/UR8GP8ds+6aDW85Y0QRoBEMRtIh16LUrsgSkPyPdzD
	cekA==
Received: by 10.14.211.3 with SMTP id v3mr19881591eeo.43.1345666982317; Wed,
	22 Aug 2012 13:23:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Wed, 22 Aug 2012 13:22:31 -0700 (PDT)
In-Reply-To: <503531E4.8000506@windriver.com>
References: <1345627689-23016-1-git-send-email-raj.khem@gmail.com>
	<503531E4.8000506@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 22 Aug 2012 13:22:31 -0700
Message-ID: <CAMKF1sruHLr3Tq22SzoMevz7QArWZxE6wj+=t+LRMhZDkHLKKQ@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [linux-yocto-3.2][PATCH] arm: Fix linking errors with binutils 2.23
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
X-List-Received-Date: Wed, 22 Aug 2012 20:23:03 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Aug 22, 2012 at 12:24 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
>
> I haven't looked yet, will 3.4+ need the same fix ?

yes looking at 3.4 code. But havent tried that yet

