Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21B2DE00283
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 01:41:58 -0700 (PDT)
Received: from mail-ob0-f180.google.com ([209.85.214.180])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 25 Jul 2012 01:41:57 -0700
Received: by obbuo19 with SMTP id uo19so675115obb.25
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 01:41:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=faf5R97faG0SCmwyE3nNqnmSYyOjy/vY6cSx79LhcVo=;
	b=lb6FSzzGnuJ+p3sVKOkALTzjleI59ucRZ5U2DAAOC24pFQU6DjlDsuNkjwySZYGw/k
	QlaZ4gqju7RxyOQCDVXLYgUzzY0D5K4DyLobpH9er63Yyjx56vLWki1BXoANpPXLXGKy
	/RPBYcYodynK7KRuUwYcUqiKb1+DNRUeuC3m+Ft1wyV2G6kE/sgBavy9pp4LEK8Vnj1F
	VJd6qp4Ej64InITV3sg4NNerIJ/hk+l2PQ/7JcMgRP/OQ1/zfCj/X0dVEtNdg5yWnyc6
	BUfHd+jcXL+ppMCi712ihj9GWo75FifswZ5qEs9z2BdUS455FMg4aBJmxIXVmdmlit31
	PUwA==
Received: by 10.182.51.37 with SMTP id h5mr33069014obo.35.1343205716596; Wed,
	25 Jul 2012 01:41:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.33.4 with HTTP; Wed, 25 Jul 2012 01:41:36 -0700 (PDT)
In-Reply-To: <CANsUPaOukMiAGQSZPJQ6ZrpZX4=or2DCesr8bC6hEmQyiZobYA@mail.gmail.com>
References: <CANsUPaOukMiAGQSZPJQ6ZrpZX4=or2DCesr8bC6hEmQyiZobYA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 25 Jul 2012 09:41:36 +0100
Message-ID: <CAJTo0LbPVx7GKzk3CcrdG9-tG31E7cr9OHVChpxLi678etuCeQ@mail.gmail.com>
To: Giovanni Foiani <fnognn@unife.it>
X-Gm-Message-State: ALoCoQkwKTfOe+4n9hIv6NASpdHnuKtQtvmTMEUpKeCdH12zdB3KlXGRI1OvSwjJNGofAszkFXlQ
Cc: yocto@yoctoproject.org
Subject: Re: Yocto and Google Protocol Buffers
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 25 Jul 2012 08:41:58 -0000
Content-Type: text/plain; charset=UTF-8

On 25 July 2012 09:35, Giovanni Foiani <fnognn@unife.it> wrote:
> does anyone have configured a recipe for make Google Protocol Buffers
> working?

> do_configure() {
> ./configure --host=arm
> }

Don't do that, because what if you want to build gpc for another architecture?

> bin/bash:
> /home/gfoiani/yocto/fsl-community-bsp/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/protobuf-2.4.1-r0/protobuf-2.4.1/src/protoc:
> cannot execute binary file
> make[2]: *** [unittest_proto_middleman] Error 126

That's because you're (presumably) running on x86 hardware, but are
trying to execute an ARM binary.  You'll need to build a
protobuf-native first that installs protoc into the sysroot first.
Numerous packages have this requirement, such as gtk+.

Ross

