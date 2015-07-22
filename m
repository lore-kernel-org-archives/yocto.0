Return-Path: <aws.ismail@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9D48E00A28; Wed, 22 Jul 2015 10:28:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (aws.ismail[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A32CDE00957
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 10:28:11 -0700 (PDT)
Received: by qkfc129 with SMTP id c129so114900591qkf.1
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 10:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=61GVaFKLTYpHb5lyxsEuz6rDz1FRARy0LXnzOYMw508=;
	b=X6UdC4AyIudqOyZ2DE0KPTnmVI+WU/1ULEdIXVd9m0YQl6eB8hsxmIkXyQAOVIRocx
	feDS8/OjpSJTr5SLRic8PXzwMqF69DW34a1NKgx42x+7SYZyxVGefXU4l0x1+rcRD2td
	JKx5Ov4jxvPZa0WYJgBrldLkOVZftd5Ud+knXorwtZuChlsPWv6C+cV7aUAQ6k1dQHk6
	XhAoQ9vPmZltsGfVhHa1mdkpYVvQ3BYHRplPlEF2lXE8VGrsDmsxUsOOt1FskClaX0jj
	sYEguHrV/6G/9dvLx3yiPldy4ezbznHMhYqy2C+MBqbkQKy1uayErkdakrzocnnyWptz
	/Gfw==
X-Received: by 10.140.22.135 with SMTP id 7mr5393471qgn.98.1437586090705; Wed,
	22 Jul 2015 10:28:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.40.112 with HTTP; Wed, 22 Jul 2015 10:27:51 -0700 (PDT)
In-Reply-To: <DDB0C57E45663A458C5CACB7B5688BC21D8CCCCE@SESTOEX04.enea.se>
References: <CAMHMu0PcDgin-XO_U5qQJ0mf8tf+mZ6hm4_DgMXhFTDhfZ=3XQ@mail.gmail.com>
	<DDB0C57E45663A458C5CACB7B5688BC21D8CCCCE@SESTOEX04.enea.se>
From: Aws Ismail <aws.ismail@gmail.com>
Date: Wed, 22 Jul 2015 13:27:51 -0400
Message-ID: <CAMHMu0OjT4hVy65YJgNaFWg-jx0he2x+J-3WTh9S6k9kYGDEbw@mail.gmail.com>
To: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-cgl] Any plans about adding pcs and/or crmsh as bb recipes ?
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
X-List-Received-Date: Wed, 22 Jul 2015 17:28:14 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 22, 2015 at 11:04 AM, Alexandru Vaduva
<Alexandru.Vaduva@enea.com> wrote:
> For the moment we are concentration on meeting the P1 requirements for CGL.
> If you would like to add your contribution to this layer you are more than welcomed.
> Also if you would like, we could also provide the help and guidance necessary for doing this.
>
>
> Alex V.
>

Thanks Alex. I am looking into pcs right now. I have a crmsh recipe
but I have not fully tested it yet.

AI\

> -----Original Message-----
> From: Aws Ismail [mailto:aws.ismail@gmail.com]
> Sent: Tuesday, July 21, 2015 10:58 PM
> To: yocto@yoctoproject.org
> Cc: Alexandru Vaduva
> Subject: [meta-cgl] Any plans about adding pcs and/or crmsh as bb recipes ?
>
> Hi,
>
> Are there any plans with regards to adding the pcs cli utility and/or the crmsh utility to the meta-cgl layer in the future ?
>
> I have searched the layer index but can't find a mention of those.
> Building pacemaker/corosync from the meta-cgl layer does not provide those utilities either.
>
> Regards,
>
> AI\

