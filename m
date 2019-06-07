Return-Path: <me@herrie.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D677E00C7D; Fri,  7 Jun 2019 03:36:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [149.210.149.72 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 523 seconds by postgrey-1.32 at yocto-www;
	Fri, 07 Jun 2019 03:36:26 PDT
Received: from outbound1.mail.transip.nl (outbound1.mail.transip.nl
	[149.210.149.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5F98E008F2
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2019 03:36:26 -0700 (PDT)
Received: from submission13.mail.transip.nl (submission13.mail.transip.nl
	[149.210.149.135])
	by outbound1.mail.transip.nl (Postfix) with ESMTP id 45KzHf3RRlzRhj8;
	Fri,  7 Jun 2019 12:27:42 +0200 (CEST)
Received: from transip.email (pr.ams4.transip.net [37.97.254.72])
	by submission13.mail.transip.nl (Postfix) with ESMTPA id
	45KzHb675mz1y0j; Fri,  7 Jun 2019 12:27:36 +0200 (CEST)
MIME-Version: 1.0
Date: Fri, 07 Jun 2019 12:27:36 +0200
From: Herman van Hazendonk <me@herrie.org>
To: "Smith, Peter1 (GE Renewable Energy)" <peter.t.smith@ge.com>
Mail-Reply-To: yoctoproject.org@herrie.org
In-Reply-To: <VI1P101MB0157F2FD088EDE4070F7892DDE100@VI1P101MB0157.NAMP101.PROD.OUTLOOK.COM>
References: <VI1P101MB01576372CF3A49D74933DBC3DE100@VI1P101MB0157.NAMP101.PROD.OUTLOOK.COM>
	<CAJTo0LY4BHK4zSLZCyaH_0nwG9MPcmgFaTbkOuWXZ6+NGN2AJA@mail.gmail.com>
	<VI1P101MB0157F2FD088EDE4070F7892DDE100@VI1P101MB0157.NAMP101.PROD.OUTLOOK.COM>
Message-ID: <b099465c475237bb362381f14c846f30@herrie.org>
X-Sender: me@herrie.org
User-Agent: Webmail
X-Scanned-By: ClueGetter at submission13.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	s=transip-a; d=herrie.org; t=1559903259; h=from:reply-to:subject:to:
	cc:references:in-reply-to:date:mime-version:content-type;
	bh=/4k+G0/Mb7bGtlCtP5yYQSZrSINA7K91wwB1S8mIC7Y=;
	b=LSBPs0vptoVRvw5ograKW77WkdbLlnD596YJ3sMST0ftRNTvwkx5drX4NnbVUmpPU0NdRA
	yF/fvLFcf7Xxwr3dwyYmUmvsczdZrP4ifOUVU1lwib38v746SNyX0E29yWi+SfPCQZMlcc
	tbDJFqpujrZNHHyI6WVmmeQcIimhFY0p0HIA7hqCijrIGu6QkJhJnCtJNeR9ystswfzxSW
	clRAnqNATJGlEFhHoqpNcCPPk2cscq5K0sxOOiVXSMKQewEzfSJO3r9njigVrB0Ul6HoAt
	R5JNHw82TJubcDyay5VgbOoeQ6rU8UpA6qxRXRL49JSW4npCKsgo80GwG2gOtA==
X-Report-Abuse-To: abuse@transip.nl
Cc: yocto@yoctoproject.org
Subject: Re: EXT: Re: [meta-security] AppArmor 2.11 no longer available on Ubuntu archive (sumo branch)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: yoctoproject.org@herrie.org
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 07 Jun 2019 10:36:30 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi Peter,

You can find all tags at https://gitlab.com/apparmor/apparmor/tags and 
update the recipe in a similar way for your (sumo) build.

Hope this helps!

Herman

On 2019-06-07 12:21, Smith, Peter1 (GE Renewable Energy) wrote:
> Many thanks, situation understood.
> 
> Peter Smith
> 
> Senior Emerging Technologies Engineer
> Grid Solutions
> GE Renewable Energy
> 
> -NON PUBLIC-
> 
> 
> 
> -----Original Message-----
> From: Burton, Ross <ross.burton@intel.com>
> Sent: 07 June 2019 11:10
> To: Smith, Peter1 (GE Renewable Energy) <peter.t.smith@ge.com>
> Cc: yocto@yoctoproject.org
> Subject: EXT: Re: [yocto] [meta-security] AppArmor 2.11 no longer
> available on Ubuntu archive (sumo branch)
> 
> That is deliberate and by design, recipes shouldn't fetch from
> Debian/Ubuntu archives for this reason.
> 
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-security/commit/?id=462d76700a3c2748067d4685db8985c511b1b46c
> is a patch to master that needs to be backported to warrior/thud/sumo.
> 
> Ross
> 
> On Fri, 7 Jun 2019 at 11:07, Smith, Peter1 (GE Renewable Energy)
> <peter.t.smith@ge.com> wrote:
>> 
>> We are building with meta-security (from sumo branch) which currently 
>> uses v2.11 of AppArmor, it seems overnight that the source archive has 
>> been removed from the Ubuntu archives. Does anyone know if this is a 
>> deliberate action, or if not who to contact to get it put back.
>> 
>> 
>> 
>> Peter Smith
>> 
>> 
>> 
>> Senior Emerging Technologies Engineer
>> 
>> Grid Solutions
>> 
>> GE Renewable Energy
>> 
>> 
>> 
>> -NON PUBLIC-
>> 
>> 
>> 
>> 
>> 
>> 
>> 
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

