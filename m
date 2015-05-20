Return-Path: <mar.krzeminski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48093E005B9; Wed, 20 May 2015 05:35:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mar.krzeminski[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
Received: from mail-wg0-f41.google.com (mail-wg0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D300DE0027F
	for <yocto@yoctoproject.org>; Wed, 20 May 2015 05:35:33 -0700 (PDT)
Received: by wgbgq6 with SMTP id gq6so51339291wgb.3
	for <yocto@yoctoproject.org>; Wed, 20 May 2015 05:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=FdDZa4z0mSja3PRGC8IK+kgDVh5TtlLr+HiZmercKOk=;
	b=kFz1AFvYpxNCAe8oLkpiHZcaSTO3rQ3nWIun3MRn9DSbqI8Yuh5MgwzHisrouU+YHg
	g5lgmNausyFpy2GX9GGjSFLS/XCTGzBgpwQilMmyiMa50XZIpa3Qbkl53qms3jyWr3yN
	42Ok1JMLF2glD8jj7Opx1mPCDuJinsb6emhVos6odw1eQOvvZIPuL8znl1Sl3A0w2Ypi
	VhzNTubdkgxgZ7R8x8/1nOPYuX61kdTJYYoOO6pBJQ9T6VJ0M77TEohHc/e3iThWMwiA
	fvwKwg4hXDhHR57hbRtXSpqYG1Ibb5exTXkxg0oMATYPKq8738VUdtfOFGr0Z99qZek9
	IEXQ==
MIME-Version: 1.0
X-Received: by 10.194.60.43 with SMTP id e11mr28874103wjr.36.1432125333031;
	Wed, 20 May 2015 05:35:33 -0700 (PDT)
Received: by 10.194.16.130 with HTTP; Wed, 20 May 2015 05:35:32 -0700 (PDT)
Date: Wed, 20 May 2015 14:35:32 +0200
Message-ID: <CABc_YGBbN=Sp0qrDUdNsv1YKWmhNftfCPMp_7YtBiSkoMOZwAQ@mail.gmail.com>
From: =?UTF-8?Q?Marcin_Krzemi=C5=84ski?= <mar.krzeminski@gmail.com>
To: yocto@yoctoproject.org
Subject: Adding machine in own layer with the same name as machine in different layer
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
X-List-Received-Date: Wed, 20 May 2015 12:35:36 -0000
Content-Type: multipart/alternative; boundary=047d7b86de86bfd19a051682a9e4

--047d7b86de86bfd19a051682a9e4
Content-Type: text/plain; charset=UTF-8

Hi,

I have my own layer and I want to add machine named qemuarm to use runqemu
scrips ac close as possible original scripts from poky. When I try to build
this machine it seems that recipes from qemuarm are used. Is it possible to
do it or should I use different name?

Regards,
Marcin

--047d7b86de86bfd19a051682a9e4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I have my own layer and I want to a=
dd machine named qemuarm to use runqemu scrips ac close as possible origina=
l scripts from poky. When I try to build this machine it seems that recipes=
 from qemuarm are used. Is it possible to do it or should I use different n=
ame?</div><div><br></div><div>Regards,</div><div>Marcin</div></div>

--047d7b86de86bfd19a051682a9e4--
