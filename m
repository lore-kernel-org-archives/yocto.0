Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A574E00CE1; Mon, 17 Oct 2016 00:51:27 -0700 (PDT)
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
Received: from smtp.laposte.net (smtpoutz300.laposte.net [178.22.154.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27EBAE00C8E
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 00:51:23 -0700 (PDT)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout012 (Postfix) with ESMTP id 1A8B18CB52
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 09:51:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail0;
	t=1476690682; bh=v0uwCObfbkZWe0kJpCggIrMvN6PRREMpaYhzTF2rdj0=;
	h=To:Subject:References:Date:From:In-Reply-To;
	b=bh4wfLZpFaqugyZKnOoatYygAK+cERa+shPYGbd9WnwhnRe0XmdSo02NpRXwbpLlZ
	id6TevFSOXcfuhsYIthoaq5JfXKRE2DCcJyfKuPxNuQZfYY/QHLFn2i7xgPKar+h0G
	ExJ0xCzVX7dvLNFkn+ka7jkljM6Cex3ab+eWUr6TEkjmxpJB+Ug8729dmgSQHrI2xI
	IZw1UQzQfAUsPfZ4nlAGfw9iGVVdhFCf5ZEJhn642P5/8flM1xmWCDCOyx09RqIPrD
	xvVDrcb0nZ6hvD2QN/sWt1Gw99OUjE2A63JYJXmtAhlZFaRyWakR9X3aK/xaWMdlVs
	dZtKb43SE/1pw==
Received: from lpn-prd-vrin003 (lpn-prd-vrin003.prosodie [10.128.63.4])
	by lpn-prd-vrout012 (Postfix) with ESMTP id 15AB68CAE0
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 09:51:22 +0200 (CEST)
Received: from lpn-prd-vrin003 (localhost [127.0.0.1])
	by lpn-prd-vrin003 (Postfix) with ESMTP id 03E2D48E2B7
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 09:51:22 +0200 (CEST)
Received: from pc-mls.ecafaros.local (unknown [212.234.36.135])
	by lpn-prd-vrin003 (Postfix) with ESMTPA id BEB4A48E2AC;
	Mon, 17 Oct 2016 09:51:21 +0200 (CEST)
To: "Michel D'HOOGE" <michel.dhooge@free.fr>, "Yocto list discussion"
	<yocto@yoctoproject.org>, idealsim <idealsim@laposte.net>
References: <704582196.126855085.1476375158471.JavaMail.root@spooler3-g27.priv.proxad.net>
	<9cad3e7a-e4ea-76eb-2190-461f19aaa364@laposte.net>
Date: Mon, 17 Oct 2016 09:51:21 +0200
MIME-Version: 1.0
From: idealsim <idealsim@laposte.net>
Message-ID: <op.ypgv3vyemnlnty@pc-mls.ecafaros.local>
In-Reply-To: <9cad3e7a-e4ea-76eb-2190-461f19aaa364@laposte.net>
User-Agent: Opera Mail/1.0 (Win32)
X-VR-SrcIP: 212.234.36.135
X-VR-FullState: 0
X-VR-Score: -100
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeelvddrhedugdduvdelucetufdoteggodetrfdotffvucfrrhho
X-VR-Cause-2: fhhilhgvmecunfetrffquffvgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhht
X-VR-Cause-3: shculddquddttddmnecujfgurheptgfvufhfffgggffhkfgjfgesthfsredttderleenucfhrhhomhep
X-VR-Cause-4: ihguvggrlhhsihhmuceoihguvggrlhhsihhmsehlrghpohhsthgvrdhnvghtqeenucffohhmrghinhep
X-VR-Cause-5: ohhpvghrrgdrtghomhdpghhithhhuhgsrdgtohhmnecukfhppedvuddvrddvfeegrdefiedrudefheen
X-VR-Cause-6: ucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehptgdqmhhlshdrvggtrghfrghrohhs
X-VR-Cause-7: rdhlohgtrghlpdhinhgvthepvdduvddrvdefgedrfeeirddufeehpdhmrghilhhfrhhomhepihguvggr
X-VR-Cause-8: lhhsihhmsehlrghpohhsthgvrdhnvghtpdhrtghpthhtohepihguvggrlhhsihhmsehlrghpohhsthgv
X-VR-Cause-9: rdhnvght
X-VR-AvState: No
X-VR-State: 0
Subject: Re: <DKIM> Re: add dejavu-fonts to image
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
X-List-Received-Date: Mon, 17 Oct 2016 07:51:27 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed; delsp=yes
Content-Transfer-Encoding: Quoted-Printable

Hi Michel, your solution work fine thanks a lot for that !

Le Fri, 14 Oct 2016 10:08:37 +0200, idealsim <idealsim@laposte.net> a  =

=E9crit:

> Ok, i will test this week end and let you know !
>
> Otherwise, if you build qt5.7 perhaps you can have the same issue like=
  =

> me with sdk, see here for more details :
>
> https://github.com/graugans/meta-udoo/issues/20
>
> regards
>
>
> Le 13/10/2016 =E0 18:12, Michel D'HOOGE a =E9crit :
>> After solving all the QA issues, this bbappend creates RPM packages  =

>> with fonts in the expected folder. I didn't try to generate an image =
 =

>> but I'm quite confident about the result.
>> Michel
>>
>>
>> do_install() {
>>      install -d ${D}${libdir}/fonts/
>>      find ./ -name '*.tt[cf]' -exec install -m 0644 {}  =

>> ${D}${libdir}/fonts/ \;
>>      install -d ${D}${sysconfdir}/fonts/conf.d/
>>      install -m 0644 ${WORKDIR}/30-dejavu-aliases.conf  =

>> ${D}${sysconfdir}/fonts/conf.d/
>> }
>>
>> FILES_${PN}-sans            =3D "${libdir}/fonts/DejaVuSans.ttf  =

>> ${libdir}/fonts/DejaVuSans-*.ttf"
>> FILES_${PN}-sans-mono       =3D "${libdir}/fonts/DejaVuSansMono*.ttf"=

>> FILES_${PN}-sans-condensed  =3D "${libdir}/fonts/DejaVuSansCondensed*=
.ttf"
>> FILES_${PN}-serif           =3D "${libdir}/fonts/DejaVuSerif.ttf  =

>> ${libdir}/fonts/DejaVuSerif-*.ttf"
>> FILES_${PN}-serif-condensed =3D  =

>> "${libdir}/fonts/DejaVuSerifCondensed*.ttf"
>> FILES_${PN}-mathtexgyre     =3D "${libdir}/fonts/DejaVuMathTeXGyre.tt=
f"
>


-- =

Utilisant le logiciel de courrier d'Opera : http://www.opera.com/mail/

