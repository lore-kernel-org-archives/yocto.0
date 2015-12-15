Return-Path: <sazzalin@settopsurvey.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BE16E00B9E; Tue, 15 Dec 2015 09:43:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	T_FROM_12LTRDOM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [95.39.26.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 T_FROM_12LTRDOM From a 12-letter domain
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Tue, 15 Dec 2015 09:43:30 PST
Received: from correo.avancemgrup.es (correo.avancemgrup.es [95.39.26.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD6AFE00546
	for <yocto@yoctoproject.org>; Tue, 15 Dec 2015 09:43:30 -0800 (PST)
Received: from settop-dev (84.124.107.127) by correo.avancemgrup.es
	(192.168.11.11) with Microsoft SMTP Server id 14.2.247.3;
	Tue, 15 Dec 2015 18:42:28 +0100
Message-ID: <1450201373.2067.10.camel@settopsurvey.com>
From: simo <sazzalin@settopsurvey.com>
To: <yocto@yoctoproject.org>
Date: Tue, 15 Dec 2015 18:42:53 +0100
Organization: Al-Top
X-Mailer: Evolution 3.12.9-1+b1 
MIME-Version: 1.0
X-Originating-IP: [84.124.107.127]
Subject: Power off IC over Yocto
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
X-List-Received-Date: Tue, 15 Dec 2015 17:43:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I am using a Gumtix Overo board and we create and expansion board that
power Overo and other devices by external power supply IC.

Our expansion board with power supply are connected by I2C bus 2 in
overo (not the same i2C that TW4030 or tps6595 is connected).

Using the Linux  command shutdown we would like to power off the hole
system.
We would like to close the linux and last thing send a command over I2C
to our power supply IC in order it disconnect the physical power.

Our question is:

Where we have to implement that function?
Is there any example of it?


