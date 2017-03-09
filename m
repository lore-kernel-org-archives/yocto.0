Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16E67E007BA; Wed,  8 Mar 2017 23:22:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.182 listed in dnsbl.sorbs.net]
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01F44E00519
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 23:22:24 -0800 (PST)
Received: by mail-io0-f182.google.com with SMTP id g6so23003210ioj.1
	for <yocto@yoctoproject.org>; Wed, 08 Mar 2017 23:22:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=NNA87HDmMFFui76LvmWxiSFZY4/pdEne8tZnSciec0Q=;
	b=NL+0Uh4Odagcg2jZK4MOUYA8YZmsml9HoXxO4cvylBmBT6cFc1cLi0MdJpqChEieHr
	BRURwHaTG9AjNSDEaKcL3aJ2Qo6CCQpBxxEVeGfk9QgeqIhHUNiWg5p6nq9XaHyZL+IE
	qJlNuC0yNJZNvOksQakMFOXrXaXeVgAEB1i3GzFbBpfc6dbY3lQyvdvQoUGf3CqbONp6
	ND2th+LosFz3caMjo4yCIMI+oWKEun6+JlgwZaf6PeriUgnjLDv5J1pGpTYtHhChNEGI
	eWh3/8uYVH2Qc372yf4H8F89F8x1J17xA1L8mGigl9Gc+PbtYv2+pn787zEWRZ2GS39L
	IGKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=NNA87HDmMFFui76LvmWxiSFZY4/pdEne8tZnSciec0Q=;
	b=GVpRZy3p0ItJASQfc0zGrnmQgdNWyOQribf26WvRPect13K5Izd5PmP+91OlnJrkpW
	8GEMRJ5mxf5/54sKflrmBAC5KdNIu++xkrQ073mXRC5Ka9mq0Rww3RPrgoyR9tpYsAI/
	EDn6nY+DcFFZiSYbS/JhE86OM6VccO05TZZZUhi4QgDOXZi9KYZjzQi1uNn5mvgpu2YP
	O4Ve9cVi2Ld3fAI3NbXvd3SKUR6aq6+WbkFqxruid6XT8RHUe7EAp/FDk8D/xsTtkKY3
	BFgb6LqVT11B9dYQArjG3XkBY2dYQeXF+BcaMUHxMBjOJ7z8YioQ8lCbQl0Ud94SKVHC
	JQwQ==
X-Gm-Message-State: AMke39nwo2kPL8npL7i3vkgfi8fJx5ULBYUD7wf2A8ZeFWaSsRq/UkoWZuhZzYZXxpBCFp6G
X-Received: by 10.107.38.202 with SMTP id m193mr11011774iom.185.1489044143899; 
	Wed, 08 Mar 2017 23:22:23 -0800 (PST)
Received: from pohly-mobl1 (p5DE8D47C.dip0.t-ipconnect.de. [93.232.212.124])
	by smtp.gmail.com with ESMTPSA id 62sm2616186itl.1.2017.03.08.23.22.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Mar 2017 23:22:22 -0800 (PST)
Message-ID: <1489044139.7785.341.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Mircea Gliga <mircea.gliga@vitheia.com>
Date: Thu, 09 Mar 2017 08:22:19 +0100
In-Reply-To: <51315601-026c-457c-a99f-4961487e12e3@vitheia.com>
References: <51315601-026c-457c-a99f-4961487e12e3@vitheia.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: cannot build image using sstate
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
X-List-Received-Date: Thu, 09 Mar 2017 07:22:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2017-03-09 at 08:54 +0200, Mircea Gliga wrote:
> Long story short: I have problems building an image, in a clean build 
> directory, reusing the shared state cache and downloads from a previous 
> build.
> A file created in the do_deploy_append task is not created(restored) 
> anymore when building using a previous sstate.
> 
> And now the long description:
> In my custom layer, in a kernel recipe, linux-stable.bb, I have appended 
> some operations to the `deploy` task, one of them is creating an U-Boot 
> FIT image:
> 
> linux-stable.bb:
> do_deploy_append() {
> [...]
>          #this line creates the image_signed.fit file
>           mkimage  [...] image_signed.fit
> 
> [...]
> }

Are you writing image_signed.fit into the ${DEPLOYDIR} or
${DEPLOY_DIR_IMAGE}? When writing directly into ${DEPLOY_DIR_IMAGE}, you
bypass the mechanism which adds files to the sstate cache and then you
get exactly the problem you describe.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




