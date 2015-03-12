Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB686E0086D; Thu, 12 Mar 2015 15:27:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.1 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  3.7 FSL_HELO_FAKE FSL_HELO_FAKE
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 877C9E00858
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 15:27:38 -0700 (PDT)
Received: by wesw62 with SMTP id w62so19500416wes.8
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 15:27:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=xyPO/OmTYJ/QXG0sBa2Iiqt7+CKbwR9f/slAp+z1aO4=;
	b=Db7a/t3tCWJWJTl7M1zI6VYqZ2noncU7lNmI6ssClrQH9eXAVyeMz/tkRnPw6y0CTq
	U6oKDt3DR61sZPAtKr0zPs+q4a6MamHkPV/POqdRy0XuKeYRx1Df0ZbpcKwptl11J2Dq
	jBEcgapvjhDM/oEl7/pNYj80arw3h0YtF4xOfSpcqj7mHWG8ZtopV9WL37tfUb2YupKd
	keAPx33tAJyMAUadGHp/fV1ZMj/dplgAdrxi2KodsUvIQgJ0AdrZF/0nv+gDEQqWuztl
	2BYycU0sFk2AXrjP/RjPaQkYXuibzQgbxKlluptSMnpfT9/Jm9ncIIeJfxERldNHWkfD
	iumA==
X-Gm-Message-State: ALoCoQmMJ6IJnpFcZMcZzK0KNWPTmccy2IUzsDwT/20duxhU2o0pX2fhmTZ9Pb0UWfSMlsxL0hx3
X-Received: by 10.180.87.165 with SMTP id az5mr134696126wib.29.1426199258119; 
	Thu, 12 Mar 2015 15:27:38 -0700 (PDT)
Received: from gmail.com (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id v8sm320256wib.0.2015.03.12.15.27.37
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 12 Mar 2015 15:27:37 -0700 (PDT)
Date: Thu, 12 Mar 2015 23:27:35 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20150312222735.GB23855@gmail.com>
References: <cover.1425251029.git.andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <cover.1425251029.git.andrei@gherzan.ro>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [meta-raspberrypi][PATCH 0/6] Restructure some recipes
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
X-List-Received-Date: Thu, 12 Mar 2015 22:27:42 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Mar 02, 2015 at 12:05:21AM +0100, Andrei Gherzan wrote:
> The following changes since commit 57c8e6bffbbef9b2331551093c3436303eb18386:
>
>   rpi-base.inc: Include the RPI2 DTB (2015-03-01 22:43:40 +0100)
>
> are available in the git repository at:
>
>   git://git.yoctoproject.org/meta-raspberrypi ag-dev
>   http://git.yoctoproject.org/cgit.cgi/meta-raspberrypi/log/?h=ag-dev
>
> Andrei Gherzan (6):
>   bcm2835: More recipe to devtools
>   bootfiles: Move to recipes-bsp
>   firmware.inc: Move to recipes-bsp
>   vc-graphics: Move to recipes-graphics
>   rpi-basic-image: Define rpi SPLASH specific package
>   .gitignore: Ignore some stuff
>

Patch set merged to master.


--
Andrei Gherzan

