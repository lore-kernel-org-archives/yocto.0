Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8172E00DC2; Tue,  5 Jul 2016 06:10:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83F7DE00DB9
	for <yocto@yoctoproject.org>; Tue,  5 Jul 2016 06:10:18 -0700 (PDT)
Received: by mail-vk0-f66.google.com with SMTP id d128so7964773vkg.3
	for <yocto@yoctoproject.org>; Tue, 05 Jul 2016 06:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yf1NcwJfULiltwMwyt0cLWmiKnfbKCaMv4bSqm/mcPA=;
	b=KcrFV3m8r+1vCuEvyMYtvT22UvJr+XJD30BCwlqceYVtmkbQ1Q616RS83B3ekWU8wf
	iG6ObN8Sr7H2/Q6YH5LkeCo16hpHJCsbvFfwjT8w9Mj1MrnxYHl9tYcHWTNy2JF+Jkm5
	5Coh97kd0RCYOlz9nuRAzWEGQftVqZo94DzbNMYUtFwiP2B8949LKursWvQaJALNyUPo
	SaIdoDYP+Y+sIp6l4Pps602rpmwmSaVj7pdFH/xxm0NI42ul6Aoi1pr/CJZZxKLko5+A
	lJnaZZ5vpDHoQD6nxSFGUof4qgMCZjajvJn/neo6/wbq9evJUomtwvs0IS/PbEFuVVth
	FFJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yf1NcwJfULiltwMwyt0cLWmiKnfbKCaMv4bSqm/mcPA=;
	b=iANTP4WDUNXIAyeYP9XnmoWCCpPducZgk7dbaWKbMjzL8OjAgh0hlCCvWsz53R+WHJ
	imb1syPIXQ1cl81Qz7lSAW1Qd+p+t1TfO0da54BjRa7B1LzkkqdXqO/svIQ1NP/wZhGD
	wYBCVxAH0zBMuhLg766Mz8AqqqfcgSg1UbKGoECQc0ccvxgcnD112YrAgSHvsX9wXbpp
	yS6CUNxdQff3JZF5n3Q6AkSQGTplXFNrUBnbzSkn4Fbtiw3N4t3ZzvOjrx5tzpyAmpNg
	GIVXi6dEtFBmX7mjog2Ay4BTH6XFQuqJQfxP6tzehw6KPBhie3aObIdyuWhD8UzM/cxZ
	1Zig==
X-Gm-Message-State: ALyK8tIHs8LaWsXVPsYQxAw/T3iTo/E9grg+jufMmxh3+4RUi5sIY3c1inUxd/AcVzTK2KSeaOnII0SKoJhYvg==
X-Received: by 10.159.41.229 with SMTP id s92mr7876119uas.73.1467724217334;
	Tue, 05 Jul 2016 06:10:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.37.233 with HTTP; Tue, 5 Jul 2016 06:10:16 -0700 (PDT)
In-Reply-To: <CAJTo0Lad+=DQvdw0v8NdWzsezK747AEL6s7kR6Bz2m5eQH7J=w@mail.gmail.com>
References: <cebe898af3ab435595255b7915ba3e38@XCH-ALN-006.cisco.com>
	<CAJTo0LZq6EOSZuD7KFd4EP1TMkoST4MTSCyejs3cgjgE1vj7_Q@mail.gmail.com>
	<dd76bbae443f4c82a36406a58e07e665@XCH-ALN-006.cisco.com>
	<CAJTo0Lad+=DQvdw0v8NdWzsezK747AEL6s7kR6Bz2m5eQH7J=w@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Tue, 5 Jul 2016 10:10:16 -0300
Message-ID: <CAF3SDA4WWewyr1gxmKMcw=oz8SQFPDD9cuQNuxz98tNgW0cu3g@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto build cross toolchain issue
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
X-List-Received-Date: Tue, 05 Jul 2016 13:10:21 -0000
Content-Type: text/plain; charset=UTF-8

I faced problems with symbols being droped if -l option is passed
after -Wl,--as-needed. To circumvent this I changed my Makefiles to
add link options prior $(LDFLAGS) expansion.

Cheers

2016-07-05 7:16 GMT-03:00 Burton, Ross <ross.burton@intel.com>:
>
> On 5 July 2016 at 11:06, Chandra Mishra (chanmish) <chanmish@cisco.com>
> wrote:
>>
>> Thanks Ross for your suggestion. It worked for me. But in the past it
>> worked for me with old sequence but different gcc cross toolchain, so not
>> thinking of changing the order.
>
>
> Newer toolchain may have different inter-dependencies, so exposing link
> order problems that were hidden before.
>
> Ross
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Do or do not. There is no try"
  Yoda Master

