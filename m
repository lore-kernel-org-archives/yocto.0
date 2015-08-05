Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAD4CE009B8; Wed,  5 Aug 2015 07:54:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AA99E009A7
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 07:53:58 -0700 (PDT)
Received: by ioeg141 with SMTP id g141so51637997ioe.3
	for <yocto@yoctoproject.org>; Wed, 05 Aug 2015 07:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=yE1Mr2m2+qx/kfS2F7Vs0M3HvLvS7aWUxVN5wS+Jyu0=;
	b=KvwHRFcnsrVy81SLfjeWOLrzkMz6GhTmEigcINn5/VFZQxOq7dE7Pdb4vvVBeW1WoB
	TvA7Ih0ttX0OY7anEgohDeBTUcfoXuRQp/83cJfS+Ezb9D7iD+PLiw7InoCcwW8YS96Y
	mJ600LGWt5RFRprNB3mXzbT/s+dRx5UGK0lVR0E8AIxYItZ9pxLV3IKyXRhzyZ5FzYlH
	fmG24VahfcbZ17VkBrzG3W3tysTcaOaEqvPgIWaWgD625LLaNOXCYptOFKOty030bisU
	1hai7KyoIzj8eH6LYpXPXVnKiupjKaS4YZScpUuivfuShl64GrihjJFs3BvHH56JqoY2
	3d9g==
X-Received: by 10.107.27.195 with SMTP id b186mr11982956iob.140.1438786438272; 
	Wed, 05 Aug 2015 07:53:58 -0700 (PDT)
Received: from [192.168.0.10]
	(CPEbc4dfb2691f3-CMbc4dfb2691f0.cpe.net.cable.rogers.com.
	[99.231.110.121]) by smtp.googlemail.com with ESMTPSA id
	q10sm3791965ige.16.2015.08.05.07.53.57
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Aug 2015 07:53:57 -0700 (PDT)
Message-ID: <55C22385.7060506@gmail.com>
Date: Wed, 05 Aug 2015 10:53:57 -0400
From: nick <xerofoify@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAPhnLPB5-A5A3=RXjKL1WJqKp7DCZ2ku6U1eAsgFRPty8sjkWg@mail.gmail.com>
In-Reply-To: <CAPhnLPB5-A5A3=RXjKL1WJqKp7DCZ2ku6U1eAsgFRPty8sjkWg@mail.gmail.com>
Subject: Re: [ANNOUNCEMENT] Milestone 1 for Yocto Project 1.9 now available.
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
X-List-Received-Date: Wed, 05 Aug 2015 14:54:04 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 2015-08-05 10:45 AM, Flanagan, Elizabeth wrote:
> The first milestone release for Yocto Project 1.9 is available for download now.
> 
> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.9_M1/
> 
> Thank you everyone for your contributions.
> 
> eclipse-poky/juno-master bbd410e2c5db9532ea373ec993c5e8d9
> eclipse-poky/kepler-master 989ee9bda9c0d5c05e790a289d4ca032
> eclipse-poky/luna-master fe928773cf7b952c368769fdc4be3688
> meta-qt3 139394eca6575b9ab31d2f79f7830f2a
> poky 59713c69884b4d459b0712133ba56034
> 
> Test report at
> https://wiki.yoctoproject.org/wiki/WW28_-_2015-07-10_-_Full_Pass_1.9_M1.rc2
> 
Just a question about your testing Elizabeth. 
BB_NUMBER_THREADS = "8"
PARALLEL_MAKE = "-j 8"
MACHINE = "qemux86"
It should be 2 times the number of cores for parallel build systems like make
or bitbake. Why only eight as I do eight on my i5 from the same generation.
This seems like a error in my opinion.
Cheers,
Nick  

