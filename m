Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 118E2E00E73; Fri, 14 Oct 2016 01:08:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (idealsim[at]laposte.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [178.22.154.198 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp.laposte.net (smtpoutz298.laposte.net [178.22.154.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99720E00CCD
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 01:08:40 -0700 (PDT)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout010 (Postfix) with ESMTP id 139B245B646
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 10:08:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail0;
	t=1476432518; bh=tqcImIRlDN7nQGsybn17NUR8DxEZVLxzdWudlXtZQdo=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=JsWhavMto5OQq9dgJ5mn6aPOeHHumkfZFMTEZCGhS4lYb4Xyf8Up8Ff65yF32NBYx
	o3TJEhZ4GaGRHZ/0w/UDrQbjB+2yEcLBQGitXklF03Q4VC7uvA3i74NA/mItwOdRLV
	zlREJL0njv9KNjV63F/8Eu0CFJqepMqKLv6E3WMi97pVEu3bIFpMY/OeVnubYyzqCl
	78NSBGtDB8YiNzDQnLBvdUl28YHUoPBMRQT+aVSlzFc/yoSNwKAu1qMzdesoXfrRfP
	dBQpd/8VI2PMT4iJCsqlpzRzZXNAqXRNmYeq5TfvwdWC4n83NSM2NUdgjdpGqrKoZk
	s/ca84tnSVD9A==
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout010 (Postfix) with ESMTP id 04E1345B67E
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 10:08:38 +0200 (CEST)
Received: from lpn-prd-vrin002 (lpn-prd-vrin002.laposte [10.128.63.3])
	by lpn-prd-vrout010 (Postfix) with ESMTP id 038D545B646
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 10:08:38 +0200 (CEST)
Received: from lpn-prd-vrin002 (localhost [127.0.0.1])
	by lpn-prd-vrin002 (Postfix) with ESMTP id E46245BF279
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 10:08:37 +0200 (CEST)
Received: from [192.168.1.45] (ARennes-654-1-178-136.w92-135.abo.wanadoo.fr
	[92.135.1.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by lpn-prd-vrin002 (Postfix) with ESMTPSA id AD9535BF27C;
	Fri, 14 Oct 2016 10:08:37 +0200 (CEST)
To: Michel D'HOOGE <michel.dhooge@free.fr>,
	Yocto list discussion <yocto@yoctoproject.org>
References: <704582196.126855085.1476375158471.JavaMail.root@spooler3-g27.priv.proxad.net>
From: idealsim <idealsim@laposte.net>
Message-ID: <9cad3e7a-e4ea-76eb-2190-461f19aaa364@laposte.net>
Date: Fri, 14 Oct 2016 10:08:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <704582196.126855085.1476375158471.JavaMail.root@spooler3-g27.priv.proxad.net>
X-VR-SrcIP: 92.135.1.136
X-VR-FullState: 0
X-VR-Score: -100
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeelvddrgeeigddtudcutefuodetggdotefrodftvfcurfhrohhf
X-VR-Cause-2: ihhlvgemucfntefrqffuvffgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhs
X-VR-Cause-3: ucdlqddutddtmdenucfjughrpefuvfhfhffkffgfgggjtgfgsehtkeertddtfeejnecuhfhrohhmpehi
X-VR-Cause-4: uggvrghlshhimhcuoehiuggvrghlshhimheslhgrphhoshhtvgdrnhgvtheqnecuffhomhgrihhnpehg
X-VR-Cause-5: ihhthhhusgdrtghomhenucfkphepledvrddufeehrddurddufeeinecurfgrrhgrmhepmhhouggvpehs
X-VR-Cause-6: mhhtphhouhhtpdhhvghloheplgduledvrdduieekrddurdeghegnpdhinhgvthepledvrddufeehrddu
X-VR-Cause-7: rddufeeipdhmrghilhhfrhhomhepihguvggrlhhsihhmsehlrghpohhsthgvrdhnvghtpdhrtghpthht
X-VR-Cause-8: ohepmhhitghhvghlrdguhhhoohhgvgesfhhrvggvrdhfrh
X-VR-AvState: No
X-VR-State: 0
X-VR-State: 0
Subject: Re: add dejavu-fonts to image
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
X-List-Received-Date: Fri, 14 Oct 2016 08:08:45 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Ok, i will test this week end and let you know !

Otherwise, if you build qt5.7 perhaps you can have the same issue like 
me with sdk, see here for more details :

https://github.com/graugans/meta-udoo/issues/20

regards


Le 13/10/2016 à 18:12, Michel D'HOOGE a écrit :
> After solving all the QA issues, this bbappend creates RPM packages with fonts in the expected folder. I didn't try to generate an image but I'm quite confident about the result.
> Michel
>
>
> do_install() {
>      install -d ${D}${libdir}/fonts/
>      find ./ -name '*.tt[cf]' -exec install -m 0644 {} ${D}${libdir}/fonts/ \;
>      install -d ${D}${sysconfdir}/fonts/conf.d/
>      install -m 0644 ${WORKDIR}/30-dejavu-aliases.conf ${D}${sysconfdir}/fonts/conf.d/
> }
>
> FILES_${PN}-sans            = "${libdir}/fonts/DejaVuSans.ttf ${libdir}/fonts/DejaVuSans-*.ttf"
> FILES_${PN}-sans-mono       = "${libdir}/fonts/DejaVuSansMono*.ttf"
> FILES_${PN}-sans-condensed  = "${libdir}/fonts/DejaVuSansCondensed*.ttf"
> FILES_${PN}-serif           = "${libdir}/fonts/DejaVuSerif.ttf ${libdir}/fonts/DejaVuSerif-*.ttf"
> FILES_${PN}-serif-condensed = "${libdir}/fonts/DejaVuSerifCondensed*.ttf"
> FILES_${PN}-mathtexgyre     = "${libdir}/fonts/DejaVuMathTeXGyre.ttf"


