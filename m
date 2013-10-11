Return-Path: <chgans@googlemail.com>
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCD6AE01658
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 18:56:42 -0700 (PDT)
Received: by mail-pd0-f177.google.com with SMTP id y10so3473899pdj.36
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 18:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=tsPqaZtURMVCOst4p87qId6QqYMFkvQ4Yf1V+kqyois=;
	b=Rp1Q43pRuDkSZhrkHnhWz2u9RfMM55fX28gf2NJiFL9CSz7HMcsiv9aKd3v3cEQ19n
	W9QDEE10E3md7kX6O0/FV0Qw2ANaw4hX+z8e9X68iPIIX4x9+f5gNvqXagJN+9Z2pjZR
	pESVqen32n2i3Ys0IkhYdVrMHnnnTjC6iK697ByUcHo57vYlWLt0JPDLzPokSo6j8oCw
	Eg3905J39n64aN9EFbK4GUJcQb2wT0LNvVee6Pp+35p3RcdRZYcVQdxVwFs7FPTBIUAk
	W9sQ0rTQYUBD1jQexYA1mdUaHGwDoSZbBz3A5XmU98yKuQWk6V/n+HJm9dILgnDUzzCA
	izYg==
X-Received: by 10.66.141.73 with SMTP id rm9mr12618149pab.167.1381456601584;
	Thu, 10 Oct 2013 18:56:41 -0700 (PDT)
Received: from krys-red.trunet.local ([210.48.94.225])
	by mx.google.com with ESMTPSA id xe9sm66076205pab.0.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 10 Oct 2013 18:56:40 -0700 (PDT)
Sender: Chris Gagneraud <chgans@googlemail.com>
Message-ID: <52575AD5.8000002@gna.org>
Date: Fri, 11 Oct 2013 14:56:37 +1300
From: Christian Gagneraud <chgans@gna.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAPhnLPBDr_LhzOpjs7-sOsf7ujKGDcchxirH45kfHcyqnUaxoA@mail.gmail.com>	<52571E27.70308@gna.org>	<CA+YB3raEO5Ek5EdkAuezyW+D3tj5-Aod2k+BRg5UWF_UWUHmtg@mail.gmail.com>	<52572994.4050006@gna.org>	<CAP9ODKoaV71QNHnqfwqnajhORu=1m82YaUiFo41HhcvUn6E-Rg@mail.gmail.com>	<CA+YB3rZOFCTdJ0wtVa_qTt1QRZuT=nE2MZ2EXEqUs55Lyfiruw@mail.gmail.com>
	<52575854.6080302@linux.intel.com>
In-Reply-To: <52575854.6080302@linux.intel.com>
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
X-List-Received-Date: Fri, 11 Oct 2013 01:56:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/10/13 14:45, Saul Wold wrote:
>
> Sorry for the top post here. The real reason we still have Qt3 is
> because it's required part of the LSB spec.  OE-Core contains Qt4 and we
> know that meta-qt5 exists from Otavio and Martin.

Thanks for the explanation.

>
> I know that Richard and Paul have been watching what's going on with
> meta-qt5.

Good to hear.

Chris

>
> Sau!
>
> On 10/10/2013 05:31 PM, Jeff Osier-Mixon wrote:
>> Game, set, and match!  This is also why I don't play golf!
>>
>> There are many layers I would love to see in the YP QA process and I
>> would count meta-qt5 in the top priority. However, we only have so
>> many resources, so we have to focus on the core right now. I'd be
>> happy to talk offline about finding ways to locate new resources.
>>
>> On Thu, Oct 10, 2013 at 5:01 PM, Otavio Salvador
>> <otavio@ossystems.com.br> wrote:
>>> On Thu, Oct 10, 2013 at 7:26 PM, Christian Gagneraud <chgans@gna.org>
>>> wrote:
>>>> On 11/10/13 11:02, Jeff Osier-Mixon wrote:
>>>>>
>>>>> Hi Chris - well-intended sarcasm isn't usually a problem, but I want
>>>>> to make sure to address your concerns here. We would like to see a
>>>>> meta-qt5 as well but so far one has not been submitted. If you would
>>>>> like to submit one, I would be happy to put you in touch with the
>>>>> right maintainers who can guide you through the process.
>>>>
>>>>
>>>> Hi Jeff,
>>>>
>>>> Well-intended answer! ;) But i want to make sure to address your
>>>> concerns
>>>> here. I would like to see the meta-qt5 [1] in Yocto's QA process. If
>>>> you
>>>> would like to integrate it, I would be happy to put you in touch
>>>> with the
>>>> right maintainers who can guide you through the process.
>>>>
>>>> Chris.
>>>>
>>>> [1] https://github.com/meta-qt5
>>>
>>> Hey, this was even easier.
>>>
>>> I am one of meta-qt5 maintainers and I am sure Martin will be more
>>> than happy to get it into the QA process. Jeff ... this was easy :-)
>>>
>>> --
>>> Otavio Salvador                             O.S. Systems
>>> http://www.ossystems.com.br        http://code.ossystems.com.br
>>> Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750
>>
>>
>>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


