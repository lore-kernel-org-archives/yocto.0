Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB489E00BDF; Thu,  8 Jun 2017 05:11:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C0E9E00B27
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 05:11:52 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 12E3868A01A; Thu,  8 Jun 2017 13:11:52 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 7F22A68A019;
	Thu,  8 Jun 2017 13:11:51 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 38C5467400FD;
	Thu,  8 Jun 2017 14:11:51 +0200 (CEST)
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
References: <27cfc5c8-8741-a147-5c76-60d85e53cd9d@mlbassoc.com>
	<CAHiDW_FLrA=m0fL_erHO2+QdGf4ZEQfh=uwhFHqEeh9XtkUpAQ@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <1c9efd93-d957-24ad-5597-6a2e473ce3eb@mlbassoc.com>
Date: Thu, 8 Jun 2017 14:11:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAHiDW_FLrA=m0fL_erHO2+QdGf4ZEQfh=uwhFHqEeh9XtkUpAQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Changing terminal font in sato
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
X-List-Received-Date: Thu, 08 Jun 2017 12:11:53 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2017-06-08 14:05, Jussi Kukkonen wrote:
> On 1 June 2017 at 18:58, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>  >
>  > How does one change the terminal font (size) used by matchbox-terminal
>  > in the sato desktop?  I tried the 'matchbox-appearance' app and it didn't
>  > have any affect, nor could I see a way to change the font.
> 
> 
> Hi, sorry for late answer,
> 
> matchbox-terminal is a _very_ thin app based on VteTerminal widget: Modifying Vte font is a single API call but that is 
> not exposed in the app (as it has no configuration at all). In the short term your options are to use another more 
> serious terminal or send patches for mb-terminal...

OK, thanks.  Any recommendations for an alternative, other than
'xterm' (whose "main.c" has said "Warning!  there be dragons here!"
for more than 20 years :-)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

