Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90B6EE00BA1; Thu, 21 Nov 2019 12:40:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 057E4E00852
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 12:40:37 -0800 (PST)
Received: by mail-wr1-f41.google.com with SMTP id 4so2759555wro.7
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 12:40:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=X4yAA/7qk5guFmElGFfw6H3ikFGmShOS6fiRF8mIjAo=;
	b=LmFx2cKvkby2rWXWPrkrngfaNDwnyV0DjHhmjUIEfqPTCZhlxLV/Agn3G02dH96OSI
	HXvdcrbRVJ4q0eagqlUdmBg5U8DfMg01gxQpG/9frY+lTgcC2W+DGweq1zV1FSQyMw93
	s3hGBA2lZlFIvD1e3itOzYJNixzCIdFGqcigM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=X4yAA/7qk5guFmElGFfw6H3ikFGmShOS6fiRF8mIjAo=;
	b=emPdgNvWX18cqCZXGnoB36DCyp/66w1Jp02KWrs4XFczF1IdqrWwKdj1fqUi+1rXru
	fnfBVny27OOm2WNKxqApWG572Hh5tE01ZdPZGD8s73H7OrTZB/QJGPGG6a0P1Tz6C0B+
	iu7l99ROtP6SAMcsje1lZK9n+qnErv0EMpEVEB5W3NxpJk2O46kZ5wLKAgvdUdVMygGf
	mAHHBTRCYZL5Y6ozy+j9EmneTwSD/CHc+wCz4EazsIhBLGQpnqGhBMEr96uJ/clgSTn3
	wnESzNAM2u5hJaygCkEOl3BIz83i35MqXY7K8Kn+7EP7nkTau5GY/4rZ3JjF78VAa1GL
	LZEg==
X-Gm-Message-State: APjAAAUtH06W9yPAvmLGD73agQwPce8JMgk6oCXplJ4Qx30BmJCuIbav
	FVacu8pII/tlOnlLoGIQPDx6SCQst7E=
X-Google-Smtp-Source: APXvYqyJbY2GbOesM1cIsVu1ijfcIAfcxt3rIESJ/+GMhmXvWpMyjY26UQlwA36ngC/bWiWHXoYMXg==
X-Received: by 2002:a5d:6508:: with SMTP id x8mr14045641wru.0.1574368837105;
	Thu, 21 Nov 2019 12:40:37 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id h5sm4782727wrx.16.2019.11.21.12.40.36
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 21 Nov 2019 12:40:36 -0800 (PST)
Message-ID: <1be248c5919e879aa09f544c702ae548cc34a83d.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Date: Thu, 21 Nov 2019 20:40:35 +0000
In-Reply-To: <alpine.LFD.2.21.1911211401001.10307@localhost.localdomain>
References: <alpine.LFD.2.21.1911211401001.10307@localhost.localdomain>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Subject: Re: is there a rationale for YP using sysvinit as default init manager?
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
X-List-Received-Date: Thu, 21 Nov 2019 20:40:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-11-21 at 14:02 -0500, Robert P. J. Day wrote:
>   don't get me wrong, i have no problem with that, but a colleague
> asked me what the reason was for using sysvinit as the *default*. i
> hemmed and hawed and suggested it was for simplicity and reliability,
> and that a lot of embedded systems didn't need the flashy features of
> systemd, and so on.
> 
>   is there any short answer to give to that question?

The project existed before systemd and we haven't changed the default.

We can change the default, it just means someone going through and
fixing the build failures it generates and rewriting all the test
metadata to invert poky and poky-altcfg. Personally I've got other
things I'd prefer to do...

Cheers,

Richard




