Return-Path: <Javier.Viguera@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5C9CE00CC0; Thu, 18 Aug 2016 03:02:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.11 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 392 seconds by postgrey-1.32 at yocto-www;
	Thu, 18 Aug 2016 03:02:26 PDT
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 603A4E00C9A
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2016 03:02:26 -0700 (PDT)
Received: from [216.82.249.147] by server-11.bemta-12.messagelabs.com id
	87/EC-31548-92685B75; Thu, 18 Aug 2016 09:55:53 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrKIsWRWlGSWpSXmKPExsXi5LtOQFejbWu
	4wau/+haTXq5hc2D0aD/RxxbAGMWamZeUX5HAmjFx10H2gnlsFZ/7exkbGNeydjFycggJrGaU
	OPaFrYuRC8hewyixdcdCFghnMaPE620HmECqhAW8JJbd38oCYosIeEp8v7SDDaLbXeLBtGfMI
	DabgJ7E5EtPwGxeAWuJOY0bwGpYBFQlFmy5BrZNVCBcYuXMZywQNYISJ2c+AbM5BTwkLt/4Br
	SLg4NZwF7iwdYykDCzgLzE9rdzmCFWqUgcXHqZEcSWAIpv2nyWHcI2kbh4dTcbhG0o8X3WNxY
	IW1pib99C5gmMwrOQbJuFsGEWkg0LGJlXMWoUpxaVpRbpGpnpJRVlpmeU5CZm5ugaGhrp5aYW
	Fyemp+YkJhXrJefnbmIEBnk9AwPjDsZVjV6HGCU5mJREea34toYL8SXlp1RmJBZnxBeV5qQWH
	2KU4eBQkuC93wKUEyxKTU+tSMvMAcYbTFqCg0dJhJejFSjNW1yQmFucmQ6ROsWoy7Hgx+21TE
	Isefl5qVLivEdAZgiAFGWU5sGNgMX+JUZZKWFeRgYGBiGegtSi3MwSVPlXjOIcjErCvO9BpvB
	k5pXAbXoFdAQT0BG8/FtAjihJREhJNTAmdNpPr9lq/HRJt7+u99qkVwf2e0ftnfH6l++U5/ll
	fo0HHTP3ua2023e1OO9V9etlXutN3m2pNSj0kj0UdMKeX2/C6/NFUelnz/FcZraJ6XiQc+9Tl
	YH8vSPcBjpcvGYeFg+SnmwS6tHTOxQdsMK3XGFPkazDKnvftnnvXXZ9Zvsj/StXfrISS3FGoq
	EWc1FxIgA9ps0y+AIAAA==
X-Env-Sender: Javier.Viguera@digi.com
X-Msg-Ref: server-13.tower-29.messagelabs.com!1471514152!39225543!2
X-Originating-IP: [66.77.174.16]
X-StarScan-Received: 
X-StarScan-Version: 8.84; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 22273 invoked from network); 18 Aug 2016 09:55:52 -0000
Received: from owa.digi.com (HELO MCL-VMS-XCH01.digi.com) (66.77.174.16)
	by server-13.tower-29.messagelabs.com with SMTP;
	18 Aug 2016 09:55:52 -0000
Received: from MTK-SMS-XCH03.digi.com (10.10.8.197) by MCL-VMS-XCH01.digi.com
	(10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.301.0;
	Thu, 18 Aug 2016 04:55:48 -0500
Received: from DOR-SMS-XCH01.digi.com (10.49.8.99) by MTK-SMS-XCH03.digi.com
	(10.10.8.197) with Microsoft SMTP Server (TLS) id 14.3.301.0;
	Thu, 18 Aug 2016 04:55:48 -0500
Received: from [10.101.2.54] (10.101.2.54) by dor-sms-xch01.digi.com
	(10.49.8.99) with Microsoft SMTP Server (TLS) id 14.3.279.2;
	Thu, 18 Aug 2016 11:55:45 +0200
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
	<yocto@yoctoproject.org>
References: <alpine.LFD.2.20.1608171352080.10401@localhost.localdomain>
From: Javier Viguera <javier.viguera@digi.com>
Message-ID: <381459ca-8db6-8553-4d07-923537c8058b@digi.com>
Date: Thu, 18 Aug 2016 11:55:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.20.1608171352080.10401@localhost.localdomain>
X-Originating-IP: [10.101.2.54]
X-KSE-AntiSpam-Interceptor-Info: protection disabled
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean
Subject: Re: OE/YP on digi connectcore 6, and upcoming linuxcon in toronto
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
X-List-Received-Date: Thu, 18 Aug 2016 10:02:30 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Robert,

Just one comment to simplify your documentation.

In the install documentation page:

http://www.crashcourse.ca/wiki/index.php/CC6_install

you create the installation sdcard manually with an old installation 
u-boot script and new firmware files. You don't need to do so, we 
already provide ZIP files with all the required files included.

For the CC6:
ftp://ftp1.digi.com/support/digiembeddedyocto/2.0/r3/images/82003941_C.zip

For the CC6UL:
ftp://ftp1.digi.com/support/digiembeddedyocto/2.0/r3/images/82004000_1P.zip

So you just need to download those files and unpack then into a VFAT 
formatted SDcard. That's all.

Then plug the card, boot into u-boot's prompt and just run:

=> fatload mmc 1 $loadaddr install_linux_fw_sd.scr
=> source $loadaddr

-- 
Regards,

Javier Viguera

