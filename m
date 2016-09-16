Return-Path: <mont3z.claro5@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E04FAE00CC0; Fri, 16 Sep 2016 14:01:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mont3z.claro5[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.170 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f170.google.com (mail-yw0-f170.google.com
	[209.85.161.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A454AE00CB6
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 14:01:43 -0700 (PDT)
Received: by mail-yw0-f170.google.com with SMTP id u82so91403387ywc.2
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 14:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=dnsmMvi3mSXZjfOdbOdzWY8SkPlSh+8JfE/UbmCdxGU=;
	b=GbAgVdAs/DWZszDkeCBg6leZc0zcPDJp9gzH6F1M5+aZG7Cw82uA+c2NFQm6kItG4V
	GhuDB7mf8afVdna5k1R4clcSGDCOsT5W1LMWSiIUYA9WEI60QIdlH/OssGWJWKJSBcjO
	zdT/cB3hsMTAXTYsw53cBrYHJaBJOSmWSYVPx0nCjd8G5W7Lj2ZySimxpE9if+1E3NoR
	vwRwNZgxVmyvf0YCWav0O0lEo5WfokU6Agf/Sr19X+CZEkROn8btOZ7vkzzbpq6Oimb1
	KMsV27hSZMOC8e/YIBV9YPFyWhS7bGy3WlKEditxNtUISA3gCGFUCPzXBFbbB6lkxpMr
	DKYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=dnsmMvi3mSXZjfOdbOdzWY8SkPlSh+8JfE/UbmCdxGU=;
	b=g34taJDVvmWlcalHdgFNklsgTm4Ig/JwP154xvjyopXiee2MJSCGEnRsL3s8PtY18M
	rekukmEd4RQHJsHQKEAHZCIMTWQhWso3q1fxmN27TMn8jQeadbW5vQNQT4iMS8+G2seP
	r7ETjCfX6f0dKnnFsc7c84YxJuM5o+7wacV1CL4EE5bqLgf3eZ/ZRhBBmsPZZ37pO/+p
	32UGVHDNJKHVFQ+FL3hGxOqysSNcuJwBL4nd/xDWmvqori21zAy3FDpk6yOB+36LfUQB
	qSotSPmlYt1b28m8N7YZVSEaTBBDiLcZCZvfsAKWJntc2/g7j/A4/W1hwcsM046qKAji
	ri1A==
X-Gm-Message-State: AE9vXwOrpagose0Hp911p2C+yMkVN+vL2tMHZ4kDRbuYVY3C2rtCWFniB4EbvoP2NUuYp0ooWKzGI6L24Z4E8Q==
X-Received: by 10.129.55.199 with SMTP id e190mr8552599ywa.344.1474059702634; 
	Fri, 16 Sep 2016 14:01:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.13.213.203 with HTTP; Fri, 16 Sep 2016 14:01:41 -0700 (PDT)
From: Mont3z Claros <mont3z.claro5@gmail.com>
Date: Fri, 16 Sep 2016 14:01:41 -0700
Message-ID: <CAJ70iBSwzQnYW67Wb79Zga2hqZYRmgXstEqAao3N9BYgEf8z_Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Meta layer for pine64
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
X-List-Received-Date: Fri, 16 Sep 2016 21:01:45 -0000
Content-Type: text/plain; charset=UTF-8

Hi all,

I just finished a first beta version of a meta layer for SBC pine64.
You can find it in  https://github.com/mont3z/meta-pine64

I'd appreciate if anyone has any comments on possible improvements. A
major problem I had was the necessity of two toolchains: one for
compiling u-boot (32 bits) and another for compiling all other
components (64 bis). At the moment I have a very ugly hack to do it.
The 32 bit toolchain is an external toolchain and I set PATH
environmental variable in u-boot recipe.

Cheers,
Montez

