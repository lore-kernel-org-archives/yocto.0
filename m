Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D94EE00D2D; Fri,  2 Oct 2015 05:03:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEF0FE0095C
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 05:02:57 -0700 (PDT)
Received: by ioii196 with SMTP id i196so117029633ioi.3
	for <yocto@yoctoproject.org>; Fri, 02 Oct 2015 05:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=SPtcvd0hwUfKPlSvpR8ckA4/ksjj+oN+YwyrbRUdyfU=;
	b=pUVZ/+mhaeYB1SaB+vWwqlY1w1ejGQt0myaiYAbB+OLJMlqTUcqcZz2E1uZw7ZCiwf
	D8SAMiLr6lOiXm7zrfMmvvijEOL37EAC2SacuIVnquJ/tMm1wNKFDOi4bcZd6WRNi52X
	bf6Gr7go5qTf0YCF+rKejIU7ADxyL6pCU0jczhrBRUkk+qhn+HuRzIu2Ila4OjD8BaNQ
	KLP/br69XyY5adACdHfHlhny2aI+et2z02aRT/wTRzGQKr32W1aKfGm07FEwn6o7pguz
	dVTqvak/zJ90s4AnB8HuQ9RfYW3SYMBiKWGBknM6EPLubS8PVjPSiHgkhRZlvcoNHq0r
	Bnrw==
X-Received: by 10.107.138.21 with SMTP id m21mr19148095iod.115.1443787377057; 
	Fri, 02 Oct 2015 05:02:57 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	kc2sm3454010igb.0.2015.10.02.05.02.55
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 02 Oct 2015 05:02:55 -0700 (PDT)
To: Karim ATIKI <karim_atiki@hotmail.com>
References: <DUB122-W3822DB1A9BC96901F1DF0924B0@phx.gbl>
	<560E6BA8.2050102@gmail.com>
	<DUB122-W69A1756408C95D38CAFE5924B0@phx.gbl>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <560E7269.6090903@gmail.com>
Date: Fri, 2 Oct 2015 08:02:49 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <DUB122-W69A1756408C95D38CAFE5924B0@phx.gbl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [linux-yocto] [raspberryp2] Error during the build of linux kernel
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
X-List-Received-Date: Fri, 02 Oct 2015 12:03:00 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 10/02/15 07:58, Karim ATIKI wrote:
> Hello Trevor,
>
> Thanks for your feedback.
> You really think that "Fido" is an older release ?

Sorry, I didn't mean to imply it was "old" and therefore should be
avoided, I meant to point out that it was something that was released
before the switch to gcc5 by default :-)

> Is the 1.9 release of Yocto stable enough yet ? And will this pb be
> fixed as well ?

I think the next release will be 2.0. Whether or not it is stable enough
is something you will have to evaluate for yourself :-) I'm rather
certain this issue is already fixed in master, therefore it should be
available for the next release.

>
> Karim

Did you really mean to reply personally? I've re-CC'ed the list, hope
you don't mind.

