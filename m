Return-Path: <michel.dhooge@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 449DEE00E37; Thu, 13 Oct 2016 09:12:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.27.42.1 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (michel.dhooge[at]free.fr)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp1-g21.free.fr (smtp1-g21.free.fr [212.27.42.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01395E00E21
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 09:12:39 -0700 (PDT)
Received: from spooler3-g27.priv.proxad.net (unknown [172.20.243.239])
	by smtp1-g21.free.fr (Postfix) with ESMTP id D2085B00587;
	Thu, 13 Oct 2016 18:12:38 +0200 (CEST)
Date: Thu, 13 Oct 2016 18:12:38 +0200 (CEST)
From: Michel D'HOOGE <michel.dhooge@free.fr>
To: Yocto list discussion <yocto@yoctoproject.org>
Message-ID: <704582196.126855085.1476375158471.JavaMail.root@spooler3-g27.priv.proxad.net>
In-Reply-To: <op.yo9316c3mnlnty@pc-mls.ecafaros.local>
MIME-Version: 1.0
X-Originating-IP: [82.233.24.66]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - GC53 (Linux)/7.2.0-GA2598)
X-Authenticated-User: michel.dhooge@free.fr
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
X-List-Received-Date: Thu, 13 Oct 2016 16:12:46 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

After solving all the QA issues, this bbappend creates RPM packages with fonts in the expected folder. I didn't try to generate an image but I'm quite confident about the result.
Michel


do_install() {
    install -d ${D}${libdir}/fonts/
    find ./ -name '*.tt[cf]' -exec install -m 0644 {} ${D}${libdir}/fonts/ \;
    install -d ${D}${sysconfdir}/fonts/conf.d/
    install -m 0644 ${WORKDIR}/30-dejavu-aliases.conf ${D}${sysconfdir}/fonts/conf.d/
}

FILES_${PN}-sans            = "${libdir}/fonts/DejaVuSans.ttf ${libdir}/fonts/DejaVuSans-*.ttf"
FILES_${PN}-sans-mono       = "${libdir}/fonts/DejaVuSansMono*.ttf"
FILES_${PN}-sans-condensed  = "${libdir}/fonts/DejaVuSansCondensed*.ttf"
FILES_${PN}-serif           = "${libdir}/fonts/DejaVuSerif.ttf ${libdir}/fonts/DejaVuSerif-*.ttf"
FILES_${PN}-serif-condensed = "${libdir}/fonts/DejaVuSerifCondensed*.ttf"
FILES_${PN}-mathtexgyre     = "${libdir}/fonts/DejaVuMathTeXGyre.ttf"

