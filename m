Return-Path: <uol@pengutronix.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71A7FE00C93; Thu,  6 Dec 2018 00:37:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [85.220.165.71 listed in list.dnswl.org]
X-Greylist: delayed 947 seconds by postgrey-1.32 at yocto-www;
	Thu, 06 Dec 2018 00:37:28 PST
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
	[85.220.165.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27983E00C91
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2018 00:37:28 -0800 (PST)
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
	by metis.ext.pengutronix.de with esmtps
	(TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
	(envelope-from <uol@pengutronix.de>)
	id 1gUoui-0000g0-Hb; Thu, 06 Dec 2018 09:21:40 +0100
Received: from uol by dude.hi.pengutronix.de with local (Exim 4.91)
	(envelope-from <uol@pengutronix.de>)
	id 1gUoug-00019b-3a; Thu, 06 Dec 2018 09:21:38 +0100
References: <aba073ef-c202-92d7-4945-7928988ac65b@faresoftware.it>
	<f04024b0-8bc0-db7d-7892-f95f487e2d8d@windriver.com>
User-agent: mu4e 1.1.0; emacs 25.2.2
From: Ulrich =?utf-8?Q?=C3=96lmann?= <u.oelmann@pengutronix.de>
To: yocto@yoctoproject.org
In-reply-to: <f04024b0-8bc0-db7d-7892-f95f487e2d8d@windriver.com>
Date: Thu, 06 Dec 2018 09:21:38 +0100
Message-ID: <6rbm5z6p65.fsf@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: uol@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
	SAEximRunCond expanded to false
X-PTX-Original-Recipient: yocto@yoctoproject.org
Subject: Re: connmand+dbus. Which alternatives?
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
X-List-Received-Date: Thu, 06 Dec 2018 08:37:29 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On Thu, Dec 06 2018 at 07:13 +0000, ChenQi <Qi.Chen@windriver.com> wrote:
> wifi connection could be managed by wpa-supplicant.

Alternatively there is iwd (see [1]) which is heading towards version
1.0 in the coming weeks and is already supported by connman.

> Best Regards,
> Chen Qi
>
> On 12/06/2018 02:50 PM, Mauro Ziliani wrote:
>> Hi all.
>>
>> I'm working on a imx6dl sabresd project with an usb wifi dongle (edimax
>> EW7811un)
>>
>> My app uses Connman by DBus to manage ethernet and wifi connections.
>>
>> Normally the sytstem works well. Sometimes, randomly, the system freeze
>> or the app crashes.
>>
>> I made many test and this happens when the system is connected to a SSID.
>>
>> So I suspect that the problem is in connamd_1.31+dbus_1.10.6
>>
>>
>> I'm using Yocto fsl 4.1.5-2.0.1 qith Qt5 5.6.2
>>
>>
>> Can you suggest me an alternative to connmand?

Take a look at NetworkManager as a possible replacement of connman (see
[2]) - it also supports iwd. If NetworkManager and its dependencies is
too big for your project, perhaps managing the ethernet connections via
systemd-networkd and the wifi connections directly via iwd could be an
option (but needs more handwork).

Best regards
Ulrich


[1] https://layers.openembedded.org/layerindex/recipe/89268/
[2] https://layers.openembedded.org/layerindex/recipe/72479/

>>
>> Best regards,
>>
>>    MZ
>>


--
Pengutronix e.K.                           | Ulrich Ölmann               |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

