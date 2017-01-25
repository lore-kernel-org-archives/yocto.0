Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 355DBE0092C; Wed, 25 Jan 2017 10:46:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 019F3E008EE
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 10:46:45 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v0PIkhJf001503
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Wed, 25 Jan 2017 10:46:44 -0800
Received: from soho-mhatle-m.local (147.11.118.37) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Wed, 25 Jan 2017 10:46:43 -0800
To: "Bystricky, Juro" <juro.bystricky@intel.com>, Yocto Project
	<yocto@yoctoproject.org>
References: <04eb27c4-8d41-b866-1f88-6e64be6d5acf@windriver.com>
	<6E51916E4A1F32428260031F4C7CD2B6118F7794@ORSMSX112.amr.corp.intel.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <c3aa6eae-3bb6-96a1-d47f-515113290e36@windriver.com>
Date: Wed, 25 Jan 2017 10:46:42 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <6E51916E4A1F32428260031F4C7CD2B6118F7794@ORSMSX112.amr.corp.intel.com>
Subject: Re: [meta-mingw] Morty branch?
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
X-List-Received-Date: Wed, 25 Jan 2017 18:46:49 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

On 1/25/17 9:29 AM, Bystricky, Juro wrote:
> Hello Mark,
> the meta-mingw morty branch was created a few moments ago.
> Please have a look.

Great.  This seems to be the stuff that was working for me.

One comment if anyone else comes on this in the future.  The LTO commit.  It's
not completely clearly to me if this is actually needed or if there is a problem
somewhere else (binutils perhaps).

At some point, someone with a bit more knowledge of mingw/windows and
gcc/binutils probably should take a look at it -- if the LTO stuff is desired.

--Mark

> Thanks
> 
> Juro
> 
> 
>> -----Original Message-----
>> From: Mark Hatle [mailto:mark.hatle@windriver.com]
>> Sent: Wednesday, January 11, 2017 9:57 AM
>> To: Yocto Project <yocto@yoctoproject.org>
>> Cc: Bystricky, Juro <juro.bystricky@intel.com>
>> Subject: [meta-mingw] Morty branch?
>>
>> I don't see any specific Morty branch available for meta-mingw.  Also many
>> of
>> the patches that were in progress have not been integrated to the master
>> branch
>> either.
>>
>> I've posted the Wind River version of meta-mingw for use with Morty based
>> products to:
>>
>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-mingw-contrib/
>>
>> git://git.yoctoproject.org/meta-mingw-contrib
>>
>> The 'mgh/morty' branch.
>>
>> --Mark


