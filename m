Return-Path: <Jonathan.Haws@sdl.usu.edu>
Received: from echo.usurf.usu.edu (echo.usurf.usu.edu [129.123.194.129])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8B8DE011F3
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2012 09:00:05 -0700 (PDT)
Received: from wef.usurf.usu.edu (129.123.194.164) by echo.usurf.usu.edu
	(129.123.194.129) with Microsoft SMTP Server id 14.2.318.4;
	Tue, 16 Oct 2012 10:00:03 -0600
Received: from Mercury.usurf.usu.edu ([172.31.35.10]) by wef.usurf.usu.edu
	with Microsoft SMTPSVC(6.0.3790.4675); Tue, 16 Oct 2012 09:59:59 -0600
Received: from MERCURY.usurf.usu.edu ([172.31.35.10]) by Mercury.usurf.usu.edu
	([172.31.35.10]) with mapi id 14.02.0318.004;
	Tue, 16 Oct 2012 10:00:01 -0600
From: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: lm-sensors not available as a package?
Thread-Index: Ac2rt0xY915XsixcRCmSxVny1UBT2g==
Date: Tue, 16 Oct 2012 16:00:01 +0000
Message-ID: <DDDB9E6645DE24488B8485B41A051F471D9618A1@Mercury.usurf.usu.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.31.22.105]
MIME-Version: 1.0
X-OriginalArrivalTime: 16 Oct 2012 15:59:59.0756 (UTC)
	FILETIME=[4B7E84C0:01CDABB7]
Subject: lm-sensors not available as a package?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 16 Oct 2012 16:00:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I would be surprised if a recipe for lm-sensors has not already been create=
d, however I cannot find one.  Can someone point me in the right direction?=
=0A=
=0A=
All I can find is a sysstat package that I can include via IMAGE_INSTALL_ap=
pend, however I cannot see how I can get the same information out of it tha=
t lm-sensors gives me.=0A=
=0A=
Has anyone got lm-sensors included in their image?  If so, can you share th=
e recipe?=0A=
=0A=
Thanks!=0A=
Jonathan=0A=
=0A=

