Return-Path: <cswarth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51896E008D0; Wed,  1 Mar 2017 14:32:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cswarth[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.182 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16761E00566
	for <yocto@yoctoproject.org>; Wed,  1 Mar 2017 14:32:23 -0800 (PST)
Received: by mail-ua0-f182.google.com with SMTP id f54so56727131uaa.1
	for <yocto@yoctoproject.org>; Wed, 01 Mar 2017 14:32:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=EwZig1iRwBnrRtHrO92WSDZF2h4lSnM7V9kQLbmATcM=;
	b=e2fy0ufmlUblOZloWNDMdskpYI2JAJwaAqGunrC09TUv+pVmgM87K+dd1g4PU8N0sM
	hy4+srU1MLG9w7KyKedjEvFb3vddBPXQGE0RDZ37+cWIvOqjF2MVjQ0JZF0IepfE5RmI
	ZoUCmUphPPLwb2n2gF30RKbHfrLMr+RRwqkDpnkcYWp1pl2i35G4xHNUG2Q5slRB850Z
	MQIQsC7PyI2bYvWDCwbq2SCA1Jfyn33gbJ4bJ0y5JLX8gLc+ZV+0q4MPzp3AwFkXdR78
	8Ghd/eW7JVR/McaId8TQLWCm/E35NKXKGAkwf4PGP3DVEqkiHxerKeu+8kEy8Gjvs4wq
	FRNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=EwZig1iRwBnrRtHrO92WSDZF2h4lSnM7V9kQLbmATcM=;
	b=imFoCf307uOA8lbHSU5UQfRx9f9IGiqBwid8+Cv/UPFFTMtwNR3ixzV43+3sX0/INy
	dTgs7gy9bGkSp++TJF7wbMYMQeFemEjg+7r5QPW0FtqZrtZRYU2h60KJk7BbRQRWfpzX
	JYNvEKKmngBqbGXI1DEgIsjQWYCvrQ3v5nsELbquyuobyv1pzM8FkLZaC8FkdnetqsMF
	FjmrowyG/ikLwWsaGnlanluPlckESn0ms0UHlIdO8wGoI+fR7TqhlodW+Okq1ixhei/1
	/QaVaEnSV1Lp+SP916f3uxKP41X7SSh6gqsJQUKuLcYrEMonBx4lJSJCsDRPxe46Q8oq
	7JDQ==
X-Gm-Message-State: AMke39nCufBqMLu3KlRm9nrk0ZEZsByRxgzaswxD8CaKcVxPz+XOl/CO+MuIk49BCMggGbP1EtmdzH8eP5sW7w==
X-Received: by 10.31.63.147 with SMTP id m141mr1780905vka.42.1488407542401;
	Wed, 01 Mar 2017 14:32:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.105.208 with HTTP; Wed, 1 Mar 2017 14:31:42 -0800 (PST)
In-Reply-To: <CAJ86T=VeFuhgGmwFZDpb0o8QRpS15gCokcR8rRg62n_n=kVN3g@mail.gmail.com>
References: <CAJJmP9DKZQ1uWX3QGnA7aHVBeCJzuVTxo51G+BMDfbzKqcbv8A@mail.gmail.com>
	<b6c806a0-1196-4e70-9b1f-12fee1c7ef5f@mvista.com>
	<CAJ86T=VeFuhgGmwFZDpb0o8QRpS15gCokcR8rRg62n_n=kVN3g@mail.gmail.com>
From: chris warth <cswarth@gmail.com>
Date: Wed, 1 Mar 2017 14:31:42 -0800
Message-ID: <CAJJmP9C_AZJBzSs2XQp0enTzLgUaazmcF3FYD_Y6_zTVKkh0XA@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: BBMASK not working for me?
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
X-List-Received-Date: Wed, 01 Mar 2017 22:32:27 -0000
Content-Type: text/plain; charset=UTF-8

Thanks, all.  I wanted to share the solution.

This vendor-supplied version of yocto looks like 2.0, so the space
separated expressions are not available.
After putting some print statements in cooker.py I discovered that
appending to BBMASK in conf/bblayers.conf or conf/local.conf has no
effect.  It was not until I modified BBMASK_forcevariable in my
conf/bblayers.conf  that I saw any change in behavior.

BBMASK_forcevariable = ".*openjre|.*openjdk|.*qemu_qoriq"

This inability to modify BBMASK unless using _forcevariable was also
noted last year.
https://lists.yoctoproject.org/pipermail/yocto/2016-September/032033.html

