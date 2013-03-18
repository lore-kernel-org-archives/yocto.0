Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93C81E00741;
	Mon, 18 Mar 2013 07:22:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r2IEMF3R022540
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 18 Mar 2013 07:22:15 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Mon, 18 Mar 2013 07:22:15 -0700
Message-ID: <51472307.9000202@windriver.com>
Date: Mon, 18 Mar 2013 10:21:59 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Insop Song <insop.song@gmail.com>
References: <insop.song@gmail.com> <cover.1363428594.git.insop.song@gmail.com>
	<514540B6.2090307@windriver.com>
	<CACzyEJ-Fe8iGEHH8ddG18Op_1sfkNBhVtWTsJcRhf4cxaVw6kw@mail.gmail.com>
In-Reply-To: <CACzyEJ-Fe8iGEHH8ddG18Op_1sfkNBhVtWTsJcRhf4cxaVw6kw@mail.gmail.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com,
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>
Subject: Re: [linux-yocto] [PATCH 0/1] [meta-realtime] Add rt-app, schedtool, define core-image-realtime, and append recipies-kernel
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
X-List-Received-Date: Mon, 18 Mar 2013 14:22:17 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-17 03:36 AM, Insop Song wrote:
> On Sat, Mar 16, 2013 at 9:04 PM, Bruce Ashfield
> <bruce.ashfield@windriver.com> wrote:
>
>>
>> This looks good to me now, I still think we'll have some confusion
>> between the core "rt" images and core-image-realtime that we are
>> introducing here.
>>
>> I may rename it core-image-realtime-extended as part of the merge,
>> if that's acceptable to you ? I think it will be something that
>> we'll need to revisit at some point, but that's not a good reason
>> to hold this back anymore.
>>
>> I'll merge, do a quick test and push this out on Monday.
>
> "core-image-realtime-extended" or "core-image-rt-extended (to be
> aligned with existing core-image-rt)" or something along this line
> sounds fine to me.

I went with core-image-rt-extended this morning.

The changes have been merged, briefly tested and pushed to the
yocto layer.

I've also created a docs/ subirectory in the layer, if you have
test steps, READMEs or other information to contribute, that's the
place we should put it.

We can tweak this as required from here.

Cheers,

Bruce

>
> I was thinking of updating my patch, but it would be better if you
> decide the final name, so I won't update the patch for now.
> Or if you know which name is the best, then just let me know, I will
> update the patch and send it to you.
>
> Thank you,
>
> Insop
>


