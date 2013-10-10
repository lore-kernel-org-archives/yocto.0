Return-Path: <chgans@googlemail.com>
Received: from mail-pd0-f169.google.com (mail-pd0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E39FE01652
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 15:26:35 -0700 (PDT)
Received: by mail-pd0-f169.google.com with SMTP id r10so3281639pdi.0
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 15:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=AJKEK7zGDbPOuD3eBJKnNnR6NSKRC4flfRRFhpxl8EE=;
	b=d0hvOQKuPIZxpSx3li5ErprGUpcAM0uX+EH+Nwqm7C0FOxtQ2pFEgaqZbs46sAf2he
	a+alDRniH+L7J48sWsCjhxFGcTJT4jGyj61v8vp0W2G/MhNDsto8Yom1L38OpaCI3bZ/
	FX+W4m3j3yRb5H7rcMTsdMNzj5Lu3RE/wq2HW0EY6z7C5S3YZ8YPDOkqyPY2oCAriCJu
	RculJyJYz3YHC04Jo7VGDhFdbC7up2O1Awdic09TLGesLRRRILQ/L/cvQxoP98ybVxga
	JnxNfKrDsdcYCW/R8Vwp1N+unUEZ6w4prEfg3SP3EewVEQZYZiFoWtwC/6rBhWiPxg5G
	Fjjg==
X-Received: by 10.68.201.162 with SMTP id kb2mr16534080pbc.160.1381443995695; 
	Thu, 10 Oct 2013 15:26:35 -0700 (PDT)
Received: from krys-red.trunet.local ([210.48.94.225])
	by mx.google.com with ESMTPSA id
	ve9sm55456053pbc.19.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 10 Oct 2013 15:26:34 -0700 (PDT)
Sender: Chris Gagneraud <chgans@googlemail.com>
Message-ID: <52572994.4050006@gna.org>
Date: Fri, 11 Oct 2013 11:26:28 +1300
From: Christian Gagneraud <chgans@gna.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Jeff Osier-Mixon <jefro@jefro.net>
References: <CAPhnLPBDr_LhzOpjs7-sOsf7ujKGDcchxirH45kfHcyqnUaxoA@mail.gmail.com>
	<52571E27.70308@gna.org>
	<CA+YB3raEO5Ek5EdkAuezyW+D3tj5-Aod2k+BRg5UWF_UWUHmtg@mail.gmail.com>
In-Reply-To: <CA+YB3raEO5Ek5EdkAuezyW+D3tj5-Aod2k+BRg5UWF_UWUHmtg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: Yocto Project 1.5_M5.rc6
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
X-List-Received-Date: Thu, 10 Oct 2013 22:26:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/10/13 11:02, Jeff Osier-Mixon wrote:
> Hi Chris - well-intended sarcasm isn't usually a problem, but I want
> to make sure to address your concerns here. We would like to see a
> meta-qt5 as well but so far one has not been submitted. If you would
> like to submit one, I would be happy to put you in touch with the
> right maintainers who can guide you through the process.

Hi Jeff,

Well-intended answer! ;) But i want to make sure to address your 
concerns here. I would like to see the meta-qt5 [1] in Yocto's QA 
process. If you would like to integrate it, I would be happy to put you 
in touch with the right maintainers who can guide you through the process.

Chris.

[1] https://github.com/meta-qt5

--
Cheeky Chris
Random community dude @nocompany
http://catb.org/jargon/html/T/top-post.html


>
>
> On Thu, Oct 10, 2013 at 2:37 PM, Christian Gagneraud <chgans@gna.org> wrote:
>> On 09/10/13 11:35, Flanagan, Elizabeth wrote:
>>>
>>> All,
>>>
>>> The final release candidate for the upcoming Yocto Project 1.5 (dora
>>> 10.0.0)
>>> release is now available for testing at:
>>>
>>> http://autobuilder.yoctoproject.org/pub/releases/1.5_M5.rc6
>>>
>>> poky 102bf5e0f640fe85068452a42b85077f1c81e0c9
>>> eclipse-poky-juno 2fa1c58940141a3c547c8790b8a6832167e8eb66
>>> eclipse-poky-kepler ad74249895f882a8f00bdeef7a0f7c18998cc43e
>>> meta-fsl-arm d334d3c7388e41d720dd0c8e0cb76fab51a6e46a
>>> meta-fsl-ppc 25ee629b826a138ef407c113f776830e5d822c01
>>> meta-intel a1138af21f6ba85e79d1422a3f0a3e0c4f658a90
>>> meta-minnow ad469d78a1f56abd3b7d5103f1e0344cb10684b1
>>> meta-qt3 b73552fb998fd30a01dbee5a172e432a16078222
>>
>>
>>         ^^^
>>
>> Qt3, really!?! It's so unbeleivable that I had to check if it really was
>> Qt3, and yes it is!!! The commit log [1] is very interesting.
>>
>> Qt-3.0 was released in 2001 (linux-2.4 era), Qt-4.0 was released in 2005
>> (linux-2.6 era) and Qt-5.0 in Dec. 2012 (linux-3.7 release)...
>>
>> Anyone fancy a meta-linux24 layer? Or maybe a meta-gcc2, or meta-xfree86, or
>> ...
>>
>> Please excuse my sarcasm, but honestly I would prefer to see a meta-qt5
>> here!
>>
>> Best regards,
>> Chris
>>
>> [1] http://git.yoctoproject.org/cgit/cgit.cgi/meta-qt3/log/
>>
>>
>>>
>>> Please begin the QA cycle. Thanks!
>>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>


