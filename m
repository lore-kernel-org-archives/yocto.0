Return-Path: <jfabernathy@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2873DE013F7
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 14:29:47 -0700 (PDT)
Received: by yenl5 with SMTP id l5so4301337yen.35
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 14:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=/bkprPXJmFaJFDGuGjTgoTXzD+r/sRJ19nxLBD+DQvA=;
	b=ERDFGhiOzMdrq9QNte8T0LNTtUt0cURsEPQoR1mcfc6nGJUgVKqMEdxv3n28TGhxtP
	+u7hRXWUNSRpHjI/bd8Kot5P2qppTIYr7fhEVH4Fij/F9zi4MnAhWVb//v61FW/YLly2
	IPQQzBMgcgCxPH9k/n5nsechX3wX2s2ejgikYqKHujWtB1/H/AagbmNjnn1JUZ3tHLul
	4sIOkMMESrZ8DyrYSSIzRJKJ8mUONHoYqUQtf0X03dcu+pE1EXmxSTYTcxXnyTvbuB1B
	BV+6pcd8f+tO39T/MBb2vX3cVuOLWrLzRRnfugJZhBtaEVmUcq5qtFU0uUngsqsrIzlr
	Y96A==
Received: by 10.236.190.5 with SMTP id d5mr19848827yhn.49.1340054986562;
	Mon, 18 Jun 2012 14:29:46 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id
	e19sm31810920ann.10.2012.06.18.14.29.45 (version=SSLv3 cipher=OTHER);
	Mon, 18 Jun 2012 14:29:46 -0700 (PDT)
Message-ID: <4FDF9DC9.1000805@gmail.com>
Date: Mon, 18 Jun 2012 17:29:45 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Marc Ferland <ferlandm@sonatest.com>
References: <4FDF9720.7080204@gmail.com> <87lijkuxir.fsf@sonatest.com>
In-Reply-To: <87lijkuxir.fsf@sonatest.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: basic recipe building - iperf
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 18 Jun 2012 21:29:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/18/2012 05:21 PM, Marc Ferland wrote:
> jfabernathy<jfabernathy@gmail.com>  writes:
>
>>     I needed to do some network performance testing on a Crownbay board and
>>     needed iperf in that environment.  Since I had the core-image-sato-sdk
>>     image created, I just booted that and took the tarball from Sourceforge
>>     and built it  per the readme file instructions:
>>     ./configure
>>     make
>>     make install
>>     After I completed my test, I thought about why not put that in my list
>>     of personal recipes.  I found the previous version of iperf in the
>>     openembedded collection of benchmark recipes and just copied it over.
>>     It built and worked fine.  There were a lot of items in the .bb that I
>>     didn't understand, so I thought for fun I'd just try to build a recipe
>>     for iperf 2.0.5 and see what happened.  My recipe is simple, mostly
>>     taken from the openembedded 2.0.4 version had stripped down:
> Hi JF,
>
> I add the same problem you had with the man page stuff, try this patch.
>
> Marc
thanks, that patch fixed it from a build point of view. now I'll build 
the image again and see what happens on the hardware.

Jim A


