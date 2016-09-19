Return-Path: <ch@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4725FE00D98; Mon, 19 Sep 2016 02:14:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA59DE00997
	for <yocto@yoctoproject.org>; Mon, 19 Sep 2016 02:14:10 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3sd0Z90mLvz3hjW1;
	Mon, 19 Sep 2016 11:14:08 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3sd0Z84vHpzvkVW;
	Mon, 19 Sep 2016 11:14:08 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id jpN01ppgBkCk; Mon, 19 Sep 2016 11:14:04 +0200 (CEST)
X-Auth-Info: HQXMdMHr6Qpc6rAS6LGL+DYtT2c4ys02Y1uIj0UCccY=
Received: from Orrorin.localdomain (p57B1CBCD.dip0.t-ipconnect.de
	[87.177.203.205])
	(using TLSv1 with cipher DHE-RSA-CAMELLIA256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Mon, 19 Sep 2016 11:14:04 +0200 (CEST)
Message-ID: <1474276443.32095.103.camel@denx.de>
From: Claudius Heine <ch@denx.de>
To: yocto@yoctoproject.org, California Sullivan
	<california.l.sullivan@intel.com>, Saul Wold <sgw@linux.intel.com>
Date: Mon, 19 Sep 2016 11:14:03 +0200
In-Reply-To: <1474009943.32095.52.camel@denx.de>
References: <1474009943.32095.52.camel@denx.de>
X-Mailer: Evolution 3.20.5 
Mime-Version: 1.0
Cc: Jan Kiszka <jan.kiszka@siemens.com>
Subject: Re: [meta-intel][Galileo] Kernel configuration isn't applied on linux-yocto-rt
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
X-List-Received-Date: Mon, 19 Sep 2016 09:14:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi,

in order to isolate this issue I removed every layer with the exception
of poky and compiled linux-yocto-rt for "qemux86" with success.
(CONFIG_64BIT was set to n)

Then I added the meta-intel layer and compiled the real time kernel for
"intel-core2-32" also with success. (CONFIG_64BIT=n)

However choosing "intel-quark" resulted in the aforementioned error.
(CONFIG_64BIT=y)

So I suppose its a meta-intel upstream bug.

My Layers:

poky: "krogoth:aad7166704021d82ad3a5ec468552f8f10360d41"
meta-intel: 141e71af3c59f9bd5d45029a418de2e1ce90aacd
  with reverted: 7d00922e1cd3caabb8046e68a6107b9f4f3f1d34
  because this poky version only supports gummiboot not systemd-boot

regards,
Claudius


-- 
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-54 Fax: (+49)-8142-66989-80 Email: ch@denx.de

