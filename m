Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66866E00E78; Mon, 11 Jul 2016 05:40:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (idealsim[at]laposte.net)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [178.22.154.200 listed in list.dnswl.org]
X-Greylist: delayed 1478 seconds by postgrey-1.32 at yocto-www;
	Mon, 11 Jul 2016 05:40:17 PDT
Received: from smtp.laposte.net (smtpoutz300.laposte.net [178.22.154.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A0A2E00E57
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 05:40:17 -0700 (PDT)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout012 (Postfix) with ESMTP id 986B28C9AF
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 14:15:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail0;
	t=1468239337; bh=AgJGcdTrqekSbUgwfT5GpXwfUv1B1QIn6gr4KhNFc4w=;
	h=Date:To:Subject:From;
	b=cMPf9eG5QqjKESW3t69UJ75wogYBajbskW75bkicJVFJ2HyEYff+cMlctLTlWI7gW
	x3k5TVmTDHmeY7ifzTyoiOYRdDPHPkFqrAnavK14kPAEf4uT9MezMjUSA5GV9YmmQg
	STDK/gByvOrjUqa6Bpz+XPhyvlyA6ioK28MB7qMwkTDxRNKNM4mbYXYN6ximu1YuyH
	AaYCI80eY1YAAlH1pVVJiJePBT2a8/Y3vMp5TPtQW1yRWUN9AhVTxuOXuRiiQZ9izG
	HspKZaoWCOk1xpzk1w97Dt/tcMb+MjGixyKyDROWwkcYNKMD83nhrk6+lWLRqD/6BV
	E4lvl/mxHp3xQ==
Received: from lpn-prd-vrin001 (lpn-prd-vrin001.laposte [10.128.63.2])
	by lpn-prd-vrout012 (Postfix) with ESMTP id 94B3E8C95E
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 14:15:37 +0200 (CEST)
Received: from lpn-prd-vrin001 (localhost [127.0.0.1])
	by lpn-prd-vrin001 (Postfix) with ESMTP id 7E046366A53
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 14:15:37 +0200 (CEST)
Received: from pc-mls.ecafaros.local (unknown [212.234.36.135])
	by lpn-prd-vrin001 (Postfix) with ESMTPA id 51AAB366A65
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 14:15:37 +0200 (CEST)
Date: Mon, 11 Jul 2016 14:15:37 +0200
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
From: idealsim <idealsim@laposte.net>
Message-ID: <op.ykfq0buzmnlnty@pc-mls.ecafaros.local>
User-Agent: Opera Mail/1.0 (Win32)
X-VR-SrcIP: 212.234.36.135
X-VR-FullState: 0
X-VR-Score: 0
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeeltddrfeehgdegfecutefuodetggdotefrodftvfcurfhrohhf
X-VR-Cause-2: ihhlvgemucfntefrqffuvffgnecuuegrihhlohhuthemucehtddtnecunecujfgurheptgffvffuggfg
X-VR-Cause-3: hffkfgesthfsredttderleenucfhrhhomhepihguvggrlhhsihhmuceoihguvggrlhhsihhmsehlrghp
X-VR-Cause-4: ohhsthgvrdhnvghtqeenucffohhmrghinhepuggvjhgrvhhuqdhfohhnthhsrdhorhhgnecukfhppedv
X-VR-Cause-5: uddvrddvfeegrdefiedrudefheenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehp
X-VR-Cause-6: tgdqmhhlshdrvggtrghfrghrohhsrdhlohgtrghlpdhinhgvthepvdduvddrvdefgedrfeeirddufeeh
X-VR-Cause-7: pdhmrghilhhfrhhomhepihguvggrlhhsihhmsehlrghpohhsthgvrdhnvghtpdhrtghpthhtohephiho
X-VR-Cause-8: tghtoheshihotghtohhprhhojhgvtghtrdhorhhg
X-VR-AvState: No
X-VR-State: 0
Subject: Qt base font and Qt5.7
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
X-List-Received-Date: Mon, 11 Jul 2016 12:40:19 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed; delsp=yes
Content-Transfer-Encoding: Quoted-Printable


Hi i have build an image for an imx6 card with yocto Krogoth and meta Qt=
5  =

master to have qt5.7 (especially for chart). To build the image i needed=
  =

to remove qtbase-font from my conf to remove an error. But now when i  =

deploy an app on the card i have this error :

QFontDatabase: Cannot find font directory /usr/lib/fonts.
Note that Qt no longer ships fonts. Deploy some (from  =

http://dejavu-fonts.org for example) or switch to fontconfig.
EGL Error : Could not create the egl surface: error =3D 0x300b

If someone can help to resolve this issue ?

For information a build with qt5.6 work fine on the card !

Regards,

Micka=EBl

