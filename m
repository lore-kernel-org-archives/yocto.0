Return-Path: <jon.szymaniak@gmail.com>
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AE41E006C2
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 09:31:31 -0700 (PDT)
Received: by mail-wi0-f170.google.com with SMTP id ey16so453812wid.1
	for <yocto@yoctoproject.org>; Wed, 05 Jun 2013 09:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=+m5F47Kd9ou6rwnr+kAiwtFxfAgK8VuJU43UUFRLF2g=;
	b=SjvfSsnwI8RX5I5RsGqAQgbwIicsFNK78wcp1h1QHDT5M5xqy+1s6Hmbrm2+BIxtKg
	3CmKfBPNPX5akfTZ9NKMBRxZ0LzEw9UcX4GsjnbO2e6tez0TBxlp0E6FZdGekS7pMi2R
	352cKkCui+1sospyIoDLwbvBgnq4433wjVTgenVj9L8IFSqiQ0jtmir/VckLJfEVkTX9
	pihFPRtRtqVcssCApX5ZL/yn0lfkDFIWClLAI1c4gX507Tpwa3WHE+Sv511Jcgv28amQ
	a54OdXDCe/dZVJEy/UfMn8jV7NwWCKDAokr5jsdVgl5c2qj3F+NRrIMI/8+h1n9Anij6
	NP/A==
X-Received: by 10.180.105.231 with SMTP id gp7mr7501085wib.23.1370449890314;
	Wed, 05 Jun 2013 09:31:30 -0700 (PDT)
MIME-Version: 1.0
Sender: jon.szymaniak@gmail.com
Received: by 10.194.57.163 with HTTP; Wed, 5 Jun 2013 09:31:06 -0700 (PDT)
In-Reply-To: <2988518.NeGldAHcyY@helios>
References: <CANge7vVxHxnAOwxRbFvhYSkuKJ3DqAMHbLRL+LQ_y__PyXL2Fw@mail.gmail.com>
	<2988518.NeGldAHcyY@helios>
From: Jon Szymaniak <jon.szymaniak+gpg@gmail.com>
Date: Wed, 5 Jun 2013 12:31:06 -0400
X-Google-Sender-Auth: ha2sQUHM7D52CrJbov6VhC5YT6Q
Message-ID: <CANge7vWcitmDEap9gi7YuhfL+u_XyudXz8SavKHqQmutwtuDsA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Correctly setting a package-specific RDEPENDS
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
X-List-Received-Date: Wed, 05 Jun 2013 16:31:31 -0000
Content-Type: text/plain; charset=ISO-8859-1

> On Wednesday 05 June 2013 10:53:23 Jon Szymaniak wrote:
>> I recently upgraded to the Dylan (9.0.0) release and am looking to
>> clean up some QA issues associated with my RDEPENDS variables not
>> being package-specific.
>>
>> I'm a bit confused by a couple lines in the manual [1]:
>>
>> "The names of the variables you list with RDEPENDS must be the names
>> of other packages as listed in the PACKAGES variable. You should not
>> list recipe names (PN)."
>
> I think the mention of PN here is confusing. It's trying to explain that you
> should use package names and not recipe names, but perhaps the wording needs
> to be improved.
>
>> It makes sense to me that you'd want to set the run-time deps on a
>> per-package basis to avoid creating false-dependencies. However, I'm
>> unsure as to how can simply not write RDEPENDS_${PN} in some cases.
>> Furthermore, I feel like I'm not quite understanding what the
>> consequences of using RDEPENDS_${PN} are.
>>
>> Here's an example of what I'm trying to do -- perhaps someone will
>> catch where I'm getting confused and offer some insight?
>>
>> Let's say I have a program_a.bb and a program_b.bb. Both are simple
>> recipes that compile and install ${D}/usr/bin/program_a and
>> ${D}/usr/bin/program_b.
>>
>> Because program_a forks and execs program_b, but otherwise does not
>> depend upon it to compile, I thought I should place RDEPENDS_${PN} =
>> "program_b " in program_a.bb.  However, this seems to violate the
>> aforementioned snippet from the manual.
>
> That is the expected usage; I guess the manual has confused you. All the QA
> warning is saying is you should do this:
>
> RDEPENDS_${PN} = "somepackage"
>
> and _not_ this:
>
> RDEPENDS = "somepackage"
>
> (The reason being, the latter would add a runtime dependency on "somepackage"
> to every package in the recipe's PACKAGES, which is almost never the desired
> result.)
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre


Hi Paul,

That clarifies things greatly. Many thanks!

- Jon

