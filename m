Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51A42E008BC; Mon,  2 Feb 2015 15:25:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.50 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD01BE0086F
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 15:25:04 -0800 (PST)
Received: by mail-pa0-f50.google.com with SMTP id rd3so88267544pab.9
	for <yocto@yoctoproject.org>; Mon, 02 Feb 2015 15:25:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=Rg6CNnyb41KfGDHF/8sDA5VjUlMWY4g5HApvLY6jyFU=;
	b=P3818rIvebPupkUqBvc4c/F2pnvyRvejAZtkZAUhW5SRfg22nw/80AV/oGO3E9dvBT
	fi45XS00BSKSGPxQKnfk/XCvwFiIp/9NjVUVfupduBDSsCh5AJNKJ4aY4WFJSEZRPvnU
	OmV8ev1goGvHvYUGdrGLjcOTnmcCiyKaL3O2gv9/QqHJnEPCaQ4RnEyq12f40uWM8o1e
	S01Vb0a710AL41aXieFzQW8TzksYKuMk2J6Zs9EATI1zTiOQqU+voOgb812IA3R/3VZU
	1GtXP9ws4PcM90RmnuixDt3ttPzoVaDmb/uX38pcmkBdB/OKmGywhuKZGgLFEibubSbD
	tDNw==
X-Received: by 10.66.65.75 with SMTP id v11mr32382332pas.81.1422919504473;
	Mon, 02 Feb 2015 15:25:04 -0800 (PST)
Received: from ?IPv6:2601:c:a700:272f:c42b:9a19:c8d3:f701?
	([2601:c:a700:272f:c42b:9a19:c8d3:f701])
	by mx.google.com with ESMTPSA id c2sm149835pdi.25.2015.02.02.15.25.02
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Feb 2015 15:25:03 -0800 (PST)
Message-ID: <54D0074A.50903@gmail.com>
Date: Mon, 02 Feb 2015 15:24:58 -0800
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1422891351-17215-1-git-send-email-akuster808@gmail.com>	<101638424.af5YciAOUL@peggleto-mobl5.ger.corp.intel.com>	<54CFC0D5.7050703@gmail.com>
	<4593095.TQ4VoJlUyp@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <4593095.TQ4VoJlUyp@peggleto-mobl5.ger.corp.intel.com>
Subject: Re: [meta-security][PATCH] layer conf: update to include meta-networking
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
X-List-Received-Date: Mon, 02 Feb 2015 23:25:09 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

layer index updated.

I will update README next.

thanks,
Armin

On 02/02/2015 10:31 AM, Paul Eggleton wrote:
> On Monday 02 February 2015 10:24:21 akuster808 wrote:
>> On 02/02/2015 08:31 AM, Paul Eggleton wrote:
>>> Can you please also update the OE layer index?
>>
>> Do I do that manually or is it picked up from the README?
>
> No, it needs to be done manually, I don't have anything to parse a README and
> extract dependencies at the moment.
>
>>> http://layers.openembedded.org/layerindex/branch/master/layer/meta-securit
>>> y/
>>>
>>> I added meta-perl and meta-oe this morning based on the meta-security
>>> README - the latter isn't represented in your LAYERDEPENDS value though,
>>> so all three places ought to be made consistent with whatever the actual
>>> set of requirements is.
>>>
>>> (If people are starting to use LAYERDEPENDS a bit more it might make sense
>>> for us to add some code to the layer index update script to try to update
>>> its dependency list based upon LAYERDEPENDS and BBFILE_COLLECTIONS; up to
>>> now it hasn't seen a huge amount of use hence I hadn't done that.)
>>
>> Is the idea to include all layers required including the cascaded ones?
>>
>> i.e: meta-networking requires mete-python, should I include that one too?
>
> No, no need to do that - just the direct dependencies is enough.
>
> Cheers,
> Paul
>

