Return-Path: <prvs=267fba443=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 917DDE0077E; Wed, 16 Jul 2014 04:15:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D39BE0076F
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 04:15:27 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Ap4EAE1exlOsEApK/2dsb2JhbABZhDvLEHWERGcUNE6IWspWF49ohC0FmxuHPpAwgi8
X-IPAS-Result: Ap4EAE1exlOsEApK/2dsb2JhbABZhDvLEHWERGcUNE6IWspWF49ohC0FmxuHPpAwgi8
Date: Wed, 16 Jul 2014 13:15:24 +0200
From: Richard Leitner <richard.leitner@skidata.com>
To: <yocto@yoctoproject.org>
Message-ID: <20140716131524.45912ca6@lxbuild.skidata.net>
Organization: SKIDATA AG
MIME-Version: 1.0
X-Originating-IP: [172.16.60.30]
Subject: missing udev permissions.rules in daisy
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
X-List-Received-Date: Wed, 16 Jul 2014 11:15:29 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

Hi folks,
I've currently ran into following problem when updating my image from 1.4 to 1.6.1:
Most files under /dev (especially tty's and USB devices) have invalid permissions (crw------- 1 root root 4, 65 Jan  1  1970 /dev/ttyS1).

I figured out that the /etc/udev/rules.d/permissions.rules is missing.

In my image udev & udev-extraconf is in the IMAGE_INSTALL.
Is there something else I have to add to let udev set group & mode again?

Thank you!

regards,
richard

