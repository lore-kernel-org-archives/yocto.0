Return-Path: <otavio.salvador@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3167DE0096C; Fri,  2 May 2014 05:56:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.1 DKIM_SIGNED Message has a DKIM or DK signature,
	not necessarily *      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.173 listed in list.dnswl.org]
Received: from mail-yk0-f173.google.com (mail-yk0-f173.google.com
	[209.85.160.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7166E00478
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 05:56:48 -0700 (PDT)
Received: by mail-yk0-f173.google.com with SMTP id 131so3768090ykp.18
	for <yocto@yoctoproject.org>; Fri, 02 May 2014 05:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=Aa0bLuihot4JNYIu2xVmlPP1v48G8OqQhNQsPblZBMc=;
	b=bCQ+NOVyfXUFnGrr2qvCzFNUmejyb7Xf7avDUwzDt9GDl6/zCqY36i88CJYefLYgj3
	+3Z+1t058ShYWYnpOUfR1Myzp/RFoQKbubdJOjSDJHa2RulzsSfYXEa2a03TVg+C/eaM
	Ln88Jcb+hhz2/3nSjEjXgiScWiXpMvf6dtdzsmWUaOFtTtp4HEukfH4H+V3p+STZj4iC
	TFqe0zHCooZggevRVTgw4lcw2pclPR4DrC6SSROTJGJZf5plz63E/nsc0DSewWH5KqaG
	5GkELm412NSVRaq2nTUZfHsa7CMefEHkSv5yoFAt9q/OgLjYbKQaoXBuCuTr4UzYn2yJ
	/2Nw==
MIME-Version: 1.0
X-Received: by 10.236.142.16 with SMTP id h16mr3099582yhj.2.1399035407537;
	Fri, 02 May 2014 05:56:47 -0700 (PDT)
Sender: otavio.salvador@gmail.com
Received: by 10.170.124.72 with HTTP; Fri, 2 May 2014 05:56:47 -0700 (PDT)
In-Reply-To: <53632C0B.1010401@dynamicdevices.co.uk>
References: <5362171B.8010000@dynamicdevices.co.uk>
	<5577559.2gRHFt1x94@peggleto-mobl5.ger.corp.intel.com>
	<536285BC.8010200@dynamicdevices.co.uk>
	<CAP9ODKrgW5+pPsS51QLwd+9j0q2xMd+j-Q6bjKgZdV7ho_D0WA@mail.gmail.com>
	<53632C0B.1010401@dynamicdevices.co.uk>
Date: Fri, 2 May 2014 09:56:47 -0300
X-Google-Sender-Auth: Ueb5wj_m-jdwoRf5nPOHpWIyaGg
Message-ID: <CAP9ODKpRF27T7ROz-fLidRb6R=jwzp-EW6Wd44N_hZgiNHJmSg@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	yocto <yocto@yoctoproject.org>
Subject: Re: Undefining a variable in a recipe?
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
X-List-Received-Date: Fri, 02 May 2014 12:56:52 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, May 2, 2014 at 2:24 AM, Alex J Lennon
<ajlennon@dynamicdevices.co.uk> wrote:
...
> So I guess I'm at the point where I'm wondering if a getVar() with a
> flag is behaving as you would expect it to,
> or how I might go about ensuring either UBOOT_MACHINE or UBOOT_CONFIG
> isn't defined?
>
> Thanks in advance for any advice,

I think we have a simple error error. You are mixing a recipe, which
is old and a metadata layer with new concepts.

The u-boot-imx, in 2009.08 recipe, used to set the UBOOT_MACHINE in
the recipe as it was left as a fallback in case user needed it and the
value was different from newer releases.

In your case, the easier is to make a new yourmachine.conf and use the
UBOOT_CONFIG or UBOOT_MACHINE setting there so it will work just fine.

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

