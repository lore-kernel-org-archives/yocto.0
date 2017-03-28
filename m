Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A80DFE00524; Tue, 28 Mar 2017 16:05:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34B91E004E5
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 16:05:38 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id z133so2189015wmb.2
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 16:05:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YzSegJP3DrRQUocxaZOe8sOJXWuD3X3CZPeFXy9KEjo=;
	b=YvIS7jVfLR7iKX7gPMECg/L9Mo9L8XxEDWX7JOHaCPSqHuAIL15/kUeo/v4DgjyjdM
	Y/58c0iL3bWSuHR1q2EGPHFRA3C9++4Av112Sk1sEp2g5lSJDicLI7Q0oVhE3QOkf4qI
	3ZVaIucyfP+jvmSRh1wHthO/v9nSr8ecqD0PvIq89+klhPZqOXZrCHbmWaTPrDFl1wrY
	8k7fDSuvoPoP3U9ffsLjOTSYGEXKLQi00WwNvuC0/tcWuIaePXNOqn7LvopT014d4DsU
	98GVcLwTa+yDgwfyDhsFG/mXxg3T7Uz62vFQjHVS6MRREr4bl5hCeQD24m0anP6UyLv+
	svgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YzSegJP3DrRQUocxaZOe8sOJXWuD3X3CZPeFXy9KEjo=;
	b=M+zzOl8rE02hn5ktejUCcftxTVaUsDAC0sqNNpjDsONNndsifKDc7w4hFY15NukivU
	KCBctWZU7qzLBzNO9mu3NAoPGRkT/7dK8dgGZLPzGCn6mxhInxSujjudUptMcrtIxsE+
	aP+4FsCC9AEQBEXiu+l5md/WmndKx1MBNd5B1jujnHAmgSmNlDWxb3m4WU5d8Ou1PjPF
	i/OvGQpmGIo0SF4IViPkEFMluC6Nqw/3p9drFMYqgO2CekqpdINeh1pUJIZP4X69gSUY
	evfeayOrZo7DpkbmSFTFnNmAV70btpxbPxOwJ68ybwHwKHTs8nK7Dnj3J9EtcdbTyggN
	7d5g==
X-Gm-Message-State: AFeK/H0KV/56miCbFSyUrY0BY3FkWiZ+u1QU12SakxE6RsY/ooxM4A1qAiOSNTpa/eRj8+f+txpSIHaFWCRO8A==
X-Received: by 10.28.47.205 with SMTP id v196mr17589439wmv.20.1490742338024;
	Tue, 28 Mar 2017 16:05:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.152.55 with HTTP; Tue, 28 Mar 2017 16:05:37 -0700 (PDT)
In-Reply-To: <1ee401d2a7ae$cc2fabb0$648f0310$@ln-systems.com>
References: <1ee401d2a7ae$cc2fabb0$648f0310$@ln-systems.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 28 Mar 2017 16:05:37 -0700
Message-ID: <CAJ86T=VgcbeULG-UWeQd1bDF3zop7A+tjtjWOi6D+sFia8677w@mail.gmail.com>
To: colin.helliwell@ln-systems.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Unpack hierarchy - jethro vs. krogoth
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
X-List-Received-Date: Tue, 28 Mar 2017 23:05:48 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 28, 2017 at 3:33 AM,  <colin.helliwell@ln-systems.com> wrote:
> Is there a change to recipe parsing and/or variables between jethro and
> krogoth?
> I'm migrating from the former to the latter and have hit a patch failure.
> Looking at the unpacked source, jethro has the relevant file at
>     build/tmp/work/XXX-poky-linux-gnueabi/linmux/3.0.2-r0/driver/
> whereas krogoth has it at
>     build/tmp/work/XXX-poky-linux-gnueabi/linmux/3.0.2-r0/driver/driver/
>
> Indeed, all the sources have been unpacked under an additional 'driver'
> directory level .e.g.
>     src/driver/*  ->  3.0.2-r0/driver/driver/
>     src/config/*  ->  3.0.2-r0/driver/config/
> instead of
>     src/driver/*  ->  3.0.2-r0/driver/
>     src/config/*  ->  3.0.2-r0/config/
>
>
> The recipe includes
> SRC_URI = "file://driver/*.c \
>            file://driver/*.h \
>            file://Makefile \
>            file://COPYING \
>           "
> FILESEXTRAPATHS_prepend := "${BSPDIR}/../Apps/MyDriver/src:"
> S = "${WORKDIR}"
>
> As I say, it works on jethro...!

There were some changes in bitbake's handling of file:// SRC_URI entries:

  http://git.openembedded.org/bitbake/commit/?id=e659a3b0c2771679057ee3e13cd42e6c62383ff2

Is the behaviour more consistent if you remove one of the
"file://driver/*.[ch]" entries from SRC_URI? Or if you replace both
with a single entry to copy entire driver directory (ie
"file://driver") and avoid using wildcards?

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

