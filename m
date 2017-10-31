Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EA7BE00D07; Tue, 31 Oct 2017 11:41:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.178 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f178.google.com (mail-wr0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38656E00D01
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 11:41:13 -0700 (PDT)
Received: by mail-wr0-f178.google.com with SMTP id l1so16851928wrc.3
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 11:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yvZnjGH5lmBqf2yyOj3wQRxxnP0LWSnXDV3sIjoGgGg=;
	b=FNuIX1a+xXerJIWNNsCB4LkiVBlCfB6tAJ6XuisUpqmgcaTwnhdVytQTmDTTvWtv0D
	a/ChUFFwjnxiyDaXl64c0IGRcF+voe4I0kEe+Cr5j0sbZ/+WodrisCCPOb6pb12tZh4Y
	zHAlRoec/oN11Ph7J2xCEefJVfYfCMW+AlEz9ZQsxe3gnSM7UUW2YwO31CSlhqwbFfCy
	1+yQDUh+xl49C2Mqx6glUp4lKVGy4Dy26WOehmLgD3b357ZkORm04MvVpiJRSoOLeMmF
	JSDuQsTlHZRJJQ25QT0i8TkM2nnspvIfJ5dt9EUfRM1v843LL/B0puR6RN+PuNieACMg
	EX/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yvZnjGH5lmBqf2yyOj3wQRxxnP0LWSnXDV3sIjoGgGg=;
	b=RvQtzAeHoXChrdlRpZYw+Rt4HJ8RuauwBtXFU6PFbRmkcOvetk6obP1eF3/d9xjfBd
	gQnTX7QzhGOPgB7vcIK8VonQd4JnUKRFgW4npzw01uzIoBjvl2p01JtLeGAFf4T5yXan
	e7i090BwH4pdL/FXH9TZsp1NOapf29NKMtdRPMPCHaaA9fQGJw0gUSV2qxx1T5hPydxf
	nfyhSFKYVkahxdbu1VMab1aN5Trh2GDilEvhLUT224NfeZNahjc0JEyfbOp+ivz11M6K
	5/OilZs/jcRTa+SDV2nV/PVVRJNMjI35ebeB85r5S4NPiYIf1+D4NdBZZyLNEU1iyY9U
	4LbA==
X-Gm-Message-State: AMCzsaUOLPXHtTxKuAqiSRVNf697Qqw2QRM/gwwTj/4ujsq4qP6qdmWb
	9hwNSz9e+n+mhGERkF4xgOi48uC5TKWxRc+AQt0=
X-Google-Smtp-Source: ABhQp+QvmaVEGSmNuqe28BWVf35ptHNU7CumdvgAyVe6HLCzGTI5SpFychDFoz5QMNItmxIYOg2W+GWJmXoW+B6khQ8=
X-Received: by 10.223.186.140 with SMTP id p12mr2590321wrg.235.1509475273022; 
	Tue, 31 Oct 2017 11:41:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.166.19 with HTTP; Tue, 31 Oct 2017 11:41:12 -0700 (PDT)
In-Reply-To: <DM5PR02MB2283899C6F536DA44EC707D2B95E0@DM5PR02MB2283.namprd02.prod.outlook.com>
References: <c48d8ea1-c618-dc24-6200-f7511f0e506d@xilinx.com>
	<3d885b18-f114-fcf1-0600-0903935bd1ab@linux.intel.com>
	<CAJ86T=XGnuGPEnnKobJDrYNudEdbV0i8UKPzAFzcC7+Ob_KqEQ@mail.gmail.com>
	<DM5PR02MB2283899C6F536DA44EC707D2B95E0@DM5PR02MB2283.namprd02.prod.outlook.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 31 Oct 2017 11:41:12 -0700
Message-ID: <CAJ86T=VUvNuZNu4GYY-aqXVMRsOWcLqg7FWdMpwhpg+-nRghxA@mail.gmail.com>
To: Vineeth Karumanchi <VINEETHC@xilinx.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Checking sstate mirror is hanging at 100%
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
X-List-Received-Date: Tue, 31 Oct 2017 18:41:15 -0000
Content-Type: text/plain; charset="UTF-8"

>>
>> It looks like the logic in the wget fetcher retries once, so if it's getting stuck
>> then that seems like a genuine bug.
>>
>> Vineeth, are you sure it's really continuously retrying?
> Yes, I see continuous retry of wget of same sstate files.

The fetcher explicitly tries to avoid that by retrying each file only
once. See retry logic in:

  http://git.openembedded.org/bitbake/commit/?id=54b1961551511948e0cbd2ac39f19b39b9cee568

However, there is a later commit which may also be related:

  http://git.openembedded.org/bitbake/commit/?id=6fa07752bbd3ac345cd8617da49a70e0b2dd565f

Does the version of bitbake which you are using contain both commits?

