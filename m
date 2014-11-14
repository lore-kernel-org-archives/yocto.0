Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC97AE008EC; Fri, 14 Nov 2014 06:45:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [83.145.59.143 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from STOEXHUB02.domain01.net (STOEXHUB02.domain01.net
	[83.145.59.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37064E00876
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 06:45:04 -0800 (PST)
Received: from ad.chargestorm.se (81.232.163.241) by stoexhub02.domain01.net
	(10.12.10.2) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Fri, 14 Nov 2014 15:44:59 +0100
Date: Fri, 14 Nov 2014 15:44:24 +0100
From: Anders Darander <anders@chargestorm.se>
To: Bryan Evenson <bevenson@melinkcorp.com>
Message-ID: <20141114144424.GF13784@ad.chargestorm.se>
Mail-Followup-To: Bryan Evenson <bevenson@melinkcorp.com>,
	"peterengcomau001@adam.com.au" <peterengcomau001@adam.com.au>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <e28ab8baec5c4d3aa9b4adb87c4c9bff@BLUPR05MB037.namprd05.prod.outlook.com>
	<aab5394606c7e87db4c1c28307cccd252e1a103c@webmail.adam.com.au>
	<885d21953fc445daa4fdafc4ce3bad04@BLUPR05MB037.namprd05.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <885d21953fc445daa4fdafc4ce3bad04@BLUPR05MB037.namprd05.prod.outlook.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
X-GFI-SMTP-Submission: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"peterengcomau001@adam.com.au" <peterengcomau001@adam.com.au>
Subject: Re: recipe fails to load local files
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
X-List-Received-Date: Fri, 14 Nov 2014 14:45:09 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

Just a few nitpick's...

* Bryan Evenson <bevenson@melinkcorp.com> [141114 15:21]:

> > LICENSE = "CLOSED"
> > FILES_${PN} += "~/poky/meta-atmel-lsp/recipes-lsp/zd1211-
> > firmware/zd1211-firmware"

> FILES doesn't specify where to find the files on the build machine, it
> specifies where the installed files exist on the target filesystem.
> This is what the error you are seeing is telling you; the files were
> installed in the do_install step but they did not get placed in the
> final package.  In your case I believe:

> FILES_${PN} += "${libdir}/zd1211_*"

FILES_${PN} += "/lib/firmware/zd1211"

> would work.

> > SRC_URI = "\
> >   file://zd1211_ub \
> >   file://zd1211_uph \
> >   file://zd1211_uphm \
> >   file://zd1211_uphr \
> >   file://zd1211_ur \
> > "

> > do_install() {
> >         install -d ${D}/lib/firmware/zd1211
> >     install -m 0555 ${WORKDIR}/zd1211_*    ${D}/lib/firmware/zd1211/
> > }

> As mentioned in the FILES variable description in the Yocto manual,
> you should use the standard path variables whenever possible.  The
> list of available path variables are near the top of
> meta/conf/bitbake.conf.  That means in your case the following would
> be better:

Well, in general that's true. Though, in this specific case, it should
actually be a hardcoded /lib/firmware. ${libdir} could be lib64 or
something else, especially in a multilib-build. However, the firmware
files are always searched for in /lib/firmware.

Cheers,
Anders

>  do_install() {
>          install -d ${D}/${libdir}/firmware/zd1211
>      install -m 0555 ${WORKDIR}/zd1211_*    ${D}/${libdir}/firmware/zd1211/

-- 
Anders Darander
ChargeStorm AB / eStorm AB

