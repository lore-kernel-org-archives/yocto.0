Return-Path: <cody@arrc.ou.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82B8FE009A0; Thu, 23 Mar 2017 15:28:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.170 listed in list.dnswl.org]
Received: from mail-ot0-f170.google.com (mail-ot0-f170.google.com
	[74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51DB9E00546
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 15:28:12 -0700 (PDT)
Received: by mail-ot0-f170.google.com with SMTP id y88so41759900ota.2
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 15:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=arrc-ou-edu.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=BnOCf/AptdbbP1pZj5/wk/kIMzGGjTfRQax9Qe71ZG4=;
	b=IsDbDu4Lgy3cqVbA2Q3bC22RNyk9c0wfM+o4FJHPEeEeLLOw3RT8Y0Y3DYQyxDFHGu
	yXT9ELOJ1368gedGmwvzNvjqiP7K74mEtBHKzMXUQGZ5o9L48j1iQ7mGQ4Fmu0vC2LWO
	K0ep2X52Ja7+x7nLnGaBhC0bWWoorsmIBrYNmij8UXRlJxp3J3aOaQCDHeA7p1hoaZ8T
	axilWTMdSvna+YtpO4rDDlzvxwvM+FsBSsLeMKDbH97tC0uITT5YBzvIO+AmyM1lICnM
	jP9JNm9SVPF2jhX8YQKQhAX3oWFY6wcn6xfmpCRKOVjUyr/GVeYlkboTb4/p6IPRRPPd
	G2Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=BnOCf/AptdbbP1pZj5/wk/kIMzGGjTfRQax9Qe71ZG4=;
	b=da1zKeIwBH6eiEYLzvqGTq2iDMvbhGWXEcOup1fxYLRKuQKmSBszQv31ZW96GCh7+W
	Cq80/xGz0uTC2qr6JsSDKb7AG5VZNW3N5MeGJj824uIohzopzIIKxw5IVmzzBNbppK8s
	4A9ixySdg76KlZexEA3+Cb9Cu7Ddyu3fhE3AoED/KbPSQNOgLK71yogXIBVT7gNBUzbR
	RQkDx63+vqr5GtSOphQ00dJvu22Mtd1wbq5qOA7FnRn+B1AlUypfMTqk3UHSxaXAIZ8J
	BNlVK2WohitenQx3b3nIan+axIAsAYUpYRXuIEyz1E1mFeiAmOstBGsG1B2W1bDQmfHa
	hwBA==
X-Gm-Message-State: AFeK/H0nyBRulduoeJTRn8RNEcfM2ceaQUKYxaKVxUVxlCl6M1q8o19l/NKJIMzV6qKikyvPw6F0TXgHh6aDvmLo
X-Received: by 10.157.7.230 with SMTP id 93mr2498870oto.223.1490308091459;
	Thu, 23 Mar 2017 15:28:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.4.203 with HTTP; Thu, 23 Mar 2017 15:28:11 -0700 (PDT)
From: Cody Piersall <cody@arrc.ou.edu>
Date: Thu, 23 Mar 2017 17:28:11 -0500
Message-ID: <CAKEinFwC58g5q9wmvwhTfn5Au3n3Qrx8xRkSy7yUpehyedLiog@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 28 Mar 2017 09:26:41 -0700
Subject: Remove a recipe's do_install_append() function in an append file
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
X-List-Received-Date: Thu, 23 Mar 2017 22:28:17 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

I am building zsh from meta-oe layer, and it has a do_install_append()
function defined like this:

do_install_append () {
    rm -fr ${D}/usr/share
}

which gets rid of lots lots of useful functionality, like
context-aware autocompletion.  Can a bbappend file get rid of that
function, or do I need to edit the actual recipe? I've attempted
defining an empty do_install_append() { : } but it didn't work.

Thanks,
Cody

