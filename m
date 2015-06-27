Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64013E009DF; Fri, 26 Jun 2015 17:25:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (picmaster[at]mail.bg)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [193.201.172.118 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx2.mail.bg (mx2.mail.bg [193.201.172.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C576E00947
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 17:25:53 -0700 (PDT)
Received: from [192.168.0.62] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx2.mail.bg (Postfix) with ESMTPSA id E9EEE60005BA;
	Sat, 27 Jun 2015 03:25:50 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1435364751; bh=jb/JcK2ooYApt2gNJU84vchqGYV6lycQqOSVMmOlqAY=;
	h=Message-ID:Date:From:MIME-Version:To:CC:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=pxaIJQLMjbTTnASAdCXvcJ3yKrAvj8n7dFKlh/Wn1wMzWTCsGzaZ73GrLP4sTlL9o
	pW+AtA2Dgo05y4fAgA3WJOYoX+z/YpFXulXEhVIlK5bhCiv0e3HlXG3kLcVWTsEosz
	weRQnmKwCECVY2VIk1llxAqR5apLyMA4sLGVuZ2U=
Message-ID: <558DED8E.4060705@mail.bg>
Date: Sat, 27 Jun 2015 03:25:50 +0300
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: "Daniel." <danielhilst@gmail.com>
References: <CAF3SDA76D5CjH8s0BGSovUXqgaKkGDy0YMD7No1qZujJd69yBw@mail.gmail.com>	<558DAD7C.4060409@linux.intel.com>
	<558DB5E3.5030109@mlbassoc.com>
	<CAF3SDA7s+wk5Crs8YwxGQKOtKZcFS2VKV=FYaoy8GkFK=b5wdg@mail.gmail.com>
In-Reply-To: <CAF3SDA7s+wk5Crs8YwxGQKOtKZcFS2VKV=FYaoy8GkFK=b5wdg@mail.gmail.com>
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
X-List-Received-Date: Sat, 27 Jun 2015 00:25:59 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi guys,

On 06/26/2015 11:32 PM, Daniel. wrote:
> Hmm, this seems cleaner than setting whole IMAGE_FSTYPES, I'll try!
>
> Thank you!
>
> 2015-06-26 17:28 GMT-03:00 Gary Thomas <gary@mlbassoc.com
> <mailto:gary@mlbassoc.com>>:
>
>     On 2015-06-26 13:52, Leonardo Sandoval wrote:
>
>         On 06/26/2015 02:45 PM, Daniel. wrote:
>
>             Does any one knows how to avoid the creation of .sdcard
>             images? This ones
>
>         The variable controlling the type of output images is
>         IMAGE_FSTYPES, so you can redefine it under your local.conf. To
>         see the current content, you can do
>
>         $bitbake -e <your image> | grep IMAGE_FSTYPES
>
>
>     Just add this line to your local.conf
>        IMAGE_FSTYPES_remove = "sdcard"
>
>
>
>             takes a lot of diskspace and I have to delete it
>             periodically, which gives
>             headaches about cleaning everything every time. A have an
>             50GB partition
>             and from month to month I get out of disk space. :(
>
>             Thanks in advance
>
>
>
>
>     --
>     ------------------------------------------------------------
>     Gary Thomas                 |  Consulting for the
>     MLB Associates              |    Embedded world
>     ------------------------------------------------------------
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> --
> /"Do or do not. There is no try"/
> ///*Yoda Master*/
>
>

Removing "sdcard" from IMAGE_FSTYPES will prevent virtual/kernel and
virtual/bootloader from being deployed, and most of the time we need
them, so be warned. At least this is how things work on imx6 builds :D.

Regards,
Nikolay

