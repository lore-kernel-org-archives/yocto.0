Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD91BE00566; Tue, 14 Aug 2018 10:37:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E039FE0049F
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 10:37:30 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id c14-v6so13086285wmb.4
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 10:37:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=1g6quwedRl72WOAwTJVOM+OOrlhZAnXtzOFo+V6Y+b0=;
	b=QpR49hIKikWnFdMZY6nhyjpjkINAttqhdH0304ceNQlO5rVm8ojggGN2NSQhS+Iy8R
	lz2KPl/i/9Iwa7cV+diqlIOp+lPc1/HjeiJ8BVclRDSOdvAivE0V/BRJzWhcm3U9T4yg
	tXeQK33w/kuPRHhdB9xx06+GS+ojChUVK61F4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=1g6quwedRl72WOAwTJVOM+OOrlhZAnXtzOFo+V6Y+b0=;
	b=oI+99Rd2FMAql4EUGWRBhyNORXtb5hdkM9QWnfsCMNR2A04SfZvoSdBqwUjIfotetc
	n7XthrM6HHBN02L5JYrqlSZym7BoCbTLCoJ7OkzOqafVD3s2W57GklmKdssDe2Dyv9or
	6vrFPTZX04U0tyxAKOm1gyBFhvqymYewOE/Mpv5tb6onPmRnfxP9LKTlRsFK4X+9YzTb
	JWyQ5CDbc9HuhHiekvPRmeH/fjOFX4um77TFDiDdpStj22HWxQdDIUBlHZKV4BgxXdvQ
	ACN88QXBZc+i1t59cvsg20BMcevVoVkSqw++xOrKlc9TPMvZhqSItu+FsR6T9Mh3YBio
	Myrw==
X-Gm-Message-State: AOUpUlE5tmLNT7JFDlCHqHGhpYxpd0Mb03kS6ktAhBRZx8MUX/H6R9PO
	P/lA2V4reIRuDOKb3JW40gebEw==
X-Google-Smtp-Source: AA+uWPzMGL3tn7rcy/dwSigzj0PUdjTO+s6qJbxvgi45eibn+PXZWwVePtxXs/MngSw+IHi+lmCASA==
X-Received: by 2002:a1c:6354:: with SMTP id
	x81-v6mr10528023wmb.23.1534268249874; 
	Tue, 14 Aug 2018 10:37:29 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	p11-v6sm14544886wrs.51.2018.08.14.10.37.27
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 14 Aug 2018 10:37:28 -0700 (PDT)
Message-ID: <9ebfae05ec756956f1234c3fb10de302d857d94a.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Scott Rifenbark <srifenbark@gmail.com>, yevgenyp@pointgrab.com
Date: Tue, 14 Aug 2018 18:37:26 +0100
In-Reply-To: <CAFNP8OsKJOok3=RdBQCTd1AqSGVvf0xo1O2XRPdX2ttRe3a71Q@mail.gmail.com>
References: <1509905058-65701-1-git-send-email-yevgenyp@pointgrab.com>
	<14e3f1bc-7768-460c-e8fe-d696321d16f7@pointgrab.com>
	<CAFNP8OsKJOok3=RdBQCTd1AqSGVvf0xo1O2XRPdX2ttRe3a71Q@mail.gmail.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto-docs][PATCH] ref-manual: Removed misleading paragraph in siteinfo section
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
X-List-Received-Date: Tue, 14 Aug 2018 17:37:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2018-08-14 at 10:30 -0700, Scott Rifenbark wrote:
> Yevgeny and Richard, 
> 
> See the siteinfo.bbclass section here - https://yoctoproject.org/docs
> /2.6/ref-manual/ref-manual.html#ref-classes-siteinfo.
> 
> Paragraph removed.

Looks good thanks.

Cheers,

Richard

