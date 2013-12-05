Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B603AE0077E
	for <yocto@yoctoproject.org>; Thu,  5 Dec 2013 09:52:29 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id rB5HqQEY026055
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 5 Dec 2013 09:52:26 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Thu, 5 Dec 2013 09:52:26 -0800
Message-ID: <52A0BD54.3000704@windriver.com>
Date: Thu, 5 Dec 2013 12:52:20 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.1
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Stefan Roese
	<stefan.roese@gmail.com>
References: <52A0A38E.7020903@gmail.com> <52A0A974.9080207@gmail.com>
	<52A0AAF6.2000509@windriver.com> <1398865.OkXIqXG5JX@helios>
In-Reply-To: <1398865.OkXIqXG5JX@helios>
Cc: yocto@yoctoproject.org
Subject: Re: Board specific bbappend file
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
X-List-Received-Date: Thu, 05 Dec 2013 17:52:31 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-12-05 12:49 PM, Paul Eggleton wrote:
> On Thursday 05 December 2013 11:33:58 Bruce Ashfield wrote:
>> You can absolutely change the SRC_URI on a per-board basis. Just use
>> the technique that I showed above, and do it in a bbappend to your
>> linux recipe.
>>
>> i.e. something like: SRC_URI_qemux86 += "file://myfancypatch.patch"
>
> overrides and += do not play well. You must use _append in this case i.e.

Thanks for the update. I don't patch from recipes, so that's why I
watered down my response with "something like" :)

Bruce

>
> SRC_URI_append_qemux86 = " file://myfancypatch.patch"
>
> (remembering leading spaces, as usual with _append and variables that are
> space-separated lists)
>
> Cheers,
> Paul
>


