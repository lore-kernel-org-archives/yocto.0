Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EB63E00B90
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 12:49:13 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id lc6so3039289vcb.35
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 12:49:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=ulTuL2Uk4RH/V3PLvGJ99xNW+HayJpGZ8avGaFUbYXw=;
	b=AmJ3NiECYijwej1OM84vaw9C7qNd2S409hd8vnYPWORPcYrVwGrNZWOuTs787Wa4Jq
	DnXpTIkXIgfUWAqJ/SJTrU6Ojxl8XbzAm+kUYBCOtlcY3nOUBZW2vkmWmxFYqvIPmvks
	xBVl0/EsYg6npuC8Wr+Fw86wwhYsQN5F6CL4QqGoKAm/w9NGoztEY/ydBdckL7dzVWfx
	wG6sdzVwfR2Ckn5jmOzNZhnKYybXy3/KSkSobg3pseZadjbJ3qrCKGsoNfkNlNutN4RG
	oUJypW41Sw3bTsyDNfOukX5Ft0uY2vtaUfDRBry/TtTuUy0qYoXmtlqrP8zvy/emLm5/
	RqiQ==
X-Gm-Message-State: ALoCoQncBeebI3MzGv4vzVlpJrA7btZVXg2HcQC333zMde9gn6G9kTS4P+xjqlVtlJAYV42dcW8I
MIME-Version: 1.0
X-Received: by 10.220.81.194 with SMTP id y2mr1806915vck.29.1395863353021;
	Wed, 26 Mar 2014 12:49:13 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Wed, 26 Mar 2014 12:49:12 -0700 (PDT)
In-Reply-To: <CAPhnLPA3-NDDP5uP+8atu8n-tRDLR8rjqPb4LDjJththEnLDuw@mail.gmail.com>
References: <5B5D636C5F0AA747B37D0EFC72B563C42D559E0A@RIC-MS02.MWSG.int>
	<CAPhnLPA3-NDDP5uP+8atu8n-tRDLR8rjqPb4LDjJththEnLDuw@mail.gmail.com>
Date: Wed, 26 Mar 2014 12:49:12 -0700
Message-ID: <CAPhnLPBe5qpr-KLModcQEF-uiGzRHdCd3ctwK3Ty45S9ZGY7vA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Stath, Paul" <PStath@axxcelera.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Change to 1.5_M5.rc1???
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
X-List-Received-Date: Wed, 26 Mar 2014 19:49:16 -0000
Content-Type: text/plain; charset=ISO-8859-1

Ok, I've had to remove and replace the tag. Sorry about that all, it
was late last night while I was trying to get 1.6_M5 running. please
run git fetch --prune --tags.

-b

On Wed, Mar 26, 2014 at 12:31 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> Looking at this now. Obviously, it's not correct.
>
> On Wed, Mar 26, 2014 at 7:04 PM, Stath, Paul <PStath@axxcelera.com> wrote:
>> We have a local clone of the yocto repository that is refreshed nightly via 'git pull'.
>>
>> When trying to push a tag to the local yocto clone, I'm getting the following error:
>>
>>  ! [rejected]        1.5_M5.rc1 -> 1.5_M5.rc1 (non-fast-forward)
>>
>> In my dev copy:
>>
>> $ git rev-parse 1.5_M5.rc1
>> b9f5cc7be05303ba5ed478a3a108ddc579539744
>>
>> In a fresh clone of http://git.yoctoproject.org/cgit/cgit.cgi/poky
>> $ git rev-parse 1.5_M5.rc1
>> 295656cfdaf17bcbbeac8599fc8ebb2d5aa435d2
>>
>> Since the same commit the tag points to is also the HEAD of the 1.6_M5 branch,
>> I'm guessing that the tag SHOULD be 1.6_M5.rc1.
>>
>> Could someone please follow-up?
>>
>> -- Paul Stath
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

