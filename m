Return-Path: <jfabernathy@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73311E006C7
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2012 08:58:25 -0700 (PDT)
Received: by qcsd1 with SMTP id d1so578833qcs.35
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2012 08:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=W4ld9dKTWBKRFPvml/h57vJGyluMcuC0qgbLfdAU3ww=;
	b=EjNofCl7XxQUuELlS8Ez7EffZjSHcoHwNi4unaa0cMC0CxWKl2Gz8oYaqoJnYs+P4j
	HJQJ5bidvcCb6zAbFoIxCEF2mBuV96PixSzmy0OFt7P/VG28D3MmIdnrMvDIfQRBACi9
	3syd18/S8TEJkdyd8Q2ekBXe55oVI+XGUhjQI284ycTNlhnae8WSQEcnCocN769JW8GD
	brrAKg3BgJzqudJ82Lu8R3QkSLaDG/E5OpHErfac5fzjX8UMqfwf1TT/T4Nk9lN73+Nl
	TNSVnTnFYrVcIa9QcCbQX9rgg4JH3VDdQEVENEIX69OaP/G3KDogIG1bKRvrOC+rdNu6
	hhxA==
Received: by 10.224.213.10 with SMTP id gu10mr9728728qab.46.1335542304835;
	Fri, 27 Apr 2012 08:58:24 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id j3sm8347025qak.14.2012.04.27.08.58.23
	(version=SSLv3 cipher=OTHER); Fri, 27 Apr 2012 08:58:24 -0700 (PDT)
Message-ID: <4F9AC21F.6000507@gmail.com>
Date: Fri, 27 Apr 2012 11:58:23 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120410 Thunderbird/11.0.1
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <4F9AA9FA.6020604@gmail.com>
	<CAEsOVNcOx-_O8YmgusttvvSwuR=RtSJ0NXgH12r5Uy+hsMu_ug@mail.gmail.com>
In-Reply-To: <CAEsOVNcOx-_O8YmgusttvvSwuR=RtSJ0NXgH12r5Uy+hsMu_ug@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: rebuilds -- when to do what??
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
X-List-Received-Date: Fri, 27 Apr 2012 15:58:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/27/2012 11:39 AM, McClintock Matthew-B29882 wrote:
> On Fri, Apr 27, 2012 at 9:15 AM, jfabernathy<jfabernathy@gmail.com>  wrote:
>> Over the past 6 months, I've learned a lot about what I should do to work
>> with Yocto successfully, However, the area of biggest confusion for me is
>> what to do when I want to rebuild something.
>>
>> I generally work from Master repository and when I see significant changes
>> while doing git pull, I try to rebuild one of my projects.  I've tried a lot
>> of the methods:
>>
>> 1.  just bitbake again.
>> 2.  bitbake -c cleanall or -c cleansstate core-image-sato
>> 3.  If I know a recipe has changed, I'll bitbake -c cleansstate "recipe
>> name"
>>
>> Most of the time something fails.  Researching what, is an impossibility to
>> me and much quicker to just delete the build directory and redo it.
>>
>> Is there a good "how to" rebuild?  Or is it the best use of time to just
>> tell users to blow away the build dir. and restart, saving the old
>> local.conf and bblayer.conf?
> Jim,
>
> How does it fail? Which recipe in particular are you working with?
>
> -M
It can be just about any failure from file not found, perl failures, 
etc.  Bottom line is it takes me longer to figure out what happened than 
it takes to assume I need to start over.  That's okay because that's 
only a couple of hours.  For me that's not a big deal, as I'm just 
messing with Yocto.  For a customer who is developing a product they may 
want a method that always allow the shorted method.  At first I posted 
issues and no one had a definitive answer for what when wrong.  And 
before I even got the request for submitting more information to help me 
solve it, I rebuild from scratch with problem solved.  So my BKM is 
start over and go for a 3 martini lunch.:-)

Jim A



