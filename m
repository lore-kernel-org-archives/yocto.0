Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE885E009D6; Fri, 10 Jul 2015 06:21:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55EFFE009D6
	for <yocto@yoctoproject.org>; Fri, 10 Jul 2015 06:21:18 -0700 (PDT)
Received: by wifm2 with SMTP id m2so46370464wif.1
	for <yocto@yoctoproject.org>; Fri, 10 Jul 2015 06:21:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
	:content-type;
	bh=O6SQ2LLuvCzTiLPohrqHvk5sMwdZu0kXjLNGxzH9SxU=;
	b=kp4sAKhZ8RpvdeuvxeItaL5gb+1MfB7mgGnx3WZiMJ9kM3Vb1icNhuvrdThrNOUw9O
	JtDKWsd61fEqtu+3CC8Fr3cbKdpOIB1xMbBrgwHrnAl4NrXNEwQqnngB8fEuC94M3b3a
	fT61RfhXhdwr+bEPRcP3hW4L4N+hrFBgnhsyoNz1Bf0Hui9CtX2MXNTM/nzjCJCWZZa6
	2im6RUWz+Lxj1Sd6LxxxQaqYz8CW1XNrrFahVxrVEPfhvw346M+j5n86GNoC2Iypxu27
	B++I0dsJujinOcjsxCyxFYpcAy6xUsu63zuFPKaEf44FvXnbuGH2KywPRK/RizDWCbQD
	lF/A==
X-Gm-Message-State: ALoCoQnIMtVYZZ4fafuwQ4O8FEZWxjenVZooWXYU3yN0wJBDKCC/+fqIAWBKBE1b6puDWgJQH2kj
MIME-Version: 1.0
X-Received: by 10.194.9.161 with SMTP id a1mr40154847wjb.39.1436534477720;
	Fri, 10 Jul 2015 06:21:17 -0700 (PDT)
Received: by 10.28.18.193 with HTTP; Fri, 10 Jul 2015 06:21:17 -0700 (PDT)
Date: Fri, 10 Jul 2015 14:21:17 +0100
Message-ID: <CAPhnLPAX2YN_SAHgfx8Qohj3Cu-eCFN4SNvV9wbcjJtoOA_tkQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: Otavio Salvador <otavio@ossystems.com.br>,
	Paul Eggleton <paul.eggleton@intel.com>, Saul Wold <saul.wold@intel.com>
Subject: Autobuilder and 1.9_M1.rc2 status
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
X-List-Received-Date: Fri, 10 Jul 2015 13:21:24 -0000
Content-Type: text/plain; charset=UTF-8

Last night the AB ran out of space towards the end of its build run.
We had to kick rc2 again. It is currently still running and will be
located at:

http://autobuilder.yoctoproject.org/pub/releases/yocto-yocto-1.9_M1.rc2

I realise the naming is odd. I'm ensuring that that doesn't happen
again. I'll need some time on Monday to push some AB changes out to
make it so that this all occurs from dropdown selection.

One other thing that will be pushed out on Monday is a selector box
for publishing artifacts. My guess is that most mut/master-next builds
don't need artifacts published. If you run builds on the AB, please be
aware of this checkbox, as the AB cleanup scripts take a while and
sometimes we publish artifacts faster than it can cleanup. I'm going
to default it to Publish for now, but will be watching to ensure
people are using it.

-b
-- 
Elizabeth Flanagan
Yocto Project
Build and Release

