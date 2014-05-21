Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 194DCE00B70; Wed, 21 May 2014 03:27:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.51 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qg0-f51.google.com (unknown [209.85.192.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88658E00AFD
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 03:27:49 -0700 (PDT)
Received: by mail-qg0-f51.google.com with SMTP id q107so2803093qgd.24
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 03:27:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=miRGxuhjZG9HCTMIJVI39Md6olN14jU9thtCZmWFClU=;
	b=NoocZgFwFY5FXPttz/zzcQxzZXgFhzcBwridBbgNVn+TUJoZ4JnqnJ1fWStpg7c1Zx
	q9VSktgJC+X+mnpo3kIfLqwpTiTawtzg3Z80wTlavacj1SqMR6IXmlq9i1PAI5k745fZ
	kKzjOHPrxiEUTEUvHzmLpsUQ0ZZcVHLHk7+h0vy6RwV7dikxkSZNDKzezKAlz7z2Yo0p
	ry5aOTDk2stsxWhjbmp6zyeJaxxtIdGjEJVeNFW4+dn36z8c0xll1Gfqwx9hPqlvrqj7
	yFfWCGyvLcE1OyIQUtpyXz3tnN4gkCegomz+9OZ4iWjUhracnjNAkD+ygWlQYWFFqK5N
	9cIA==
X-Gm-Message-State: ALoCoQmfbH1mYTuQ8hvmTD4NwbjdIa9v6iPnkCnu8PfWhlfw5KKGllDVTrttYKkHzdySuEMhJLOp
X-Received: by 10.224.138.3 with SMTP id y3mr2216729qat.78.1400668068929; Wed,
	21 May 2014 03:27:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Wed, 21 May 2014 03:27:27 -0700 (PDT)
In-Reply-To: <llhs5e$jt8$1@ger.gmane.org>
References: <llcim8$3rn$1@ger.gmane.org>
	<CAJTo0Laf+EEiBAcmKwtU08LLPYynDavNbfuC3TaGKLe2oBtR+w@mail.gmail.com>
	<llcj8i$cfi$1@ger.gmane.org>
	<CANyK_8fjtaN6iXOXm9YqLxK25_VUbYqH8_83GOYm81GjRc9wyA@mail.gmail.com>
	<llcrst$jsc$1@ger.gmane.org> <llhs5e$jt8$1@ger.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 21 May 2014 11:27:27 +0100
Message-ID: <CAJTo0LbV1AoU=qmb0S=dtbsaor4jWGckGPM80g=tETFi3Ri0sQ@mail.gmail.com>
To: Neuer User <auslands-kv@gmx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Strange certificate problem with wget
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
X-List-Received-Date: Wed, 21 May 2014 10:27:54 -0000
Content-Type: text/plain; charset=UTF-8

On 21 May 2014 10:37, Neuer User <auslands-kv@gmx.de> wrote:
> I really need certificate support in wget. What am I missing? I guess,
> it is a very stupid error on my side, but I just don't know which.

Try passing --ca-certificate=/etc/ssl/certs/ca-certificates.crt to
verify that wget works if you tell it exactly where the certificate
bundle is.

Ross

