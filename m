Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAF3BE00D48; Wed, 29 May 2019 14:27:46 -0700 (PDT)
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
	*      [209.85.221.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E3BBE00994
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 14:27:46 -0700 (PDT)
Received: by mail-wr1-f67.google.com with SMTP id t4so2745026wrx.7
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 14:27:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=FuQnzGd3+wLrGZJRMMtfJq8XJeaEKYlNT+ReWg0yJyc=;
	b=gXvKVQg/CmsnQbofpv9H91LWueOz1xK64s4TfqKu7hnpggiBv1ce52jF9UZRMU5hZZ
	xlzQICoYYYQBAZqffP8bAOGps+yHJZSwrtb9kNKxnfiCd9X+0r79Wbh7k7BnspqYVE6m
	5za0Ydbbta4Rp7VN5U41b8DudyeEuNFxe9he4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=FuQnzGd3+wLrGZJRMMtfJq8XJeaEKYlNT+ReWg0yJyc=;
	b=QmNYl+7LM0OpIctx35e4YqZ+Os65AV//AVRv3YpmzxUUS6LiHWOBw8iFxHYPcMB6ci
	fc/PAjP3bqIAzkMaF7Ngq5NQd/v2f5lMkKvf3QgVcksnK1rJGi02YLSOx4cbnkS1RuWN
	s0X/Wdafr/SagCoeruXyw2xS23ll8qKPaK3sQ06eeniz0UnqwfP7Mbh9E+e7O5IklUbI
	j9MOM7etYDjpwp+f4Rfj7rbwfzpg4+QNqZ9uBm9dxFy7QEtZqyhsGWC0Fhn08l89byxs
	0BULWO6TjybLFHni3qxhygu3gO/TyzKZqQwRvMvoeyy6sNkpnzh7AUmlaK3ukdH9/Qgo
	uYog==
X-Gm-Message-State: APjAAAXU30sVvAA+/WzJCQq2Sv5IozVFlAjw1y2j1cDsNrKIyRxQYwv8
	NlbOoJ6kO8P748HPkVgU48fqQouB4rs=
X-Google-Smtp-Source: APXvYqzgj6y3b9NNcSVbYYUXHhWzAMxyGUETNSHDb8rjcBoLPcRm5pbEvfYnaUsoruJ+Dljme4fV9w==
X-Received: by 2002:adf:b688:: with SMTP id j8mr108653wre.238.1559165265419;
	Wed, 29 May 2019 14:27:45 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id a2sm1398814wrg.69.2019.05.29.14.27.44
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 29 May 2019 14:27:44 -0700 (PDT)
Message-ID: <49b4f2b21ece083360e23e612a59bec2fadeb374.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Wolfgang Tolkien <w@tolkien.email>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 29 May 2019 22:27:43 +0100
In-Reply-To: <7As9_zcZlHPteOw6wNtYJxOjL2RahJDKXMGg5yLB6d-95M4XrIDRKROQzsg53io7ErueGn2nhWJSfl8xwuxT8m4-jg2AT6P0GWQ0xAmaynM=@tolkien.email>
References: <7As9_zcZlHPteOw6wNtYJxOjL2RahJDKXMGg5yLB6d-95M4XrIDRKROQzsg53io7ErueGn2nhWJSfl8xwuxT8m4-jg2AT6P0GWQ0xAmaynM=@tolkien.email>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Subject: Re: Yocto 2.7: SSTATEPOSTUNPACKFUNCS_remove not working
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
X-List-Received-Date: Wed, 29 May 2019 21:27:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-05-29 at 21:17 +0000, Wolfgang Tolkien wrote:
> Hi there,
> 
> I'm upgrading from Yocto 2.5  to 2.7. I have a recipe that (for
> legacy reasons) builds a 32bit "-native" executable. I am disabling
> uninative by setting
> 
> SSTATEPOSTUNPACKFUNCS_remove = "uninative_changeinterp"
> 
> This worked well with Yocto 2.5, but with Yocto 2.7 I'm getting 
> 
> ERROR: When reparsing virtual:native:my-32bit-
> recipe_1.0.bb.do_populate_sysroot, the basehash value changed from
> <before> to <after>
> ERROR: When reparsing virtual:native:my-32bit-
> recipe_1.0.bb.do_populate_lic, the basehash value changed from
> <before> to <after>
> ERROR: my-32bit-recipe-native-1.0-r0 do_populate_sysroot: Taskhash
> mismatch <hash1> versus <hash2> for virtual:native:my-32bit-
> recipe_1.0.bb.do_populate_sysroot
> [... lots of these...]

I suspect the reason this appeared is a bugfix in bitbake:

http://git.yoctoproject.org/cgit.cgi/poky/commit/bitbake?id=f7f5e30667e1ad8e1ca76ee331be2843f2976bfa

which means this removal is now correctly being accounted for in the
checksum. In your particularly case you were relying on the bug :(

Cheers,

Richard




