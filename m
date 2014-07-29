Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80F15E007CE; Mon, 28 Jul 2014 17:41:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE7A6E00769
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 17:41:47 -0700 (PDT)
Received: by mail-ie0-f177.google.com with SMTP id at20so7609514iec.22
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 17:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=CEaIV9sJ2Fxdu0RjQkFVW1PEaj82mnQNf64kOTLfGuc=;
	b=k2MJRwV1Q0GiKvtvaPQZTsBl2c/U439MVpbL+IJPj+qnSt2450qQyWRgIQD7l1IeIM
	aJ0dmkhdcynOZ4oB5a5WU3R/ZuhamXno0UW5pTb1V6hWy/BerbDB+7TDRPFyZx1NC9Pu
	scqFkrtBANdc1mBLFUE0+41EeBAkMqyNcUWuV8SPh1DyzSqHJMMaG3X4Uad3p9Vf6kyj
	idv1cGnaSZiaNnBtfpA+Hwy2IhNFll3X9OtmJzW+hB1VNTshGbFsNYmZIcdtZtUbAZVu
	Vz+hnHxeAOqEQ5706NAe8lpsF36H2AezPtHGwdPmVw4vYmBvrmJcMg/rb6VJZ5qmBU9i
	phgg==
X-Received: by 10.42.90.74 with SMTP id j10mr770776icm.29.1406594507024; Mon,
	28 Jul 2014 17:41:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Mon, 28 Jul 2014 17:41:16 -0700 (PDT)
In-Reply-To: <53D6EAC1.2030802@mvista.com>
References: <53D2DE13.9010007@mvista.com>
	<CAMKF1son3T9fsuF9X0Px4hirfk7Ezguy4s5Zit6-0JvfmXDV5A@mail.gmail.com>
	<53D65F40.7010701@windriver.com> <53D6EAC1.2030802@mvista.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 28 Jul 2014 17:41:16 -0700
Message-ID: <CAMKF1sqs+WMPnctwwZ7-BkR6VvMjFSxPO2q=7Oz2wyQ5cWVMsA@mail.gmail.com>
To: akuster <akuster@mvista.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <openembedded-devel@lists.openembedded.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] libpcap-ng
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
X-List-Received-Date: Tue, 29 Jul 2014 00:41:56 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 28, 2014 at 5:28 PM, akuster <akuster@mvista.com> wrote:
>>>
>>> I think at very least you can propose it for meta-oe if not or-core.
>
>
> I think core libcap-ng recipe belongs in a common layer and not maintained
> in two places.

yes meta-oe is kind of extended common layer besides oe-core, if it
can be proven that we can drop libpcap and replace its use completely
with libpcap-ng you might have a better case to include it in oe-core,

>
>
>>> But I also wonder why meta-selinux is not a sub-layer under
>>> meta-security,
>>>
>>
>> meta-selinux existed first... no other reason.
>>
>>
>> The last time I looked at meta-security (well over a year ago), it
>> wasn't terribly useful.
>
>
> Well when a security package like 'snort' and maybe others are in other
> locations, I can see why meta-security won't be very useful.
>
>
>  It was just a random collection of
>>
>> security-like packages, some worked, some didn't.
>
>
> Hopefully that will change.

