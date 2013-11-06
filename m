Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10181E01793
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 11:00:04 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id rA6J02P9014397
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 6 Nov 2013 11:00:02 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Wed, 6 Nov 2013 11:00:02 -0800
Message-ID: <527A91B1.3070708@windriver.com>
Date: Wed, 6 Nov 2013 14:00:01 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: Trevor Woerner <trevor.woerner@linaro.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <CALmOhgnQ29+TvdGJ-7R=5wj-7zOx6LR8kn8c1vv6kzxz0hNkDQ@mail.gmail.com>
In-Reply-To: <CALmOhgnQ29+TvdGJ-7R=5wj-7zOx6LR8kn8c1vv6kzxz0hNkDQ@mail.gmail.com>
Subject: Re: using Clang Was: Minutes: Yocto Project Technical Team Meeting - Tuesday, November 05, 2013
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
X-List-Received-Date: Wed, 06 Nov 2013 19:00:07 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-11-06 01:56 PM, Trevor Woerner wrote:
> On 5 November 2013 15:44, Liu, Song <song.liu@intel.com> wrote:
>>    - Randy: Any plan to add Clang? open source compiler. Developed by Apple.
>> Qualcomm is working on it.  RP: there are lots of other things. Not hearing
>> from tens of users on this. Welcome others to contribute.
>
> I'm curious to try Clang with OE too, but the last time I checked it
> still is not possible to build a valid kernel using Clang alone.
> Therefore I would assume if I wanted to use Clang it could only be for
> building user-space things and I'd still need a cross-gcc compiler for
> the kernel. Is that the current plan?

If we were to do it, I'd arrange to have enough of the patches from the
Clang team in the yocto kernel, to provide a valid building kernel. i.e.
it is possible now, just not with a stock kernel.

But it's all theoretical at the moment, since we aren't actually close
to trying anything yet :)

Bruce

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


