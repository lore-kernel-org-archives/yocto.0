Return-Path: <sven.ebenfeld@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA8EFE007A2; Fri, 29 Aug 2014 09:22:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sven.ebenfeld[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
Received: from mail-lb0-f173.google.com (mail-lb0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79341E00781
	for <yocto@yoctoproject.org>; Fri, 29 Aug 2014 09:22:37 -0700 (PDT)
Received: by mail-lb0-f173.google.com with SMTP id c11so2874804lbj.4
	for <yocto@yoctoproject.org>; Fri, 29 Aug 2014 09:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=uNNhnKW46CIB/0shNDSVfFgucOM1/ndBKwgtfp+1bSg=;
	b=SLnOzkYN/0ZTMWy4271rhN03PKb4GN/XUyqA2f+1kY5OfS3Ds/t9sjjIZ2jBnlHIqf
	IGY1FCbiiu212wSz4QFJA6JvPSX+SgsCxuca+CazVvbBQ6LI66+R1fCmE+fmcUgKwjIR
	59MdKYsi79nphxXWGw36yKt2KFyh3eUTPI8V9NNJWj5ZUrueG9hXLhVsCPZ46hceyoFU
	2Bd9ojSb8jwZNGvU7mJrTLmNQGmQ7fanWvZjP5dT/HbjYAocDjluSFEeTg4cPX/XNgg6
	6cAiXALvq7czFLCTWL4hDs6c+ulEm53YnQxtYl7Bt/N+zagvaOCWY1FlLDBIgthqKUKb
	vd2g==
X-Received: by 10.152.87.139 with SMTP id ay11mr12159227lab.38.1409329355629; 
	Fri, 29 Aug 2014 09:22:35 -0700 (PDT)
Received: from [192.168.50.237] (ip-109-90-30-8.hsi11.unitymediagroup.de.
	[109.90.30.8])
	by mx.google.com with ESMTPSA id xe10sm596918lbb.37.2014.08.29.09.22.34
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 29 Aug 2014 09:22:34 -0700 (PDT)
Message-ID: <5400A8C8.4050605@gmail.com>
Date: Fri, 29 Aug 2014 18:22:32 +0200
From: Sven Ebenfeld <sven.ebenfeld@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.LFD.2.11.1408280336190.2292@localhost>	<CAGiJk9dYKHaq3YTA6aAHBWkVH+gFqm+M=Rpi=80YhVZ0YNeWrA@mail.gmail.com>	<alpine.LFD.2.11.1408280408050.2863@localhost>	<CA+YB3rYra8atvtzy4JPz8zfc4WjbB-kM0rtb5ZdfRy48PFMO9g@mail.gmail.com>	<alpine.LFD.2.11.1408290721080.4903@localhost>	<CA+gsK-p1xVazx+guAy3Zo1nTrEVmnC3iMQVv9ZDoN28qhaKYKQ@mail.gmail.com>
	<alpine.LFD.2.11.1408291157030.10554@localhost>
In-Reply-To: <alpine.LFD.2.11.1408291157030.10554@localhost>
Subject: Re: is there a list of yocto-supported dev kits somewhere?
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
X-List-Received-Date: Fri, 29 Aug 2014 16:22:49 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 29.08.2014 18:01, schrieb Robert P. J. Day:
> On Fri, 29 Aug 2014, Rudolf Streif wrote:
> 
>> I think this is a great idea and I volunteer to help with the effort.
>>  
>>   that is kinda what i was after. i realize it's an open-ended
>> request, but it would be great if there was a list of "recommended"
>> dev kits representing various architectures/processors that people new
>> to YP could purchase for experimentation, *knowing* that those dev
>> kits had a YP build that would work out of the box. not necessarily
>> technically complete, but that it would just boot and let them start
>> playing.
>>
>> The "work out of the box" part is the tricky one. Unfortunately,
>> many YP BSP layers do not include instructions on what to do after
>> the build has completed. If you don't know what to do with boot
>> loader and kernel images, flattened device tree files, root file
>> system archives and images then you are at a loss. Commonly the
>> boards also require a special boot media partitioning and the like.
> 
>   exactly true, but without that final bit of information, i contend
> that the YP build is utterly useless unless the developer is told what
> to do with the final image objects.
> 
>> While this type of info should be in the BSP readme files I think it
>> would be good to have step by step instructions that gets one from
>> setting up the build environment to building and creating bootable
>> media for each board.
> 
>   and those step-by-step instructions don't need to be terribly
> verbose. remember, you're not trying to explain how to use YP; you're
> simply summarizing what it takes to get it running on a particular dev
> kit. all of that should fit on a single page at most.
> 

Robert Nelson has a good collection for ARM-Devkits in his eewiki:
https://eewiki.net/display/linuxonarm/Home Maybe that could be a good
starting point.

> rday
> 
> 
> 

