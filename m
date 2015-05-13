Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F35ADE005B9; Tue, 12 May 2015 23:12:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.45 listed in list.dnswl.org]
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68796E0027F
	for <yocto@yoctoproject.org>; Tue, 12 May 2015 23:12:36 -0700 (PDT)
Received: by pacyx8 with SMTP id yx8so40027312pac.1
	for <yocto@yoctoproject.org>; Tue, 12 May 2015 23:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=gaXh6SqdGFPCL6PI8bDPivv0tdA2lJ1ZRmp0+6jHI6g=;
	b=YriqehrSbX+CRTQVUdZkSebGVjGn7McwTX4tRLqAfWf1xGriO2VZSO5Xn5YVXGOtjL
	cMW8DluE/o/eKzrlAaay7oSRKcLPvLCXxECR2glkS84JjIJj2DVRCg/3Qs95QYliOSjv
	t8smNJLK5D/s9GtDOHA8qVk7TwR0RvcH5k1gb/QBIyzPQlUlTPnjHVsCihh9ESZgYuhG
	UQdg2pVmpQ2ax8wNhazr/EW9fYeWVDkSDo0/OtLZ4ikgA07f/nxFP4U+vfzpvOxs5Jws
	q4rhtqBBq97Yvnz2n+GnGclrtVtkvrOYfNcKf7xJyMwfqFk7FW/rFNbs5iHMjbWqglqS
	JXVg==
X-Received: by 10.68.68.208 with SMTP id y16mr34381203pbt.34.1431497556061;
	Tue, 12 May 2015 23:12:36 -0700 (PDT)
Received: from ?IPv6:2601:c:a700:3ba7:7c79:332d:8dea:73b5?
	([2601:c:a700:3ba7:7c79:332d:8dea:73b5])
	by mx.google.com with ESMTPSA id
	pa1sm18062709pdb.73.2015.05.12.23.12.34 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 May 2015 23:12:34 -0700 (PDT)
Message-ID: <5552EB50.10804@gmail.com>
Date: Tue, 12 May 2015 23:12:32 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5500469A22567C4BAF673A6E86AFA3A402227F6A7DF4@IR-CENTRAL.corp.innerrange.com>
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A402227F6A7DF4@IR-CENTRAL.corp.innerrange.com>
Subject: Re: setcap program
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
X-List-Received-Date: Wed, 13 May 2015 06:12:41 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 05/12/2015 10:42 PM, Craig McQueen wrote:
> I'd like to try using 'setcap' on a Yocto-built system. But I'm having trouble figuring out what Yocto or meta-oe package might provide 'setcap' and related programs.
>
try "libcap" or "libcap-ng"

- armin

