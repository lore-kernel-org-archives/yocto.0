Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A2E1E00D90; Thu, 18 Jul 2019 04:43:53 -0700 (PDT)
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
	*      [209.85.128.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9A51E00B8F
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 04:43:52 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id 207so25277073wma.1
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 04:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=rdmTN0U81tKdeVVJmLAUeuXMN67OdDq1tCW3LVhrExQ=;
	b=HIpsLfWU1p02xri0pYRPSensKKMYjU1ZLDgN35sqr00wAUl9Ynuk3uwtuVD+kEJ3uj
	67RjyMgZBw0phX69v8UIUzgAuP2akucdJdnnU5fgYiCu7ofWn+bqBiFW86r7yCLZldEQ
	dVSK2ezk99PNDdwvvE+NOplx6k16szAk/RQSQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=rdmTN0U81tKdeVVJmLAUeuXMN67OdDq1tCW3LVhrExQ=;
	b=IQxwdDR/p3F2GHZ4kdbcv2JNVmVaDZp53noIu7UL5li2eWMwxai7adpH3z8po36aoA
	rltZGCllhzvvcyqo4ZvCmirggSYb6Nz6GXTPyGg/Kz3lNUssZXNDOfiIL7LFg3bPnJlY
	c9FGBExfRBGJRkLtiWdwKudLi/jZEdej3iU0qFaxTptcXIRjRmVUXArx9q7PmGX8Chs1
	Ozx4kTX3HmF/1+R1fxQOkM/fZjaPYsgxaGqibxUUpmNtm//BSYfdaeg590F/+o7bWkG7
	6tSpHUSrD22Zapm+IXDc2YB2VPsDkqMYTG3fvmaf6fjPLh5ydJk4jzsRPnOHxTl7++5S
	hpoQ==
X-Gm-Message-State: APjAAAWV15w/6eYb967tBvfngunk4Bb43+yq9wjFqypCRdQzcC9ZKdTz
	GtQ1ETVLxkAZCko3He3C0JV6rRyata0=
X-Google-Smtp-Source: APXvYqwNvsrmM2TjbFxL02VbI6yzrQC+qqcEhh8uGgp/baH6D7UziaPs9NbRAmb6wUFmaO4185ydTA==
X-Received: by 2002:a1c:770d:: with SMTP id t13mr41319181wmi.79.1563450232097; 
	Thu, 18 Jul 2019 04:43:52 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	n8sm20687061wro.89.2019.07.18.04.43.51
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 18 Jul 2019 04:43:51 -0700 (PDT)
Message-ID: <b19a2df01ff9e66056d1c4f23fb9469cff9dacd9.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Burton, Ross" <ross.burton@intel.com>, Adrian Bunk <bunk@stusta.de>
Date: Thu, 18 Jul 2019 12:43:50 +0100
In-Reply-To: <CAJTo0LbDCp=Wn76R56LxkAbU7pbkeJuBmnXhVr7h=gCJd1phqA@mail.gmail.com>
References: <CAJTo0LaOHbSB75OGLsHJ3Vxd5eVgg9+7Cq3k0=P-BwPLpFiyjg@mail.gmail.com>
	<20190718060409.GA27459@localhost>
	<CAJTo0LbDCp=Wn76R56LxkAbU7pbkeJuBmnXhVr7h=gCJd1phqA@mail.gmail.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] RFC: dropping official support for Debian 8 / Opensuse 42.3
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
X-List-Received-Date: Thu, 18 Jul 2019 11:43:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-07-18 at 12:31 +0100, Burton, Ross wrote:
> > CentOS 7 is based on Fedora 19 from 2013.
> > 
> > This is the oldest currently supported distribution, and when to
> > remove
> > support for it (replacing it with the not yet existing CentOS 8)
> > should
> > IMHO be part of this discussion.
> 
> Centos 7 support is, I believe, already patchy - I think we mandate
> the buildtools for that?  Any idea what the support plan for Centos 7
> will be once 8 is released, whenever that is?

There is some kind of official feed to add python 3.6 to it which we
use.

Cheers,

Richard


