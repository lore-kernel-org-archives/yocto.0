Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C6B2E007C2; Mon, 28 Jul 2014 04:14:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A70DEE007B4
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 04:14:16 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 6FEEC27E049;
	Mon, 28 Jul 2014 11:14:14 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 1pVhoEE39x6c; Mon, 28 Jul 2014 11:14:12 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id BAE3727E031;
	Mon, 28 Jul 2014 11:14:12 +0000 (UTC)
Message-ID: <53D63083.1000309@dynamicdevices.co.uk>
Date: Mon, 28 Jul 2014 12:14:11 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <53D623AD.5080006@dynamicdevices.co.uk>
	<3638255.FXZXZqP4FB@peggleto-mobl5.ger.corp.intel.com>
	<53D628B4.9070503@dynamicdevices.co.uk>
	<6145890.jIdLxip80Y@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <6145890.jIdLxip80Y@peggleto-mobl5.ger.corp.intel.com>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org
Subject: Re: 'pod' problem building openssl 1.0.1g with latest daisy branch
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
X-List-Received-Date: Mon, 28 Jul 2014 11:14:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 28/07/2014 11:45, Paul Eggleton wrote:
> On Monday 28 July 2014 11:40:52 Alex J Lennon wrote:
>> On 28/07/2014 11:34, Paul Eggleton wrote:
>>> On Monday 28 July 2014 11:19:25 Alex J Lennon wrote:
>>> So, I think this is an issue with newer host Perl and OpenSSL 1.0.1g. This
>>> looks like it might be the patch that fixes it:
>>>
>>> https://git.openssl.org/gitweb/?p=openssl.git;a=commit;h=23f5908ac753b176a
>>> f2a0690e0ebb53c95ef192b
>>>
>>> If so we can apply this in daisy (master already has 1.0.1h which includes
>>> this fix.)
>> I'll give this a quick test then shortly thanks Paul.
>>
>> In the meantime I can also confirm that running make install_sw instead
>> of make install works as an interim - albeit inappropriate for Yocto - fix
>>
>> ref: https://github.com/openssl/openssl/issues/57
> I haven't reproduced the issue here (I need to clear space to set up an Ubuntu 
> 14.04 VM first) but if that means it skips preparing / installing the 
> documentation I would assume it would work around the issue yes.
>
> Cheers,
> Paul

Apologies - this does appear to be finger trouble on my part. Somehow
when I pulled down
the latest daisy branch a merge has occurred which knocked out a line
with the already
present patch in openssl_1.0.1g.bb:

file://openssl-fix-doc.patch \

With this corrected openssl builds and installs fine.

Thanks for putting me on the right track.

Cheers

Alex


