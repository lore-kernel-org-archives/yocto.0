Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A2E3E0056A; Fri, 27 Jun 2014 01:22:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E301DE00563
	for <yocto@yoctoproject.org>; Fri, 27 Jun 2014 01:22:25 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 4033827E03D;
	Fri, 27 Jun 2014 08:22:23 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id X1TonswBeJC5; Fri, 27 Jun 2014 08:22:21 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id D531927E031;
	Fri, 27 Jun 2014 08:22:20 +0000 (UTC)
Message-ID: <53AD29BB.2060901@dynamicdevices.co.uk>
Date: Fri, 27 Jun 2014 09:22:19 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Ash Charles <ashcharles@gmail.com>
References: <CAAPegz2DCZGTKfyJBGMytu_zofk2K9CSJMbVtiKHdS2eysZgrQ@mail.gmail.com>
	<CAMKF1sr_LaaVnd8U_7XP3QmAn6Q7OTuVmkb+G3zxz3edXEkRkw@mail.gmail.com>
	<539B54CF.90603@dynamicdevices.co.uk>
	<CAAPegz0HCvT9fNMfp0smuuLLTf0XU0zeD0G=picxNNbquEA5og@mail.gmail.com>
	<539B63C4.1030309@dynamicdevices.co.uk>
	<CAK8F28=CotBOqPE30quGM_k5aQG7sYnw8kPmNtn6i+6DtCNwfQ@mail.gmail.com>
In-Reply-To: <CAK8F28=CotBOqPE30quGM_k5aQG7sYnw8kPmNtn6i+6DtCNwfQ@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: virtual/mesa, virtual/libgl provided by multiple packages
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
X-List-Received-Date: Fri, 27 Jun 2014 08:22:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 26/06/2014 22:51, Ash Charles wrote:
> Hi Alex,
> On Fri, Jun 13, 2014 at 1:49 PM, Alex J Lennon
> <ajlennon@dynamicdevices.co.uk> wrote:
>> I think these two lines in cogl-1.0.inc are causing mesa to be pulled in
>> incorrectly, but I'm not sure what ERDEPENDS does...
>>
>> # Extra RDEPENDS for PACKAGECONFIG
>> # This has to be explictly listed, because cogl dlopens the backends
>> ERDEPENDS_GL    = "libgl"
>> ERDEPENDS_GLES2 = "libgles2"
> I'm seeing the same issue.  I'm guessing that 'virtual/*' is not a
> valid target for an RDEPEND.  It looks like your libgles2 provider
> should RPROVIDE libgles2.  The receipe for SGX (graphics core)
> libraries, for example, contains lines like this:
> RREPLACES_${PN} = "libegl libgles1 libgles2"
> RPROVIDES_${PN} = "libegl libgles1 libgles2"
> RCONFLICTS_${PN} = "libegl libgles1 libgles2"
>
> Mesa does something similar (with some extra debian renaming that I
> didn't understand) in an anonymous python function in mesa.inc.
>
> --Ash

fwiw. I also ran into a problem with needing libglapi which seems to be
provided by mesa.

I am wondering if there's a need for a mesa-glapi similar to mesa-gl to
eliminate the need for mesa-proper

Regards, Alex


