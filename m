Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42F36E0085F; Tue, 28 Oct 2014 07:30:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECA8FE00848
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 07:30:39 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 21717F811EC; Tue, 28 Oct 2014 08:30:39 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id A1BFEF811EB;
	Tue, 28 Oct 2014 08:30:37 -0600 (MDT)
Message-ID: <544FA88F.5060609@mlbassoc.com>
Date: Tue, 28 Oct 2014 08:30:39 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <544FA23A.6050502@mlbassoc.com>
	<20141028141539.GG7577@ad.chargestorm.se>
In-Reply-To: <20141028141539.GG7577@ad.chargestorm.se>
Subject: Re: Packaging problem
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
X-List-Received-Date: Tue, 28 Oct 2014 14:30:49 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-10-28 08:15, Anders Darander wrote:
> * Gary Thomas <gary@mlbassoc.com> [141028 15:06]:
>> I'm trying to split out some tests from a packages by adding these lines the recipe:
>>     PACKAGES += " ${PN}-tests"
>>     FILES_${PN}-tests = "${libdir}/python*/site-packages/matplotlib/test*"
>>     RDEPENDS_${PN}-tests += " python-nose"
> ...
>> It all looks correct to me, but the -tests package is empty.
>
> I'd guess that the files get picked up in ${PN}, right?
>
> If so, you'll likely need to prepend PACKAGES instead of appending to
> it:
> PACKAGES =+ " ${PN}-tests"
>
> The first package in PACKAGES that can grab a file will do that...
>
> Hopefully this will help you...

Perfect, that fixed it :-)

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

