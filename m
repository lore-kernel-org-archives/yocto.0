Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80ED5E013DE
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2013 08:26:20 -0700 (PDT)
Received: by mail-ve0-f177.google.com with SMTP id cz10so3813904veb.8
	for <yocto@yoctoproject.org>; Mon, 01 Jul 2013 08:26:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=rJmGISG4qs418SxpfDHVnLrnp9bW+x8uBj1k2J6869c=;
	b=L83uDgHO4eXk/NfyFtnwNuZHdoEefr851Svq9R9sE2Ts23mZ9kjCggnb3gU/MgIa9c
	Rwv0kdwcdsOtFzoU1RWtEgMbmVCh218ME+4L8/wkCHDHz55CYbRzILRtTig+22phnc3r
	OIXSBBryFJwBdGktZ+ERzoacCVFK5iYMmisY9jc7+VgqoXjwxP+6+PdTuDmkv5VtsATa
	edg7gpcUmLdbOhymdI/bXvFXzvGEDz7T7j+UYjB/ZY8KKAQd70IHF1mfSk9rq4jY1eDt
	+QM+e0s/8C5YvHHJUhwNk5hSnzSxzBWYN2du0bxJ1cv1u6niWVM8nBLlotj660HSOTTf
	nfNg==
MIME-Version: 1.0
X-Received: by 10.58.216.97 with SMTP id op1mr9810948vec.60.1372692380315;
	Mon, 01 Jul 2013 08:26:20 -0700 (PDT)
Received: by 10.52.114.170 with HTTP; Mon, 1 Jul 2013 08:26:20 -0700 (PDT)
In-Reply-To: <CAJTo0LZQ+vVN5ddfBF1pTBATOmsFARRQmPqbqSf7hhk_D7vEyw@mail.gmail.com>
References: <CAPhnLPA1beCo03kmSq-T61ZgY_ouTp5n5DCKeFcM=DF-qQb1LA@mail.gmail.com>
	<CAJTo0LZQ+vVN5ddfBF1pTBATOmsFARRQmPqbqSf7hhk_D7vEyw@mail.gmail.com>
Date: Mon, 1 Jul 2013 08:26:20 -0700
Message-ID: <CAPhnLPB0HW_rBffGYiaHY+afVH9v43PV-jOq=vM2A=D925XzrQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Gm-Message-State: ALoCoQl6RMY1b8QyRqGRyWvHLlO7t5cG02iAMHXpVSUpygCWpft0SVn4svvlpuvLMrX1E0TFIGJl
Cc: yocto@yoctoproject.org
Subject: Re: Recent autobuilder changes
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
X-List-Received-Date: Mon, 01 Jul 2013 15:26:23 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jul 1, 2013 at 1:16 AM, Burton, Ross <ross.burton@intel.com> wrote:
> On 30 June 2013 23:40, Flanagan, Elizabeth <elizabeth.flanagan@intel.com> wrote:
>> This weekend I brought down the autobuilder to implement the new build
>> failure email formatter. This *should* provide a bit more detailed
>> information in a much easier to read format. Please, let me know of
>> any tweaks people might like to see in the message format.
>
> Much improved!  The one thing I'd love to see though is the relevant
> branch_* values right at the top, so it's trivial to spot a master vs
> MUT vs 1.4.1 build.

Ok, let me bang on that today. I still have a few tweaks I have to do still.

>
> Cheers,
> Ross
> ---------------------------------------------------------------------
> Intel Corporation (UK) Limited
> Registered No. 1134945 (England)
> Registered Office: Pipers Way, Swindon SN3 1RJ
> VAT No: 860 2173 47
>
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

