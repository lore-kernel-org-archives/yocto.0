Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10AB3E00777; Thu, 17 Jul 2014 05:34:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
X-Greylist: delayed 566 seconds by postgrey-1.32 at yocto-www;
	Thu, 17 Jul 2014 05:34:44 PDT
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5546E006B9
	for <yocto@yoctoproject.org>; Thu, 17 Jul 2014 05:34:44 -0700 (PDT)
Received: from localhost.localdomain (unknown [46.170.72.194])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id D668C114D75B
	for <yocto@yoctoproject.org>; Thu, 17 Jul 2014 14:25:16 +0200 (CEST)
Message-ID: <1405599916.4781.2.camel@localhost.localdomain>
From: Maciek Borzecki <maciej.borzecki@open-rnd.pl>
To: yocto@yoctoproject.org
Date: Thu, 17 Jul 2014 14:25:16 +0200
Organization: Open-RnD sp. z o.o.
X-Mailer: Evolution 3.12.3 (3.12.3-1.fc20) 
Mime-Version: 1.0
Subject: wic status
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
X-List-Received-Date: Thu, 17 Jul 2014 12:34:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi,

There used to be an entry about wic in development manual back in 1.5.2:
http://www.yoctoproject.org/docs/1.5.2/dev-manual/dev-manual.html

This entry is gone in current documentation and there seems to be no
mention of wic at all:
https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html

Does this mean that wic is deprecated? If so what is the current method
of creating partitioned images?

I'm a bit confused as it seems meta-raspberrypi keeps maitaining
sdcard_image-rpi.bbclass, Freescale has their image_types_fsl.bbclass.
In meta-ti, there was this commit:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/commit/?id=2b524321a25c35c5f987b8331e41b49d3b2e2d2b that effectively removed sdclass_image.bbclass, indicating that wic is the new way.

-- 
Maciej Borzęcki
Senior Software Developer at Open-RnD Sp. z o.o., Poland
www.open-rnd.pl
mobile: +48 889 117 365, fax: +48 42 657 9079

Niniejsza wiadomość wraz z załącznikami może zawierać chronione prawem
lub poufne informacje i została wysłana wyłącznie do wiadomości i
użytku osób, do których została zaadresowana. Jeśli wiadomość została
otrzymana przypadkowo zabrania się jej kopiowania lub rozsyłania do
osób trzecich. W takim przypadku uprasza się o natychmiastowe
zniszczenie wiadomości oraz poinformowanie nadawcy o zaistniałej
sytuacji za pomocą wiadomości zwrotnej. Dziękujemy.

This message, including any attachments hereto, may contain privileged
or confidential information and is sent solely for the attention and
use of the intended addressee(s). If you are not an intended addressee,
you may neither use this message nor copy or deliver it to anyone. In
such case, you should immediately destroy this message and kindly notify
the sender by reply email. Thank you.



