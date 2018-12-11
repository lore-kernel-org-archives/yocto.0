Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B18AE00C4D; Tue, 11 Dec 2018 03:55:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.51 listed in list.dnswl.org]
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
	[209.85.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7C89E00C10
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 03:55:17 -0800 (PST)
Received: by mail-ot1-f51.google.com with SMTP id w25so13678606otm.13
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 03:55:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=Bl+tCncg6+kRUq5SKza+KkiusRps5T35dvRr3a0AnRE=;
	b=KDZ41Vh02gd2eotz/Bj7nSBrSb4pakhSsTjzquO6euiZ9CHW9KVsXcVaCsxswvm2/B
	EkYqatOF+vqlIT3Qn2jA+iVTny2B4G7yE2gNTxY9y68kXS/DiYXb45dCklHtIcjrY/H0
	54gG45Q7VsE/eETWVUHCOvTUpRzTQwtxCLK32TQdddwQXtmi8Y+5b+BRtSsRZ3iy1B9z
	vEVIXGPKeKasZho25LeLoSq/2ckJAw/3tBpVQrBvUVEbfIHc6kFWRq+6hMEl64F5Qfq/
	Rma/L12xRWKGgjqNFQZws+kZIzeCE49UytJhd2kQ4yrw8SkqZjmvoTZQqITD/UGzNF5X
	PZUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Bl+tCncg6+kRUq5SKza+KkiusRps5T35dvRr3a0AnRE=;
	b=HfTRbCKHVyN7y9Qpv18dkikVcZg4dIB4UCSCLzWH0bosIudF8iPOPsh35ARSQ4Pq9V
	6qXGxTtpiVZPWXbPbkVpYjCzrlO+POF9WHfonM3apnln5hpMCwwN7wvnj5o3qXTc2E0i
	2EiFOGZPb8XbmhNWoWCg5w9m6RW+c8TbQCLr3fsMzSWyWFL5rgA/GWvPmOI77ReixOti
	rHv+uvI+hyXtJv2KO+gTJ/wqAsubcOf2EPpPDQGd+opTkbgA0mVBcQBhznPODw5SgRQP
	XxuqVkvqIPSIhVZafHVBph7LJlyFhyNpEmEq1Tz1SbsXPhdm5jULzND6+I+GLSsBNg9X
	vnSw==
X-Gm-Message-State: AA+aEWbaZlAwmezgT7twAWZD5feLghlw9Wa+RfitOxpdFwY3lingzpbq
	x3d5FDKZZwqDekuIZ+WAHTx4ty182deoUEfi/sknj7Hy
X-Google-Smtp-Source: AFSGD/VgeDPXjWuwxAIVUnImkbhql3bVPHPHD3JGhxP87LSCwDm2XrOpZU7Ogf6U8DzesxPTV9/LEaJirf5UhPIo9/0=
X-Received: by 2002:a9d:5549:: with SMTP id h9mr10390574oti.83.1544529316797; 
	Tue, 11 Dec 2018 03:55:16 -0800 (PST)
MIME-Version: 1.0
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Tue, 11 Dec 2018 12:55:05 +0100
Message-ID: <CAOT_U5YDEXHTHtbeb1Hhxvk5=7AufdpyT2u7L1TEpjYL8D0BAw@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Best practices for tokens/passwords that can't be versioned
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
X-List-Received-Date: Tue, 11 Dec 2018 11:55:19 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,
am looking for opinions on how to deal with recipes that depend on file content
that can't be versioned.

i.e.
The logging service on the embedded device needs to have a certain
private key or
token to work correctly.
But due to security reasons that file can't be versioned with the layer.


The best I came up with so far is to tie the recipe with an existence of an
env variable. If the variable isn't present the recipe fails if it is,
it's content
gets redirected to the correct file.

Seems like conf/local.conf could also offer a solution given that it's
a temporary
thing (per build setup), but didn't yet figure out a good mechanism.

Be Well,
Alan

