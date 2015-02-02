Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D07BE008A6; Mon,  2 Feb 2015 10:55:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBC63E00824
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 10:55:12 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D5A9DF811E1; Mon,  2 Feb 2015 11:55:11 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 18224F811DB;
	Mon,  2 Feb 2015 11:55:11 -0700 (MST)
Message-ID: <54CFC80F.1080509@mlbassoc.com>
Date: Mon, 02 Feb 2015 11:55:11 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <54CFA6DA.60103@mlbassoc.com>
	<3024113.u8sIRSU3WC@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <3024113.u8sIRSU3WC@peggleto-mobl5.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: bitbake-whatchanged error
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
X-List-Received-Date: Mon, 02 Feb 2015 18:55:18 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-02-02 11:40, Paul Eggleton wrote:
> Hi Gary,
>
> On Monday 02 February 2015 09:33:30 Gary Thomas wrote:
>> Every time I run the 'bitbake-whatchanged' script, I get an
>> error like this:
>>     ERROR: Bitbake's cached basehash does not match the one we just generated
>> (/home/local/poky-cutting-edge/meta-imx6/packages/images/imx6-demo-image.bb
>> .do_rootfs)! ERROR: The mismatched hashes were
>> e48dfde9772b0a567b5327087c9e2d44 and 3c3447f08ef4da61b814bff5fb909bff
>>
>> What causes this and should I be worried?  Does it affect
>> the actual results which are shown?
>
> I don't think you should necessarily be worried, but this is definitely a bug
> and we should fix it. It affects bitbake -S printdiff as well. If you have a
> chance it would be great if you could file a bug about it.

Done: https://bugzilla.yoctoproject.org/show_bug.cgi?id=7274

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

