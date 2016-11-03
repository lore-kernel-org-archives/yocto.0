Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24AE4E00C09; Thu,  3 Nov 2016 05:55:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.117.213.101 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (idealsim[at]laposte.net)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp.laposte.net (smtpoutz26.laposte.net [194.117.213.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4DF4E00BB0
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 05:55:20 -0700 (PDT)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout014 (Postfix) with ESMTP id C24E712137D
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 13:55:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail0;
	t=1478177719; bh=jJ3xFrx6Rr93ZrG2rIDpNZMzK/voEBjCN7u4WoVSvv8=;
	h=To:Subject:References:Date:From:In-Reply-To;
	b=N9KueGa3rCpdxFx/jOMpnrvW1ElUF54N4O1CV2DYiZzeVzOcFH3ZXs6RHrPW/FkkA
	XDmZLkQDFCBiEJ+nZ0PJ60O0A7s/EjYtkJzqRMpeSWIC1TYU+nVvbvrL1RK5KjPAYQ
	EaQ+ayBpZl5Z2MfVbDMuzlp3wzhO9TuIBn8ZDtcPJx6Oi2y11YH7IX+4stpI7aHdfW
	5gyb1JCPFXCaUN9R0d/ced5X9SSU5YUOO7S8z0JYVmzyP1ewUxYIo3l6sNLzx+pl1y
	2XphTkoHjLURsqkPG0AJChbTxw/xcqAodiCru4/4SzJ5geC2gmSOLSLS/hu5JtqHVu
	pj4yvcbS00QyQ==
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout014 (Postfix) with ESMTP id B585F12172A
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 13:55:19 +0100 (CET)
Received: from lpn-prd-vrin002 (lpn-prd-vrin002.prosodie [10.128.63.3])
	by lpn-prd-vrout014 (Postfix) with ESMTP id B1E7A12137D
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 13:55:19 +0100 (CET)
Received: from lpn-prd-vrin002 (localhost [127.0.0.1])
	by lpn-prd-vrin002 (Postfix) with ESMTP id A1EDE5BF2C5
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 13:55:19 +0100 (CET)
Received: from pc-mls.ecafaros.local (unknown [212.234.36.135])
	by lpn-prd-vrin002 (Postfix) with ESMTPA id 442A65BF2B4;
	Thu,  3 Nov 2016 13:55:19 +0100 (CET)
To: yocto@yoctoproject.org, "Gary Thomas" <gary@mlbassoc.com>
References: <op.yqcpvhydmnlnty@pc-mls.ecafaros.local>
	<a8763b48-7566-4974-895b-f9137e4d3e38@mlbassoc.com>
Date: Thu, 03 Nov 2016 13:55:19 +0100
MIME-Version: 1.0
From: idealsim <idealsim@laposte.net>
Message-ID: <op.yqcrihyomnlnty@pc-mls.ecafaros.local>
In-Reply-To: <a8763b48-7566-4974-895b-f9137e4d3e38@mlbassoc.com>
User-Agent: Opera Mail/1.0 (Win32)
X-VR-SrcIP: 212.234.36.135
X-VR-FullState: 0
X-VR-Score: -100
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeelvddrkeejgddvkecutefuodetggdotefrodftvfcurfhrohhf
X-VR-Cause-2: ihhlvgemucfntefrqffuvffgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhs
X-VR-Cause-3: ucdlqddutddtmdenucfjughrpegtvffufhffggfghffkjggfsehtsffotddtreelnecuhfhrohhmpehi
X-VR-Cause-4: uggvrghlshhimhcuoehiuggvrghlshhimheslhgrphhoshhtvgdrnhgvtheqnecuffhomhgrihhnpeho
X-VR-Cause-5: phgvrhgrrdgtohhmnecukfhppedvuddvrddvfeegrdefiedrudefheenucfrrghrrghmpehmohguvgep
X-VR-Cause-6: shhmthhpohhuthdphhgvlhhopehptgdqmhhlshdrvggtrghfrghrohhsrdhlohgtrghlpdhinhgvthep
X-VR-Cause-7: vdduvddrvdefgedrfeeirddufeehpdhmrghilhhfrhhomhepihguvggrlhhsihhmsehlrghpohhsthgv
X-VR-Cause-8: rdhnvghtpdhrtghpthhtohepghgrrhihsehmlhgsrghsshhotgdrtghomh
X-VR-AvState: No
X-VR-State: 0
X-VR-State: 0
Subject: Re: How to add libudev.h
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
X-List-Received-Date: Thu, 03 Nov 2016 12:55:24 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed; delsp=yes
Content-Transfer-Encoding: Quoted-Printable

Thanks for your answer.
It seems that i didn't have DEPENDS =3D "udev".
How i can add it ?
	- to my local.conf
	or
	- to myImage.bb
Regards,


Le Thu, 03 Nov 2016 13:29:57 +0100, Gary Thomas <gary@mlbassoc.com> a  =

=E9crit:

> On 2016-11-03 13:19, idealsim wrote:
>> Hi all, i need to build a lib --> openZwave (on a imx6 card) libudev.=
h.
>> I have this error during the build :
>> /home/root/openzwave-1.4.164/cpp/hidapi/linux/hid.c:44:21: fatal erro=
r:  =

>> libudev.h: No such file or directory
>> I have tried to add udev to my local.conf but this not resolve the  =

>> problem.
>> How i can add it to my build please ?
>
> Did you try adding 'udev' to DEPENDS in your recipe?  That's
> the way bitbake knows to provide such connections (i.e. how your
> recipe can find the appropriate files during build)
>


-- =

Utilisant le logiciel de courrier d'Opera : http://www.opera.com/mail/

