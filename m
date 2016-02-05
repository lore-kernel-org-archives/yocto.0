Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DDD5E00D2A; Fri,  5 Feb 2016 11:56:40 -0800 (PST)
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
	*      [209.85.192.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5BA1E00BA4
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 11:56:39 -0800 (PST)
Received: by mail-qg0-f43.google.com with SMTP id u30so76558818qge.1
	for <yocto@yoctoproject.org>; Fri, 05 Feb 2016 11:56:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=4HxCjKj/PAO18hZ1aoAfzrHb/rNJ8vhnYof4KT4UKR4=;
	b=0rhdTe4/T823N0e7IdjCccvZllt6kEKpeXxQEITfrZDF7sYLA0dMvEA7oapWvQ4gzV
	LLV383R0i8pD198s2NgLyzQZK6Awpkm6TdFXHW2e5/naDS3Gra9Z2C7Y/Q3vFwpLrDXy
	Rz1/1kypZ4/+NcWfc+54RAy5wrlDB+DMjXYuy4p1gp8ue4Rrxixy/2qd01yGdMK9O4qk
	19nLuRFsE9IaTXjAfr0crvHytRcjTyBiI2jW0H5ta/u/K5fYJkv003YAFgSbw4Aa4wGA
	PHrso+c/XfMS5ZZ3xYW6M8oV90CvSWDADMXMDTZGi77aCr+wDE/Lw/FEaEOkKuCxPLCk
	2RIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=4HxCjKj/PAO18hZ1aoAfzrHb/rNJ8vhnYof4KT4UKR4=;
	b=BPfVtGbqDW8FjHcWh4l58Dca+8O4mYXpBW3T1tS2IBvGQz20AI1OorQX79fb+I6KUZ
	4vSiJZtgeiVXMJ55seUv1XIm/W63WQ+xt9v70X34zHYfTQfkodDX2pHElHI54IN5tPZb
	ZB4wZnd98rsjBqKcOUCm6RkFG1zhhLhjRrsSBxyBFp8N6gNJcZab0CTMtyOwe9mQ2rwz
	Gu7/JfY+sA1hXLLwBbsNvtme8hPZ7o9+k16OZUkFAm/oMCoqzXlmUii85/9IIFijSgCA
	Q9e2KZWTLfvxPuNNnzPwz9mby22ramEnRJgigtdIwyAWF6dpEPzZyE5dCGDU2JHc+35e
	3dMg==
X-Gm-Message-State: AG10YOTrKImPrGBDzPZUjtghB4+A6wlBWzybJy1iiTB0YOlc4furnFOnDRErKQCrvsSFo/dJ7XU879SOXO49pQ==
X-Received: by 10.140.108.181 with SMTP id j50mr17517220qgf.104.1454702198909; 
	Fri, 05 Feb 2016 11:56:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Fri, 5 Feb 2016 11:56:09 -0800 (PST)
In-Reply-To: <CAJTo0LajcF_rR-oGnTr=_vBwcAvFcOsgJEXqPZFR0YmdgLCv5g@mail.gmail.com>
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
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 5 Feb 2016 11:56:09 -0800
Message-ID: <CAMKF1spXFvGQs-NM7eRD6ZFBVnoZPysrQec=nLfqkmFUBuSO+Q@mail.gmail.com>
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
X-List-Received-Date: Fri, 05 Feb 2016 19:56:40 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 5, 2016 at 11:53 AM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 5 February 2016 at 18:12, Nathan Sowatskey <nathan@nathan.to> wrote:
>>
>> interpreter /lib64/ld-linux-x86-64.so.2
>
>
> Does the loader hunt around for this, as this is certainly not present in a
> default OE image?

no it wont. infact thats the loader.

>
> Ross
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

