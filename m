Return-Path: <tang@jtang.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F49CE00827; Sat, 10 Jan 2015 07:47:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 497 seconds by postgrey-1.32 at yocto-www;
	Sat, 10 Jan 2015 07:47:08 PST
Received: from highcastle.jtang.org (mail.jtang.org [173.10.136.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8725EE006AF
	for <yocto@yoctoproject.org>; Sat, 10 Jan 2015 07:47:08 -0800 (PST)
Received: from [10.0.0.193] (unknown [10.0.0.193]) (Authenticated sender: tang)
	by highcastle.jtang.org (Postfix) with ESMTPSA id 3E0FEBEE53
	for <yocto@yoctoproject.org>; Sat, 10 Jan 2015 10:38:50 -0500 (EST)
From: "J. Tang" <tang@jtang.org>
Message-Id: <11564A1C-1D09-4BDA-8CCB-3045DF82EFD2@jtang.org>
Date: Sat, 10 Jan 2015 10:38:50 -0500
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
Subject: [meta-raspberrypi] Why not enable hard floating point?
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
X-List-Received-Date: Sat, 10 Jan 2015 15:47:09 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

The upstream meta-raspberrypi recipe builds an arm6 toolchain with only =
soft floating point. As an experiment, I enabled hard floating point by =
setting my DEFAULTTUNE to =93armv6hf=94. My code still ran correctly. Is =
there a reason why the meta-raspberrypi layer does not enable hard =
floating point?

--=20
Jason Tang  /  tang@jtang.org





