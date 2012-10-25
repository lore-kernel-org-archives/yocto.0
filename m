Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3C63E013EF
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 03:15:05 -0700 (PDT)
Received: from mail-oa0-f72.google.com ([209.85.219.72])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 25 Oct 2012 03:15:04 -0700
Received: by mail-oa0-f72.google.com with SMTP id h2so4524977oag.11
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 03:15:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=t0CNXkcgQ0GayhPqFYgQolMosu5nvQ/SIwPNxgKOjLY=;
	b=Pdi/abSTYKicDf1B+cMAeiRjvXYcHzaB5R+BokPnZEoee0X4hZtTjZHw/8vHmFXKzT
	9EQWYRO0+5EO4BruXTvunuFLVnopxAj2PnDCuSM200NtLiNom3q8DBb6XW2+sb+hkyNk
	/V07IpngClZKb5PTQXX/17DESYuTl9njgO8y28s0uLmTj8mDS/MDW/ILB30HmV/Uhu3S
	y2hiXedZDCMT4SqV21s5rvTH5q3OMiE4t9WoSWA+xWozxgdjxorD6Su3QDjDsPmstGnC
	dexYAzx/o1wbkleNMOeeEf0D/2v8yubi82u/g3LCafxn/g4XWMzToZhDBLkZP5TQjk00
	gBxQ==
Received: by 10.182.177.72 with SMTP id co8mr15333889obc.53.1351160103429;
	Thu, 25 Oct 2012 03:15:03 -0700 (PDT)
Received: by 10.182.177.72 with SMTP id co8mr15333885obc.53.1351160103338;
	Thu, 25 Oct 2012 03:15:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.46.70 with HTTP; Thu, 25 Oct 2012 03:14:43 -0700 (PDT)
In-Reply-To: <7C25CAD3D2FF4EAABCD90B26EC168705@intel.com>
References: <5086D81E.4030401@gmail.com>
	<7C25CAD3D2FF4EAABCD90B26EC168705@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 25 Oct 2012 11:14:43 +0100
Message-ID: <CAJTo0LZG=HpshXy5L5gduNh-BcXus8eSCdhvDe7arZ9jG7cyLw@mail.gmail.com>
To: Jim Abernathy <jfabernathy@gmail.com>
X-Gm-Message-State: ALoCoQlQSbGxZopdUN3m8OR2DudFhbCZqjiOE4pizUC7R63+R94LMT/b9VlJJLh6yDHO8VTKJGjjxpkzWWZAWQYptF5pTNXCcBfot320ZSaiYfk05jsxjC72JO3JCA4LVK2An3eQTEITRqngMmirHxBYCIVB/vXwnw==
Cc: yocto@yoctoproject.org
Subject: Re: build failures after pull
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
X-List-Received-Date: Thu, 25 Oct 2012 10:15:06 -0000
Content-Type: text/plain; charset=UTF-8

On 23 October 2012 22:12, Ross Burton <ross.burton@intel.com> wrote:
> On Tuesday, 23 October 2012 at 18:47, Jim Abernathy wrote:
>> I've reported this before, but it still happens. Today, I did a git
>> pull into my local while master was checked out, both on poky and
>> meta-intel. I then tried to rerun without cleaning or deleting anything
>> for chiefriver. My last build had been successfully built, but didn't
>> have audio. So when I saw patches, I thought I'd test again. I simply did
>>
>> "source oe-init-build-env"
>> "bitbake core-image-sato"
>>
>> I got a failure in diffutils for some reason. I then did
>>
>> "bitbake -c cleansstate diffutils"
>> "bitbake core-image-sato".
>
> Next time, including the log of the task that failed (do_compile in diffutils, I presume) might help identify what broke.

I saw this last night, and have a patch ready.

Ross

