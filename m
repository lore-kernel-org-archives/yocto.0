Return-Path: <richard.weinberger@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C35CBE00C5F; Mon, 17 Dec 2018 12:14:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (richard.weinberger[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3A0EE00C10
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 12:14:00 -0800 (PST)
Received: by mail-wr1-f42.google.com with SMTP id l9so13581287wrt.13
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 12:14:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=D1AGz9a15SDUx8l5YH12KNuq9oNJLfbTKUtuSaa0IE0=;
	b=VvfVO9AZR+FGgX1Ea9R21dVdgWRqBrlgs1Uu7N8gwrcut5Tz7NcMn6HO3APl/MZAMP
	t7CTsyCKMsaeYaKvfbYUMCwPmXaCYxcouibwvQcry7WSVeyLOXyGGm2XCMYXsMa5khQ7
	Khxm5bOGZwxf/OubFlrSHIV8yv/lteewwiFsEZ+Z1vKKJxsXjdfL2kOIAzRZayFrteNn
	nEiFJBLOjqFvNamotV2yDU63hbMJDaOC4S+lkGJOZ4sHc9CuDFkx1KQzeGkg5CzwOYvq
	QbUqgkVNNsaTa7rzZQngE28VcbA1bEZ5HVoFdC+E0UOLGR71U2iX+cv7IID4DO/vrFnx
	cdkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=D1AGz9a15SDUx8l5YH12KNuq9oNJLfbTKUtuSaa0IE0=;
	b=bz2q6s+iLFCJQSkm2QkTHts025704JCFWFzf9d5Bn/oDb/0oR+OnxA1GXZNCkInEt1
	fH1b0gJyr16uJEdINZcGnzLKdE4l2TSwvj94Rj8OjL46uqodTRslu7zKw5tDCWlOCvha
	DeQnzL69tF1rTqfcovL/x0bjzh4RQnMgW4lRKBFju6jo51dgqxaanOiZqKLV3asTyB+O
	oBl9E9X0A46wBpqWaGSzdqkBn0g4kAH5HG9G/bUhQ0lbf30Url61oDRiyrF067/iUs+E
	qonKQcRupElNq7j1g6TKyvNZFODDejGjWIjYZN27yaXKguMQgJ85AnX61QdU+AtLVMLs
	ty9Q==
X-Gm-Message-State: AA+aEWYAMgdtwsUj/HRyxFNgbv8cW62PnhOMZlUauG1pcipbv9TbCPZX
	Tgb4/j9WUF0UBm4AEHT2pRBW2unmeMKhFymIJHA=
X-Google-Smtp-Source: AFSGD/XqcNXryftVXXHq1/kuQAWogORlRThPJlzDJTd52Qb8Uyh6nW1Ww+VT4mXKRwQBY4xKvL2+xADidkvdn00FUAg=
X-Received: by 2002:adf:ed46:: with SMTP id u6mr12493535wro.262.1545077640042; 
	Mon, 17 Dec 2018 12:14:00 -0800 (PST)
MIME-Version: 1.0
References: <CAFLxGvzvQyM+V1=PVHKMWEa3T6MDEC-7Sxd5D_8vG1PvWNX5Ag@mail.gmail.com>
	<9505876392c2d718fbe113e56a541de7bcc2dd41.camel@linuxfoundation.org>
	<CAFLxGvwJg5nvc7cL12fN_R0CJcvLmy3eW5k29zERWCW4WqMi_Q@mail.gmail.com>
	<d17af21817915d847a9bb508f6380195cd76d8dc.camel@linuxfoundation.org>
	<CAFLxGvysO_g2z0f_50NO4iqcdFRN5YTzHpTbLHp4Va9jACai8w@mail.gmail.com>
	<37849360-f7e6-55a1-3ffe-e67f98f69a09@windriver.com>
	<CAFLxGvzOFw2zyS1+Mo9KseMs+7+t+_Y6y_6VZXgZzDc8QqV_HQ@mail.gmail.com>
	<e9d6b81e-b0f1-ef5d-a6ba-eb2ab14a7785@windriver.com>
	<CAFLxGvy2UsTfhpv5RcTVTUUZLTSKfmtsUkbgcKd+eLzLJ3d4Jg@mail.gmail.com>
In-Reply-To: <CAFLxGvy2UsTfhpv5RcTVTUUZLTSKfmtsUkbgcKd+eLzLJ3d4Jg@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 17 Dec 2018 21:13:48 +0100
Message-ID: <CAFLxGvy5KwhYPDasxR3PMZohzhVQHoOdDR_EAf8VGZ7-H3zGbA@mail.gmail.com>
To: bruce.ashfield@windriver.com
Cc: yocto@yoctoproject.org
Subject: Re: x86_64 kernel with i586 userland plus SDK?
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
X-List-Received-Date: Mon, 17 Dec 2018 20:14:03 -0000
Content-Type: text/plain; charset="UTF-8"

Bruce,

On Mon, Dec 17, 2018 at 3:00 PM Richard Weinberger
<richard.weinberger@gmail.com> wrote:
> When I set DEFAULTTUNE to i586 for a 64bit machine I'd expect
> TARGET_SYS still being x86_64-poky-linux.
> But it is i686-poky-linux.
>
> > Do you have a dump of the kernel build line that I could see ?
>
> Sure, let me trigger a rebuild, currently my yocto is in limbo-state. :)
> So might take some time.

I think I found the source if my confusion, the i686-poky-linux compiler
*is* a biarch gcc but defaults to -m32.
When I pass -m64 to it, it actually generates proper x86_64 code.

Although, the kernel recipe always thinks that I want to build for i586 and
selects a 32bit config. But that should be easy solvable.

-- 
Thanks,
//richard

