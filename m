Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 881D8E00E5A; Thu, 31 Oct 2019 02:20:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.227.17.20 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA2DDE00DF1
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2019 02:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1572513600;
	bh=wc0r9FtXQn9jWJZgcv7FsUWkpVpyDemr8ave5ef0CaA=;
	h=X-UI-Sender-Class:From:To:Subject:Date;
	b=aHHKErLJu46JGhHXnvuUXlh/bdbS/p2Mxep3LuzE6OxMBWi26nJL4rKhJJmlhOOSz
	JcyGS0hKAGwrBhv/NrPSBnzPQfhGDKHxVwMWz4DNw9k55tg0D2oFJHL1JFd0paTZTG
	KcJjjtjtZfItjByYy/G+GcSXfqH5LzcS9Rfcgk7k=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [62.225.157.196] ([62.225.157.196]) by web-mail.gmx.net
	(3c-app-gmx-bap75.server.lan [172.19.172.175]) (via HTTP);
	Thu, 31 Oct 2019 10:20:00 +0100
MIME-Version: 1.0
Message-ID: <trinity-77cb5fbf-c8b7-4560-bd1b-e770272b1559-1572513600056@3c-app-gmx-bap75>
From: "Arno Steffens" <star@gmx.li>
To: ross.burton@intel.com
Date: Thu, 31 Oct 2019 10:20:00 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:WGcTmQaWeoaoRTp/tiEz6PWjXE6qiP/t6cr5OkksMFpobK96RIYYuOHtWx722mDQ1Xndl
	0+g+XeQfQ+qcz/XlN1SS7F5qICnuHWZ2kMAKaytz/hW0fnJ8A0UcPmQJWM2lQfkC6ZC7aUPg6Zrp
	fkSqdW1wB7FFHO+PJDF7ZP54rOPYyNzdeBNHdIKBaJnFe7vyNKo6Q83Ab2mLm89YzUz2b9q0gMkL
	r0DgGJZqksH35zBn1CNMm82xe11dpzbhDFO52EZQyQ7KDGnW5of5an08NxcLIhREXBe80vTW8QHU
	xc=
X-UI-Out-Filterresults: notjunk:1;V03:K0:89SLStoZwbg=:RbwtLlRbD3X8j6ldjcdHE7
	4pJogm5WJtpxA174FP3tmPTUctPNxvKamXO7dYk4GWIGeCms+AYR/75Bbo/vtB2ZckYdzV6yE
	OtXiMPCvOgqjo9gg81ZDJI+R+ktuwsXAYuAecwikxRQBRpag8KbShmniv3d25sh//Z/OCSAfN
	tiX2fds/eccm7l2p4DxRzhzy1rB4YtBoV13dTsjILVXVjvOcCWkq4xtmvIEyApUsA9SYcBRDX
	OtGk2WQNpbWB4O2KR9IfHokPeG0zDjmOGXFS9Po8AfXNXJElOx+y4shBXq4P/NnIwt+HNMcmb
	gvV23oIyVAJPkQqjtvsBi6H47QuZXfjb2KbBBA6pRlybgreXjM37ItYlXJBkuBCIi50ayQSZq
	aYEHrrHS/XaoK/hy++71UDlzmI+WGMYgh435ZUYZpzXDysvGLfxIKuJfcOPZolf/oLMrZuUt/
	MGHHllufqdb/pO0VR4PNGhexx2ulW1zMfxgZUd6dHTjmkjDJUrQ7QsLEYg4r2GicWbouGkO9R
	Yz3/+FZ9mOBvy7qBBoNvy3pJ/RwTZiosfVoCIXl9t9JhACWT6zwzgxEf8Wr5ovfannPPOlV9z
	NpKHy6aCdfWVA81tjxmK5OlNOHyFhMtrxoZDIFHMU6jb3V/aO30C7nluqfnY2z5GRoGXq0kxo
	ZwxdzmNLBlIEbY4ttzp9f38aT85crPCs5k0h93t3oMkm+QQ==
X-Mailman-Approved-At: Fri, 01 Nov 2019 12:07:52 -0700
Subject: Re: [zeus] icu-native-64.2-r0 do_configure: configure failed
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
X-List-Received-Date: Thu, 31 Oct 2019 09:20:09 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks Ross, that was a great help! Not sure I would found it...
Indeed python3 was installed but not all required elements:
sudo apt-get install python3-distutils was my friend.
Best regards
Arno

