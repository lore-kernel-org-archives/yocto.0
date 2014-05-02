Return-Path: <otavio.salvador@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3542DE009C1; Fri,  2 May 2014 09:55:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yh0-f47.google.com (mail-yh0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A211E00939
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 09:55:44 -0700 (PDT)
Received: by mail-yh0-f47.google.com with SMTP id a41so1984591yho.20
	for <yocto@yoctoproject.org>; Fri, 02 May 2014 09:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=a+E+KD9mUuBiLmHVwQjy3Ubj5ylCJP4JMOqu7gUtWPY=;
	b=m7q2A25Tbj12oxRxb3Zc3Iwrl93d6zoRBsvJeHIyttkcC1SQlm9Yct+ZVfsjy9XoMW
	ZjuCaDZ/YcZvcqJjnS1aoQj50cbVnOYgZlSnIqVCRTFG9JaEI3nFEOkPwvNBBGnqLI5e
	9BgS3tb3wrxU/XYatUu1ttKIoQlSuJC+t06mSJmG4gVcSA0xWpghFu3rnR+v5Cy4GaHE
	hVy8hPBxvogfoY108cZ3koRXqvPCnYrnLEvne/yHO8RJsRb0GGbLPIZ3NOaJxEesglcX
	HpYRSkYh2z/6iJ3T4SL8HRoMwamlTcBFdXFJKnWAFnRpVp0i0pILc9kBkc0SuXiRvaZQ
	Fzcg==
MIME-Version: 1.0
X-Received: by 10.236.129.227 with SMTP id h63mr25054046yhi.148.1399049744402; 
	Fri, 02 May 2014 09:55:44 -0700 (PDT)
Sender: otavio.salvador@gmail.com
Received: by 10.170.166.132 with HTTP; Fri, 2 May 2014 09:55:43 -0700 (PDT)
In-Reply-To: <5363BDD7.7010407@dynamicdevices.co.uk>
References: <5362171B.8010000@dynamicdevices.co.uk>
	<5577559.2gRHFt1x94@peggleto-mobl5.ger.corp.intel.com>
	<536285BC.8010200@dynamicdevices.co.uk>
	<CAP9ODKrgW5+pPsS51QLwd+9j0q2xMd+j-Q6bjKgZdV7ho_D0WA@mail.gmail.com>
	<53632C0B.1010401@dynamicdevices.co.uk>
	<CAP9ODKpRF27T7ROz-fLidRb6R=jwzp-EW6Wd44N_hZgiNHJmSg@mail.gmail.com>
	<5363973A.6020106@dynamicdevices.co.uk>
	<CAP9ODKpi7p+oZ09XyVxAB+2Xv36YWVf4d4iO4jLEhEegzUQodA@mail.gmail.com>
	<53639996.4090604@dynamicdevices.co.uk>
	<CAP9ODKopDnkSC8mPsDMk95n_Ws+KOoFEeD1YUWyPojnmS2Xzjw@mail.gmail.com>
	<CAP9ODKpg3+SyhU9+KPqPgUyKSGb1pU2_601cK8eq1-b-KG_Hcg@mail.gmail.com>
	<5363A6F6.5040507@dynamicdevices.co.uk>
	<CAP9ODKrG+2JTBEcMCTOsz+K0pm_60Q2ZRRTkh+Zayfaev2Lheg@mail.gmail.com>
	<5363BDD7.7010407@dynamicdevices.co.uk>
Date: Fri, 2 May 2014 13:55:43 -0300
X-Google-Sender-Auth: LjT72xbDFR5AFxYS2ppbxbwH7gM
Message-ID: <CAP9ODKobkMQSVqu4TD4Xcmkx1EFhig5poPpqVnqDFL8czGYDpg@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
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
X-List-Received-Date: Fri, 02 May 2014 16:55:49 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, May 2, 2014 at 12:46 PM, Alex J Lennon
<ajlennon@dynamicdevices.co.uk> wrote:
>
> On 02/05/2014 16:24, Otavio Salvador wrote:
>> On Fri, May 2, 2014 at 11:08 AM, Alex J Lennon
>> <ajlennon@dynamicdevices.co.uk> wrote:
>>> On 02/05/2014 14:25, Otavio Salvador wrote:
>>>> On Fri, May 2, 2014 at 10:23 AM, Otavio Salvador
>>> So thanks again for the advice. I think we've cracked it :)
>> Could you try the attached patch over Poky?
>>
>
> I tried the patch, but I'm not sure that it makes a difference I'm afraid
>
> - with UBOOT_MACHINE = "" or UBOOT_CONFIG = "" in my .bbappend I still
> get the message about 2009.08 not being available
> - with UBOOT_MACHINE_imx6qsabresd = "" .bbappend it still works

Yes but this is becase the u-boot-imx_2009.08 has a
UBOOT_MACHINE_imx6qsabresd setting. So it overrides the UBOOT_MACHINE
one. I think without this patch even UBOOT_MACHINE_imx6qsabresd won't
work.

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

