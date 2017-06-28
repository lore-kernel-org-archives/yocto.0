Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9059CE00BC1; Wed, 28 Jun 2017 06:05:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.171 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f171.google.com (mail-ua0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B035E00B8D
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 06:05:22 -0700 (PDT)
Received: by mail-ua0-f171.google.com with SMTP id j53so37234662uaa.2
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 06:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KBZd8Ah6b3iZgn8XkmHIM8xPPh8fYSqUU9Ni+38QSuw=;
	b=EuPrFk37iArJzDDAonRZdt3yCp+llIIXPeB3pX9C8veYXrQj5txowh4yFHpS0dZmT/
	fRstY1eyN9H5CLdabtPRXwF2oAZl3ocHHdJV8JnpWoSvBhs+ItEPVoJqDjzJkJgmfNU1
	/ZyOeDq2Md0+BM0dhJwifmwwbu8X6eSxAnKe6nm5VNino2kr9GJGm3zTaB2ExrEWsu3y
	1ahAXZWilc3gCOTSnY66nanFpJVF/j5/KWVhQRL70hFjtkNJ6BZTlzJCzcd6xLo40vUU
	kI9p5oxQWddk18et6Fk4ifBEYlwJ3yGVduy1VN2wspXKvxy4CEuPKwOfms0Wj2NQlBhJ
	PPxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KBZd8Ah6b3iZgn8XkmHIM8xPPh8fYSqUU9Ni+38QSuw=;
	b=Gwo+ZXNmBFc3NpLTJivHB2pcYHTNnKc38rwNxOSQX6NwXTKo/cIO7t0ctiiFsNt2rF
	WSdOSXnsZs495SwlID42SZemp4oNVYAFT+R6hkJJ59Au5IOHhUqBGj+iyQGCUL3wEl0B
	Y9oNNM/nMhgdYKK1NzZja7FSdt/7rDnXJeAPj7jd2upjzbirSPdrdoAtbOoqF7FBXoq6
	GpjLATlUQ2Zclx6EYEcyzD4Itij6ivl7AL5AqWfeTuaBi+x1B+AeFCNmM03ZuYw640Gl
	gwi8G6KXxQlD1/VcPI6ltceXrCny1QEoOS+Ig6DC828bvd1YO3iq3aHu+qyaFqIj0kJ0
	b94Q==
X-Gm-Message-State: AKS2vOy+TilmblosISdLKBDN6Wj6lLDwry/3pCHlEkb5YQJ8EAca39Lc
	W90hLatLp/3DFExxu5BQQOpp64+yRgaT
X-Received: by 10.159.57.108 with SMTP id i44mr6488627uag.17.1498655122238;
	Wed, 28 Jun 2017 06:05:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.84.198 with HTTP; Wed, 28 Jun 2017 06:05:21 -0700 (PDT)
In-Reply-To: <CAHUNapTuMqopnqPcaLLym7XsVfKpAVtqdMGqQ4BytrqSPdtk5A@mail.gmail.com>
References: <cover.1498420110.git.drew.moseley@mender.io>
	<CAHUNapTuMqopnqPcaLLym7XsVfKpAVtqdMGqQ4BytrqSPdtk5A@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Wed, 28 Jun 2017 09:05:21 -0400
Message-ID: <CAHUNapRT-gQ7PbbyYfFg6Uyw0mONQP3e+ammdwQ4KXHnLNHi8Q@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-chip][PATCH V2 0/3] Initial attempt at flashing instructions.
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
X-List-Received-Date: Wed, 28 Jun 2017 13:05:23 -0000
Content-Type: text/plain; charset="UTF-8"

Andrei,

Will you need Drew to submit this as a pull request via github?

Best regards,
    Trevor

