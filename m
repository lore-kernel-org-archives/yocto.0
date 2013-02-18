Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com
	[74.125.82.171]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id D85E4E0144A
	for <yocto@yoctoproject.org>; Sun, 17 Feb 2013 18:16:08 -0800 (PST)
Received: by mail-we0-f171.google.com with SMTP id u54so4240402wey.2
	for <yocto@yoctoproject.org>; Sun, 17 Feb 2013 18:16:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=VeS9Uchtg8hN6kiMYbisy6nHWhrZEbrTSb14QfqDDWY=;
	b=WIHxPUOBOwo/wfCdkLjfsWFB2WeTNJ6Dui00MDK7mk6h8dcVweoKUy9r/MaOxotkZB
	2IB+8bwRDoiTBDPBTwaYKzyiU0+7RWr+wMK/GTIyu0NYOzlwwBsH4iQJn5w9QDmnIGgb
	Z3vYZHSkfnRrkkkSZG2UFbgb9YjJQMTgPlZVW9yozKIhkRCQZH5FGb1e7qmcvjaS3AMk
	s2Kqw6ASM/JOsY7p2+YY1zqlJvcsIu8ls70/9/YuCkehh9YOq+hZMsClCdOJ4xzVmu+d
	6TG8pbFf+i5VKiAtxO0pMnXhCq51A6qqZ4ICnZCKi/Xs1pu3tQ1duiEBBZkBJqhh6WW9
	TvrQ==
MIME-Version: 1.0
X-Received: by 10.180.77.9 with SMTP id o9mr17393309wiw.16.1361153766894; Sun,
	17 Feb 2013 18:16:06 -0800 (PST)
Received: by 10.194.36.228 with HTTP; Sun, 17 Feb 2013 18:16:06 -0800 (PST)
In-Reply-To: <CAHUNapRsL+R2+inZztqdTBfVM9EZNtgTWayjLWXE_6tQnd+6Mw@mail.gmail.com>
References: <1360981747.1691.29.camel@empanada>
	<CAHUNapRsL+R2+inZztqdTBfVM9EZNtgTWayjLWXE_6tQnd+6Mw@mail.gmail.com>
Date: Sun, 17 Feb 2013 21:16:06 -0500
Message-ID: <CAHUNapRj7r+u500hA4WSc3TMMo85E9yJSrUinfcR7P+6WgU-tA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Updated Yocto Hands-on Kernel Lab available
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
X-List-Received-Date: Mon, 18 Feb 2013 02:16:09 -0000
Content-Type: text/plain; charset=ISO-8859-1

...sorry, I meant to CC the list too


---------- Forwarded message ----------
From: Trevor Woerner <twoerner@gmail.com>
Date: Sun, Feb 17, 2013 at 9:15 PM
Subject: Re: [yocto] Updated Yocto Hands-on Kernel Lab available
To: Tom Zanussi <tom.zanussi@intel.com>


Hi Tom,

I can see how the kernel *.bb files get pulled in due to the following
line in each lab's layer configuration (${LAYERDIR}/conf/layer.conf):

    BBFILES := "... ${LAYERDIR}/recipes-*/*/*.bb ..."

Since the *.bb files are located under
${LAYERDIR}/recipes-kernel/linux/<kernel>.bb this matched the above
pattern.

What I can't figure out is why, for example, in lab1 are the kernel
patch files located in

    ${LAYERDIR}/recipes-kernel/linux/linux

while the kernel patch files for lab2 are in

    ${LAYERDIR}/recipes-kernel/linux/files

Does bitbake find the patch files for lab1 in a subdirectory called
"linux" because the recipe's name is linux_3.0.18.bb? Because I don't
see anything in that particular recipe which would suggest it
(bitbake) should look there (linux). And when I go to lab2 and rename
the "files" directory to "linux-yocto" the build doesn't work, so this
behaviour would seem to discount the belief that a patch directory
name can take on the recipe name and be found.

Best regards,
    Trevor

