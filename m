Return-Path: <tech@domaigne.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36622E00D01; Sat,  9 Mar 2019 14:21:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [80.237.132.122 listed in list.dnswl.org]
X-Greylist: delayed 1057 seconds by postgrey-1.32 at yocto-www;
	Sat, 09 Mar 2019 14:21:35 PST
Received: from wp115.webpack.hosteurope.de (wp115.webpack.hosteurope.de
	[80.237.132.122])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F01ACE00BE8
	for <yocto@yoctoproject.org>; Sat,  9 Mar 2019 14:21:35 -0800 (PST)
Received: from app15-neu.ox.hosteurope.de ([92.51.170.149]); authenticated
	by wp115.webpack.hosteurope.de running ExIM with esmtpsa
	(TLS1.0:ECDHE_RSA_AES_256_CBC_SHA1:256)
	id 1h2k4T-000115-Lp; Sat, 09 Mar 2019 23:03:57 +0100
Date: Sat, 9 Mar 2019 23:03:57 +0100 (CET)
From: =?UTF-8?Q?Lo=C3=AFc_Domaign=C3=A9?= <tech@domaigne.com>
To: yocto@yoctoproject.org
Message-ID: <1169673466.135386.1552169037609@ox.hosteurope.de>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev51
X-Originating-Client: open-xchange-appsuite
X-bounce-key: webpack.hosteurope.de;tech@domaigne.com;1552170096;91f12592;
X-HE-SMSGID: 1h2k4T-000115-Lp
Subject: What is the motivation behind the "??=" weak default value operator?
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
X-List-Received-Date: Sat, 09 Mar 2019 22:21:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Salut, 

I have a question regarding the usage of the weak default value operator ??= 
I do understand the rules associated with this operator, in particular wrt. to the other assignment operators = and ?= 

Could someone shed some lights on why "??=" was introduced in the first place? I couldn't find the relevant thread on the yocto MLs :(

Modulo my little understanding of Yocto, I have worked out a scenario where "??=" would make sense... But not sure if a) this understanding is correct, and b) if it was indeed (one of) the motivation for "??=". I prefer getting "first (developer) hand info" whenever possible :)

possible explanation for "??=":
AFAIK, bitbake will parse configuration files in a certain order, starting from bblayers.conf, then going to the corresponding layer.conf, then bitbake.conf, then the conf/{site,auto,local}.conf etc. If a default value for -- say FOO -- is set using the ?= operator in one of the config file parsed before by bitbake, then there is no way to redefine/customize that default value later on (by the way ?= works). We could set it (using standard = operator), but that might be too strong (for the cases where we want to have another default value if not set). This is where the ??= operator could be very handy. 

Am I on the right track or is it just a nice story? Any pointers (ML thread, source code, explanation) about the motivation behind "??=" operator is greatly appreciated. TIA!

Cheers!
ljd, 0x5f375a86

