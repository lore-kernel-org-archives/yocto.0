Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91131E007AE; Thu, 12 Jan 2017 06:04:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.46 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B3D0E004D2
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 06:03:55 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id c206so21322980wme.0
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 06:03:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=bn5JEV5NI758jN804qbEAeRrP2ESJhGa4Mm6zK5NWbk=;
	b=AX4rUdzBpUIq7i4jyVjFywo9dvR1AlY5FWtQfNaQD+bA/F4ec8XOCQKwVMUx5W3iR6
	vXGWX5/qvSTsm6WZX7rgM5hgotf4fEqTHcPBXC8Hkk71rIjlwLt3SRhWjk2N0/+B/zQ9
	9+GkCu2c49lNxI2+/9Ocy+3jzb4WlJRWgV9MPZ3t8NTAODktaQ1YGeQ1a2TzT4Dlrm31
	9CMWLpWV7V8pzXi2UICfvIIbmeQxRJ6/sz96x9/ufTzHSc0M5+6FjK514SDyUD/O/bCl
	ZkblMTsCHBifDYg8k2ooJBO76ppGmgNtjoIU7ONXi7EMpPBdaizJUk4ya44k2OxRUMFS
	zhcQ==
X-Gm-Message-State: AIkVDXLaY3KvB4Hai+2GaYMwZCNWg7ujoovGRPvP3//TVQUxaIMAqRlPGa1TPNVIsL4bgg==
X-Received: by 10.194.109.168 with SMTP id ht8mr8778130wjb.36.1484229833639;
	Thu, 12 Jan 2017 06:03:53 -0800 (PST)
Received: from tfsielt31850 ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id l9sm3322467wmf.18.2017.01.12.06.03.52
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 12 Jan 2017 06:03:52 -0800 (PST)
Message-ID: <1484229831.7594.28.camel@andred.net>
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 12 Jan 2017 14:03:51 +0000
In-Reply-To: <076ded74-b424-c83f-64c1-1787e17270da@mlbassoc.com>
References: <076ded74-b424-c83f-64c1-1787e17270da@mlbassoc.com>
X-Mailer: Evolution 3.22.3-1 
Mime-Version: 1.0
Subject: Re: sstate pruning
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
X-List-Received-Date: Thu, 12 Jan 2017 14:04:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-01-12 at 14:38 +0100, Gary Thomas wrote:
> Any constructive ideas for cleaning out a ver long standing
> sstate cache?  I have one build tree that is now approaching
> a year old (I do builds there all the time, sometimes many
> times per day).  The sstate-cache is HUGE.  Any ideas on
> how I can purge/cleanup?  Note: 'atime' is probably not
> useful as I have copied the whole thing a few times...
> 
> $ du -s /build/p0382_2016-01-13/sstate-cache/
> 186576060       /build/p0382_2016-01-13/sstate-cache/
> 
> Thanks for any input

poky/scripts/sstate-cache-management.sh -h

:-)

A.


