Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF3CEE00B05; Mon, 15 May 2017 09:33:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.196 listed in list.dnswl.org]
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D22C6E00AF0
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 09:33:27 -0700 (PDT)
Received: by mail-io0-f196.google.com with SMTP id f102so12041441ioi.3
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 09:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=h5XuCB+OoUNZF0KQRiAAqe1Kf4LsJGdG7cBGjGufuSk=;
	b=TLwJsMCYbDiuc4a7xiDL+XFDCzLOls0qCqhj5AmYTyW/IB0jUUOYCmLrEPuR7/fu2V
	76nAy8umTeRNNwUirJvPS35tqwrkSvXAFsLKHox0Zb/QDPTpPbQYReh+xmDpK1jjcYKp
	JBc39c+Rhb2/xMxfy5a0GY059jJoXkIPIWrXOaQXroBqfQb2WgKQc7HQE0uawE+N63G8
	sq6nN4WnEf1PK2y5tzM3nWEr/VVRDpgiZklBxq9TN0/jISRALJu+xoFCRtpAvwO9j4l9
	UAyHFESG0oO56rPD0635mMHxaOZZUKQKJ8LyzAby5U9WC/o/gCmLh//OSw2B5386VecA
	xrhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=h5XuCB+OoUNZF0KQRiAAqe1Kf4LsJGdG7cBGjGufuSk=;
	b=epoeiW7QhnkqXZxSjcdisvkY2/r7H1LRbHYz1OKhO0yc+kffSzhZDoSHgfAlAnhjqa
	r9CffffSPw9XFi5+GnsuMcYEInycalV2oML3jhkm6zQ4qsXRjIJkuoJQmBxn4gHeDXFm
	VPJyQAA9VEbzdwQgQnd9iqFCvDOTtkuOAy7ohqqed1n2BA00PBybIfT6nBOj9uNN+msK
	qGhOKTnJKlr1U+9wq+KXytnzzZ7ocncUzw2JN24BWvCd3mO24vd5rqotPrmbowBYOSNA
	ws9YeMCAPY58dAIY9UwtHn9tGCawG1hNUDS4I0pss2884aKpMslAO9C9yzKyeuqsjzmh
	ItsA==
X-Gm-Message-State: AODbwcC9SGFNfCdr3ATgLoOOpFrP3djx81rsj9KdW7nzw+h4tS0o+VU6
	4ncl1nJMM6PCJA==
X-Received: by 10.107.18.106 with SMTP id a103mr6067238ioj.189.1494866006684; 
	Mon, 15 May 2017 09:33:26 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
	by smtp.gmail.com with ESMTPSA id o4sm1055345ioe.46.2017.05.15.09.33.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 15 May 2017 09:33:26 -0700 (PDT)
Date: Mon, 15 May 2017 12:33:24 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Romain Perier <romain.perier@collabora.com>
Message-ID: <20170515163324.GB21833@linux-uys3>
References: <1492013128-5920-1-git-send-email-ayaka@soulik.info>
	<1492013128-5920-4-git-send-email-ayaka@soulik.info>
	<018a6ea6-38c1-92aa-9a32-6dee2e7d6e6e@collabora.com>
MIME-Version: 1.0
In-Reply-To: <018a6ea6-38c1-92aa-9a32-6dee2e7d6e6e@collabora.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip] [PATCH v2 3/3] recipes-multimedia: images: rockchip media image
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
X-List-Received-Date: Mon, 15 May 2017 16:33:31 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sat 2017-05-13 @ 06:20:35 PM, Romain Perier wrote:
> Clearly a NAK here. I don't want yet another image for this, that's a
> bsp meta layer, it is supposed to contain the recipes and rules to
> propose support for Rockchip SocS in in yocto/oe and its reference
> distros. But it is also supposed to be minimal, I don't want "all the
> world"  in meta-rockchip, to be honest :)
> 
> I am not fan to have recipes or rules for development...
> 
> Trevor, as a co-maintainer, what is your point about this ? (always welcome)

It's not uncommon for BSP layers to include sample image recipes
(meta-raspberrypi, for example, includes rpi-test-image, rpi-basic-image, and
rpi-hwup-image). These sample images act as a sort of example, or
documentation for others to follow. They're a way to show off what can be
done.

This recipe could act as an example should anyone want to integrate gstreamer
support for a rockchip in their image (assuming this image builds and works).

I'm not opposed to it being there, as long as it's benign and works.

