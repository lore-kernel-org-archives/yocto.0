Return-Path: <John_Mehaffey@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 998DDE014D5
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2013 11:19:22 -0700 (PDT)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1UQiZF-0002Ma-CY from John_Mehaffey@mentor.com ;
	Fri, 12 Apr 2013 11:19:21 -0700
Received: from SVR-ORW-FEM-03.mgc.mentorg.com ([147.34.97.39]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Fri, 12 Apr 2013 11:19:21 -0700
Received: from NA-MBX-03.mgc.mentorg.com ([fe80::9a:1569:df57:45b8]) by
	SVR-ORW-FEM-03.mgc.mentorg.com ([147.34.97.39]) with mapi id
	14.01.0289.001; Fri, 12 Apr 2013 11:19:20 -0700
From: "Mehaffey, John" <John_Mehaffey@mentor.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] An embarrassment of TTYs
Thread-Index: Ac43pynxjXqvFFzoROaGbmMZECo3HwAArbqX
Date: Fri, 12 Apr 2013 18:19:19 +0000
Message-ID: <371E240E6FC1D44DA5E51EE9DCDCB7845E3984B7@NA-MBX-03.mgc.mentorg.com>
References: <E3353710E3C2464080E5D3276734EE98@PAULD>
In-Reply-To: <E3353710E3C2464080E5D3276734EE98@PAULD>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.34.91.1]
MIME-Version: 1.0
X-OriginalArrivalTime: 12 Apr 2013 18:19:21.0038 (UTC)
	FILETIME=[40BC66E0:01CE37AA]
Subject: Re: An embarrassment of TTYs
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
X-List-Received-Date: Fri, 12 Apr 2013 18:19:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul,=0A=
Look for CONFIG_LEGACY_PTY* in your config and tune those values.=0A=
=0A=
You can ssh without any legacy PTYs.=0A=
=0A=
Sincerely,=0A=
John Mehaffey=0A=
Senior System Architect (Automotive)=0A=
Mentor Graphics Corporation=0A=
=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on be=
half of Paul D. DeRocco [pderocco@ix.netcom.com]=0A=
Sent: Friday, April 12, 2013 10:57 AM=0A=
To: yocto@yoctoproject.org=0A=
Subject: [yocto] An embarrassment of TTYs=0A=
=0A=
My core-image-base build seems to have blessed me with 256 pseudoterminal=
=0A=
devices and 325 TTY devices. I really don't deserve this generosity. Is thi=
s=0A=
normal, or am I just a lucky guy? More to the point, where do I donate the=
=0A=
excess back, so I can live with a more modest number of these devices? I'd=
=0A=
like to be able to do "ls /dev/*" without having my recent activity=0A=
disappear off the top of my terminal window scrollback.=0A=
=0A=
--=0A=
=0A=
Ciao,               Paul D. DeRocco=0A=
Paul                mailto:pderocco@ix.netcom.com=0A=
=0A=
=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

