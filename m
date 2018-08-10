Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AF81E0086B; Fri, 10 Aug 2018 06:36:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.158.116 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtpweb116.aruba.it (smtpweb116.aruba.it [62.149.158.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B2A9E006F1
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 06:36:01 -0700 (PDT)
Received: from [10.0.3.135] ([78.6.3.122])
	by smtpcmd03.ad.aruba.it with bizsmtp
	id MRc01y0052dwwGE01Rc01b; Fri, 10 Aug 2018 15:36:00 +0200
To: Yocto Project <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <d807b1e4-6d66-39bb-2896-026a259a0fba@faresoftware.it>
Date: Fri, 10 Aug 2018 15:36:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1533908160; bh=m0wzaVBsDkea0nzM91HDN8hGFP/Pgm2WqD3/gRNq4p4=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=cXRBGiQx6I5XqKq4dYIexzCgiKQUaMusweOvFHz1VZobkvM3I9+H44CAY21HNncZ+
	wt3udXQPc0Ypdw1V4R8YVtD10gB90EtLPecTSusLz1sRBcPyfashMepKJcuOcXNg2e
	eAgmzZv9zSeQb+1vj9jCKvH4tUs/0nAvGVfGbK7Oq2teyl0mp5daBkfvtya4/5eenj
	cY/ZzyLGQ65WuQrvpQvEX7/fAkQDPPDaUetzffy6ExkX0GLJXSgtWQU/H1JYKvZ15c
	zWKWYDYghPVyOIcJIrrZbO7s5vbavXE6SSgGoCNeN0VPXVWvSYzDnQdVBjzZS6xo0I
	ShkBLBl5WiGFA==
Subject: Image with the right version inside
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
X-List-Received-Date: Fri, 10 Aug 2018 13:36:04 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all

I need to do this scenario.

I have 2 image recipes:

- final.bb

- testing.bb

final.bb and testing.bb install the same application name app.

For the app I build the recipe app_1.0.bb which downloads the source 
code from git with tag=1.0, app_git.bb which downloads the latest commit.

- in final.bb I'd like to put the production version of the application: 
that is app_1.0.bb

- in testing.bb I'd like to put the testing verstion of the application: 
that is app_git.bb

Now, when I bitbake final, tha app_git is installed. This is not I want.

How can I force final.bb to install app_1.0.bb?

I tryed PREFERRED_VERSION_app="1.0" in final.bb recipe but it seems not 
work.


Thansk all

    Mauro




