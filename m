Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4CE7E0076F; Wed, 25 Feb 2015 05:51:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B22BE0074C
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 05:51:32 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id F387EF811D9; Wed, 25 Feb 2015 06:51:31 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id A72B6F811D7;
	Wed, 25 Feb 2015 06:51:31 -0700 (MST)
Message-ID: <54EDD36F.6080404@mlbassoc.com>
Date: Wed, 25 Feb 2015 06:51:43 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.LFD.2.11.1502250351310.26693@localhost>
	<20150225134406.GH8949@mentor.com>
In-Reply-To: <20150225134406.GH8949@mentor.com>
Subject: Re: kernel manual: confusing coverage of FILESEXTRAPATHS_prepend
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
X-List-Received-Date: Wed, 25 Feb 2015 13:51:36 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-02-25 06:44, Joe MacDonald wrote:
> [[yocto] kernel manual: confusing coverage of FILESEXTRAPATHS_prepend] On 15.02.25 (Wed 03:54) Robert P. J. Day wrote:
>
>>
>>    minor quibble about kernel dev manual -- section 2.2.1, "creating
>> the append file", uses the example of:
>>
>>   FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>
>> while section 2.2.3 uses:
>>
>>   FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>>
>> both sections kind of implying that that's the way to do it, without
>> making it clear that *either* way works as long as the variable
>> prepend matches up with the directory name.
>>
>>    both ways are correct, of course, but the wording is a bit
>> confusing.
>
> It's probably worth changing the latter reference to match the former.
> Both work but with any new recipes (at least in the layers I maintain)
> the preference is to use the former for clarity as well as faster
> lookups.

What makes one way faster than any other?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

