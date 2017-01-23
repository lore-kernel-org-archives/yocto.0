Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58826E00828; Mon, 23 Jan 2017 02:58:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.210.195 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.195 listed in list.dnswl.org]
Received: from mail-wj0-f195.google.com (mail-wj0-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58159E007EB
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 02:58:06 -0800 (PST)
Received: by mail-wj0-f195.google.com with SMTP id un2so1590674wjb.0
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 02:58:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=5MeALAyOMEs6OQw9KMcOZHBEb1rTYsAn4SerPEwgIT8=;
	b=iHsbnfuV0lN4mnDl0GVb+AHdq5V47oEf41GGd4bNDiFFpVzpPo3m+LRH9qNNjgfJfk
	4hqzMlgNi8J4OMR9a1bjRd96APQUsbmyu2TCax8Q8RKnjF6xI79vwVRX0Ou7y3IcTgqW
	Wcz630MUeJNq3oyk2O4jbZJ3p1EkZqaewyFHrjdDx7I1yfmGNfIqVULWTkUESaO5XIfM
	9bk0H7GeMNRfxtrfjEtfD3Bcdh5P6hTQLcKMG73bQHo5JJlY6j123TMnEM3Z+/tqOti0
	bla7uqPusVJFBrd+VmSDub2DuW8j2NjraOVu3ZuOElrzZixPQeNdT307leFDKgwOeCtw
	aQqw==
X-Gm-Message-State: AIkVDXLiUK8Me/TU7qENNpIyJk6RExMOUVvJuGYXikhomzgrnnSOsChg+qyu4CbbFvPoRw==
X-Received: by 10.223.164.7 with SMTP id d7mr26139956wra.70.1485169085761;
	Mon, 23 Jan 2017 02:58:05 -0800 (PST)
Received: from tfsielt31850 ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	x69sm6546014wma.15.2017.01.23.02.58.04 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 23 Jan 2017 02:58:05 -0800 (PST)
Message-ID: <1485169084.2625.5.camel@andred.net>
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon, 23 Jan 2017 10:58:04 +0000
In-Reply-To: <20170117155910.23792-1-git@andred.net>
References: <20170117155910.23792-1-git@andred.net>
X-Mailer: Evolution 3.22.3-1 
Mime-Version: 1.0
Subject: Re: [meta-swupd][PATCH] swupd-image.bbclass: do_swupd_update() depends on time-native
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
X-List-Received-Date: Mon, 23 Jan 2017 10:58:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2017-01-17 at 15:59 +0000, André Draszik wrote:
> Note that this needs the patch to OE-core to enable the
> time-native BBCLASSEXTEND to be applied before this here can
> go in.

The OE-core patch is in OE master now.


A.


