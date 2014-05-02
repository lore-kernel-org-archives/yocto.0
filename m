Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49463E009C5; Fri,  2 May 2014 07:09:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC791E00939
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 07:09:01 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id B653427E015;
	Fri,  2 May 2014 14:08:58 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id wyfu7ke4Vbqd; Fri,  2 May 2014 14:08:56 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id B58B327E006;
	Fri,  2 May 2014 14:08:56 +0000 (UTC)
Message-ID: <5363A6F6.5040507@dynamicdevices.co.uk>
Date: Fri, 02 May 2014 15:08:54 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Otavio Salvador <otavio@ossystems.com.br>
References: <5362171B.8010000@dynamicdevices.co.uk>	<5577559.2gRHFt1x94@peggleto-mobl5.ger.corp.intel.com>	<536285BC.8010200@dynamicdevices.co.uk>	<CAP9ODKrgW5+pPsS51QLwd+9j0q2xMd+j-Q6bjKgZdV7ho_D0WA@mail.gmail.com>	<53632C0B.1010401@dynamicdevices.co.uk>	<CAP9ODKpRF27T7ROz-fLidRb6R=jwzp-EW6Wd44N_hZgiNHJmSg@mail.gmail.com>	<5363973A.6020106@dynamicdevices.co.uk>	<CAP9ODKpi7p+oZ09XyVxAB+2Xv36YWVf4d4iO4jLEhEegzUQodA@mail.gmail.com>	<53639996.4090604@dynamicdevices.co.uk>	<CAP9ODKopDnkSC8mPsDMk95n_Ws+KOoFEeD1YUWyPojnmS2Xzjw@mail.gmail.com>
	<CAP9ODKpg3+SyhU9+KPqPgUyKSGb1pU2_601cK8eq1-b-KG_Hcg@mail.gmail.com>
In-Reply-To: <CAP9ODKpg3+SyhU9+KPqPgUyKSGb1pU2_601cK8eq1-b-KG_Hcg@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	yocto <yocto@yoctoproject.org>
Subject: Re: Undefining a variable in a recipe?
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
X-List-Received-Date: Fri, 02 May 2014 14:09:06 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit


On 02/05/2014 14:25, Otavio Salvador wrote:
> On Fri, May 2, 2014 at 10:23 AM, Otavio Salvador
> <otavio@ossystems.com.br> wrote:
>> On Fri, May 2, 2014 at 10:11 AM, Alex J Lennon
>> <ajlennon@dynamicdevices.co.uk> wrote:
>>> Or indeed, would be not be reasonable to modify the uboot-config.bbclass
>>> such that
>>> it tested for and discarded empty strings in UBOOT_MACHINE / UBOOT_CONFIG
>>> which would seem to be a more complete test and would eliminate the
>>> problem ?
>> Like: http://privatepaste.com/8046479967
> Fixed: http://privatepaste.com/3ffec754d4
>

Otavio, thanks for that. Python is not my métier and I had assumed that
the check on  'if ubootmachine' and so forth would check for definition
rather than be a check on a  zero length string.

However given Paul's pointer on Python I've revisited this,

"if len(x) > 0", "if len(x)",  and "if x" are all equivalent tests for empty strings in Python"

I had tried setting UBOOT_CONFIG = "" and UBOOT_MACHINE = "" as that's
what I saw used in the getVar(). This which didn't work for me, and I
wrongly assuming this was because  of the test.

If instead I set the appended machine type, e.g.
UBOOT_MACHINE_im6qsabresd = "", then that works (!) I guess it's being
copied across somewhere.

So thanks again for the advice. I think we've cracked it :)

Cheers,

Alex


