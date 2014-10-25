Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 688F3E0087D; Fri, 24 Oct 2014 19:35:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D390E0084E
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 19:35:26 -0700 (PDT)
Received: by mail-ig0-f170.google.com with SMTP id hn18so1617365igb.5
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 19:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=q5t6vc3qZS5ZDsyfCgghuAeOmOV+lVg3bANZBpOMI8I=;
	b=UcIvoqaw9dyxpiDmNwYN226IDyq4h1q9o/s0pPSS7gdNaUA79ZoTeMNfkdvlRnKzvb
	6I86VaSzxXVQ1F++TCM7rkaEb+9MAX63uho8Mys7AhpE0mfxGspARhY3AsMbRHsTuagD
	HCRyGM4V0nw/lW7KqXSvkXY/sPDO8E95obxbPN3zN7QsgEkTO6LFx6FjbXlAp5VdOw53
	62OeYtOOfl3S5nMHe8p7u2veXR9dZTJ5GJtJwnil3u7dBvTXiRW2aD6jzpSODXEizV02
	kUR4Sa6iRjzu6sJvT53XGtS3WkO9F9mnW1F2Bw0kdInUM1AAdrc7dr5oP1E3C+GrS9HX
	X3gw==
X-Received: by 10.50.79.231 with SMTP id m7mr7598427igx.16.1414204525769;
	Fri, 24 Oct 2014 19:35:25 -0700 (PDT)
Received: from [192.168.0.50]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7])
	by mx.google.com with ESMTPSA id qo8sm1724961igb.7.2014.10.24.19.35.24
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 24 Oct 2014 19:35:25 -0700 (PDT)
Message-ID: <544B0C6C.80904@gmail.com>
Date: Fri, 24 Oct 2014 22:35:24 -0400
From: nick <xerofoify@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>, 
	"Mihail, StanciuX" <stanciux.mihail@intel.com>
References: <5449BD8D.3070907@gmail.com> <1414139646.30118.4.camel@ted>
	<544A24BB.5020604@gmail.com>
	<802B8E31E3519842A6CEE1B497E861B164F20D@IRSMSX108.ger.corp.intel.com>
	<CAJTo0LYXgprW_13tW-tUrObA4B0sLcTSSBFTiKiFWUpxrwzNoA@mail.gmail.com>
	<CAJTo0La=rM=_=sjWf4hGq=e-eCPtVCiwGRtikatOaY795aCOXA@mail.gmail.com>
In-Reply-To: <CAJTo0La=rM=_=sjWf4hGq=e-eCPtVCiwGRtikatOaY795aCOXA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failing Build
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
X-List-Received-Date: Sat, 25 Oct 2014 02:35:34 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Thanks Ross,
Sorry about not reading the manual first, I thought it was a misconfiguration
but wasn't sure.
Cheers Nick 

On 14-10-24 07:14 AM, Burton, Ross wrote:
> On 24 October 2014 12:12, Burton, Ross <ross.burton@intel.com> wrote:
> 
>> On 24 October 2014 12:00, Mihail, StanciuX <stanciux.mihail@intel.com>
>> wrote:
>>
>>> Looks to me that the core-image-rt-sdk recipe includes both the rt-kernel
>>> and the normal kernel, and maybe it shouldn't?
>>
>>
>> FWIW, I appear to be able to replicate this with just core-image-rt.
>>
> 
> This is a case of RTFM.
> 
> """
> In order to build the image with the linux-yocto-rt kernel, be sure to
> include the following line in your
> local.conf, bblayers.conf, or your $MACHINE.conf.
> 
> PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"
> """
> 
> Ross
> 

