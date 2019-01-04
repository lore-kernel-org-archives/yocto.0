Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42C3DE00C59; Fri,  4 Jan 2019 04:12:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
	[209.85.166.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22F1EE00C4E
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2019 04:12:39 -0800 (PST)
Received: by mail-io1-f45.google.com with SMTP id r200so29346715iod.11
	for <yocto@yoctoproject.org>; Fri, 04 Jan 2019 04:12:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=kvqcJCZJgM4nj1I+9kOd4mN/dWq9F67+wEfXxUPJhD8=;
	b=gmaRN1r2qhBp+ZO25umhnXBVcR5t4oBMI67vpa9A06C8ZHX+LRYBfNBg0VRDJ5Tjag
	vwP/1ZQSQx4jK52+GptW7T0y1B2hRhu1Kqz1fikC3aC9h6rkGjDhAOsUGSn78WN0csOV
	7Dz2onZyV3oiwYVvFF8Gf0IP7HGfjO0ONLLmylt7SvlHagYWOeomLdiE/690DfKlZnmN
	dJ0RsLP1zy1osfLtvzFGLCWt4oYE7nxhIUEDSF9JwNSCOwBnM9ttTt084biQ7LOv32Ly
	fSlT/+J8gyVYTm2wzztogmhQPrviO93zxcMJuN2ch5q3biTzdfGizcufKuXXizgLOf8R
	H49g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=kvqcJCZJgM4nj1I+9kOd4mN/dWq9F67+wEfXxUPJhD8=;
	b=BVeSU2GyRVMvfULxEBcYwoj4BNsWumyTLobn+9/TZdPFMRv2iDU1ZE2jDW4UxmGE63
	ouH1XYTxKqK5XrfQ4jC551wcjjuqpibD9gnahyCsXO/3kxlURcwEvte7Qzv7X2UmPnO0
	ojxH9B5T24tneAaBsdclRgm8nFBkkqEQNDd8cm3NT62L7tnIqz73pEEL7TPk03lsw8xh
	YDBOnAZOBXuIFcXNGmlon5QXbjcoTnHnsOGKwBydjDC56tFeE2sx5JpQVK9H/rjaFoVV
	Lapr3fkJNbK6pk6VlLgHe6wwjpv3wwF3WHHaYAER2gUQpuYdz63sko5uth6rppCckt2w
	MYmA==
X-Gm-Message-State: AJcUukdhvCaeCQkSc/V6Y7OG+oqIpJSkdM0g7iall1iZk7Rhvr5GEVnT
	twYDeowlKnTI+SpatnZWCWhmmq6MksqQdGONfSgr7836
X-Google-Smtp-Source: ALg8bN79UvQUAnWAKC9ziSJ/odmem9FuJqLfYut4aLLjL6Y4EgQW0T6A4q8J0Jo6s3he+P4W/0Hjx+7k87Bz5iYerOE=
X-Received: by 2002:a6b:acc5:: with SMTP id v188mr34203116ioe.20.1546603958520;
	Fri, 04 Jan 2019 04:12:38 -0800 (PST)
MIME-Version: 1.0
References: <MWHPR21MB086165B1FB4C98FC687D8924E5A00@MWHPR21MB0861.namprd21.prod.outlook.com>
	<CAJTo0LaEmMpeuMJ14ZB72LBzGO9yOjtQ6HpZ2ocfTbLDEmtYhA@mail.gmail.com>
	<MWHPR21MB0174308BE768E56D94B6A1F6E5B80@MWHPR21MB0174.namprd21.prod.outlook.com>
In-Reply-To: <MWHPR21MB0174308BE768E56D94B6A1F6E5B80@MWHPR21MB0174.namprd21.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 4 Jan 2019 12:12:27 +0000
Message-ID: <CAJTo0LYcj9WPYgtgB87Es9k2Zt66U6Jz8MPnSaZg=s4JsveOkg@mail.gmail.com>
To: Edmund Nadolski <Edmund.Nadolski@microsoft.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Yocto staged builds?
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
X-List-Received-Date: Fri, 04 Jan 2019 12:12:40 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, 21 Dec 2018 at 01:19, Edmund Nadolski
<Edmund.Nadolski@microsoft.com> wrote:
> > Yocto is generally flexible enough that any signing that isn't currently doesn't
> > wouldn't be too difficult to add.
>
> Thanks Ross.  So sounds like it should be a matter of appending an addtask at the
> relevant part of each recipe -- is it that straightforward or have I overlooked
> anything important?

Using a class you can add tasks for all recipes.  If you explain what
you're actually trying to do then we can give better advice.

Ross

