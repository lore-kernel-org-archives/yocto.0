Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1022E00B28; Sat, 31 Mar 2018 08:37:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.175 listed in list.dnswl.org]
Received: from mail-yw0-f175.google.com (mail-yw0-f175.google.com
	[209.85.161.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F067E008EE
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2018 08:37:02 -0700 (PDT)
Received: by mail-yw0-f175.google.com with SMTP id u15so3781091ywg.8
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2018 08:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0nQ6LokFDt9ZEVw5cIhwFSev6qy2D1X3f8XeZX0Eliw=;
	b=u8vn7+fB4iUkx2Gqpmew0ZiRYv4SYRT9i0g0IDjSyuRNnECLsD+4Sre1MRAJu1JNJ2
	WAASftvw5N3bjkJ2muiA1HtsHzTwoPRdRCeFOUg6CJheZUIwDFpNQp99Nr4t/7loqg9/
	WSjBESPgycQTUNfPlpVUN3r8hFmwTpyNVmj0DP4S2Zd40q3KO6/v4jtTqgmL3iLtDbuE
	5j6n+L8b6JvUooraDvzawTTKelgTQuh/dVWTss5rbgeDt7K34muRa1W8x64QN87ZIAHf
	idR4kuXWxMrUDgKsgFEUAAUssnSAWnsmsB0DPMzgbp5RHjy2FSrCURoegoh03GAuDQ0+
	+gkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0nQ6LokFDt9ZEVw5cIhwFSev6qy2D1X3f8XeZX0Eliw=;
	b=Xv6PSM3jtvlO0Ub1t1NjQ/kLZL+kbE4e9ktiyc8/a3cPB/nMB1GLVH3RLvfC5HL4VB
	UmfzLQybtV3cFM1jCeZ/EEVPXmmCwCRdN9GaU8dFSTVIbmsIKtchyJ/pcithPB94vMpl
	8l6NC0Z84hhPPqbgzfU9fzDhf0DKMtMuBcAzUYE1b4sGERJBJFdNHIugXwSQvV0cRYW9
	5Ea5Nv4hf0zqlhPOjQ5zWLhVJH7hQqWzislpq3FBvso1zMx6/Nawvw3vAaMdmTtdpIE3
	usRuB0yfg4z9EF8sxsouwGXTnOibOiTcfl/920nbSBk7r1QDRDdn4tEaAgQ+WE9IZFDt
	gqFQ==
X-Gm-Message-State: ALQs6tBNQDsDbB1/Wdoz3Q5Q7NcRYk6ibWH/UMERGeVJOnUkQxJ9lTHg
	Ii7XQ4sIQB2+L4WLVVajdjm53azcB7PnxrRtbv7mwg==
X-Google-Smtp-Source: AIpwx48CP9CiCkBOHvgEPYtUezCyWH8B2ohH7L/VQ3M+TyOyDiw3cG2nT1I4Ypd7YrTZ83kMbVOymXpi/jyia2A7ovE=
X-Received: by 10.13.249.197 with SMTP id j188mr1754623ywf.318.1522510622482; 
	Sat, 31 Mar 2018 08:37:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:d105:0:0:0:0:0 with HTTP; Sat, 31 Mar 2018 08:37:01
	-0700 (PDT)
In-Reply-To: <c812b851-4cef-d5c3-e0cc-d1bca0547f3c@dynamicdevices.co.uk>
References: <c812b851-4cef-d5c3-e0cc-d1bca0547f3c@dynamicdevices.co.uk>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Sat, 31 Mar 2018 17:37:01 +0200
Message-ID: <CALbNGRQ+o4RDANOy41g8K-K4FqNFPtTHA2jJUcb5NVk_EYeEgg@mail.gmail.com>
To: Alex Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: meta-mono: breaking as libglade removed
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
X-List-Received-Date: Sat, 31 Mar 2018 15:37:03 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 30, 2018 at 11:19 AM, Alex Lennon
<ajlennon@dynamicdevices.co.uk> wrote:
> Hi,
>
> libglade seems to have been removed which is breaking meta-mono builds.
>
> What's best to fix this? Should I be adding the recipe into meta-mono?
>
> Thanks,
>
> Alex
As the one who removed it - so feel responsible...

1.You could add libglade to meta-mono but I think there some
additional dependencies which need to be added too
2. Checked configure script of gtk-sharp-2.12.45: Seems libglade is an
optional dependency. I think it should be good enough to remove it
from dependencies.

My suggestion would be 2.

Andreas

