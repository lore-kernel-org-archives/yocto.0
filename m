Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F93BE00D3C; Fri,  5 Feb 2016 12:50:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 748EBE00D2F
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 12:50:14 -0800 (PST)
Received: by mail-qk0-f171.google.com with SMTP id s5so39062434qkd.0
	for <yocto@yoctoproject.org>; Fri, 05 Feb 2016 12:50:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=rEcHW55zFOqSUm2N+jLwVZhQAK7nPqJiDBJEuVJ5rso=;
	b=rkVh2oXYp01ZF/NoANJmDe3moWtX6Bx5MkPJutU06a0JimDqdzcKq+s6GsCcHCo4k4
	1oapyI/M80sWsvxa9QB98GPumFozXyHTz2OT0hAO95csO7VagkQ9jww+TTyP02qO8NkS
	YLH0T7xtVtfyMmEvLCgXCi5uARlZuH912jykH79eW5bpuy1KHOLAOuqg697klXkhUd5y
	dorRarm5G5ISNJS/v4rhRihCI++g5fb6aVrEiyqed7PCS3v4meDNRVBw4gdvXA3Tvhaj
	oUExXdroNswGToXr/1Q3VIOvjRjT1PwN8tYLlqP6lzAbyrZYgDNhevIn3pCASgvKL3Lf
	nE+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=rEcHW55zFOqSUm2N+jLwVZhQAK7nPqJiDBJEuVJ5rso=;
	b=V+tFxn2VrPPxA9AR/nSoitfowYnTspTv8Ctf5BP12SIEaejADStHNePPAJmrjvPYOn
	jCFY4XVftjFgihKI/z3a2RXD0wmBe4TUgW3cI6C81mwS02atmVERzmH8dhCf5Ra5BzSu
	xwIxcm3OKHjIRZox6XayiedcMXdoSI9VDzK13aRE7y9jZq+cdzRWr46c8igqr4y/WFnB
	rt2Ulb9Gh6glPEO9Pvj5VaeQXrXcFhSOgy85hSZWJfZXO1JTI8uF3QZ+jliq1UvBcHGC
	mdJahsTWbOxNdysN5VHkQ6QzPGLUfqFPlFMGortJpuEPVvJ/p2pn7CKJBZnHdNDwPbNO
	2s9Q==
X-Gm-Message-State: AG10YORwOn4sk0VoUaS+63lz1Ek3Owx8z+AK2N0pq7GhBW3qK0EPdn5obPA0uhofLdujG2gIG3+/JCYqYTF6QA==
X-Received: by 10.55.74.197 with SMTP id x188mr19248799qka.104.1454705413488; 
	Fri, 05 Feb 2016 12:50:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Fri, 5 Feb 2016 12:49:43 -0800 (PST)
In-Reply-To: <CAJTo0LZc+MN02kQusy-on2g5kcohyHFQMY0ShtFnvgQhO2V9MQ@mail.gmail.com>
References: <7534F688-4CCB-468C-9E52-813388BC391C@nathan.to>
	<CAJTo0La9vryBMou_wnKKdmdC61Kgu7u2JL+vpx1RY+s7Gbe7QA@mail.gmail.com>
	<2D89126E-8678-494A-A98B-5F5D5723E860@nathan.to>
	<CAJTo0LbbM_TXswmQxbqP5yr4Pf9geh7Ru6=iD3nHNHscC8q-nQ@mail.gmail.com>
	<30E23744-25E6-43C3-A831-A8195E8787C9@nathan.to>
	<CAJTo0LZFMT=JyABkd1mzLJhB9npzkTLO_sXsReMD=hKvDsuFBw@mail.gmail.com>
	<1454695459773.33828@seescan.com>
	<7A197409-A596-4F9C-AF6A-A46A2529AB05@nathan.to>
	<1454695732426.82900@seescan.com>
	<D353173E-F5C7-4BCC-A975-D5E986B190D3@nathan.to>
	<CAJTo0LajcF_rR-oGnTr=_vBwcAvFcOsgJEXqPZFR0YmdgLCv5g@mail.gmail.com>
	<CAMKF1spXFvGQs-NM7eRD6ZFBVnoZPysrQec=nLfqkmFUBuSO+Q@mail.gmail.com>
	<CAJTo0LZc+MN02kQusy-on2g5kcohyHFQMY0ShtFnvgQhO2V9MQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 5 Feb 2016 12:49:43 -0800
Message-ID: <CAMKF1soGpt_BA1FFsiOSZxpoT5RH6LjwKBTiCqz+C=6KFr_Aog@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libgcc_s not present in Yocto image
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
X-List-Received-Date: Fri, 05 Feb 2016 20:50:19 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 5, 2016 at 12:46 PM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 5 February 2016 at 19:56, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> >> interpreter /lib64/ld-linux-x86-64.so.2
>> >
>> >
>> > Does the loader hunt around for this, as this is certainly not present
>> > in a
>> > default OE image?
>>
>> no it wont. infact thats the loader.
>
>
> Yeah, what I meant is would the kernel hunt for that.  So, that's the
> problem?

kernel wont. you can try doing

/path/to/ld.so <your-binary>
>
> Ross

