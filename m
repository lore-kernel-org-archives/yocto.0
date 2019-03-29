Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63FB4E00D24; Fri, 29 Mar 2019 06:03:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f179.google.com (mail-it1-f179.google.com
	[209.85.166.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0DEBE00942
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 06:03:09 -0700 (PDT)
Received: by mail-it1-f179.google.com with SMTP id y204so3572204itf.3
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 06:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OVCTOlxWAXbTp7trKJ49DvXxPUCKphldLZP1nCr58Hk=;
	b=kOuO/Zvy1d7D/VvxZbX0xJPSTtFkJRbpZHOYpq7ytwPIf0vpofvk0/kpe2oHkrsqts
	lR+lehpZlh9y80fC2UMr0QIDfsSSHRmmfvWTAJ6cGtmGqVfHtE2V4/DAPp4r7kZwCVye
	gmOlANZlhmp/lBRNKH60MYekotcwEQlo0jYUsa0wdZr+ovDKfq5v/bo5hdEWpKjZK7tF
	paHPFYR6WuRBVwt0eOjmRnYfwAfhSKjEoCJmRpYIgPNPcxSv6zmE77Tnh9k+U8r6GkZI
	hFJtq4iOn33H6QQ7x8lsLd73vaipNPnqAim76afBnnHhC4MjBRuU40lgEHR0P9PU3klL
	DXGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OVCTOlxWAXbTp7trKJ49DvXxPUCKphldLZP1nCr58Hk=;
	b=g6rACbo5NnxVxHjiaH9YDP7UEvSu5r/aB0BnXIzBoaRdz47IE78GwX3ZWRHcMlZ2Q+
	Lkjl8CpP+WrGKvsot9Tvp98yM6BQjqMzGBN59Da/TZy7vxDamvE1B597tKczNmPieCMv
	AcQ0W/JWnZVUo3I+bgB5DxLFfDh2ojhxG5AlOloNtnwLIfEmNJPllwiUKJqcvpfc11U2
	7J1LsJgQQGPDxbG6O+O2+0dC0cxJ5U4yDsaEOPzOpt+BNidB4Vabd4PrL8mC9J4WcHAG
	DfRhmiv2lszYI6zrJzMq3EVlUhrdgpDaVTuqrxwYmhkdJcpEMeLYVgt3dWbRlhis9ilb
	X9aQ==
X-Gm-Message-State: APjAAAUfLBF+fascRyXYbR0c9qV3ED8g+sNkbsQRAgU7dl2UREiVgTMW
	TgqMfrgRmkfOS1BZnDV8F2Jkb1z3MUPvE5fAdNExKEsK
X-Google-Smtp-Source: APXvYqynY1E0BtVr6X/VXspNVkmEJs+1RwgcfJzcl0tlnceXtBN888BYKM9O0NQ+1OYM5W5j0Edfbryd4SYsyvLKb68=
X-Received: by 2002:a05:660c:111:: with SMTP id
	w17mr4066219itj.62.1553864589379; 
	Fri, 29 Mar 2019 06:03:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAFvQSYSDbe5YEEvFG+sF8enGzG+AsGoms6TYe_DCv-snZiqRYw@mail.gmail.com>
	<CAJTo0LaromaqsWigi1skaoD5gRQp6JdPXg1WUBV=i8LRq2PHRQ@mail.gmail.com>
	<CAFvQSYTY4cFD9QbC6R3JHAqtc_7r9X_NAj8zb8mGA1iu_9A3EQ@mail.gmail.com>
	<CAJTo0LYgeMSNG1R3qmNbccNH12ObATgJP-A-L-BzZ0E6Hw+mPA@mail.gmail.com>
	<CAFvQSYRMG5VHoCbbZ6fHuRjT+Mae22XsERJCKgfNigX_eWu74w@mail.gmail.com>
	<CAJTo0LZB0siaFty7_K1J3b1JS8uG5JOwow=12fzuL0qSovuwtw@mail.gmail.com>
	<CAFvQSYRppKFuJTBJyediTxVmcoJAtwmT4ffj=RYuFErr6ohU9A@mail.gmail.com>
In-Reply-To: <CAFvQSYRppKFuJTBJyediTxVmcoJAtwmT4ffj=RYuFErr6ohU9A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 29 Mar 2019 13:02:53 +0000
Message-ID: <CAJTo0La22deB4HJysOQKvLWYduq7j8UHP=Yao5_yuhGx+JEmPw@mail.gmail.com>
To: Clemens Eisserer <linuxhippy@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: pkg-config does not find "luajit" since upgrade to sumo
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
X-List-Received-Date: Fri, 29 Mar 2019 13:03:10 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, 29 Mar 2019 at 12:49, Clemens Eisserer <linuxhippy@gmail.com> wrote:
> The issue was the _$PN appended to DEPENDS, when I removed it the build succeeded:
> changing DEPENDS_${PN} = "luajit" to DEPENDS = "luajit" did the trick.

Right, DEPENDS_${PN} isn't a variable that is used.  You'll most
likely have got a warning from bitbake about that.

> However, I am still puzzled what happens here and why it worked before.

Because in the old days, every recipe shared a global sysroot.  If
luajit was built at some point, it was in the sysroot.  For the last
few releases (almost two years now?) the sysroot is per-recipe, so if
you don't have luajit in DEPENDS then it isn't in the sysroot.

Ross

