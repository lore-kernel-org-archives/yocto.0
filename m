Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11A0FE00B36; Wed, 14 Oct 2015 06:50:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BAD9E00A71
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 06:50:28 -0700 (PDT)
Received: by lfaz124 with SMTP id z124so11743154lfa.1
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 06:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=6dtQsRJiMwYK5NxkrIDZ1L7eNhkGQ9H2cMyphBTul2I=;
	b=jfNuc/60r5/R3Ld/YT6An/EslU/bvMNIIbdKOkjC4qaEZKtBSpnvLbRAhW+0YCaHq7
	ZjosLW8ejX6bWEZFDn/OZT9KzZxTI2tkfqUQYY+Bo3biSIeEud+cBfXfWb6i0fehep6B
	TcpM+KbbEFUDfS351Rc0dqU3Rx3s7DCeOj8t14oF4TYlFd+/W3BDS3Z23VTvLrAoawCx
	eB/yetKOaWzxFLg/jS1vp7gIAxRd0i6qAd+mgbTicE/Z7B7UYyIMbjAle54MjUUnYzSa
	m2pgh/5OI/PjFmr7xWjCSpESG6Ftqr0Uc9yvQKyA8FldgNGlPqQv5Yuk0r21/al5A3ex
	lCtA==
X-Received: by 10.25.41.72 with SMTP id p69mr1094854lfp.111.1444830626915;
	Wed, 14 Oct 2015 06:50:26 -0700 (PDT)
Received: from [192.168.187.4] ([213.132.102.178])
	by smtp.googlemail.com with ESMTPSA id
	k19sm1374862lfg.8.2015.10.14.06.50.25
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 14 Oct 2015 06:50:25 -0700 (PDT)
Message-ID: <561E5D99.6020304@gmail.com>
Date: Wed, 14 Oct 2015 06:50:17 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: chris@2net.co.uk, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <561E588D.5060609@2net.co.uk>
In-Reply-To: <561E588D.5060609@2net.co.uk>
Subject: Re: RFC: Yocto LTS?
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
X-List-Received-Date: Wed, 14 Oct 2015 13:50:32 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Chris,


On 10/14/2015 06:28 AM, Chris Simmonds wrote:
> Hi,
> 
> Is there a statement about the period of support for a Yocto release?
> Looking through the updates, it seems that 12 months is typical, a was
> the case for 1.4, 1.5 and 1.6 for example, but I cannot see a
> declaration anywhere that this is the expected norm.

There is a release every 6 months.

https://wiki.yoctoproject.org/wiki/FAQ#What_is_the_release_cycle_of_the_Yocto_Project.3F

> 
> Leading on from that, is 12 months enough? Most projects have a
> lifecycle that is much longer. Is there an argument for an LTS Yocto
> release, maybe once a year? If not, what is the recommended way for a
> project developer to keep a distribution up to date in the light of the
> several well-publicised security flaws that have been discovered over
> the last year or so and the new ones that will no doubt be discovered in
> the future?

At table of the current supported release can be found at
https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance

- Armin

> 
> Regards,
> Chris Simmonds
> 

