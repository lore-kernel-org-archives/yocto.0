Return-Path: <tworaz666@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BBA5E00A54; Thu,  8 Nov 2018 13:53:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (tworaz666[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
	[209.85.208.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AC76E00720
	for <yocto@yoctoproject.org>; Thu,  8 Nov 2018 13:53:25 -0800 (PST)
Received: by mail-lj1-f193.google.com with SMTP id u6-v6so19433490ljd.1
	for <yocto@yoctoproject.org>; Thu, 08 Nov 2018 13:53:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=qae/eY//NX0CfUC+NDHc6dnNhe9NohbM2hvs/SQ+NEo=;
	b=dJUc9iEsQ3lsiS3rEbOcBI2QMMKczjXzJ0GKDTqTDF6B0wQ62rzQZUgs3hN3sj5bYu
	ydW1x7QZW5zyhJ6S3c9gMiQi6jcNWwqa8huMzH+e+rWMFP+ld7KBuqOHoO1cgFE2rl85
	UqH3x6VJmek7pT1T6jIB5RWVAbvyfyAhEDSMjixOf4szUUtJjtFnH29SlJwROko3jQFL
	EJZKXnBpruqC3rnb6FgMPFPR3iTDRtmvX5NAP1gVC0VUAVBBCzv+bUcTjfAGoKbuktAp
	NtyUAvEIwGylbjpPsDVi3Db/AFLUDJGNuwZnavKwx5JHj0hwivqvxu83ON4w7PVgrIaH
	8bvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=qae/eY//NX0CfUC+NDHc6dnNhe9NohbM2hvs/SQ+NEo=;
	b=QVrpxsyiUjmCufVreybO33PYvtppwhqpsuaoAJUj8oskshQMRveMNpmMC1P4sXy6bg
	c5+Z4WWzk+OnQKQ9A2ZNiUQIvGrQo5POudc/lqp63To/awTAN3BSF5mtvohvtJkvO9Ic
	K6gcPours9lr1esnFmwZtyx567Xgc/EDTdB4xtrAD78eVvQJ915lAvc324r/zLA13dV/
	W1Wry8lRt+2l0rsCkfZlRmexdZzw2x73Z5Glvo8i2FCP2Qu+itTLBkLvhfZZ+l7sdu/y
	oGqk3/Za4fT8NkRSICVN+E7rPhcrGEPeDFMsdOlNIGSv350/78VUx1/KUYP2KtkTzW2C
	9XgQ==
X-Gm-Message-State: AGRZ1gIf42rcBJqZAmaliTLcH01bJSLUQEB4l4JxPbN+AOepUlHxEiBL
	6PfNtCsHXT4lTj8Y5NLPMwVFY99n
X-Google-Smtp-Source: AJdET5cHc9c44zmHlwWMwuITUW1diJmU1ZgJck2u6AfG/9VQuliIsSWqoVk/8MuC3YaBLYzuTM1BQg==
X-Received: by 2002:a2e:12c1:: with SMTP id 62-v6mr4419757ljs.74.1541714003709;
	Thu, 08 Nov 2018 13:53:23 -0800 (PST)
Received: from stinger.localnet (87-206-69-189.dynamic.chello.pl.
	[87.206.69.189]) by smtp.gmail.com with ESMTPSA id
	r26-v6sm865086lji.25.2018.11.08.13.53.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 08 Nov 2018 13:53:22 -0800 (PST)
From: Piotr Tworek <tworaz666@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 08 Nov 2018 22:53:20 +0100
Message-ID: <3658853.D14kAIKcfP@stinger>
In-Reply-To: <CAFd=ocj4eHG89wt7yM0_w3YqrM9788+CZp=gDXgQfQsE6+9v2Q@mail.gmail.com>
References: <CAFd=ochAjUo7FfHQJFcQHYE7Y2jRD8UHUhRBpGvvTRLLgfwK=Q@mail.gmail.com>
	<CAFd=ocj4eHG89wt7yM0_w3YqrM9788+CZp=gDXgQfQsE6+9v2Q@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Set linux capabilities on binary on a recipe in meta-oe layer
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
X-List-Received-Date: Thu, 08 Nov 2018 21:53:26 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Markus,

Have you tried doing it in the postinst step executed on your target? Try:

pkg_postinst_ontarget_${PN} () {
    setcap cap_net_raw+eip $D${bindir}/node
}

RDEPENDS_${PN} += "libcap-bin"

/ptw

> I have tested to set capabilities on the node binary within a custom recipe
> (custom layer) but that failed.
> 
> pkg_postinst_${PN} () {
>     setcap cap_net_raw+eip $D${bindir}/node
> }
> PACKAGE_WRITE_DEPS = "libcap-native"
> RDEPENDS_${PN} = "libcap"
> 
> The error message:
> 
> ERROR: core-image-full-cmdline-1.0-r0 do_rootfs: [log_check]
> core-image-full-cmdline: found 1 error message in the logfile:
> [log_check] Failed to set capabilities on file
> `/home/ubuntu/yocto-sumo/build/tmp/work/raspberrypi3-poky-linux-gnueabi/core
> -image-full-cmdline/1.0-r0/rootfs/usr/bin/node' (No such file or directory)
> 
> When I check the node binary is there in the rootfs directory. It seems
> that when the the pkg_postinst function is executed the node binary is not
> there.
> 
> What am I missing? Any answer is much appreciated!
> 
> Regards,
> Markus
> 
> On Wed, 7 Nov 2018 at 11:32, Markus W <markus4dev@gmail.com> wrote:
> > Hi!
> > 
> > Background:
> > In my raspberry project I am developing a nodejs app that needs access to
> > bluetooth/ble device. I want to run the node application as non root user
> > for security reasons. In order to get access from within the app, the node
> > binary need to have the following capability cap_net_raw+eip set. I am
> > using the nodejs recipe from meta-oe and added it in my local.conf:
> > 
> > IMAGE_INSTALL_append = " nodejs i2c-tools bluez5 kernel-image
> > kernel-devicetree"
> > 
> > Question:
> > Where should I apply the following command? setcap cap_net_raw+eip
> > /usr/bin/node
> > 
> > What are my options? Can I create a recipe in a different package that
> > will apply the above command on the meta-oe package for the nodejs recipe?
> > 
> > I have been following this thread (
> > https://lists.yoctoproject.org/pipermail/yocto/2016-June/030811.html),
> > but the node binaries and my node-app are in different layers and
> > packages.
> > 
> > Any advice how to do this is much appreciated?
> > 
> > Regards,
> > Markus





