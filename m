Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3F32E009E4; Fri, 17 Jul 2015 06:32:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EEACE009D7
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 06:32:33 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.1/8.15.1) with ESMTPS id t6HDWUFg004197
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 17 Jul 2015 06:32:30 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.235.1;
	Fri, 17 Jul 2015 06:32:30 -0700
Message-ID: <55A903ED.70906@windriver.com>
Date: Fri, 17 Jul 2015 09:32:29 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Gorny Krystian <krystian.gorny@wipotec.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <10D57FBA9FD7C14FB49EE17590E1AF9453C901C3@svr-exc-03.intern.wipotec.de>
In-Reply-To: <10D57FBA9FD7C14FB49EE17590E1AF9453C901C3@svr-exc-03.intern.wipotec.de>
Subject: Re: Kernel header missing for specific Target
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
X-List-Received-Date: Fri, 17 Jul 2015 13:32:39 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 15-07-17 08:47 AM, Gorny Krystian wrote:
> Hi
>
> I try add to my core-image-rt image on a x86 arch my own IO driver. I
> have already my own recipe, for normal user space programs everything is
> working fine.
>
> For the kernel space driver Yocto is missing at do_comile task the
> asm/atomic.h header file. I have searched for the atomic.h file and
> found a lot of them in the ./build/tmp/work folder. Yocto should use one
> of them for the right hardware architecture right? Or is the a something
> else I have forget to do?

What Yocto branch are you using ?

atomic.h is placed in the right location by the kernel build, assuming
that your driver recipe has the proper dependencies.  Without seeing
that recipe, it is hard to say more.

Cheers,

Bruce

>
> Many thanks
>
> Krystian
>
>
> _____________________________________________________________________
>
> *Krystian Gorny*
> Research & Development
>
> Wipotec GmbH
> Adam-Hoffmann-Str. 26
> 67657 Kaiserslautern
>
> T +49.631.34146-0
> F +49.631.34146-8640
> http://www.wipotec.com
>
>
>
> <http://www.wipotec.com>
>
> Legal information:
> Wipotec Wiege- und Positioniersysteme GmbH
> HRB 2317 Kaiserslautern, Management: T. Düppre, U. Wagner
>
> This e-mail may contain confidential and/or privileged information.
> If you are not the intended recipient (or have received this e-mail in
> error)
> please notify the sender immediately and delete this e-mail. Any
> unauthorized
> copying, disclosure or distribution of the material in this e-mail is
> strictly
> forbidden.
>
>


