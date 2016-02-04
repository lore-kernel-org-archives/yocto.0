Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3D2EE00C8F; Wed,  3 Feb 2016 23:51:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 855AAE00C88
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 23:51:12 -0800 (PST)
Received: from comp-006-thk (unknown [31.182.60.238])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 997421A6C6B;
	Thu,  4 Feb 2016 08:51:09 +0100 (CET)
Message-ID: <1454572269.4101.4.camel@open-rnd.pl>
From: Maciek Borzecki <maciej.borzecki@open-rnd.pl>
To: shubham.kumar4@wipro.com, raj.khem@gmail.com
Date: Thu, 04 Feb 2016 08:51:09 +0100
In-Reply-To: <SIXPR03MB06723015AFA054223A0F4226D4D10@SIXPR03MB0672.apcprd03.prod.outlook.com>
References: <SIXPR03MB0672F01139FBB3CB521AAB45D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
	<SIXPR03MB06727E3A2C2ACCB4528A26A9D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
	<1454510985.3990.8.camel@open-rnd.pl>
	<SIXPR03MB067233AA7F87CE945DD71D63D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
	<1036585921.17607.1454520572537.JavaMail.open-xchange@ox13.netart.com.pl>
	<SIXPR03MB06725C3D253D8E985C10B753D4D10@SIXPR03MB0672.apcprd03.prod.outlook.com>
	,<CAMKF1so_i2iZJxv2fdV58XtYnDVODCzi8d1nFEEKqm=Z1wH4vA@mail.gmail.com>
	<SIXPR03MB06723015AFA054223A0F4226D4D10@SIXPR03MB0672.apcprd03.prod.outlook.com>
Organization: Open-RnD sp. z o.o.
X-Mailer: Evolution 3.18.4 (3.18.4-1.fc23) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-intel]:Quark not accepting "root" username at login prompt
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: maciej.borzecki@open-rnd.pl
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Feb 2016 07:51:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On czw, 2016-02-04 at 07:31 +0000, shubham.kumar4@wipro.com wrote:
> Hi Khem,
> 
> Thanks for your quick response.
> 
> That entry is already there in "<build>/conf/local.conf " file as follows:-
> 
> # We default to enabling the debugging tweaks.
> EXTRA_IMAGE_FEATURES = "debug-tweaks"
> 
> In addition to the above, I have also added "tools-sdk" and "tools-debug" as follows in
> the same file :-
> 
> #Other packages
> EXTRA_IMAGE_FEATURES = "tools-sdk"
> EXTRA_IMAGE_FEATURES = "tools-debug"
> 
> Is there anything else I'm missing?
> 

Wild guess, but can you double check that, inside the rootfs, etc/securetty contains the
name of the device that you are attempting to log in on? For instance, on rspi the port is
named /dev/ttyAMA0, then etc/securetty will contain ttyAMA0.


-- 
Maciej Borzęcki
Open-RnD Sp. z o.o., Poland
www.open-rnd.pl



