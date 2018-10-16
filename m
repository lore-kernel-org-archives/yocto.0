Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D151E00950; Tue, 16 Oct 2018 07:46:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
	[209.85.210.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7038EE006AF
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 07:46:37 -0700 (PDT)
Received: by mail-ot1-f65.google.com with SMTP id l1so22770898otj.5
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 07:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=npHsavEsSaITYA1HOmWxrjEAlg/Kxdu3YPEDXKjB5+Q=;
	b=0oBs4i8QWskQAHl5cH3wlSW6lUVNS+R0L2/0chEYrqvNd4JhXah2Zmy/MPUdcUOw0Q
	VZ8V9zkKRD3nLQm9/wMuNu849kKBY2na3yT+DnoUJjYrKS4cnYRBjAVsSNeGfpzoBB5S
	DTKfpMTfqBOLMEm1xHltHTEE5eJjYxS78KG41cyJMymqvA2DCfj5htsdf+vg5JP9Sfvx
	LcRfKMq+ECMAZ6mFeryFhy7RYa8l6s3tGg/Hz7iun17cnr4HPsAyLQJLQkMyItjq101Q
	hWN/S7HrYXg0ne8NypzWlDNVpye3ggb3p0D2+Ri4sGes0bUfXl9RehgqKiqz4pPb5y8I
	YNHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=npHsavEsSaITYA1HOmWxrjEAlg/Kxdu3YPEDXKjB5+Q=;
	b=l7jwe5jSyvnoJFsuIiQ5zPIRfPZCgNaGdTe2EySohxP1evLHd6f4KsZcgrVHUhyOdZ
	S1xyRj7a+LpjvN4KgmLCt/40ABbarnj3KATyT7XMG2ahXK62aVJe+YSqYPXcylaoHmD6
	hlSQiKMybf+aGEOMznPedBR3LVx3GmqdD/Nn0cLqvYGjQjuA7hh9OXX+kRQLWmU1xb7a
	DwFtXEDgry5nB6C3TN/6q5m9TDes3OyHsp4MPVQ1OnVv1oOJ5ubgLmhew8gHpfYD0a+V
	49A8vdfHv/RmJ++d2Uuv/PqYWm6Jol+Z1KixgWwUXpgsOePG4bHPgJLibdxiHbBl5r69
	oNmA==
X-Gm-Message-State: ABuFfogucT1iVLQovvPwo0xKtph2eV1fFa248I4EsBUazbZsLXn3I5Bz
	sJxxrU+vhb7OqSs3nIOaMCjy8w0lGHKW+qgyeSxT9w==
X-Google-Smtp-Source: ACcGV63v/WTSCl2sZJ/4VzJ0LUBPpuvlEhf1y9UW1CdH85j6bk/Ptzt2irlVkk4e5HOi7Wazjy84Nz7UDZR/QiHrmZ8=
X-Received: by 2002:a9d:3e50:: with SMTP id h16mr12802112otg.8.1539701196791; 
	Tue, 16 Oct 2018 07:46:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAD-1PJggqpkkpKgxkKPLUKZRKnRKXpcHTKiH_=nS7FbmQocc5A@mail.gmail.com>
In-Reply-To: <CAD-1PJggqpkkpKgxkKPLUKZRKnRKXpcHTKiH_=nS7FbmQocc5A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Oct 2018 15:46:25 +0100
Message-ID: <CAJTo0LYC4zEP5RDUkEQsLeSyQe+exzC+Csuau4bnOhBUe+HCqw@mail.gmail.com>
To: Richard Collins <richard.collins@guidedknowledge.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Patching bbclass file
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
X-List-Received-Date: Tue, 16 Oct 2018 14:46:38 -0000
Content-Type: text/plain; charset="UTF-8"

This is simply because you can't patch a bbclass.  You'll have to copy
it into your layer with the modification, or work upstream to get a
suitable change merged.

Ross
On Tue, 16 Oct 2018 at 15:45, Richard Collins
<richard.collins@guidedknowledge.com> wrote:
>
> I have integrated mender into our system and now everything is working. I had to change one of the mender class files. Just a one line change in a function. As we'll be using automated build servers soon I need this change to be permanent.
>
> I've created a patch file in our bsp layer of the same name as the bbclass file I want to patch but the patch is not being applied.
>
> I'm using sumo.
>
> Many thanks,
> RichardC
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

