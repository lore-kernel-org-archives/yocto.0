Return-Path: <itspreetip89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83952E00832; Thu, 26 Mar 2015 08:26:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (itspreetip89[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.65 listed in list.dnswl.org]
Received: from mail-la0-f65.google.com (mail-la0-f65.google.com
	[209.85.215.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D241E0056E
	for <yocto@yoctoproject.org>; Thu, 26 Mar 2015 08:26:35 -0700 (PDT)
Received: by labgq15 with SMTP id gq15so2538713lab.3
	for <yocto@yoctoproject.org>; Thu, 26 Mar 2015 08:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=82+ZeAJatKpLMg3uIUt8EL42cYln/khvDHyGwSvDKmc=;
	b=EfgaDSoEwcqcCwkmBR8xxYUAJUBS/u/AV2piDQEYV3ZbtkD2gU2zBjLhAyZqJieQX1
	5RJSixmXuEk5XueWpHyifB1tCXlCFhTjCn77p0MPIKO15cEpTRdlJ9R3XZUVOidlWPFC
	TtNh5DjiJDn41HiCDXisX+rxgILUte7Mluh2RcvnR69HSFAKWZBl6Z/SNdBlkokbyEG8
	2s/JKlVzjXTCdK2uKXeeNBoZmuAuN3RnqKziLtHMB3Cp3Q6XEoeN5PudFOk8AkQBZTgB
	8aA+Ro3QoHzIGfxN3nGI2lzRYmfrfEFIWEF0dSP1eiD6k7yc9iHtZiakHsS9re2leh1U
	uBPw==
MIME-Version: 1.0
X-Received: by 10.152.234.108 with SMTP id ud12mr13764332lac.81.1427383593604; 
	Thu, 26 Mar 2015 08:26:33 -0700 (PDT)
Received: by 10.25.37.130 with HTTP; Thu, 26 Mar 2015 08:26:33 -0700 (PDT)
In-Reply-To: <CA+jjunDcbN-xq8TUB_8y6+HKnhErtckaGYgU7RnhGxV0OC1Qfw@mail.gmail.com>
References: <CA+jjunDcbN-xq8TUB_8y6+HKnhErtckaGYgU7RnhGxV0OC1Qfw@mail.gmail.com>
Date: Thu, 26 Mar 2015 20:56:33 +0530
Message-ID: <CA+jjunCw0m1sVKc5ZHGOMUkA+MqzEJ0gAu5-YPnD9uWL4hfy_Q@mail.gmail.com>
From: Preeti P <itspreetip89@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: : About adding documentation in final SDK image
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
X-List-Received-Date: Thu, 26 Mar 2015 15:26:37 -0000
Content-Type: text/plain; charset=UTF-8

Hi all,

Any inputs on below mail?

Regards,
Preeti

On 3/19/15, Preeti P <itspreetip89@gmail.com> wrote:
> Hi all,
>
>
>
> I am working on adding the documents in to my SDK image.
>
> Basically, I want to have the man and info documentation for the tool-chain
> item in my SDK image.
>
>
>
> As per my understanding, the install package for every recipe gets split
> into different packages and finally shipped in to the SDK image.
>
>
>
> To add the documents in my SDK image, I tried to add the '-doc' support in
> 'PACKAGES' variable but still the documentation related files are not there
> in the final image.
>
>
>
> I even tried by adding below lines in to the do_install function in my
> recipe but my final image does not have those files:
>
> do_install {
>
>                 install -d ${D}${includedir}${doc}
>
>                 install -m 644 ${S}/doc/*.info ${D}${includedir}${doc}
>
> }
>
>
>
> Can anyone provide me inputs on how to add the documentation for packages
> in to the final SDK image?
>
>
>
> Thanks,
>
> Preeti
>

