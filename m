Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4955FE00546; Tue,  4 Apr 2017 15:11:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.52 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 003C2E00349
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 15:10:58 -0700 (PDT)
Received: by mail-vk0-f52.google.com with SMTP id s68so191459842vke.3
	for <yocto@yoctoproject.org>; Tue, 04 Apr 2017 15:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WdNlsCqUdMoAKbXgKoc5FoC6C3nMzgC8rKNVfJRUlAs=;
	b=CVfQ70/sAEzeGdmD9xEvF71KnS2/PY2n5D+x6L/V7/lsJAZb7uknLoRZpIgRuIu19e
	djV9YAC9SemXIMacD1M8kHnIzd9/aed+W8MjeL20oP35Tiyvh7+VYgx57vdDVw1dtD/v
	XM3Shyd1S7K3ssJPH7yPMdPoNVLxacZMX2OKKMilsCfIwCfqxq4jRPjiBPHVnm3yIzxp
	DVW/DxTb5yyViuAO+TQt5IA20AJ/4iWP6Vi0wKPVYrXEqWA1gtphSeGGyg7yEuNxwsHa
	aBaVlX5XPei/9l5Trccl8ow/dLwTmTA9BRVfTPNcfm/21MsbKiMf4YUmuK7TcqQfTzhe
	EZRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WdNlsCqUdMoAKbXgKoc5FoC6C3nMzgC8rKNVfJRUlAs=;
	b=lUya1kE3ehLJiueok6tIFmPlqaqTQ3FYCVkEvJ7nCCy0jqNXrNMpy3T8VutTBLBLBZ
	ff3xq2qEn24vseWh21R47rQPN8YWD7yufd2qLiD+SPgGTjw/ADWx8QwZLFzWsqfGQiVT
	Gzr5Oe/nK7WZgoq1yznIuaTuJ3VEuC/ks59hH9HjZQ8v2A3/8s/ldhgb+o4bPuUz9nX4
	cTiz4R3PkzfZCXCyC6FODNqB2JaP3R+kHjOVjP6ejXOp3QHJnjKX8YbcfEsFTxKypooF
	CGER5XXbHoR+71ac9CmqKngDexcN3ZA17Qrp6gt0pkvpuyiXPRaiUI9eJiFSWnJ0bfcV
	DN8Q==
X-Gm-Message-State: AFeK/H0NvQLf35qpUz4VWwXfnO4pVNryiSYHTrwow8kaGKjqWkGjWbOQb+J+8IKGEAzUM+9yFR9jhlg7c6/qQg==
X-Received: by 10.31.221.135 with SMTP id u129mr6409145vkg.67.1491343858002;
	Tue, 04 Apr 2017 15:10:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.30.70 with HTTP; Tue, 4 Apr 2017 15:10:57 -0700 (PDT)
In-Reply-To: <CAHUNapQGd5y4n-tmkcug8tAWbiNmE18kFP2=GGaN7mLATvyfzA@mail.gmail.com>
References: <20170324174916.17866-1-twoerner@gmail.com>
	<CAC+thW0tQhPQbz1OCDbohCm816A9JULTwSSJY1Rpa1_0XN-3gA@mail.gmail.com>
	<9D67DA24-B045-49CD-B397-2A01CA38C4EA@gherzan.com>
	<CAC+thW0vo4nEyeWNcZdPOV0xyt3wWARB8Kjnse_Ho2cNK4TEcQ@mail.gmail.com>
	<DD1D5255-B0E1-49B7-B4D6-06ABDC177B11@gherzan.com>
	<CAHUNapQGd5y4n-tmkcug8tAWbiNmE18kFP2=GGaN7mLATvyfzA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 4 Apr 2017 18:10:57 -0400
Message-ID: <CAHUNapQW_oh0mxcXmD5He6VTcHmG9_88=+CaEx7gOz7VBdws7Q@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] rpi-config: waveshare screen support
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
X-List-Received-Date: Tue, 04 Apr 2017 22:11:00 -0000
Content-Type: text/plain; charset=UTF-8

I see what happened... knowing that I needed those lines set, my
bbappend didn't have the "if" line, it simply applied the lines
without the check. The check was added when pushing upstream just in
case somebody didn't want those lines in their config :-) I should
have tested more extensively after adding the line.

Sorry!

