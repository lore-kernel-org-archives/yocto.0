Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1EDDE009DF; Fri, 26 Jun 2015 17:39:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [193.201.172.118 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (picmaster[at]mail.bg)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx2.mail.bg (mx2.mail.bg [193.201.172.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CD64E00947
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 17:39:44 -0700 (PDT)
Received: from [192.168.0.62] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx2.mail.bg (Postfix) with ESMTPSA id EAD6560005B8;
	Sat, 27 Jun 2015 03:39:42 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1435365583; bh=4wNI846HppQ0+dvddT68e0mEZ5eJSbh6x+9Jp4VZctI=;
	h=Message-ID:Date:From:MIME-Version:To:CC:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=LrXzdXtDtjbNiTDmVwasxxmdMqnOtPNelIsUnBP9mLsUUkQoYAs7wXSGlmO1Cwy1c
	sXd205ctLEJu+2nMbvpWOgVtuXEgu5BySD50q97WzFCP02Yxr3dE9q1kQJ3SgOrjEb
	7xHQsE8fvdj9DFa133sdafbiPaNOSKTcd3YgT3As=
Message-ID: <558DF0CE.1050101@mail.bg>
Date: Sat, 27 Jun 2015 03:39:42 +0300
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: "Daniel." <danielhilst@gmail.com>
References: <CAF3SDA76D5CjH8s0BGSovUXqgaKkGDy0YMD7No1qZujJd69yBw@mail.gmail.com>	<558DAD7C.4060409@linux.intel.com>	<558DB5E3.5030109@mlbassoc.com>	<CAF3SDA7s+wk5Crs8YwxGQKOtKZcFS2VKV=FYaoy8GkFK=b5wdg@mail.gmail.com>	<558DED8E.4060705@mail.bg>
	<CAF3SDA4jb+dLGCuDpLB32AqiFtTE=m9L6Rp+VGfrg3YZ9DFJwA@mail.gmail.com>
In-Reply-To: <CAF3SDA4jb+dLGCuDpLB32AqiFtTE=m9L6Rp+VGfrg3YZ9DFJwA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: Avoid creation of .sdcard images.
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
X-List-Received-Date: Sat, 27 Jun 2015 00:39:47 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Daniel,

On 06/27/2015 03:30 AM, Daniel. wrote:
> What you mean about deployed? They are compiled but doesnt go to
> tmp/deploy folder?!

Exactly. In my project I also don't use the sdcard image, but I just
have to leave it because of the previously described behavior.

Guess how I discovered it :D (hint: tried to optimize the build times
and disk usage).

Best way is to see for yourself. Just edit the file sources/meta-
yourlayer/conf/machine/yourboard.conf and put something like this:

# Shoot myself in the foot
#IMAGE_FSTYPES = "tar sdcard"
IMAGE_FSTYPES = "tar"

...and give it a try. It may be a good idea to fully clean your build
space (rm -fr cache sstate-cache tmp) before building, otherwise old
build products in tmp/deploy can fool you that a build is properly
done, while it was not.

>
> Im building to imx6 :/
>
> Em 26/06/2015 21:25, "Nikolay Dimitrov" <picmaster@mail.bg
> <mailto:picmaster@mail.bg>> escreveu:
>
>     Hi guys,
>
>     On 06/26/2015 11:32 PM, Daniel. wrote:
>
>         Hmm, this seems cleaner than setting whole IMAGE_FSTYPES, I'll try!
>
>         Thank you!
>
>         2015-06-26 17:28 GMT-03:00 Gary Thomas <gary@mlbassoc.com
>         <mailto:gary@mlbassoc.com>
>         <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>:
>
>              On 2015-06-26 13:52, Leonardo Sandoval wrote:
>
>                  On 06/26/2015 02:45 PM, Daniel. wrote:
>
>                      Does any one knows how to avoid the creation of .sdcard
>                      images? This ones
>
>                  The variable controlling the type of output images is
>                  IMAGE_FSTYPES, so you can redefine it under your
>         local.conf. To
>                  see the current content, you can do
>
>                  $bitbake -e <your image> | grep IMAGE_FSTYPES
>
>
>              Just add this line to your local.conf
>                 IMAGE_FSTYPES_remove = "sdcard"
>
>
>
>                      takes a lot of diskspace and I have to delete it
>                      periodically, which gives
>                      headaches about cleaning everything every time. A
>         have an
>                      50GB partition
>                      and from month to month I get out of disk space. :(
>
>                      Thanks in advance
>
>
>
>
>              --
>              ------------------------------------------------------------
>              Gary Thomas                 |  Consulting for the
>              MLB Associates              |    Embedded world
>              ------------------------------------------------------------
>              --
>              _______________________________________________
>              yocto mailing list
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>         <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
>         https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
>         --
>         /"Do or do not. There is no try"/
>         ///*Yoda Master*/
>
>
>
>     Removing "sdcard" from IMAGE_FSTYPES will prevent virtual/kernel and
>     virtual/bootloader from being deployed, and most of the time we need
>     them, so be warned. At least this is how things work on imx6 builds :D.
>
>     Regards,
>     Nikolay
>

Regards,
Nikolay

