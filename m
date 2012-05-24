Return-Path: <jfabernathy@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F310E01363
	for <yocto@yoctoproject.org>; Thu, 24 May 2012 08:42:58 -0700 (PDT)
Received: by vcbfo14 with SMTP id fo14so2296495vcb.35
	for <yocto@yoctoproject.org>; Thu, 24 May 2012 08:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=OkjkyPViqHueBFjDdl8MKnyoil1MIj0PAElsKA5XvJQ=;
	b=F+26DZ9jt0GyQkFW3a/kjd4CRtgfBusbHNpFV/9vvAG/O0n732WViFi7XZpJA8n3Nh
	j5recKy8jGHfRVZ3fxdMl4Rn6bgMiFweWxqEgosmZ3Uv63JCjxCkl7URsoNGtD0cudnS
	XVmga2RcX0aMvGAGebI6WSMImWOhyooWEbxiw7kRLRAzBH8R6v9Lqcqd1dm3WzQ+m+Az
	m47fPIMbXlORz0z3EUMR785gOO1x3bT8PK51d/h6sFZK31yQFrD9Zo420BGKaWfzX1Hn
	Sa34UBC58W1QSfeLIqk021hld2Gw/cW0MuBOXEk2z5vBllVklLjKNkDu8nbmbE/puskq
	5E5g==
Received: by 10.220.222.74 with SMTP id if10mr2640107vcb.27.1337874178248;
	Thu, 24 May 2012 08:42:58 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id
	r20sm28440155vdg.14.2012.05.24.08.42.57 (version=SSLv3 cipher=OTHER);
	Thu, 24 May 2012 08:42:57 -0700 (PDT)
Message-ID: <4FBE5702.2090301@gmail.com>
Date: Thu, 24 May 2012 11:42:58 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Chris Larson <clarson@kergoth.com>
References: <4FBE4BD6.5060800@gmail.com>
	<CABcZANmZ1k3vpJJxKKGNYG-bbZ-YH2bS5Fej6O5E=Fg5aRkitA@mail.gmail.com>
In-Reply-To: <CABcZANmZ1k3vpJJxKKGNYG-bbZ-YH2bS5Fej6O5E=Fg5aRkitA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: checking out branches: tracking vs. tags
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
X-List-Received-Date: Thu, 24 May 2012 15:42:59 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/24/2012 11:21 AM, Chris Larson wrote:
> On Thu, May 24, 2012 at 7:55 AM, jfabernathy<jfabernathy@gmail.com>  wrote:
>> the Development Manual Appendix A
>> (http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#dev-manual-bsp-appendix),
>> I see the statement:
>>
>>   $ git checkout denzil-7.0 -b denzil
>>
>>
>> What I think this does is create me a local branch that is fixed to what was
>> committed when the denzil-7.0 tag was created and it will remain that way
>> and will not track the denzil branch as it gets updated.  Right????
>>
>> Now if I want to track the denzil branch as changes are committed, I think I
>> do the following.
>>
>>   $ git checkout origin/denzil -b denzil
>>
>>
>> Now I can do git pull commands to get the updates that are committed.
>> Right??
> Your arguments are backwards. See git help checkout.
I looked at git help and man git, but it is still unclear because if I 
do the first one where I checkout using the tag, I cannot git pull at 
all; I get an error, about not enough information to merge.  However, if 
I use the name of the branch I can now do git pull when changes are 
committed to denzil.  That's why I thought I understood it.  But who knows.

Jim A


