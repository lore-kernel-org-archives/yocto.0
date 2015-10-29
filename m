Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1837E0088C; Wed, 28 Oct 2015 22:50:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78F34E007E1
	for <yocto@yoctoproject.org>; Wed, 28 Oct 2015 22:50:04 -0700 (PDT)
Received: by igpw7 with SMTP id w7so20578604igp.0
	for <yocto@yoctoproject.org>; Wed, 28 Oct 2015 22:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=YcjX5DDH4qUUAlS3dN1TUyZ/dXy/Ho9pmBMbT624CI8=;
	b=q0jKi+f5bbsAKeWr9rGeP40gyJnubbQJ4PlMS4VP6ZlPBF9oYkn3y7FY/lJJTXjRTP
	XVQzuV2LeE3mJ8lIs4/AiHickJ9scfyg5yEL54J3/xujQABWhjpqsTWwp+GHsB7GY7Ek
	XYDp9ZMFRw4sdGxG0lboMLMjfDNRCoBpcQB6w7uSQRd49PRL13UkFc2MA8PLe4+Dp8yy
	NbNINUG7lotwfIt09i6v+POzpxPJ2GFoi4sHf6VQjahSTFoQsvPnVFM7oSMTsVD/gbNj
	nEFKtm5v5aFFJ1M/lucnnxGwXm08+7EDljrxzFl84rO/TZ/oyAEl+hjaOekMJV+npREy
	MxJw==
X-Received: by 10.50.55.42 with SMTP id o10mr7848198igp.11.1446097804315; Wed,
	28 Oct 2015 22:50:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.133 with HTTP; Wed, 28 Oct 2015 22:49:34 -0700 (PDT)
In-Reply-To: <SIXPR04MB0668A492F04048D5C7998873EC200@SIXPR04MB0668.apcprd04.prod.outlook.com>
References: <2413401446092375@web22h.yandex.ru>
	<SIXPR04MB0668A492F04048D5C7998873EC200@SIXPR04MB0668.apcprd04.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 28 Oct 2015 22:49:34 -0700
Message-ID: <CAMKF1sqfDA_FtZApDAgrB2g3n7peQVVnNWS3cEx1ejX4f_XLMA@mail.gmail.com>
To: YUKATHARSANI JEYACHANDRA <yukatharsanij@tataelxsi.co.in>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: To Specify the Linux Kernel Local Path In SRC_URI
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
X-List-Received-Date: Thu, 29 Oct 2015 05:50:09 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 28, 2015 at 10:15 PM, YUKATHARSANI JEYACHANDRA
<yukatharsanij@tataelxsi.co.in> wrote:
> Hi,
>
> I am trying to build kernel image for new hardware.
>
> So, I prefer to use my linux 3.x version with specific changes.
>
> I want bitbake to fetch the local path of my linux.
>
> Is it possible to specify the local path in SRC_URI.

yes. use file:///path/to/linux.tar or even you can use externalsrc and
point it to your tree during development.
read through
http://www.yoctoproject.org/docs/1.8/dev-manual/dev-manual.html#building-software-from-an-external-source

>
>
> Thanks and Regards,
>
> Yukatharsani J.
>
>
>
>
>
> ________________________________
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on
> behalf of Andres Sagot <andres.sagot@yandex.com>
> Sent: Thursday, October 29, 2015 9:49 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] Kernel Version Dependency in BB Recipe
>
> Hello Yocto Community,
>
> I did a search and found a great deal about layer dependencies, but I am
> still not clear on how or if it is possible to add a kernel version
> dependency to a BB recipe. I would like to bitbake to report an error if it
> attempts to build my custom package with an unsupported version of Linux.
>
> Thank you and best regards,
> Andres
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

