Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49A17E003D8; Tue, 24 Jun 2014 02:53:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.174 listed in list.dnswl.org]
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E404E00282
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 02:53:26 -0700 (PDT)
Received: by mail-ob0-f174.google.com with SMTP id va2so39004obc.5
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 02:53:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=fnGnu1IryHYbg16Wt71nVUIGYx6eejIggo2SNI35k1k=;
	b=XK/fwJsCeMUvwj/goZp+F+kPPl8VcaFd5l/XdgY4kctWAuH6HV/em7zgSy6uhwlyK+
	3dCw50RL0t+DnuYJzDojw0n0kKns6n0wheaI6pTm0GQsNAykyci2sdjLpeWN46e9jjlY
	YYbrfN6tUxSZgRs2gxyhCh2kzIZKcQHV3TdFak5+JurhfPspBMlTym8BEqeXyYERZ9II
	ohBz4Xpe44EyeLlwx4ko193g7q9RGQOs9GxFXBMRCUIoxxespdjKSTX57SyBHtsP9mdK
	/721hEfriB9HihKWfMX/xvfw9DEYnWO0FoMkhdQn7Rt9iQGz8TVPmFBoJh7aKWZ8S069
	RQeg==
X-Gm-Message-State: ALoCoQmrjNmSmYMQjs/f5gMnMOaGml9UEW3chv0dQ+ENbusS7lFqB4qYJ6zjaglnoRD2wY8QRURd
X-Received: by 10.60.176.103 with SMTP id ch7mr130701oec.64.1403603605580;
	Tue, 24 Jun 2014 02:53:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.128.170 with HTTP; Tue, 24 Jun 2014 02:53:05 -0700 (PDT)
In-Reply-To: <CAJTo0Lbwhi88Qx4K3Q=bYAkv044KPYrEVFGCRsW9=uG4Qd7hOg@mail.gmail.com>
References: <CAF_dkJActcO2Yje0EAN7bO2zaPKP9DZA9D1pqCwp3oJbA8-cFw@mail.gmail.com>
	<CAJTo0Lbwhi88Qx4K3Q=bYAkv044KPYrEVFGCRsW9=uG4Qd7hOg@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 24 Jun 2014 11:53:05 +0200
Message-ID: <CAP71WjzbybJsrfcyFGURL_hTHfkZtx+yFG_TANBp57=-djU5zw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What is the simplest, or better yet, canonical way to add a shell script to core-image-minimal?
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
X-List-Received-Date: Tue, 24 Jun 2014 09:53:39 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jun 24, 2014 at 11:50 AM, Burton, Ross <ross.burton@intel.com> wrote:
> On 23 June 2014 16:56, Patrick Doyle <wpdster@gmail.com> wrote:
>> Should I create a core-image-minimal.bbappend file with a SRC_URI
>> pointing to my script and a do_install rule to install it?
>
> Create a new recipe for the script and then add it to the image.
>
> The documentation is useful:
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#extendpoky

image recipes which inherits from image.bbclass are *special* and the
normal task such as fetch, compile, install, .. are disabled. so you
cannot have a do_install() as you proposed. as Ross said, you need to
make a proper recipe, and include the recipe's package into your
image.

