Return-Path: <francescogiancane8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2442EE00C3A; Mon, 11 Sep 2017 05:41:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (francescogiancane8[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.54 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D070FE00BB1
	for <yocto@yoctoproject.org>; Mon, 11 Sep 2017 05:41:15 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id i189so38647553wmf.1
	for <yocto@yoctoproject.org>; Mon, 11 Sep 2017 05:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=hZGSBu5gi3PSzYv7OF10H6K5ULJl+bAiQDv4c+2Tnao=;
	b=jhiRVBQyaPZH9hqSC0pM6kVOE2o+pbWOSgADwfhyyZCKwEsdmPCvM96UMN235muu5S
	dP6uAd9MuGd2pT4y9igf9fWoap0lSGOoOmRBx7vdJZY1YkiNOYOeOQBZkA2H1WwdsdFx
	BMYM2K+t/kbGag7+bVZB3zMWg9c1ExnQ3qZs92N6ZKJT/L1+iEGEEGFLMcPcvW2FU3xh
	FVZ+xF8N0jAKojD5uMCMsaqwQaoJJ/Q33I2SRDj8VKdxuaHDAJN7kR0AVM297BDILX06
	j6vzpub+0EHqy4hKd5937xekA5CkEeJKsMhXYTLyTXTRvnljjlDCXMVXzquo+C1xI4rP
	NbAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=hZGSBu5gi3PSzYv7OF10H6K5ULJl+bAiQDv4c+2Tnao=;
	b=djOSE1uxsuPMP+J9gfpdPF1A1hzb3xk2nNmD2aHXwuFIUxk2fhLHBg9DLJF/OVXVZh
	668qBlxrefYHBS18UUCzz6C6FK/sjh78GKPrMZ4no2E609U+mjr8Cb7J6rflVNK2rH3+
	+xur6Bj5iojq2u99/D7GVyMqPRHvZdQ3XmzTsJYNMf3r1kegp0y9Xz4UvsaIOFwEJYKo
	r6aTZJg7eAjZoNN3cuVuNBJXWJMqNQoiNNuTkAhGQ6Kf5kmKFiGDO8JK/G9RMbzOOMPA
	p52x7LM3zIQaN4Ql8I2IvFf/fZ+V/4Q/5WPgnzBF1GiH496Rs7OECc6FNoCyQTii+h0H
	3C1Q==
X-Gm-Message-State: AHPjjUgOUDtKFFh8XSa3EOL3hXiJxRSQ9LXrSmMOrlXEQO0xmqWzCNGN
	dOdlipIHM7/D59ghdux+39Y/gZ7qXwR6
X-Google-Smtp-Source: ADKCNb59ROtV/uuRq0r0o8E1CwG/eEktZZiBgi37hICbWg2UzvbEytTF39gbnWpwBai9Kt9lBTwxvSfX+tUsZiVdSrQ=
X-Received: by 10.80.205.94 with SMTP id d30mr3999675edj.7.1505133674441; Mon,
	11 Sep 2017 05:41:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.20 with HTTP; Mon, 11 Sep 2017 05:41:14 -0700 (PDT)
From: Francesco Giancane <francescogiancane8@gmail.com>
Date: Mon, 11 Sep 2017 14:41:14 +0200
Message-ID: <CAEQ58shK29zcD3tF=da0HKqfhj70aN1nFBmh=rHAu42G5dhZLg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: meta-java on Raspberry Pi 3
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
X-List-Received-Date: Mon, 11 Sep 2017 12:41:16 -0000
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I am having troubles building an image for the Raspberry Pi 3 including Java.

I did the all the standard operations (layer configuration, machine
configuration etc) but eventually bitbake will fail on openjre-8.

Looking at the meta-java in depth I found that the source of failure
is located in ant-native; because it is required to properly build
openjdk till version 8.

Problems are located in build dependencies like classpath-native,
jaxp1.3-native, all required to build ant-native. It seems that the
bootstrap javac tool installed from ecj-bootstrap-native is broken (it
reports a core dump).

Is anyone having the same issues? Can you tell me something about that?

Thank you,
Francesco

