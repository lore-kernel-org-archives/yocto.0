Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B695E00524; Sun, 16 Apr 2017 15:54:55 -0700 (PDT)
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
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.181 listed in dnsbl.sorbs.net]
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3F4CE00349
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 15:54:53 -0700 (PDT)
Received: by mail-io0-f181.google.com with SMTP id a103so137631856ioj.1
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 15:54:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=FHwdB9PHCtee/Y+tj+UWr5MmkiDgKlUvgVIWJKiSxgU=;
	b=scU07SEDJ+E6UBQP0IPEOiFzOGOKfQjSzwnlJOC3BP0You/yuWXVa6EvDbWpUwZBQf
	OR8ypmdvkvDgv210eaIcy0VOuiz1i5XULllxUDvUsv298UZC99kzriJVOBfkh9WQy3H7
	L5UBMG71SXshLHfUaiPMBryen6OsQd+KsfAFKHRyrwBV9LansnsbdqCRhEs8PN+cKtzW
	T+nBTSqKfaDl+7xLO7goIzO4eUDWWPYDi2fCjjMnr6NgCF9qvYG9xBg45Zwg9PrZfARc
	dEVm6cBi00ajxhOgScYoYsw+ROYMkbw3ZERftvW/9vcC59Lm5F27e8RCMpUlM+cHJkOI
	t0JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=FHwdB9PHCtee/Y+tj+UWr5MmkiDgKlUvgVIWJKiSxgU=;
	b=bQ/YVIFiP0FBl3dY15dLQXap2r4SGgLO6kGRTrQvdu+L8M0kqFKaE1LWo+AZzj2zub
	QsQ1HotP/wP+tqe/k27gG0exEpGK0Jj5RLZdZsJfvqDaL/Iqi6HoOH6N80fPaLEcWgeQ
	/wkWz+7Q2GHwiNsnq2JDp2fK5Bdi1jQXgs+M7yd8f0uowDl/Q/LCSfBgfOSHebiwFdav
	yRfkrpLxMMcrw3ORHNzDnnQY8kuUFy4XyZ+luGNHqX/O4OkLDmoMH65iGPNZ/rHYuAc8
	XDkNpc9zJ2p4wJIIjpLbnQeoRtOcj6a1sdy81b3+qT+SNCbGDiacVC1AQHHhGF1+OKUA
	agCg==
X-Gm-Message-State: AN3rC/6HRGI2QpN3PsKchUPjpUHmbXbcWq0GQGKZVsk+0aSgVspXNw9Q
	axo/TyhtWzYDOA==
X-Received: by 10.107.130.211 with SMTP id m80mr6290502ioi.27.1492383292822;
	Sun, 16 Apr 2017 15:54:52 -0700 (PDT)
Received: from linux-uys3 ([45.72.251.122]) by smtp.gmail.com with ESMTPSA id
	d12sm4179947iog.41.2017.04.16.15.54.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Apr 2017 15:54:52 -0700 (PDT)
Date: Sun, 16 Apr 2017 18:54:50 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Andreas =?utf-8?Q?M=C3=BCller?= <schnitzeltony@googlemail.com>
Message-ID: <20170416225450.GA8797@linux-uys3>
References: <20170415133928.GA29433@linux-uys3>
	<CALbNGRQy1Lf1=hV47Lf+u7rQUgubXjdiQWhjNJN4a3sDwr419A@mail.gmail.com>
	<20170415163537.GA23175@linux-uys3>
	<CALbNGRRDv1d3GHBNMwXHajgyx8iee4pSfNkEcKxMDiraagC50g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALbNGRRDv1d3GHBNMwXHajgyx8iee4pSfNkEcKxMDiraagC50g@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] gles2 on raspi3
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
X-List-Received-Date: Sun, 16 Apr 2017 22:54:55 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Sat 2017-04-15 @ 08:09:02 PM, Andreas Müller wrote:
> You can have
> accelerated X11 + wayland in one image without any trouble with proper
> working modesetting (and HDMI sound is on it's way).

I got chromium building with it (it was a simple DEPENDS) and on the image I
just built sound is already working!

