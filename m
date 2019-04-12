Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4111AE00BC8; Fri, 12 Apr 2019 07:17:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.46 listed in list.dnswl.org]
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BA12E00BAB
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2019 07:17:52 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id y7so12150321wrn.11
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2019 07:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=A3AUfxrJx8WBF0LizoWNM+65OvsXE5wB5HlzcLrZfaY=;
	b=T1dd0umiN/n9LcJadHlIw97Cj8ScSAY+ir2ZI98bXlYZF3L4EeMWwJw6YDUlvRLFUW
	gvoE/6vhJYApez12eeLTyQa0Xm8nGCa/pJe7F0HkPpLMEIR0lggMDk2UWDzeoai1VtDy
	8pD7E6vAfuxeftUulkQ7TZaADGLePsbgXU7ik=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=A3AUfxrJx8WBF0LizoWNM+65OvsXE5wB5HlzcLrZfaY=;
	b=pHRU1wZScRnpS3Gmiv6s5UD20uQn9XQW3fi1vlDT9MDVidi543XTu8TTwmlKomRSRM
	ffNWc3+5yx0CSrgbxgVRofsc+4mP2SRICIXI/56HjGOS5yu7lXmAbXEDlG1GQQFQiZlk
	85A2t4dBPQuDf2b6negwpTW2RR+9X/7ozuIvpea59Ijs6tXOZYBA4tbtuYLFt66ZUp87
	+RpUh+a1gvA0rvHQd7DcyNJh/XwdfZF+bWlfOroFLREgsysNEP91/v/8xjNu9m0iPr7d
	TQoxNSAVN7wolp/Ttr4lwQ5TzloH4Yk1FcBgjtAYQvuc5theA9Pv3fvaO7VoLYu26G2R
	sTyQ==
X-Gm-Message-State: APjAAAXjShtiPbBnHqEdJosesrwD6E8Kyweu4QeJgrheB8IQIvOn0O/0
	SvAE0OQaXRXa9Oukjpl3fdrrkQ==
X-Google-Smtp-Source: APXvYqxiScnhu7BTGutQ2ayzuwFtAu42OQGDxa7AdnZjBawWh7YZ6T3dA+HBG3mCaszLvxp+5whYCg==
X-Received: by 2002:adf:dcca:: with SMTP id x10mr15184382wrm.57.1555078671770; 
	Fri, 12 Apr 2019 07:17:51 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	t24sm11958567wmi.10.2019.04.12.07.17.50
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Fri, 12 Apr 2019 07:17:51 -0700 (PDT)
Message-ID: <ddddfc4db6df73aa86ea934140c6795d1d912c0e.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Eric Grunt <gruntblue@gmail.com>
Date: Fri, 12 Apr 2019 15:17:49 +0100
In-Reply-To: <CADB9fJHhPie5Efxs3g_+HyjBtwK7n6Nu_=Gx9CMCjc9_0pK4OQ@mail.gmail.com>
References: <CADB9fJEbDEKKdu7CUoWC4AxC_=hk0vMFPajh0PWijUHy5WW1BA@mail.gmail.com>
	<cdeb499d193a545fd52d93a2ebe2b998e9421b20.camel@linuxfoundation.org>
	<CADB9fJHhPie5Efxs3g_+HyjBtwK7n6Nu_=Gx9CMCjc9_0pK4OQ@mail.gmail.com>
User-Agent: Evolution 3.32.0-1 
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Dependencies on other file system types for custom file system type
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
X-List-Received-Date: Fri, 12 Apr 2019 14:17:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2019-04-12 at 20:50 +0700, Eric Grunt wrote:
> > The dependency code is only triggered if the image type is in
> > IMAGE_FSTYPES. Did you add it there?
> 
> Yes, in the distro conf file.
> Guess, otherwise it wouldn't be built at all (since it isn't
> dependency of another fs)

Notice how the function names for squashfs are:

do_image_squashfs_xz

not

do_image_squashfs-xz

This is because shell functions/variables can't have "-" in their name.
You need to change to us IMAGE_CMD_squashfs_xz_ubi.

Cheers,

Richard




