Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56272E00D85; Tue, 30 Jul 2019 22:16:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.178 listed in list.dnswl.org]
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
	[209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45C11E00CD5
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2019 22:16:21 -0700 (PDT)
Received: by mail-qt1-f178.google.com with SMTP id k10so65416361qtq.1
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2019 22:16:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=2uOuCewmMCUGDNbUstUIbpaeylw5Ce6cP1G+9dDFlJ4=;
	b=KDoN0sYvaG6Xw9/5reXBm+70Zp0M0Bz1fiwG2lPAOCEfVAwLCHpMKGNvmQqyC+GUJx
	5n2l/41P9K8bVfgKAeM26Mu1iFtWOEyvbMPijXletMPnRVrb0LFm71sfWj0hAVN2ADHS
	67VR+BsspPXEx4gS/QkZmeDXZe91rTfVxRdyHzxk67YygC1/ggHNpYir/1s8FDHvdFZ5
	Hds/yHBYvAnY5F6Omv59jonFm1/RUEVys83f0yDlTUhlZQEbsbenqIv3f2oH0vBQ7y3e
	cO04/PEUEDpoqxVkFrwaWD5FhKaf0Ti9NW2HXtGkD5GAtSYwdXdz9jE+zYwNiLkYu+M/
	wphQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=2uOuCewmMCUGDNbUstUIbpaeylw5Ce6cP1G+9dDFlJ4=;
	b=rFfryqHdjT31lST/XXdAgLdmJpqnmPPOCLfk9bC2vjxwOJC/B5fYD7YzDEs5f8SNlY
	7Z25qCpD3PrcF+4FJmkFBs4KdzpqrT+zMB1EoW35tiWfSpr2oOFKqQ1NPXrIg+AN455b
	FMOv9NKj9bqCZaPhKKhbtL0udzarBF/GiGvxQ/LzcZysdmRXzIm0ZDEfeAd5dISdWdIu
	360yES0Ux6U9gfgjoyI61cyNIapo1swJFO17TtB3TzibvwVHLRDN6B2ycuK0ZSEswvRG
	57XqUwmjvb1aORz5t4PdY3kbE9XbfFY5USIT+prbgeTrVJS8I6ZwCfrAshtFsDtN39Gk
	91YQ==
X-Gm-Message-State: APjAAAUXst+CQk2TNL8unwut1ri8yjcgdSDlUqXWxEftScvq268fuqeL
	iKTv+jZJarFXZ0vJE0NdErACB+vQXPHhisj8uSg=
X-Google-Smtp-Source: APXvYqxZ8wbPnvrJDGMQnDzPqhxxqOrW47VgQ9WOUgWXkvza+OIAiE2hIpfe23bMMTMqOGxKXN2WwM2lQmpZVNadpDk=
X-Received: by 2002:ac8:764f:: with SMTP id i15mr82165977qtr.194.1564550180336;
	Tue, 30 Jul 2019 22:16:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAFq4t4gy3vRzfR00sz8PPS3VUGE_YXu2tJYD8KWnEvUBk4DhEg@mail.gmail.com>
In-Reply-To: <CAFq4t4gy3vRzfR00sz8PPS3VUGE_YXu2tJYD8KWnEvUBk4DhEg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 30 Jul 2019 22:16:03 -0700
Message-ID: <CAMKF1so3SQodWzJ9RxwyqGzq5cMXNmVejmnwRae9Vm9BkQz_UA@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Warrior, extended SDK
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
X-List-Received-Date: Wed, 31 Jul 2019 05:16:22 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, Jun 22, 2019 at 1:37 PM Peter Balazovic
<balazovic.peter@gmail.com> wrote:
>
> Hello guys
>
> I'm trying to generate extended SDK under Yocto-Warrior and getting error such as
>
> ERROR: image-qt5-1.0-r0 do_sdk_depends: The file /usr/include/tensorflow/contrib/lite/string_util.h is installed by both tensorflow and tensorflow-lite, aborting
> ERROR: image-qt5-1.0-r0 do_sdk_depends:
> ERROR: image-qt5-1.0-r0 do_sdk_depends: Function failed: extend_recipe_sysroot
>
> can you help me identify an issue on this fail?
>

you are including two packages which are providing same file. Only one
of those should be providing the file, either delete it or rename it
in other recipe if both packages
are to be installed side by side

> Thanks.
> Peter
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

