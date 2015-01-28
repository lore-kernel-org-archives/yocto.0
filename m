Return-Path: <maxin@maxinbjohn.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85E15E0086E; Wed, 28 Jan 2015 04:01:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E25FE00757
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 04:01:03 -0800 (PST)
Received: by mail-ie0-f172.google.com with SMTP id rd18so21095006iec.3
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 04:01:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=KNXqZDfN029cSAkXNaBm1s0t3fA2U+9GQpMHYoLRcl8=;
	b=NwDhOShmEaYA1Z21tewoMkXBi7H8KcmGiN6kUUHktqMReBJIElNauFqv6CeUE+xhux
	fAi6RMX+oIz9u9E0WKo27D+iDf6/GS8ArMi3PtrHJLbIOs6bt9W1ZaREUFbote1A+wZa
	llzQKhAYgWMr1+Vi3+EMPzhFFGV0lseAaoShwBmDv+6NuPN4GtOVZK/9aPVOWCSN0RAF
	BqqTU/7g0/qb5pix0b85umaIFxnE1splOTV4WjdMCjmPALw8fLA6swTT9XDrg04z1r2n
	oi1A7GQ7VJ91b9lnXRjWJ8227YZohPivHLEJRIp87EuaXP3zfz92moARLSzKHHg5cYM6
	u6Gw==
X-Gm-Message-State: ALoCoQnLQDHr3H8Lj1aCavLpCYEYBbnL13KbtPX/RMM0uycQaEGLaRPN9zB48KeL+28wi89Hf/60
MIME-Version: 1.0
X-Received: by 10.42.175.3 with SMTP id ay3mr2815800icb.58.1422446462886; Wed,
	28 Jan 2015 04:01:02 -0800 (PST)
Received: by 10.36.124.210 with HTTP; Wed, 28 Jan 2015 04:01:02 -0800 (PST)
X-Originating-IP: [192.36.1.252]
In-Reply-To: <BAY169-W68A99F2815567D9CCB628AE330@phx.gbl>
References: <BLU436-SMTP194E8A8B18DB6A3ADDA00AFAE320@phx.gbl>
	<CAFicg85waXXFmZsr4+fbAByoB-a_xUN23EHJD0scqisNunP2vQ@mail.gmail.com>
	<BAY169-W55C7EBD601DFB42F2CA8ADAE330@phx.gbl>
	<3859281.CPjbAClMcV@peggleto-mobl5.ger.corp.intel.com>
	<BAY169-W68A99F2815567D9CCB628AE330@phx.gbl>
Date: Wed, 28 Jan 2015 13:01:02 +0100
Message-ID: <CAFicg857GKOgixieHfk36wXBmdnaLFhcaQzFLZGeMuTWZnkR0g@mail.gmail.com>
From: Maxin John <maxin@maxinbjohn.info>
To: Jim Abernathy <jfabernathy@outlook.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	yocto <yocto@yoctoproject.org>
Subject: Re: adding meta-oracle-java
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
X-List-Received-Date: Wed, 28 Jan 2015 12:01:07 -0000
Content-Type: text/plain; charset=UTF-8

Hi Jim,

On Wed, Jan 28, 2015 at 12:21 PM, Jim Abernathy <jfabernathy@outlook.com> wrote:
>
>
>> From: paul.eggleton@linux.intel.com
>> To: jfabernathy@outlook.com
>> CC: maxin@maxinbjohn.info; yocto@yoctoproject.org
>> Subject: Re: [yocto] adding meta-oracle-java
>> Date: Wed, 28 Jan 2015 10:55:23 +0000
>
>>
>> On Wednesday 28 January 2015 05:44:47 Jim Abernathy wrote:
>> > Thanks, I guess the problem for me stems from not knowing the difference
>> > between, IMAGE_INSTALL_append and CORE_IMAGE_EXTRA_INSTALL, which I was
>> > using.
>>
>> Basically, the only difference is that CORE_IMAGE_EXTRA_INSTALL will only
>> work
>> with image recipes that inherit core-image. If the recipe inherits image,
>> its
>> value won't be used.
>>
>> Cheers,
>> Paul
> thank, well I got the java included in my build, but I can't execute it.
> very strange!
>
> I see java is at /usr/share/java/bin and there's a link to java in the
> /usr/bin, but at the command line I can't run, java -version.  I get java
> not found.  It's like it a shell problem.  I had the same issue when I just
> installed the tarball for JRE on a standard core-image-base before.

This can also be related to the architecture difference of java binary. Can you
share the output of "file" command on java binary  along with "MACHINE"
and other related details in local.conf file?

> I'm running as the only user on the system, root.
>
> Jim A

Warm Regards,
Maxin

