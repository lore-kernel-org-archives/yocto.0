Return-Path: <Mans.Andersson@nibe.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E355E00849; Mon, 20 Oct 2014 09:27:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 902 seconds by postgrey-1.32 at yocto-www;
	Mon, 20 Oct 2014 09:27:49 PDT
Received: from bmail.nibe.se (bmail.nibe.se [212.162.190.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F443E00830
	for <yocto@yoctoproject.org>; Mon, 20 Oct 2014 09:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; d=nibe.se; s=s1024; c=relaxed/simple;
	q=dns/txt; i=@nibe.se; t=1413821561; x=1416413561;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=emdd4nRtlmyenhp+vrq0BRs1ScV4XyjKzaQdDLVj8Y4=;
	b=LkNGwx4ZkeXD00tNgyzr6ApYdeYpwacp1pbdyZlqHHfoRChfgfAqma3kFAiocl7P
	OxLE6tP8pGo8gOT3NY6TOOzozcmf09x0zMRQIYYKqAP3j9qiwo9KjxqRUshxuTvg
	XhJib3iHmXRQVhqwIAScwOK5WcMS58IOdHGZa7Fdfzg=;
X-AuditID: 0a0201f8-f79006d00000152c-e0-54453479c95e
Received: from mail.nibe.se (nivm320.nibe.se [10.2.0.33])
	(using TLS with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by bmail.nibe.se (NIBE mail) with SMTP id 07.34.05420.97435445;
	Mon, 20 Oct 2014 18:12:41 +0200 (CEST)
From: =?iso-8859-1?Q?M=E5ns_Andersson?= <Mans.Andersson@nibe.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Error building x86_64-mingw32 SDK
Thread-Index: Ac/sf9ahnb1tnR3bSt2VOkGPafKLZw==
Date: Mon, 20 Oct 2014 16:12:40 +0000
Message-ID: <bee194324ff24327bf8acafcc45167e0@nivm320.nibe.se>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.21.2]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrNIsWRmVeSWpSXmKPExsXCxcSgqFtp4hpiMPEIv8Wkl2vYHBg92k/0
	sQUwRnHZpKTmZJalFunbJXBl7F6whr3gAG/F+SU8DYwdPF2MnBwSAiYS674/ZoKwxSQu3FvP
	1sXIxSEk8J9RYtGaU+wgCTYBB4mN85pZQWwRAVOJF8e+sIHYwgJaEi3L77BBxPUl7tydxg5h
	60nc/veIGcRmEVCVWH/nD1icV8BO4sz2+0A2BwejgKzE3w1gI5kFxCVuPZkPdYOAxJI955kh
	bFGJl4//sULY8hIPlj5lg6jXk7gxdQqUrS2xbOFrZojxghInZz5hmcAoNAvJ2FlIWmYhaZmF
	pGUBI8sqRt6k3MTMHL28zKRUveLUTYzgsGX8sYNx7mbNQ4wCHIxKPLxTNVxDhFgTy4orcw8x
	SnIwKYnyXjQCCvEl5adUZiQWZ8QXleakFh9ilOBgVhLhVVAByvGmJFZWpRblw6SkOViUxHlv
	LwsPFhJITyxJzU5NLUgtgsnKcHAoSfDuBRkqWJSanlqRlplTgpBm4uAEGc4DNPwzSA1vcUFi
	bnFmOkT+FKOklDjvY5CEAEgiozQPrvcVozjQC8K8PMZAWR5gCoLregU0kAlk4AYXkIEliQgp
	qQbGVV52M/RbeX/eb2zNtSli2nw1bennlsj7GaXHz3K9DDrB/FqG1efxl9NJNpqcPtt1T9nO
	NDrEcGPG+Y8yd77tuPLg56lXttkJjecDTLZ3q0Zt2XVXa8am7p1x7Kc/Vt5ktHMuWHB/m/0Z
	7dBzKVfb9b88e1VVyOr10i3Y4efxx8aTF3p/+vhzrRJLcUaioRZzUXEiAFkgDMf+AgAA
Subject: Error building x86_64-mingw32 SDK
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
X-List-Received-Date: Mon, 20 Oct 2014 16:27:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,
I encountered an error building the x86_64-mingw32 SDK using poky (daisy, b=
da51ee) and meta-mingw (daisy, e9208b8) which I can't solve. Has anyone exp=
erienced something similar?

Thanks,
// M=E5ns

$ bitbake -c populate_sdk myboard-base-image
...
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'common-linux=
', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Executing shell function create_sdk_files
| ('movefile: Failed to move', '/oe/poky/myboard/tmp/work/myboard-poky-linu=
x-gnueabi/myboard-base-image/1.0-r0/sdk/image/var/lib/opkg/lists', 'to', '/=
oe/poky/myboard/tmp/work/myboard-poky-linux-gnueabi/myboard-base-image/1.0-=
r0/sdk/image/opt/poky/1.6.1/sysroots/x86_64-pokysdk-mingw32/var/lib/opkg', =
OSError(39, 'Directory not empty'))
| ('movefile: Failed to move', '/oe/poky/myboard/tmp/work/myboard-poky-linu=
x-gnueabi/myboard-base-image/1.0-r0/sdk/image/var/lib/opkg/status', 'to', '=
/oe/poky/myboard/tmp/work/myboard-poky-linux-gnueabi/myboard-base-image/1.0=
-r0/sdk/image/opt/poky/1.6.1/sysroots/x86_64-pokysdk-mingw32/var/lib/opkg',=
 OSError(21, 'Is a directory'))
| DEBUG: Shell function create_sdk_files finished
| DEBUG: Executing shell function tar_sdk
| tar: ./sysroots/cortexa8t2hf-vfp-neon-poky-linux-gnueabi/var/lock: File r=
emoved before we read it
| tar: ./sysroots/cortexa8t2hf-vfp-neon-poky-linux-gnueabi/etc/mtab: File r=
emoved before we read it
| WARNING: exit code 1 from a shell command.
| DEBUG: Python function do_populate_sdk finished
| ERROR: Function failed: tar_sdk (log file is located at /oe/poky/myboard/=
tmp/work/myboard-poky-linux-gnueabi/myboard-base-image/1.0-r0/temp/log.do_p=
opulate_sdk.22271)

