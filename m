Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6836FE00994; Fri,  1 May 2015 13:25:47 -0700 (PDT)
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
	*      [209.85.223.172 listed in list.dnswl.org]
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A0F0E0098A
	for <yocto@yoctoproject.org>; Fri,  1 May 2015 13:25:43 -0700 (PDT)
Received: by iedfl3 with SMTP id fl3so108632148ied.1
	for <yocto@yoctoproject.org>; Fri, 01 May 2015 13:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=npNaqkWkQ1Zc/6Lw5eCoZVo7wJvKMEFKUCqCI7V1FsE=;
	b=XUInTdyzf7zSKxLId2Yt5CfOpqpBzGZ0Peqie4ptzpf0QndDjKj0LeETT3lc0Drzv7
	tMmQLSZ2QN7ldYYHm5C5Ye2Q5nbvGGgz6Qoo9j6j6RbbpaVyCMfnqA208L798zCw/evT
	n4z4QD5ixm7Gw/fdB/GD8DBD1Lp0b4BbwtJejlZuzSosZWu55CsS/HG5uZ0MJdNiFnWJ
	p7iHy+oEbus3R0G7q9Tbex50m6PuejngK5a9Du5Jmof1AdjJjANCEUzVw6nGYRyTlZnw
	73ZyMVOYTQDvjnJIFr0A4oyBVQhmyZZOL1qWLsOuhyAOv/IX0umEfSTFfLtHC3Zyhd6z
	UrBQ==
X-Received: by 10.107.13.11 with SMTP id 11mr14775432ion.70.1430511943216;
	Fri, 01 May 2015 13:25:43 -0700 (PDT)
Received: from [192.168.141.85] ([66.49.234.10])
	by mx.google.com with ESMTPSA id pg7sm3708160igb.6.2015.05.01.13.25.41
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 01 May 2015 13:25:42 -0700 (PDT)
Message-ID: <5543E142.2020707@gmail.com>
Date: Fri, 01 May 2015 16:25:38 -0400
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>, 
	Brian Karcz <briank@russound.com>
References: <BLUPR0501MB1028D6037F60D05E868A5F15BFEE0@BLUPR0501MB1028.namprd05.prod.outlook.com>
	<1674505.cjWkHk81xC@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <1674505.cjWkHk81xC@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: creating images which include actively developed applications
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
X-List-Received-Date: Fri, 01 May 2015 20:25:47 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 04/22/15 13:58, Paul Eggleton wrote:
> Hi Brian,
>
> On Wednesday 22 April 2015 15:32:06 Brian Karcz wrote:
>> Is there a way to create a recipe to build actively developed code located
>> in an external source directory? Basically skip the fetch and unpack steps
>> and always execute the compile and populate steps each time and image is
>> built?
> Indeed there is:
>
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#building-software-from-an-external-source
>

Paul, I'm surprised you suggested externalsrc instead of just mentioning
devtool right from the start (doubly-surprised since you're the person
who wrote devtool!). Using devtool the "administration" (of creating a
recipe, etc) is done for you, no?

http://twoerner.blogspot.ca/2015/01/the-yocto-project-introducing-devtool.html

