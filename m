Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEA96E00A6B; Wed,  7 Nov 2018 14:44:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06814E00A4F
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2018 14:44:55 -0800 (PST)
Received: by mail-wr1-f43.google.com with SMTP id z16-v6so19152555wrv.2
	for <yocto@yoctoproject.org>; Wed, 07 Nov 2018 14:44:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=lRuRkMAE5jixeTMSAMmPjyjiXjI9eHfMJzHFDFbApps=;
	b=XZv44dlDuRgd6X5Jfcchl39lZD/VIkkcq4reOo9GDAVyRZmB/6aY6TM/56pgss3YaN
	z+h4xgfk0BxZrQUTgf2il5sILfgtYqKU40HVuGMnWbJGnZAX3MN6AWCHKRdvaQDKL34L
	TYT4Mguhc7qKSVG2KjgjXhw1Roy4WKq8+EHro=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=lRuRkMAE5jixeTMSAMmPjyjiXjI9eHfMJzHFDFbApps=;
	b=nN9pHsuUB9gxSXF9TzWP9qexmx3m138scU8W851ivc9AnNMmNc4UDWtvkKqaEurosW
	vDOXHnw1kc2xcQ7AKEqk4VKPbE7mrOgeBwP80vZFh7bIelhIidUSRKU4Mn8x03NIKG+J
	K3oRRza1zGerhKV8jqQHjHB1fCZ4NunuObZVDY1rUle/2YioEOBdYzE5phIHVlz9ktx/
	P7o9KL9ekgP8Btgt2lCEmdB3u73TrlcDyCn9SEMiWgiCQdVWqDHY2vjt3fmHR2dZDple
	tH6Ork2+/pvXMKac8ABxnbszA5gjphp81SgJvaMKQEvAGy1SS3laLrPq9F74UNc1hGUE
	20Dw==
X-Gm-Message-State: AGRZ1gJjUrzh4Xb/imFGX9nYPx5AaE51ItTfC5f74soVaTFZPaHboNEl
	aFKbpmyxqwah8k9jZteXaOI2ww==
X-Google-Smtp-Source: AJdET5e2qZS4GIVxIXkwcMC63zdANz2rc3wooqz4u9+Lb2CbZeE0aHYmR/zRanKPV42jXDzLeO7x3A==
X-Received: by 2002:a5d:570d:: with SMTP id
	a13-v6mr1933068wrv.289.1541630694630; 
	Wed, 07 Nov 2018 14:44:54 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	126-v6sm1180155wme.48.2018.11.07.14.44.53
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 07 Nov 2018 14:44:53 -0800 (PST)
Message-ID: <446afa92a1440c604e2074ab70f506fe3e46a0d5.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Anibal Limon <anibal.limon@linaro.org>, yocto@yoctoproject.org
Date: Wed, 07 Nov 2018 22:44:52 +0000
In-Reply-To: <CA+_Aqivq7XN8Q_fu43EFwhWs377vduoR9D5gVGBqS7gJgzKxNw@mail.gmail.com>
References: <CA+_Aqivq7XN8Q_fu43EFwhWs377vduoR9D5gVGBqS7gJgzKxNw@mail.gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Cc: aaron.chun.yew.chan@intel.com
Subject: Re: [RFC] Yocto Autobuilder and LAVA Integration
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
X-List-Received-Date: Wed, 07 Nov 2018 22:44:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Anibal,

On Wed, 2018-11-07 at 16:25 -0600, Anibal Limon wrote:
> We know the need to execute OE testimage over real HW not only QEMU, 
> 
> I'm aware that currently there is an implementation on the Yocto
> Autobuilder Helper 
> , this initial implementation looks pretty well separating parts for
> template generation [1] and the script to send jobs to LAVA [2].
> 
> There are some limitations.
> 
> - Requires that the boards are accessible trough SSH (same network?)
> by the Autobuilder, so no distributed LAB testing.
> - LAVA doesn't know about test results because the execution is
> injected via SSH.
> 
> In order to do a distributed Boards testing the Yocto Autobuilder
> needs to publish in some place accessible the artifacts (image,
> kernel, etc) to flash/boot the board and the test suite expected to
> execute. 
> 
> Currently there is a functionality called testexport (not too
> used/maintained) that allows you to export the test suite.

I continue to have mixed feelings about testexport. It adds complexity
but I'm not sure its actually worth it.

An alternative would be to specify a set of commit hashes for the
configuration under test (poky or oe-core+bitbake and any other
layers), then have LAVA obtain those pieces and run the tests directly.

Its worth considering that we already now have two difference pieces of
code trying to package up the build system/layers, eSDK and testexport.
Ideally if we had some kind of standardised layer setup/configuration
approach we'd then just have a config file to share, then the tools
could recreate the environment and allow the tests to be run there
without testexport. Layer-setup is itself a harder subject but for
example the layer setup code in autobuilder-helper could easily be
reused as things stand today...

In fact the more I think about it, the more I think we may want to do
it that way...

> I created a simple LAVA test definition that allows run testimage
> (oe-test runtime) in my own LAVA LAB, is very simplistic only has a
> regex to parse results and uses lava-target-ip and lava-echo-ipv4 to
> get target and server IP addresses.
> 
> In this way the LAVA server handles all the testing and finally the
> Yocto Autobuilder can get/poll an event to know what was the actual
> result of the job and the job could be send to different LAVA LAB's. 

That does sound useful and is likely a way we could end up doing this.
Its probably worth highlighting that we now have a way of summarising
the result of the test in the form of the json file the tests all
generate. Sharing that back to the Yocto autobuilder would give us the
test results we need.

> Some of the tasks, I identified,  (if is accepted)
> 
> - Yocto-aubuilder-helper: Implement/adapt to cover this new behavior
> , move the EXTRA_PLAIN_CMDS to a class.
> -  Yocto-aubuilder-helper: Create a better approach to re-use LAVA
> job templates across boards.
> - Poky/OE: Review/fix test-export or provide other mechanism to
> export the test suite.

I think some of these are also independent of each other and good
things to work on regardless...

I would like to hear feedback from those at Intel using LAVA who
submitted the existing code.

Cheers,

Richard


