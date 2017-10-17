Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D183E00CF9; Tue, 17 Oct 2017 06:12:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yocto.user.mailinglist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.46 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C65AEE00CD0
	for <yocto@yoctoproject.org>; Tue, 17 Oct 2017 06:12:41 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id b189so3764799wmd.4
	for <yocto@yoctoproject.org>; Tue, 17 Oct 2017 06:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=nj2VrFeE7UoO2WGjXoR81wuDxgb6bNaTDa+YUzk4Pro=;
	b=T4lC9/PhaiMU0WHLBQ2hzz1DeXQA9V74EMfXuCJpLmzS4i+3u2qPnGtTJ9pW2yIjeS
	fIONfIRi5slA731oEe8lv0fzrF9CcxTCyEwkOi2PJQDc9WxDre9OtSun+BFiHXMahfw+
	S7m6/vaLf3cI9dO2/sDEI51ydlgy5tcgJfEfAyX6mTalDiiDSRWgsY5lxzXivtb+tT0+
	Ls6WiZMu2EaYhK5zlc+zxQpBblBKrJlYr2RTPoF0F7KGTx/G2pq4Uj7+8uC0KZselOBm
	CqvfmLPhrqxaMP/mktf/cru2xZc8X3LFJn6gogDGBEWUIDtquK43LFnZUnrrtuHeItJq
	vnIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=nj2VrFeE7UoO2WGjXoR81wuDxgb6bNaTDa+YUzk4Pro=;
	b=OsotGC3mFdVmFZOtcAUQoI9pub6c/gq1ck3D8kQa1Cqcrx8t2LvWxC5JYwIXXvOIIh
	munAdElL/I9A3mZTAvxuKIhv4a3nXU+1fJXlNds/GeoJRYu+IPzcdn2OmsoZQE/5OsXM
	OFgVOVDR6Gz86YjHuBYAeBExuK5b7qctib7JuhwAXvW1I2KwmWv8eopmnxw9m9XFhmqy
	hRvTSEZZYoa8qISXxer/7vJ14KZewxMtSK0KFlDOZNBRaLmRUOOLAUKp8YNbb0NHhkMA
	lBRwFac6JT/zLPLZxkO2vaY4M83U5y4/a+aqpTAb6U+gxi/Q9PUyPlVDsSfYQuqdNGBM
	9gIw==
X-Gm-Message-State: AMCzsaW7yxvb/S8mcKfxsxBI2rM/SEaU1evaw0fuaTX7zm+4FkbJncqD
	s/t8TyZrANV96t1IWaM4MdsuFNRQ
X-Google-Smtp-Source: ABhQp+SFvztZn/rOalIh/XsSVoqSxNqYo0w1Aa/bse71B2sci00TWN9r2olUkTP9/L7gNcsneGNl0w==
X-Received: by 10.28.50.200 with SMTP id y191mr3467531wmy.74.1508245960499;
	Tue, 17 Oct 2017 06:12:40 -0700 (PDT)
Received: from [192.168.42.50] (ppp-2-86-168-248.home.otenet.gr.
	[2.86.168.248])
	by smtp.gmail.com with ESMTPSA id w5sm6022359wrg.65.2017.10.17.06.12.39
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 17 Oct 2017 06:12:39 -0700 (PDT)
To: yocto@yoctoproject.org
References: <1508218121.34337.17342@fedora25.yocto.io>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <8653269a-f4c0-e7f4-1393-7c77ad18502d@gmail.com>
Date: Tue, 17 Oct 2017 16:12:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <1508218121.34337.17342@fedora25.yocto.io>
Subject: minimize size of SW update bundle
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
X-List-Received-Date: Tue, 17 Oct 2017 13:12:42 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

Imagine you have only a limited bandwidth to your devices available for 
SW update. So you would like to minimize what's uploaded (over the air) 
to your devices.

How would you do this with yocto?

[1] and [2] might be able to do incremental updates, but maybe there are 
more ideas out there.

Like how would you get a diff between two release builds...

[1] https://wiki.yoctoproject.org/wiki/Meta-swupd
[2] https://github.com/advancedtelematic/meta-updater

Regards,

Robert

