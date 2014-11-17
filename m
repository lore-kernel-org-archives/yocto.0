Return-Path: <Stefan.Eichenberger@netmodule.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEDC8E0085F; Mon, 17 Nov 2014 06:23:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 904 seconds by postgrey-1.32 at yocto-www;
	Mon, 17 Nov 2014 06:23:23 PST
Received: from webmail.netmodule.com (webmail.netmodule.com [194.29.26.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57807E0080C
	for <yocto@yoctoproject.org>; Mon, 17 Nov 2014 06:23:23 -0800 (PST)
Received: from ebro.netmodule.intranet (172.16.92.40) by
	ebro.netmodule.intranet (172.16.92.40) with Microsoft SMTP Server (TLS)
	id 15.0.913.22; Mon, 17 Nov 2014 15:07:41 +0100
Received: from ebro.netmodule.intranet ([fe80::752c:dcf9:6da4:f1f4]) by
	ebro.netmodule.intranet ([fe80::752c:dcf9:6da4:f1f4%12]) with mapi id
	15.00.0913.011; Mon, 17 Nov 2014 15:07:41 +0100
From: Stefan Eichenberger <Stefan.Eichenberger@netmodule.com>
To: "Qi.Chen@windriver.com" <Qi.Chen@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Busybox sh link
Thread-Index: AdACb9k6xoLWdjRUTlqzIoVEya1GoQ==
Date: Mon, 17 Nov 2014 14:07:40 +0000
Message-ID: <d08a8413c6434f89929894aca02a399c@ebro.netmodule.intranet>
Accept-Language: en-US, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.71.16]
MIME-Version: 1.0
Subject: Busybox sh link
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
X-List-Received-Date: Mon, 17 Nov 2014 14:23:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello all

I have a question regarding busybox and sh. If I want to install bash toget=
her with busybox ash, yocto does not consider the ALTERNATIVE_PRIORITY in e=
ach case (e.g. if bash is installed before busybox). The problem is that do=
_install of busybox creates a link to busybox.nosuid. Is there a reason for=
 that? Shouldn't update-alternatives create that link for us? There is alre=
ady a patch available that targets this problem (467b19efbaa9c0cb04d2665e8c=
d9a0919849a5ed ) but it only works if ash is completely disabled in the bus=
ybox config.

So the main question is, wouldn't it be possible to remove this lines compl=
etely?

Regards,
Stefan

