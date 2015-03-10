Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2EB5E006E9; Tue, 10 Mar 2015 12:01:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 76116E003A8
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 12:01:53 -0700 (PDT)
Received: (qmail 27998 invoked by uid 1003); 10 Mar 2015 19:01:52 -0000
Received: from unknown (HELO ?192.168.11.101?)
	(philip@opensdr.com@71.171.10.241)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	10 Mar 2015 19:01:52 -0000
Message-ID: <54FF3F94.7020701@balister.org>
Date: Tue, 10 Mar 2015 15:01:40 -0400
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Prashant Purohit <prashantpurohit025@gmail.com>, 
 yocto@yoctoproject.org
References: <CACmjmcxNjHE0t+Qe23_z8y3kAa1gg4sgGd-g2qGLN+_6f9uuAg@mail.gmail.com>
In-Reply-To: <CACmjmcxNjHE0t+Qe23_z8y3kAa1gg4sgGd-g2qGLN+_6f9uuAg@mail.gmail.com>
Subject: Re: : Kernel panic issue for 'armv7athf-neon' target variant.
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
X-List-Received-Date: Tue, 10 Mar 2015 19:01:56 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 03/10/2015 09:24 AM, Prashant Purohit wrote:
> Hi,
> 
> I am trying to boot kernel image for 'armv7athf-neon' using QEMU.
> 
> To do the same, I have included the 'tune-arma7.inc'
> (/meta/conf/machine/include/arm/arch-armv7a.inc) and configured DEFAULTTUNE
> variable to 'armv7athf-neon'.
> I am successful in building the kernel image and QEMU for this variant but
> when I try to boot the image using runqemu, I am getting kernel panic error.
> 
> The log for the same is attached with this mail.
> Has anyone faced the same issue previously or has any inputs for it?

I've seen similar issues building the kernel with thumb2, I went to
armv7ahf-neon (dropped thunb2) and the issue cleared up.

Philip


> 
> Regards,
> Prashant
> 
> 
> 

