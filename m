Return-Path: <arunkr.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF45BE0078A; Mon, 15 Sep 2014 08:28:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (arunkr.linux[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f169.google.com (mail-pd0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62CF7E0077E
	for <yocto@yoctoproject.org>; Mon, 15 Sep 2014 08:28:04 -0700 (PDT)
Received: by mail-pd0-f169.google.com with SMTP id fp1so6530527pdb.14
	for <yocto@yoctoproject.org>; Mon, 15 Sep 2014 08:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=GojE/zODp8wdsr69KQeAV2XV5kniFBdsv9IzMGfrFnQ=;
	b=xfTKor878xuyY/CJWaXXWcyIPiLhBb7G9H8id05sXhV+MdasbcFJ0RU3QU58C02vcr
	rWkr8nDT1qXhtYMm6NDusfXJYriuvGq85aN7Ka2rmQ4lubvf4ODkr8qjsA2+Ty9nJQLo
	SJWZES879H5lDvXL0eOSBRQU0I7Va9e9EnhuazXhPb50rk8V6yKqMsRYzXUyHZuovMkT
	IO3rY77QP8TLni5ojBhDhSY3fVpCUTjdiFk+eNdYtHq0i1i6ZcqrHhwyQbdN0iYzz9Hz
	o4gDyGJf/dt171mAUUu0EKz0sLo1gWzGuGHXdgazVUOUBN8mRmZht9eXjZcd6kEF1Tyt
	qaKQ==
X-Received: by 10.68.243.70 with SMTP id ww6mr40466177pbc.3.1410794884140;
	Mon, 15 Sep 2014 08:28:04 -0700 (PDT)
Received: from [192.168.0.103] ([123.201.197.22])
	by mx.google.com with ESMTPSA id
	j13sm11739253pbq.42.2014.09.15.08.28.01 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 15 Sep 2014 08:28:02 -0700 (PDT)
Message-ID: <5417057F.5060708@gmail.com>
Date: Mon, 15 Sep 2014 20:57:59 +0530
From: Arun Kumar <arunkr.linux@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.1
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>, 
	Yocto Project Mailing List <yocto@yoctoproject.org>
References: <CABG0-3yDCJo-b4Y7U8GS+cvM8ov6fo6nHH=+xgxM73rPOnj70A@mail.gmail.com>
	<CAJTo0LZk-7nHXid0kf-TC2hhJ-cfFjiCgwccywJ0Ft5eaZWudA@mail.gmail.com>
In-Reply-To: <CAJTo0LZk-7nHXid0kf-TC2hhJ-cfFjiCgwccywJ0Ft5eaZWudA@mail.gmail.com>
Subject: Re: Basic build fails
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
X-List-Received-Date: Mon, 15 Sep 2014 15:28:10 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Just a heads up. I successfully baked "core-image-sato". This time no issues, I just reinitialized the environment an it was done.
I am still clueless about the reason though. can available memory be an issue?



On Monday 15 September 2014 01:35 PM, Burton, Ross wrote:
> On 15 September 2014 06:45, arun kumar <arunkr.linux@gmail.com> wrote:
>>     My system has 4GB RAM and 2GB of swap space. i would also like to
>> mention that the i could bake the recipe
>> "core-image-minimal" sucessfully but baking "core-image-sato" still fails.
> The full log that the top of the output refers to (ending in
> log.do_compile) would be useful, but if you've built
> core-image-minimal then gcc-cross has completed, so core-image-sato
> must be failing on something else.
>
> Ross
>


