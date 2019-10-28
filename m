Return-Path: <robert.joslyn@redrectangle.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5CB2E00D8F; Mon, 28 Oct 2019 09:53:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [217.70.178.242 listed in list.dnswl.org]
X-Greylist: delayed 1586 seconds by postgrey-1.32 at yocto-www;
	Mon, 28 Oct 2019 09:53:49 PDT
Received: from mslow2.mail.gandi.net (mslow2.mail.gandi.net [217.70.178.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0A7AE00D35
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2019 09:53:49 -0700 (PDT)
Received: from relay4-d.mail.gandi.net (unknown [217.70.183.196])
	by mslow2.mail.gandi.net (Postfix) with ESMTP id 774D33A4FA0
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2019 16:25:36 +0000 (UTC)
Received: from sogo3.sd4.0x35.net (sogo3.sd4.0x35.net [10.200.201.53])
	(Authenticated sender: robert.joslyn@redrectangle.org)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPA id 1EA50E0014
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2019 16:25:34 +0000 (UTC)
To: yocto@yoctoproject.org
User-Agent: SOGoMail 4.0.8
MIME-Version: 1.0
Date: Mon, 28 Oct 2019 17:25:34 +0100
Message-ID: <5ed5-5db71680-7f-1be36200@40858189>
X-Forward: 127.0.0.1
From: =?utf-8?q?robert=2Ejoslyn=40redrectangle=2Eorg?=
	<robert.joslyn@redrectangle.org>
Subject: systemd Version Going Backwards on Warrior
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
X-List-Received-Date: Mon, 28 Oct 2019 16:53:50 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm using buildhistory in one of my builds that creates a package feed,=
 and a recent update to systemd on warrior triggered version-going-back=
wards errors:

ERROR: systemd-conf-241+AUTOINC+511646b8ac-r0 do=5Fpackagedata: QA Issu=
e: Package version for package systemd-conf-src went backwards which wo=
uld break package feeds from (0:241+0+c1f8ff8d0d-r0 to 0:241+0+511646b8=
ac-r0) [version-going-backwards]

Should PE have been updated at the same time due to the hash making the=
 version number go backwards? I can send a patch if that's all that's m=
issing. Or is a PR server enough to prevent this? My debug builds do no=
t use a PR server, but my production builds do use a PR server.

Thanks,
Robert


