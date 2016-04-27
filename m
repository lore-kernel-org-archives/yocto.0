Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 838F8E00D7F; Wed, 27 Apr 2016 02:52:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AA41E00D7D
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 02:52:19 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 9949E68A01C; Wed, 27 Apr 2016 10:52:18 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id E852B68A01A;
	Wed, 27 Apr 2016 10:52:17 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 5707167405AD;
	Wed, 27 Apr 2016 11:52:17 +0200 (CEST)
To: "Burton, Ross" <ross.burton@intel.com>
References: <57207CC3.3020905@mlbassoc.com>
	<CAJTo0LbHvD417+AkLhM8153DhbpBAE9TTeGMbuEDr+BV0CJAbA@mail.gmail.com>
	<572084BB.5090307@mlbassoc.com>
	<CAJTo0LZYOE-Sd_8OR0oGHpigWBVQM+mFkmP69gSOO6RuRb7jDQ@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <57208BD1.4030705@mlbassoc.com>
Date: Wed, 27 Apr 2016 11:52:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZYOE-Sd_8OR0oGHpigWBVQM+mFkmP69gSOO6RuRb7jDQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: eudev hwdb?
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
X-List-Received-Date: Wed, 27 Apr 2016 09:52:24 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-04-27 11:23, Burton, Ross wrote:
>
> On 27 April 2016 at 10:22, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     Can you explain a bit more? - BAD_RECOMMENDS doesn't seem to be documented.
>
>
> My mistake - BAD_RECOMMENDATIONS.
>
> http://www.yoctoproject.org/docs/2.0.1/ref-manual/ref-manual.html#var-BAD_RECOMMENDATIONS

Thanks, that worked.  Took away all of the hwdb files (binary and sources)
but my system is working just fine without them (so far)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

