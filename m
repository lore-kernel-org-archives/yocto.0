Return-Path: <kergoth@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEA75E006C7
	for <yocto@yoctoproject.org>; Sat,  7 Apr 2012 11:22:19 -0700 (PDT)
Received: by qam2 with SMTP id 2so956431qam.14
	for <yocto@yoctoproject.org>; Sat, 07 Apr 2012 11:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=Wr8d30MlkO+AMyuSCe7/wd1ZKt7HeKZJA7nUqIZmPaI=;
	b=jO9920bLdUO7PAXEnDBJs3XxQP0aRG6FdM4qR/BIzrLO4Af2m+m2GmQ+aqdWtgOxfb
	KWNdHiWmU8J0Ta1+l0ZQRTm3OlXUz6Ejvs8ARJIV9bHou1uP/tHjvgSGjPCcqZ2WBOnt
	0SDhI8jJA1AWOYLink3igSegUVljJ8DzVgOGNSjN8dDRKxXn3UADjPfyMlDWvLsYmYk/
	5g/yhXCid8z4TxRW1+bMZSS+P0o0a0N9Ooy4bUJcATmPBaI+Uhp8eF5rvqPFXY3wR8zM
	6zRZCNojaacujKZOHOYkFQOpj25FXA1e+bRziSFcbkd1CcKVmteqqmPf072ZQMg8P09A
	JYIQ==
Received: by 10.224.33.134 with SMTP id h6mr2644061qad.15.1333822939132; Sat,
	07 Apr 2012 11:22:19 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.79.79 with HTTP; Sat, 7 Apr 2012 11:21:58 -0700 (PDT)
In-Reply-To: <9a297b0.eb5a.1368dc7a3a7.Coremail.caterwaul@163.com>
References: <9a297b0.eb5a.1368dc7a3a7.Coremail.caterwaul@163.com>
From: Chris Larson <clarson@kergoth.com>
Date: Sat, 7 Apr 2012 11:21:58 -0700
X-Google-Sender-Auth: n4KtACKzSHF7RBj8s6kYMOc8E2Q
Message-ID: <CABcZANng9wO3KC=4c7e=zekDmXAL+75BvBBrPYGRqmrUuCjgpQ@mail.gmail.com>
To: caterwaul <caterwaul@163.com>
Cc: yocto@yoctoproject.org
Subject: Re: Where does this object "d" come from?
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
X-List-Received-Date: Sat, 07 Apr 2012 18:22:20 -0000
Content-Type: text/plain; charset=UTF-8

2012/4/7 caterwaul <caterwaul@163.com>:
> I'm just start to investigate how bitbake works and need your help about a
> question. Thank you in advance.
>
> The object "d" in the pasted paragraph is passed down through the following
> Python scripts. But where does the object "d" come from? and where can I
> find the its definition?

It's a representation of the metadata. In that context, the recipe
metadata. See bb.data.data_smart in the bitbake python module for the
class definition.
-- 
Christopher Larson

