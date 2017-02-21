Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 423F3E006C6; Mon, 20 Feb 2017 22:52:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1715AE0049D
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 22:52:30 -0800 (PST)
Received: by mail-qk0-f181.google.com with SMTP id u188so38533584qkc.2
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 22:52:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CoSSR63kxR/0Yco/ROKS+KhaDULyTNDW9cT1bMyFNYU=;
	b=YScWM2McDe+nCZnW7HqVFfYT2bw6vxIhCUbigyjrSrZ1/eimzeR0O2DDmxUxTP2cG4
	v5Jwb5XVNdotebbx6ASHtNmMmyxtRMW0OFmq+keZMfjfJK6zxKLEHN9+3FpoKDVRu5ke
	s0YJMFA5zXVgFjU3aAG6qB3WflFf0RSKcyniksUJS33L3RihLkygL+GZOuO7gnRCxi0Z
	GHiLgARF55HU4G82rhDIZUSp1ZV1XMrYGC+R9FjF8YWxPbga3oYBo3QmwADPOsAiO90E
	nKY3WtO5mIblNT6MwMVwDuOHuUxR/DE5BFTC/IM/qOaOrcnT0DhkiZ9kixm9y6uBk1Gl
	JosA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CoSSR63kxR/0Yco/ROKS+KhaDULyTNDW9cT1bMyFNYU=;
	b=XsWe9V60KKq8J/X3SOGgoncRbIgfoQ3oLjxrMk4xCp/Mc4hNt40x0A6CEB4ea3hL4y
	aHlXDSi3+Ba49gu3z8oGvc6WlIJ82AuyKGi2Si/n8RxrQD19VAMhWfnhSNMxxxS0n5C4
	qBp7Y6wpFeY4O7/jAPtx4GI9wQ2cAv5KU7TtIudvruHf/rg1sHMebfC2mzSSGQAEZULG
	FltjN7mwDx2WZFo77FnxjSymF+/hLaoEibjnKx9dnlpZJ66zbSmpkC8cA794/SpECPTd
	CCS36LaInZLyJ4g0OQklVeqF95bxw7Jh7pNxCkRPHSRWk7tWBnbwg7CDy2Bgtk/2H35g
	GKgA==
X-Gm-Message-State: AMke39kYPxzPZM60ULEAiNJ15fbFZnfCNtC3rCvXw9BcFb77JExNDigLU+CgxkTZTLG7HFRLQpMXJ3/nWaqFrA==
X-Received: by 10.55.187.67 with SMTP id l64mr25027792qkf.288.1487659949794;
	Mon, 20 Feb 2017 22:52:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.39.252 with HTTP; Mon, 20 Feb 2017 22:52:29 -0800 (PST)
In-Reply-To: <CAJrj+DM1nZBqhjXJoNORZi9=jORmAh1nBM8b3+MoU_nfKf=iYw@mail.gmail.com>
References: <1487051666-20888-1-git-send-email-eddie.cai.linux@gmail.com>
	<20170217033349.GA12618@linux-uys3>
	<CAJrj+DPJ5ZC4bxMsrHYD+kY1ur28hTBnfPSd+RNKd+kpnHZxOQ@mail.gmail.com>
	<20170217105745.GA10517@linux-uys3>
	<CAJrj+DM1nZBqhjXJoNORZi9=jORmAh1nBM8b3+MoU_nfKf=iYw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 21 Feb 2017 01:52:29 -0500
Message-ID: <CAHUNapRoG0nrbW3VDXjFsXWncJ9W1RcjFf2bMN5CKqhkjCt6XA@mail.gmail.com>
To: Eddie Cai <eddie.cai.linux@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Jacob Chen <jacob2.chen@rock-chips.com>
Subject: Re: [meta-rockchip][morty][PATHV2 0/6] add main line kernel support
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
X-List-Received-Date: Tue, 21 Feb 2017 06:52:34 -0000
Content-Type: text/plain; charset=UTF-8

Hi Eddie,

On Sat, Feb 18, 2017 at 8:42 AM, Eddie Cai <eddie.cai.linux@gmail.com> wrote:
> OK, So We have to set DEFAULTTUNE in conf/local.conf file when we want
> to get a optimized build.

Absolutely, there's nothing wrong with having that setting :-)

