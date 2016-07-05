Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 694DEE00DC3; Tue,  5 Jul 2016 06:38:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,WEIRD_PORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (danielhilst[at]gmail.com)
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39238E00D87
	for <yocto@yoctoproject.org>; Tue,  5 Jul 2016 06:38:27 -0700 (PDT)
Received: by mail-vk0-f66.google.com with SMTP id v6so28520271vkb.1
	for <yocto@yoctoproject.org>; Tue, 05 Jul 2016 06:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XnMBJjBrsRY73CwhXzwKp0l5lBvZU6qeAo2dsKRzrDc=;
	b=aQ6D9x9jDYkQZj3S61coh7D79eYaA0a+k1XYNRnmahspUpQQ3sorn/6WZcvTyfVg9d
	Eqlqup22IjzjWuGGgipvyToa2PffMENoRR4oL1iI28m0EshtJU3cbfRalxESS+1wJXcZ
	kDvR9NxtqsGo+I96Sp38c/lkRq1fPujvZ8gp3oHlVtstiGnbx7NzkscqkBdGhTsC4C/C
	fh6zRxtLB5vw8tl6TIhFUdn9wfr2Qtg/OP3awgt2lhhVNDlYnXaOPanN49Mr04pSxwVo
	/gwdM8O3THn7/tJwCXwDqq1O53f2gdgkCgqdDtefMd82/v8qWCQbRbDP8pbmUwkQ79CM
	l4Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XnMBJjBrsRY73CwhXzwKp0l5lBvZU6qeAo2dsKRzrDc=;
	b=AV6IdW7TxnoLIcxTCqrGdvRnLsA55aimjS+hQUYA2+MTNgwDdSICz3QDPfmDDmiv1p
	f5uK1DZ+OYWZ9hdS8CSIzGflVO0Fb535f0MnsyP5i2Hp48jlGkeXDJGexEDqfStyJXFn
	+hpACqqL4Zr7B+WsL1PIyj/9Rq2AIfOOfQekRnAhpKPb1mhjTIROYCWl8rb4aVTx29cd
	oLEHlPhFSAnMB5alCkfB2ipvvTXX6cbuxDVg9CWv6edy6bvZwxdlBO1LxOcHRUegDBO0
	R7Jzy5hGM4Y65r0Z7Fr2Sk6TmWggUnjzTiOsdjLyR5bYkOLYekElQiY2UocU8L+d/wXz
	oZVA==
X-Gm-Message-State: ALyK8tJG5vfhJ2ay+7w1PfPVDwsSrDUygWxLpi/1uHhVNkMqp0ncsmC3FopjC9SirHvLmy8CR9MrKbtO2aPuZA==
X-Received: by 10.159.33.168 with SMTP id 37mr5487344uac.142.1467725906725;
	Tue, 05 Jul 2016 06:38:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.37.233 with HTTP; Tue, 5 Jul 2016 06:38:26 -0700 (PDT)
In-Reply-To: <nlft2j$4vc$1@ger.gmane.org>
References: <nlft2j$4vc$1@ger.gmane.org>
From: "Daniel." <danielhilst@gmail.com>
Date: Tue, 5 Jul 2016 10:38:26 -0300
Message-ID: <CAF3SDA5AZf6PLi0Y-oUq43TniXjv_R_Qz-M2Od2QysJLTaqHKw@mail.gmail.com>
To: Robert Berger <gmane@reliableembeddedsystems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: baremetal cross-compiler
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
X-List-Received-Date: Tue, 05 Jul 2016 13:38:32 -0000
Content-Type: text/plain; charset=UTF-8

That would be interesting, please keep me in CC list :)

2016-07-05 6:02 GMT-03:00 Robert Berger <gmane@reliableembeddedsystems.com>:
> Hi,
>
> According to the release notes it should be possible to build a
> baremetal (no glibc/Linux) cross compiler with the YP. I just can't find
> any information how this could be done.
>
> I would like to build a native compiler e.g. for a Cortex-A3 and compile
> FreeRTOS with it.
>
> Please advise,
>
> Robert
> ..."The pure and simple truth is rarely pure and never simple." - Oscar
> Wilde
>
> My public pgp key is available,at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Do or do not. There is no try"
  Yoda Master

