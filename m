Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C928CE00E23; Thu, 10 May 2018 01:54:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EAA1E00D60
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 01:54:29 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id j5-v6so2945348wme.5
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 01:54:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=uIUKc7lAFVlzRdg1VnH8pANULY9l0/0jaF194zA+Js8=;
	b=G3gA6Js/XGtMWfXLcFmCgQoO9W38Jm+y+YO8S7xunj04wTMtLCCej+IpBvhI9E5gh/
	QO/Dtaglx1mNr7Js8r6z7HI4I4oE0zFSVdhmK/9Q+jUbG7BUW976Zm0HT9IVh+zEC27h
	V4P/EPgwPe5Lt1yuhiOhjgqm+5t6ZiqtW5GshirtejupYechVjUo4Ts65mQOHmn9UMPB
	b9zgIPk3fWtQN9JOuERtXqX25RRFyfXBFgLQrTJE8a8fqHC0oKEawOUUM5MY/6trWbYu
	wMJ7fB9T7NWmbVoAB8d8jWTYZatHhBPVkxFurbKsJX23BN9ffc+Yq32ceBU+MyOl6QFq
	yAAQ==
X-Gm-Message-State: ALKqPwe4eZvppOsrLRZupwHDuL4mJUdgGxY/OGgqxlEhr0AfIi2C/NoN
	FvNpa3N8Yb54pY/3piXdPs3nfddx
X-Google-Smtp-Source: AB8JxZrJP+GjCYOxXWiV2S4Ij+blCeQw7fsoFuaUiN9aQ3Ts7FvaG2tylFr7W6NufA4/++hjFUgbrg==
X-Received: by 2002:a50:d94a:: with SMTP id
	u10-v6mr1151166edj.241.1525942468059; 
	Thu, 10 May 2018 01:54:28 -0700 (PDT)
Received: from tfsielt31850 ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	p36-v6sm440135eda.43.2018.05.10.01.54.27 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 10 May 2018 01:54:27 -0700 (PDT)
Message-ID: <1525942466.5115.26.camel@andred.net>
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
To: yocto@yoctoproject.org
Date: Thu, 10 May 2018 09:54:26 +0100
In-Reply-To: <d2ed93c9-f746-6e37-c959-66a5eebfb93d@windriver.com>
References: <CAMTWR-MFckD=GaqL-iteivzh7fPn+MHtYES+gGkWZyOMu7E9sQ@mail.gmail.com>
	<d2ed93c9-f746-6e37-c959-66a5eebfb93d@windriver.com>
X-Mailer: Evolution 3.26.5-1 
Mime-Version: 1.0
Subject: Re: Check IMAGE_FEATURES content in recipe
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
X-List-Received-Date: Thu, 10 May 2018 08:54:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

To expand on that - the idea is that (binary) packages shall not be affected
by the image, meaning that you should be able to install the exact same
(binary) package in different images. If you were able to access image
specific variables inside your package recipe (and change behaviour/contents
of your package based on the image), this wouldn't be possible any more.

In other words, an image is just a collection of a different set / number of
packages to be installed, but each individual package itself is the same for
all images.

Cheers,
Andre'

On Thu, 2018-05-10 at 16:46 +0800, ChenQi wrote:
> Hi Piotr,
> 
> VAR set in recipe A cannot be accessed by recipe B.
> 
> For 'read-only-rootfs' image feature, tweaks are done in functions 
> executed after generating rootfs.
> meta/classes/rootfs-postcommands.bbclass:ROOTFS_POSTPROCESS_COMMAND += 
> '${@bb.utils.contains("IMAGE_FEATURES", "read-only-rootfs", 
> "read_only_rootfs_hook; ", "",d)}'
> 
> Can you use a similar approach to solve your problem?
> 
> Best Regards,
> Chen Qi
> 
> On 05/10/2018 03:37 PM, Piotr Piwko wrote:
> > Hi,
> > 
> > I would like to check in my recipe if created image is read-only or 
> > not. In order to do so, I use the following condition which I would 
> > inside poky sources:
> > 
> > if ${@bb.utils.contains('IMAGE_FEATURES', 'read-only-rootfs', 'true', 
> > 'false', d)}; then
> > 
> > However it seems that IMAGE_FEATURES variable is not exported to the 
> > higher recipes. I also confirmed it's content by executing:
> > 
> > bitbake my-image -e | grep IMAGE_FEATURES
> > 
> > Is there any possibility to export this variable to my recipe or 
> > somehow check the particular image feature?
> > 
> > Thank you in advance for help.
> > 
> > -- 
> > Piotr Piwko
> > http://www.embedded-engineering.pl/
> > 
> > 
> 
> 

