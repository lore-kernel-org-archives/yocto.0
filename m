Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F9F8E008BC; Mon,  2 Feb 2015 17:53:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E835E0086F
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 17:53:30 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t131rQF6023062
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 2 Feb 2015 17:53:26 -0800 (PST)
Received: from [128.224.162.226] (128.224.162.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Mon, 2 Feb 2015 17:53:26 -0800
Message-ID: <54D02A1A.6030702@windriver.com>
Date: Tue, 3 Feb 2015 09:53:30 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Gary Thomas
	<gary@mlbassoc.com>
References: <54CFA6DA.60103@mlbassoc.com>
	<3024113.u8sIRSU3WC@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <3024113.u8sIRSU3WC@peggleto-mobl5.ger.corp.intel.com>
X-Originating-IP: [128.224.162.226]
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
X-List-Received-Date: Tue, 03 Feb 2015 01:53:33 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 02/03/2015 02:40 AM, Paul Eggleton wrote:
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
> I don't think you should necessarily be worried, but this is definitely a bug
> and we should fix it. It affects bitbake -S printdiff as well. If you have a
> chance it would be great if you could file a bug about it.
>
> Thanks,
> Paul
>

I've sent a patch to OE-core mailing list to fix this problem.
The title is:
image.bbclass: don't let do_rootfs depend on BUILDNAME

Regards,
Chen Qi


