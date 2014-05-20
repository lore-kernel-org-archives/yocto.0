Return-Path: <btv1==217dfdbf641==Matt.Schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6EBBE00B66; Mon, 19 May 2014 20:01:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
X-Greylist: delayed 812 seconds by postgrey-1.32 at yocto-www;
	Mon, 19 May 2014 20:01:17 PDT
Received: from barbvt10.planar.com (unknown [199.244.172.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A59E0E00985
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 20:01:17 -0700 (PDT)
X-ASG-Debug-ID: 1400554063-04b02b2fd0cb2c50001-yzSStA
Received: from msxbvt03.planar.net (msxbvt03.planar.net [172.16.0.147]) by
	barbvt10.planar.com with ESMTP id 7dABVqCb4TvL6Rfa for
	<yocto@yoctoproject.org>; Mon, 19 May 2014 19:47:43 -0700 (PDT)
X-Barracuda-Envelope-From: Matt.Schuckmann@planar.com
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Mon, 19 May 2014 19:47:42 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: Matt Schuckmann <Matt.Schuckmann@planar.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Mon, 19 May 2014 19:47:42 -0700
Thread-Topic: Can't boot poky-tiny in qemu
X-ASG-Orig-Subj: RE: Can't boot poky-tiny in qemu
Thread-Index: Ac9zvKexK1sJ/v7iSHKuKVUKQof0UAAGNpKA
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FD6CF7568@MSXBEBVT12.planar.net>
References: <4B07ADD556F70043925DA2E9C5D4346D2FD6CF755F@MSXBEBVT12.planar.net>
In-Reply-To: <4B07ADD556F70043925DA2E9C5D4346D2FD6CF755F@MSXBEBVT12.planar.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Barracuda-Connect: msxbvt03.planar.net[172.16.0.147]
X-Barracuda-Start-Time: 1400554063
X-Barracuda-URL: http://10.10.111.112:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at planar.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Spam-Score: -1.52
X-Barracuda-Spam-Status: No,
	SCORE=-1.52 using per-user scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0
	tests=BSF_SC0_SA_TO_FROM_ADDR_MATCH
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.5950
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.50 BSF_SC0_SA_TO_FROM_ADDR_MATCH Sender Address Matches Recipient
	Address
Subject: Re: Can't boot poky-tiny in qemu
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
X-List-Received-Date: Tue, 20 May 2014 03:01:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Some additional information, I've been testing with Yocto 1.6 (daisy), I ju=
st tried it with 1.5 (dora) and it does better I actually see some output, =
but it gets stuck in the init script with the repeating messages:=20

[    3.379021] Freeing unused kernel memory: 284k freed
/init: line 26: setsid: not found
Console sh exited with 127, respawning...
/init: line 26: setsid: not found
Console sh exited with 127, respawning...




