Return-Path: <riccardo.casagrande@multiconn.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D00F3E00EB8; Thu,  5 Jul 2018 08:12:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,INVALID_DATE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.1 INVALID_DATE Invalid Date: header (not RFC 2822)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [176.56.128.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Thu, 05 Jul 2018 08:12:45 PDT
Received: from mail.mmit.com.mt (mail.mmit.com.mt [176.56.128.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FD31E00B3F
	for <yocto@yoctoproject.org>; Thu,  5 Jul 2018 08:12:45 -0700 (PDT)
Received: from multiconn.it [10.101.1.251] ([127.0.0.1])
	by mail.mmit.com.mt (MM IT Mail Server v3.0) with ASMTP id VWM11814
	for <yocto@yoctoproject.org>; Thu, 05 Jul 2018 17:07:14 +0200
Date: Thu, 05 Jul 2018 08:03:01 -0700
To: yocto@yoctoproject.org
From: Riccardo Casagrande <riccardo.casagrande@multiconn.it>
Message-ID: <362c8e90951aaa3477aca5dbb7e02a0f@multiconn.it>
X-Mailer: IceWarp Mailer 10.2.2
X-Priority: 3
MIME-Version: 1.0
Subject: IMX6Q add new sound simple sound card
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
X-List-Received-Date: Thu, 05 Jul 2018 15:12:48 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8


Hello all,
=C2=A0
I'm new to Linux/Yocto world. I'm working on iMX6Q and I need to add a new =
sound card and recognized from alsamixer.
I spent days on internet looking for examples and tutorials but at the =
moment alsa never see my sound card.
This is one of the tutorials I followed https://elixir.bootlin.com/linux/v=
4.5/source/Documentation/devicetree/bindings/sound/simple-card.txt


What I've done?
- Activated support for generic sound board on menuconfig
- Added new "sound" node in device tree file with minimal =
properties/subnotes
- Compiled the kernel
- Compiled and flashed the image


but alsamixer still doesn't recognize my sound card, what am I missing?


Thanks.




