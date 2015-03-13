Return-Path: <alberk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E15EE00871; Thu, 12 Mar 2015 22:34:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alberk[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC392E0085D
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 22:34:17 -0700 (PDT)
Received: by iecsl2 with SMTP id sl2so83892915iec.1
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 22:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=NoZhFpbSV+loIhZrZlYFZqSDv2GNhguqhYr8bAzDKyI=;
	b=tcjQiXNlNTIzYLzA0qLCkhDUA7rJdzms98Sf+tkiyuybp1Morgi3JCvCLpnOleMRnF
	5lY8VRB1S9+/O3YB8A3yzwhx6rwTeTCyn0Qsn28wktyml+TiVNqMTTU7NsdYlqtthf/d
	TyvVa30kFDMotZ3itlPsCtbisS4O45ehde5sTlvwxjj8oN3hLWiPUjnbxw5vWScoi+1L
	C79GiN9R4MnVnPSFQ1jzwHw4m1XeRPHZ7lNlcDYnOVSyjznVTnsSCzKvCyzReIcKOpGZ
	607B52C6mom0TX9jmjrbcRxU3xkkOPigzByT7mfEAFDxOtYaATLqqKLUeG9zLZLoqzYD
	jYWw==
MIME-Version: 1.0
X-Received: by 10.107.6.212 with SMTP id f81mr76044869ioi.37.1426224854761;
	Thu, 12 Mar 2015 22:34:14 -0700 (PDT)
Received: by 10.64.39.16 with HTTP; Thu, 12 Mar 2015 22:34:14 -0700 (PDT)
In-Reply-To: <0F917B7D-E542-4C47-BA24-1C83837BE6D6@gmail.com>
References: <CACjDgAMTi_5Jk-p4n8F80XaZzaZ637q+5pvErr=ZfsSb2n5D2w@mail.gmail.com>
	<A01D920D-DAC8-44A6-9FD4-82B54C4B8E55@gmail.com>
	<CACjDgAM6f_jOsxY4o9ADRrf5MRTJ1hYm_8LYJpGsKvD5W-7nyA@mail.gmail.com>
	<0F917B7D-E542-4C47-BA24-1C83837BE6D6@gmail.com>
Date: Fri, 13 Mar 2015 13:34:14 +0800
Message-ID: <CACjDgAMuxobz99okCa3m_Q3b7qLivp0XeBgtJhseZYCEa=jTrA@mail.gmail.com>
From: Albert K <alberk@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Dizzy branch with Linux Kernel 3.19
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
X-List-Received-Date: Fri, 13 Mar 2015 05:34:18 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

Thanks for the link.  One question,  for the kernel 3.17 the .bb
resolve to 3.17-rc7.   What can I find the release version for 3.17.
Thanks.

Regards,
Albert.

On Fri, Mar 13, 2015 at 1:29 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Mar 12, 2015, at 10:25 PM, Albert K <alberk@gmail.com> wrote:
>>
>> Hi,
>>
>> I am a bit confused as the 3.19 is listed in
>> http://git.yoctoproject.org.   BTW, how do I check which kernel
>> version is supported by a specific branch of yocto (eg dizzy, daisy).
>> Thanks.
>>
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-kernel/linux?h=dizzy
>
>> Regards,
>> Albert.
>>
>> On Fri, Mar 13, 2015 at 12:43 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>>> On Mar 12, 2015, at 9:21 PM, Albert K <alberk@gmail.com> wrote:
>>>>
>>>> Dear all,
>>>>
>>>> I would like to know if it is possible to do a compile with Linux
>>>> Kernel 3.19.  I have tried the  PREFERRED_VERSION_linux-yocto_qemux86
>>>> = "3.19%"  in the local.conf and it does not work.
>>>>
>>>> If possible, what need to be done to the this going.  Thanks.
>>>>
>>>
>>>
>>> you need to back port or write recipes for 3.19 kernel first
>>>
>>>> Regards,
>>>> Albert.
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>

