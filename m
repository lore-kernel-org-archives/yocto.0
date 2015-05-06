Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA908E007B6; Wed,  6 May 2015 14:41:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AB8EE00306
	for <yocto@yoctoproject.org>; Wed,  6 May 2015 14:41:19 -0700 (PDT)
Received: by igbpi8 with SMTP id pi8so6900445igb.1
	for <yocto@yoctoproject.org>; Wed, 06 May 2015 14:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=We/7bd7PZXa46o5nvVbmqOjwmvZLVYOQ4tltHWd30EQ=;
	b=bSeiYP+wfuSxw3VtUyCBeGRWA4BV0uWrRLKpRSEK523hvoN+Un44YpqJvoeLUQzYwP
	NX/GO8QwnUlxJxOtxyHqZiAxCAyWFVJSLYh93QVYWH/0Dv6+Bu+cSyx3usCQ8/OVhGWW
	Y+fldk3CfqOeZjVqbaGu2eBSNKXMQCh8rWt7qSfKg2rj7zHlxNZsqxRjtw1fbh5XN044
	2DPt1helN3uI/DsTZqZdZSgrDjtU7RVIT+zbfnQV8d3mPqJIWXZgmggRvAcyVLWxn/NB
	CgHFwzwIdG8NIWjaqR4Wmz6yavYXu5XO3aNYuhV9q8yra+a1+LftNvuPHNodSTlbQqYN
	X+fQ==
X-Received: by 10.107.18.170 with SMTP id 42mr1118820ios.38.1430948478666;
	Wed, 06 May 2015 14:41:18 -0700 (PDT)
Received: from [192.168.141.85] ([66.49.234.10])
	by mx.google.com with ESMTPSA id l3sm298013ige.21.2015.05.06.14.41.17
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 06 May 2015 14:41:18 -0700 (PDT)
Message-ID: <554A8A7A.6030404@gmail.com>
Date: Wed, 06 May 2015 17:41:14 -0400
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: openembedded-devel@lists.openembedded.org, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <55483F50.5020803@gmail.com> <554A76F1.8050407@gmail.com>
	<554A7893.3060701@gmail.com>
In-Reply-To: <554A7893.3060701@gmail.com>
Subject: Re: [oe] Odroid-xu3 support
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
X-List-Received-Date: Wed, 06 May 2015 21:41:22 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 05/06/15 16:24, akuster808 wrote:
> On 05/06/2015 01:17 PM, Trevor Woerner wrote:
>> It'd be nice if someone could put together one "meta-odroid" that would
>> support them all ;-)
>
> Yep. looking into that.

That's great to hear :-D Which device(s) do you have, just the -xu3? My
-c1 arrived yesterday so I can help with testing that device if you
don't have one.

