Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE09FE00C5C; Mon, 21 Dec 2015 03:43:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F9C6E00903
	for <yocto@yoctoproject.org>; Mon, 21 Dec 2015 03:43:13 -0800 (PST)
Received: by mail-wm0-f47.google.com with SMTP id l126so66175491wml.1
	for <yocto@yoctoproject.org>; Mon, 21 Dec 2015 03:43:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=UZPHrU1VVQZKOz1ZAjBMJAnUgDRWZANzzP5miF6tA0g=;
	b=ew+3FedwWoz7oWS8Zkt2L6rHVD7My3/jNAjedTflDZd7Mv9Yh5Yv3VVMc/t1JGXc3S
	KKQQpQa22Iziak3cUxseajwABZl8LWn4lW4P1nSW0jZu05zdVd3QrOBwRf5l2W1P+l92
	iDNitxqzkxpsoO84n0iENwtAdY0Skd10ovNT57GsQCCPNfDpPLGnGdH8HGbTMiKP0TUw
	w+dFYQRBcE3TmpWb2tyeY02ukI+LfEnSbm1T6269PpHzwOSd3NHs+gGwG7cutzYJe/KP
	ccGfgYnrEnjdz1Agi3K1RFMsR87COzP+hU6qwc5AAphHK3tT7Fsk4NQeq6a9EscETeOT
	H9ow==
MIME-Version: 1.0
X-Received: by 10.194.111.232 with SMTP id il8mr23441379wjb.150.1450698192987; 
	Mon, 21 Dec 2015 03:43:12 -0800 (PST)
Received: by 10.28.109.210 with HTTP; Mon, 21 Dec 2015 03:43:12 -0800 (PST)
In-Reply-To: <CAJTo0Lb9PkqWxb6rDGv=TvJsi4b0F3UPzH-qmTPQ8-KtqFOMKA@mail.gmail.com>
References: <CAAfyv378CR0-RFgLUp7V7HjuzdgEAjXVT2_nFTUvGCbRa2i76A@mail.gmail.com>
	<CAJTo0Lbx7BWsWQiYqsRgbjStZh9sN7-WOFacJTfvG9GeEfhxnA@mail.gmail.com>
	<3848CC51-54FB-4AA9-A548-95229C186560@binarylemon.com>
	<CAJTo0Lb9PkqWxb6rDGv=TvJsi4b0F3UPzH-qmTPQ8-KtqFOMKA@mail.gmail.com>
Date: Mon, 21 Dec 2015 12:43:12 +0100
Message-ID: <CAAfyv3547B8cC1Cw0Wi6LBAcEdcP+cSHkmkg1tqCGBG9vnXHVw@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: building on os x
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
X-List-Received-Date: Mon, 21 Dec 2015 11:43:15 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Dec 21, 2015 at 12:24 PM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 21 December 2015 at 11:09, Jozef Maslik <maslo@binarylemon.com> wrote:
>>
>> Anyway, are there any activities or plans to fix and support osx?
>
>
> Well with El Capitan's improved security apparently crippling LD_PRELOAD (so
> I hear, unverified currently), Pseudo won't work, which means an alternative
> will need to be researched and implemented.  We really recommend using a VM.
> For what it's worth OSX supports hypervisors so something like
> https://github.com/mist64/xhyve is free and should be very efficient.
Ah great. Thanks for all valuable infos.
>
> Ross

BR,

marek


-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

