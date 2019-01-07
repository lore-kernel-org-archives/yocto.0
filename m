Return-Path: <m.a.b.researcher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FCBCE00CCC; Mon,  7 Jan 2019 12:31:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (m.a.b.researcher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.180 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED5CEE00C9F
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2019 12:31:51 -0800 (PST)
Received: by mail-qt1-f180.google.com with SMTP id l12so1989020qtf.8
	for <yocto@yoctoproject.org>; Mon, 07 Jan 2019 12:31:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=XKasDleW8xNysDuFYw5pG2FWLGDlDeYbz9jLKkRhgOI=;
	b=K0caie6P31k5L8ypAsYKbFSzaKnkZzg5FciWE2RDVWWJh/Jf61A0C4WFE8f3ClR0nl
	Cn3NR4PICQrThAg49fSOlLvM3B9BdQdBtCItLtlUbphxYr9E6wm13gk1a67wEa8bJ4Ba
	+IJBicEd+198VYfG+Cb2cYmxCqNJMvwExxcng0pHnQweJROX6aZj6bw7ezqR+Gkren4/
	hj8iaIPEiIoD4a+KB90n1DVE9K5biyzOuCgvtlE+3rGML9Lm9TZcNiyK2rjfQpJcG23V
	j06sdC7W6sMHYgTAxiN8+EnTpkkdeu/D1whKkPcREW0pXHoDONL9ROLTuH/28t2OdVur
	K8Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=XKasDleW8xNysDuFYw5pG2FWLGDlDeYbz9jLKkRhgOI=;
	b=bd3wxPZ1ktr8FaG8Y0JtArWKuXR/1M/tS+rGONi6FL3hZA+5YUsdppJ/KHRHks0vF3
	N926dshpwHNi5FRE6owKL7Caci4RkJxOX1/luyrBlc+nJOWhIHTAvTKcBW2ZSw3ymvR3
	7vk81Z9tZP4/YQhJzCwuDjmPpOcCTVgX/PTUnDr8RL+Z/vipEuYew3JjidE1fcWZFHZB
	76o9M+40f80TKsLHveOjb62T5/fIA7eBNzuFFf2GdCccxWca2+BDv73zY9H2DaBGRYiw
	gOLn8Re4QI6SxtxCd20sppNh2tZQfO+jQ/c6h54OurYxr81cL7Dr1TbyWw3EhKWvGCMB
	PXYw==
X-Gm-Message-State: AJcUukcMMctqxWlMOUslbFa7nvHAGFNwxEoAkYvTEFTps5YkdTbpckTx
	AtHHq15et4j/CILeBU9DdPCwQGo/DezeqjnTVyHKqTqB
X-Google-Smtp-Source: ALg8bN6qvHIMDL/Yab/Amm9mQrzSCDEJHPFO0HSqtuzM3ZNmgr4zgDriUObU61rpQY5lxvd5ql81EmA8bmfibylGFMI=
X-Received: by 2002:ac8:1617:: with SMTP id p23mr61822379qtj.239.1546893110982;
	Mon, 07 Jan 2019 12:31:50 -0800 (PST)
MIME-Version: 1.0
From: Mohammad Ali Boroumand <m.a.b.researcher@gmail.com>
Date: Tue, 8 Jan 2019 00:01:40 +0330
Message-ID: <CANJ8krOX28UT3zF+Q2wzkaA0vPx4u4AXBJLORycRZLRo63FccQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Change SH to BASH
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
X-List-Received-Date: Mon, 07 Jan 2019 20:31:52 -0000
Content-Type: multipart/alternative; boundary="00000000000062b9df057ee41eaa"

--00000000000062b9df057ee41eaa
Content-Type: text/plain; charset="UTF-8"

Hi
How can configure Yocto Project to change system shell and interactive
environment shell from SH to BASH before building Poky?

--00000000000062b9df057ee41eaa
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">Hi<div>How can configure Yocto Project to change system shell and interactive environment shell from SH to BASH before building Poky?</div></div>

--00000000000062b9df057ee41eaa--
