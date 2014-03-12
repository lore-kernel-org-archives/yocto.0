Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 855E3E0077C
	for <yocto@yoctoproject.org>; Wed, 12 Mar 2014 00:25:18 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s2C7PFim014506
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 12 Mar 2014 00:25:15 -0700 (PDT)
Received: from server.local (128.224.22.159) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.169.1;
	Wed, 12 Mar 2014 00:25:14 -0700
Message-ID: <53200BE2.5060608@windriver.com>
Date: Wed, 12 Mar 2014 03:25:22 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Andy Ng
	<andreas2025@gmail.com>
References: <CAAVaN8x28LCRC7Oz+vdovFk9EifMd2eGdkaUsymi1GRaGhOEsg@mail.gmail.com>
	<531F85C0.6050402@windriver.com>
	<1862955.r4ZPgX2shq@peggleto-mobl5.ger.corp.intel.com>
	<2182545.6raVmoJO5X@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <2182545.6raVmoJO5X@peggleto-mobl5.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Working with a git'ed kernel on the server
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
X-List-Received-Date: Wed, 12 Mar 2014 07:25:19 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-03-11, 6:10 PM, Paul Eggleton wrote:
> On Tuesday 11 March 2014 22:05:53 Paul Eggleton wrote:
>> On Tuesday 11 March 2014 17:53:04 Bruce Ashfield wrote:
>>> On 2014-03-11, 3:22 PM, Andy Ng wrote:
>>>> Thank you,
>>>>
>>>> I've just noticed my bb file has:
>>>>
>>>> SRCREV_pn-${PN} = "${AUTOREV}"
>>>>
>>>> So it should be ok?
>>>
>>> That should be all you need.
>>
>> If this line is in a recipe you can remove the _pn-${PN} as well as that
>> won't be achieving anything.
>
> Well, that is, unless somewhere else you have a SRCREV_pn-<PN> = line.

Agreed. Thanks for the clarification Paul!

Bruce

>
> Cheers,
> Paul
>


