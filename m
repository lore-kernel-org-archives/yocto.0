Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 501D4E00831; Tue,  1 May 2018 17:41:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f50.google.com (mail-vk0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90698E006B4
	for <yocto@yoctoproject.org>; Tue,  1 May 2018 17:41:15 -0700 (PDT)
Received: by mail-vk0-f50.google.com with SMTP id 131-v6so7950597vkf.8
	for <yocto@yoctoproject.org>; Tue, 01 May 2018 17:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Rt1UpqRXhBDqxOb6HinrF/STHfN7hValgQtsHaUubCg=;
	b=mLE4iUb/RKUSFGIuV215vkk4LNWd+WvK2dZLK9DVWyLaexp00ozKjQcqzzECdalmnY
	+Xy1C+tJXbtx5GbknqE2kCp3XZlySdnS52/KsrffJ3vHsZD6oYXuf37yjYdK+f5zZ2qc
	IMV7M8YNtA3VxJ5T9WLc8+CqY4lDNwTvgAoskYNRXZPZ/MGGsvi3GE7SouX1EtVsn0v5
	3iDzMMWJ4N+DZu+Nbrk2E2djoRDpnQPUDpBe51Wz9Ey8Xc3JbzT5ACaUw35WPNWxAc+1
	ua5mT7DLS14t5nBi95fma2wBMKG+8zW7WYVEZcB4RJnd0RJj7NxlxDACE89bvgTN567T
	FsBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Rt1UpqRXhBDqxOb6HinrF/STHfN7hValgQtsHaUubCg=;
	b=OgurlVlcN7QVgzpM/1ri/hNjkjaq8FOST5q7N4DsxjrufpvsDHhBE+T3l6mLHcRDz+
	sWX0RndPHHzXo8idnuNjF+4iZCDkjpVqCMjNddOk9g5TkaM7JSwxOAo5yLPF/3vZRlji
	xw8LV0LjDrTj6jDt099l73Y04OeYweiF36T96wkh64o9CYtLr4/iVQoRhOwdNTxfaj+e
	/O5aLfKuKwwDTbTRos6I08CK7unz3MJO6yCUZFqP7OADxl7ADDi0y/sHtTvfoISmVJPi
	RSSNRX3dpczmK2t/QDAU83WxBzc5z0+UFGFUiWxyRX9jL4TIM2LZoAnf5dZvVZJFzK1o
	pJXQ==
X-Gm-Message-State: ALQs6tCZq1U7RzRW71wX1ILAku21H7MtuXUSt+Yy6h/xjHgZLBrM9GIO
	VHGyjtECw5ZvAm5xzOuTLMRQEC5HqR8suNAdaiY=
X-Google-Smtp-Source: AB8JxZqtQ13Y/iZJMzwtDp9mOQFpilLlQ3QVt1Ra6neTIpQppdxqouSQjM39fgSGo0284CaTaAHxCpvAE5hOz13w6n4=
X-Received: by 2002:a1f:3451:: with SMTP id
	b78-v6mr15232186vka.2.1525221674424; 
	Tue, 01 May 2018 17:41:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.48.148 with HTTP; Tue, 1 May 2018 17:41:13 -0700 (PDT)
In-Reply-To: <16228440.x8j5tLIZ7R@peggleto-mobl.ger.corp.intel.com>
References: <CAN--ZaVOR1dTDJMTJq=8B6bRMfKQ7eJEBie-_hzTRD+cJ8YzCg@mail.gmail.com>
	<30506956.aUxZm2NLWB@peggleto-mobl.ger.corp.intel.com>
	<CAJ86T=U15GmkmqcJD-NAAiV+ued8yG9SSEPA-P=VCeo7twFPLA@mail.gmail.com>
	<16228440.x8j5tLIZ7R@peggleto-mobl.ger.corp.intel.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 1 May 2018 17:41:13 -0700
Message-ID: <CAJ86T=UE=B+v9-SOztXRB5j6C_QJudF8bJobnxMCEYB047GdPA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Irving ST <irving@ssfivy.com>
Subject: Re: Avoiding both GPLv3 and meta-gplv2 ?
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
X-List-Received-Date: Wed, 02 May 2018 00:41:16 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, May 1, 2018 at 4:59 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Wednesday, 2 May 2018 11:54:00 AM NZST Andre McCurdy wrote:
>> On Tue, May 1, 2018 at 3:10 PM, Paul Eggleton
>> <paul.eggleton@linux.intel.com> wrote:
>> > On Wednesday, 2 May 2018 12:07:42 AM NZST Burton, Ross wrote:
>> >> The make dependencies come from the ptest packages, so if you disable
>> >> ptest in your DISTRO_FEATURES then those should disappear.
>> >>
>> >> Essentially doing a full build without any GPLv3 software *and* not
>> >> using old releases which are still GPLv2 is tricky.  I can only
>> >> suggest you don't use the meta-gpl2 layer (as you don't want the
>> >> recipes to be used) and use bbappends to disable pieces where
>> >> required.
>> >
>> > We probably need some sort of whitepaper on how to do that, it doesn't
>> > look like our manuals cover it in sufficient detail. Any volunteers ? ;)
>>
>> Does "Blacklist GPLv3, don't use meta-gplv2, fix any issues you may
>> run into" need a whitepaper? Or is there more to it than that?
>
> Apart from "disable ptest" as Ross pointed out, I would assume that's all
> there is to it - but right now aside from asking here there's really no way
> for someone to know that that's the best available way of handling it, so I
> think it's worth documenting somewhere.

Yes, OK. I hadn't realised ptest is enabled by default in poky (!?!).

  http://git.yoctoproject.org/cgit.cgi/meta-yocto/commit/?id=9381b2d2bddf9f67cf57b0718cf99e45805125fa

