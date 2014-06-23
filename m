Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DED22E00547; Mon, 23 Jun 2014 05:27:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [83.145.59.141 listed in list.dnswl.org]
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Mon, 23 Jun 2014 05:27:32 PDT
Received: from stoexhubfe02.domain01.net (STOEXHUBFE02.domain01.net
	[83.145.59.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94AB1E00283
	for <yocto@yoctoproject.org>; Mon, 23 Jun 2014 05:27:32 -0700 (PDT)
Received: from ad.chargestorm.se (213.114.64.43) by stoexhubfe02.domain01.net
	(10.12.10.7) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Mon, 23 Jun 2014 14:26:26 +0200
Date: Mon, 23 Jun 2014 14:26:12 +0200
From: Anders Darander <anders@chargestorm.se>
To: "Francois P. Gallichand" <francois.p.gallichand@ca.abb.com>
Message-ID: <20140623122612.GB16414@ad.chargestorm.se>
Mail-Followup-To: "Francois P. Gallichand" <francois.p.gallichand@ca.abb.com>, 
	Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <d57f9ee937d1459388fbd840265567ea@AM3PR06MB195.eurprd06.prod.outlook.com>
	<da5185e814af4fd8830f3de7896e453d@AM3PR06MB195.eurprd06.prod.outlook.com>
	<4294568.gQz8zEimiU@peggleto-mobl5.ger.corp.intel.com>
	<2ea31a38a69545438c772962d47c792d@AM3PR06MB195.eurprd06.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <2ea31a38a69545438c772962d47c792d@AM3PR06MB195.eurprd06.prod.outlook.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
X-GFI-SMTP-Submission: 1
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding files to the hddimg
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
X-List-Received-Date: Mon, 23 Jun 2014 12:27:34 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

* Francois P. Gallichand <francois.p.gallichand@ca.abb.com> [140618 19:22]:

> Thanks for the reply. But that's not really what I want to achieve.
> Really, I just want to copy some files into the .hddimg file that is
> built as a result of running bitbake. Like I said, I tried to extend
> the bootimg.bbclass, which is responsible for creating the .hddimg
> file, but it's not working and I don't know why.

Well, then I guess the question if what kinds of file is it, and how do
you want to copy them into the .hddimg?

Should they be copied into the rootfs in the .hddimg? If so, I'd suggest
to create a standard bitbake recipe and just install those files into
the rootfs. 

If it's something else, I think you need to explain it a little bit
more. 

Cheers,
Anders

> Any suggestions?
-- 
Anders Darander
ChargeStorm AB / eStorm AB

