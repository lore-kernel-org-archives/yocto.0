Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECF6CE00CB4; Wed,  6 Sep 2017 18:34:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f173.google.com (mail-wr0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36DA3E00BB7
	for <yocto@yoctoproject.org>; Wed,  6 Sep 2017 18:34:08 -0700 (PDT)
Received: by mail-wr0-f173.google.com with SMTP id v109so1157141wrc.1
	for <yocto@yoctoproject.org>; Wed, 06 Sep 2017 18:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6TytpbBZnI7dQQ0aY9m15cgeDDwf4DBbFtqTAMeHYgQ=;
	b=S0RrDqjIRt2yWHm60soVBmVNM8vONkFRbwUXapuv3S5N8H6BGfFjsRWaHkwqOtOtNp
	ESjvueINkldNA0juyQ6zussnDR4c7a2NCAUf5CjZpFWIanu3+4VOaK67Wbyp7rkmprAW
	3sXoh4PiCrlR3x1Jj6mRU+TSIS91IjYFQAyUbDftOkz1vpKEEeBXt8fqzJMadxYtLqKJ
	2tR4urOfsx3NbPBkOIAPoCoCn23tVtvhK5M4AohBl4NI0NEUdtGbKK7d8jWPHPvXDaXM
	yNYfS8WDDRDE+xSMUrON/T4nKZdu9maNfUEVcKaiXrtBkjKJ0AgCT/x0X+6X8JbP+qY4
	SAaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6TytpbBZnI7dQQ0aY9m15cgeDDwf4DBbFtqTAMeHYgQ=;
	b=pAkrTU+Oe98YAOga1dMAEer3RfqTK9zJqE0OZRDGC2NI+Ap1OJCKHqsXdPCkjUXqBu
	0jOwwlsuKdIKXUZMMaQpZQAlbUa4h6HmusnV5X6BRl+kmjAc6cJlzROLp85DSZunvk+g
	FKWdu5Aab66pMcdyDitXG14SKXBRXeLaomVLH8RPubJGfuco5gk4kbXvexbFgr5Yq5Sw
	YimKoQuuRAk38ob4DM+LNuf575aTKDX7hayK6NeqrH/lz8CDOFNvszuvuJPJJGeIiuiG
	jCPXs+NpwhbrU9QnWU2OTQXRpci/y6XRqc5n8NNXWt+zaAVRlgic8jJe9hY1R9TuAFdG
	jG6Q==
X-Gm-Message-State: AHPjjUi1an+EbjZmlAItr0VPBMK/dqljmezF9tVwqa7mdbA5JDmS6lWF
	gjLF/DHI4i3HJtxCWXzkf7jrAOfcZLEd
X-Google-Smtp-Source: ADKCNb6pznyQkDzG39xVkmkeJmAHedjLr0wtEdedoGKLN0Y3DPah0qYJlM37mTDsS7aXODD5lknLN3wn9pkdINzoX2E=
X-Received: by 10.223.143.110 with SMTP id p101mr563008wrb.182.1504748048083; 
	Wed, 06 Sep 2017 18:34:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.184.166 with HTTP; Wed, 6 Sep 2017 18:34:07 -0700 (PDT)
In-Reply-To: <afce79fad80649ff88295ca3d41499ef@sakuraus.com>
References: <afce79fad80649ff88295ca3d41499ef@sakuraus.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 6 Sep 2017 18:34:07 -0700
Message-ID: <CAJ86T=Uce45W_Thtuqv_CORNx7X6c1TD-Bg8O_DRyu65NLS6wQ@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Working behind a Palo Alto firewall/proxy
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
X-List-Received-Date: Thu, 07 Sep 2017 01:34:10 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 6, 2017 at 2:42 PM, Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
> Hi List,
>
> Does anybody have any experience trying to run Yocto behind a Palo Alto
> firewall. The Palo Alto firewall basically works as a Man in the Middle
> system, it hands out its own certificate to boxes behind it and then
> decrypts and re-encrypts traffic going through it. The Palo Alto box is
> supposed to act as a transparent Proxy.
>
> I'm getting an error that the 'server certificate verification failed' about
> an hour into a yocto build. The certificate that the Palo Alto box is
> sending to my system is self-signed so will fail if checked for a valid root
> CA, and also is not from whatever site is being downloaded from.

Which site is being downloaded from and at which point in the build
(ie which recipe and task) ?

