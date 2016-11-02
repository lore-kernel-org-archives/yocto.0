Return-Path: <Thomas.Thorne@net2edge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EAA0E00B9E; Wed,  2 Nov 2016 20:48:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_10_20, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.118 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.1 HTML_OBFUSCATE_10_20 BODY: Message is 10% to 20% HTML obfuscation
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 36112 seconds by postgrey-1.32 at yocto-www;
	Wed, 02 Nov 2016 20:48:17 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0118.outbound.protection.outlook.com [104.47.2.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C7B1E00A08
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 20:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=transitionnetworks.onmicrosoft.com; s=selector1-net2edge-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=bg/2LzdwAjSsurQiKW0jTyQAiqm0gr2GyjWzewwk5Ak=;
	b=AHJNarHSURxpDrbPHLFpZ1/iqyH/X7gjn9VxFHJfrn3rw1bN5zww26Bjql7yfU0P2YU0TqlmMD6jJacWgZTUGeTIpNpDayfBlGfFd98Vkb4dh1KczRUq7GlgoQqXr3TLbE4Qxc+38+jots4IK4D4MZKbnwGz06ikl8t3zyP4/mU=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=Thomas.Thorne@net2edge.com; 
Received: from [172.16.20.67] (81.128.174.58) by
	DB6PR0701MB1880.eurprd07.prod.outlook.com (10.168.10.152) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.707.1; Wed, 2 Nov 2016 13:10:43 +0000
From: "Thomas A. F. Thorne MEng AUS MIET" <Thomas.Thorne@Net2Edge.com>
Organization: Net2Edge Limited
To: <yocto@yoctoproject.org>
Message-ID: <150d439e-c90f-9252-ab12-6ba0ac99668c@Net2Edge.com>
Date: Wed, 2 Nov 2016 13:10:36 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
X-Originating-IP: [81.128.174.58]
X-ClientProxiedBy: AM4PR03CA0017.eurprd03.prod.outlook.com (10.165.240.27) To
	DB6PR0701MB1880.eurprd07.prod.outlook.com (10.168.10.152)
X-MS-Office365-Filtering-Correlation-Id: 2ab40c8f-741e-4432-f874-08d40321a6f1
X-Microsoft-Exchange-Diagnostics: 1; DB6PR0701MB1880;
	2:TqO/rgL31X/duiyLJCcTILfrP4cqJaE9/nhZw9EYKjrU7YxW0AkI6szz7MeUgeb4oBI0He2SRGoIldpJoAzDXn6SzBaeMxS9FsGYulhdZ+QlpRa5dbnLZ/b/zJ68uhaUeOO9bdbxlVeQK5Rj05ylxrWaAdRbFGW750bKIRt2vOU7Hvvlv7x0PWExC9k6v8c0OAxcYGCvzfv0hjyPEPCQUQ==;
	3:Cn1eIgKjB8SI6/22hrabl4wZ2t+NLGqGXtI4XbdLelz5jenUd82+jls6uo3lFA7OYk0A4lO+dI8t6lqzpVEEADOaGgvnDbO1S3ka6aFExiefYcOaWXQ20b8NJCAKBtYjHeNiv8rZt/YlXRzvdJo/Yg==
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB6PR0701MB1880;
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; DB6PR0701MB1880;
	25:ruhO7HtgUf6l9kuS7rPG6fyMklR+4zRsc81n/j4?=
	=?us-ascii?Q?zmu28Do2TryTRUlXBVb4IYxFw4BtGGdNZq2JrGCrnlT3pX/xsdYy4VNSR0if?=
	=?us-ascii?Q?/tKRqsX4VmlVN/BRWyNI5m6litF/BE4NJ3efY/djpBaBLU1Roye4uKB2koCD?=
	=?us-ascii?Q?VGy2AlEqMUUHJuUWx3JhvK6BYC+3P75RjDaPtMG72ornfELBTrJX2PCy2u0z?=
	=?us-ascii?Q?miRmvzz7CCeNIV12O0Wd68TWz1xNe36P2+uIxvdljkQZq3O9OwT8HyJttAQV?=
	=?us-ascii?Q?St6hK0Rx33sYozcv9+DWyWitkPCYSmKVEyzzyp1bhRgy6qAS6+x4tOholfZB?=
	=?us-ascii?Q?jd2r/vdkMrc2bxMbSOXNVPu6HS0jaS3jVIDdzfOfhAIySNNdVlc790yQIqu5?=
	=?us-ascii?Q?h/uwF4FiMLuBmvJO3MkKStDAme8yJDEejVysgsFHZj8QXq7fgb7pq2YC90yO?=
	=?us-ascii?Q?rdkx+7YFZw19KQFHoVs+5GLoSsXuO+qYTlrBqW8EE/U7P8gsvr8x+yofXO3a?=
	=?us-ascii?Q?9OyfE3RZCCiU84XqHkB9BgVEuvt3ECzS8O829cnsAs55OPZeGItWuPrVmN2p?=
	=?us-ascii?Q?3M0ChG5A/joyM8TnCCDUrUo0W20L5mUHauf4SFR26SF4lTyZW0sjp2gLKtkl?=
	=?us-ascii?Q?ecOXTamAnkEWJZDhIx+D6j80dtUrYk4X9AsB1hYw5eiKw6nsmoTscpjmthyh?=
	=?us-ascii?Q?DLJCFolSMV7vVEaEEFaUdJ/DZgCICbwWVX0Vmqb1pyau05taMjgnGo6NQGtt?=
	=?us-ascii?Q?BVLMtd8udwpalMfSlYPHP/uP/UMWSsR9AU39cfVev6TpxhZtswrxfOhSWchC?=
	=?us-ascii?Q?Tq0WREdUBxRHk0OtMIr6nSHbMB5jLFKHJXl9pIK9UAYcixrOroRSDzq11191?=
	=?us-ascii?Q?mwOzvRx6NE0MRRar+RaJ5y32zUYgopBETnQMXVvYMQNZF5kFVleyXD26VnXZ?=
	=?us-ascii?Q?ZkkVskTG06n+GaOwQiN76cYSccK707VsIn+SogPurgj7kGgGBgA7wHLRHzK8?=
	=?us-ascii?Q?db6m2n0hOs8qSuJ0ickTM0wSqog8M1A13H2R6S9ITPL5HOp0FiNUdzsycc73?=
	=?us-ascii?Q?3UhKqFY0=3D?=
X-Microsoft-Exchange-Diagnostics: 1; DB6PR0701MB1880;
	31:37lUl+QOjYNTlrrDbnYvQuynZuGD68uuTcO4vlcMOYdQ1n1nVac/m/Q3dxx0sQpSo4AEmtEQ6R9nmXCmQwaY31+gFRTZutapP/L1GX6v8LWcHHnkGkHCHtmDm8RkBSX0Y++p8/RNj7sxZuWoy6cvAQ+SFVuy7GlfILkLM7yUMxd7lcGu/wDdAHK4SsVodSmJA6eT356sD9PTmzXVYM4IjdAH0zY/YFtCKtbEX3plrjMLG5zev6tXBqM+QmnBN4vR;
	4:lC6ddM3Z2zGAWVBf6/8syHLir0x2bXrkCa/fiw129q0KS2ytLwKBjJB3ed3065oliouTQDWCtKZQFw+d5tWaGv5QIm3INONcefbYmuFnxqWZdoPmzsIZUT9dAsu/phTktMD0CYeclqHengKtQN46Fqhs0NwehNIlz3kFSDEwOZLXerr/eWSdfH5hmsqHqK152we+063GKmmLeQKUOqj6996Blr8i3BErtFFIyG4Eg0u5b8vQGUVAZPHdjJlkiCjt5Of/q+hQJfsqRPGe00ej4RubUP3WPVEryJDbTRDv5bsZjW6LshdyveY2qIv6xJ+7HRq4uPBmpuLTlmOunwlnCeVypEQgacY7LyeqJhGjRmHB+3VeV+fSRlyPclY5RSzADk+fApNHSfdNcl+mThlbCgMshnhhTaZcrdeggeQBNq3eCz8fdtXE2ZoX4nZMenr0tNH30hbG7pGq6TD2hy55U55DY1jgIRcJPB1mYYdiADZQnb8C2WweG6suOZEhqZ4kko66n6GPRkmXGvfn01faiQ==
X-Microsoft-Antispam-PRVS: <DB6PR0701MB18803AB98FE846E1FC2A8653D3A00@DB6PR0701MB1880.eurprd07.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(166708455590820)(5213294742642);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6042046)(6043046);
	SRVR:DB6PR0701MB1880; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0701MB1880; 
X-Forefront-PRVS: 0114FF88F6
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6049001)(7916002)(252514010)(57704003)(189002)(199003)(568964002)(4001350100001)(15975445007)(16601075003)(97736004)(81166006)(81156014)(5660300001)(6116002)(1720100001)(189998001)(2906002)(586003)(65826007)(16799955002)(3846002)(19580395003)(19580405001)(450100001)(8676002)(107886002)(7846002)(77096005)(7736002)(7906003)(68736007)(84326002)(36756003)(83506001)(5890100001)(43066003)(575784001)(42186005)(65806001)(19617315012)(33646002)(64126003)(3450700001)(65956001)(66066001)(6666003)(6916009)(31696002)(106356001)(105586002)(31686004)(16236675004)(229853001)(512874002)(2351001)(110136003)(86362001)(53806999)(50986999)(101416001)(54356999)(21480400002)(24704002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0701MB1880; H:[172.16.20.67];
	FPR:; SPF:None; PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
Received-SPF: None (protection.outlook.com: net2edge.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; DB6PR0701MB1880;
	23:LR+9t36KWH0gYgYFJ9KA7RHu5A/6d+LkPyGRnLI?=
	=?us-ascii?Q?HO7mn2MP7Y3a2EYMhUsUVV+sYQbkTJD0FJdLZQUJn06sSxE+jaaE0iMH8OHk?=
	=?us-ascii?Q?WPRxoHxZaB175Bdm/fLlIkyUGeSbxErOWmNVCNI/xJ1BcWBYTcOVKONbZa7W?=
	=?us-ascii?Q?xUFYSeWrLnZFvohAIK7LCO8McLmawqVxI2nJm2vR8Pb/LJsz3Ks9avvuOeCN?=
	=?us-ascii?Q?oTXdP3glxtLiY5bJzuCu3UahZYSEIAfJY0eXlTJvzWm2WwLXo0z/Hocyxhaj?=
	=?us-ascii?Q?9hiPWLrYw348vqdNao40oMayreUBTX/UzBsvkSiP7Gpcx17SPPfZHuVb4sHo?=
	=?us-ascii?Q?okYkRPfxw4Q7XpSHSPcww7jo1HurI5+evBqDknBlNVnFAhIxHdKTuDX8hHPj?=
	=?us-ascii?Q?pnfi6w1U/sBYA/3fOUjUc0Ucr1S2ZMGxawHjjsAGrilREsD8SDfccT75jnS7?=
	=?us-ascii?Q?enlxWyVYnhrU/N15DoMWEBvL+EtPGuq6qtjdjaRvZoJrjqky7P2bEU0wc52K?=
	=?us-ascii?Q?oOj6vdpbaB90axEFkA8xKwOG+EFQL98sXQJ3oPkprZhjQkYkqWb8ow7X6c+h?=
	=?us-ascii?Q?PahqYhkq9hIwvjADsuvfqy9OMOzxFL/gTB8O93mEpcxB4/EmyRweoC6w4qhz?=
	=?us-ascii?Q?oK/xS6YL2Z7blu8/x7JT/Fs0OpABON6XK9ogdUv5D0Sj2CF5iV3+8aJQCj4L?=
	=?us-ascii?Q?mQ7xNo6R/Cos/w7TspRkXZO/BRTnOiVJDsNXE/Su6fCtBEP5zJcqtXdOuQ8+?=
	=?us-ascii?Q?75pAtAqSqYpd9w1JfIcdfiKJtdGfTcYjYu/NAXxVceMdI2ndOP1PA5wMqXJ1?=
	=?us-ascii?Q?IdS1hpaWuzquRL9Tdsw6j9g9vmFeOGCbsgFk/jaa7IPccap40PF+jM+W7SGI?=
	=?us-ascii?Q?trPyrtvgppFWDkNkfrP7EV7k+fg7ytg0vYXhiif5l+bE3iXkbyXlfBRl+5vE?=
	=?us-ascii?Q?Kz6U2nY5ryuxoQse9odGmNm9kwOxyMyUKHCmLgm6ZtKLecuQiPCSbXPZNO4c?=
	=?us-ascii?Q?gZHrF37VsGjFIJ/q/MxCwAKz1CsTT3XuySnJWxiVf6qqG3cKlJeFXtxBzPq3?=
	=?us-ascii?Q?2ye48ba078BqZ5EDzg2xHuHaN5VpFftlmBgY2qv5ydKaFdLKUgjPD03fVrlI?=
	=?us-ascii?Q?HvZDEAbD+vqvrGWW3kNqYXdqo5OMEJIHQ/8guELrN3D8jwMm4HqfKp9r4/1G?=
	=?us-ascii?Q?AA8D51NqlY/lPM1DJpPcMV2mEDSDKMJ1t36fLTTFdVIX1milhNaB3R+IvkVq?=
	=?us-ascii?Q?nZss/qg7iZCc2PTX2CjuUW0Y86Jy4qK1yzOD30ozuYg/L11kIbBjnXXF/tmV?=
	=?us-ascii?Q?OwBrq7NeHo+E9B1jBJvAJK5Lzl4X/LoZaaQIh7UEKk4kn9Kqo9nYA6Lb1fGk?=
	=?us-ascii?Q?5kqyVhfGSd+wmH9m1ffJXAIs0s5IaC+yXsnn3DBUEs5jVQEWAGp+yh+rsSdt?=
	=?us-ascii?Q?DDcXeDoz28T1nMI46ZgPKfXPXAKq2Gf72fkZQsa77/Sh067/AnECQi+HBp/y?=
	=?us-ascii?Q?1BN8Q1BYwSM1ZrTMzrhdcaq7mm1FYHbhraMdqmR47+zd6mmC3NcTD9ZjxRgu?=
	=?us-ascii?Q?EFSlPZZj1yipE5eFfDCyOMrEc462/PN6+4n1tfoWqhV7NaljYnjA6xdgE6G2?=
	=?us-ascii?Q?dzrX2AoAOQ3Kq4LROkZsvzA=3D=3D?=
X-Microsoft-Exchange-Diagnostics: 1; DB6PR0701MB1880;
	6:W40tqRMMashlnFWbUsmaKvI+QRt9SOogmury8yeL7xcMjPcaw2WI/CzV97YeRioCsiws8i8m9cGJwUEmWwhrzsPJlgPQZbQ+H68w3Lq6tU1kh4BHiVGC3g7ZYriAvyjR+kKFiRWlzBmHWXODjJGU5nB+qqbmzS8oA3IxbiFo0niut572uc+dy9YJ9W79jpib4PXxqZHx/JQemLmth0gyxKwpACqV/LupnnNF8id7vnc8PcnORyPfK30eMF1g5vkokGBTqXXKGRKyRZH7sYYd1tMO3P55stHXCUHq74W8oFnsSvzegGiLOoAE+B40iu21odig7yq7VNSQbN4nB4kITg==;
	5:5e4CXbeLDvPYAbjeHKB2Pjc9CCMxPxhNcwHo2yzeuFTdT+49j64wybBfMwcZ0SYI7oF3n/TVXsBQR/nV0rDhf/+8jTCRgwfYM4BxsG5wNMQEm66DtXhRSG4IHkXcLywXE/TEWA3oMa+Kfp3BlTWqFPILLO+kIk0pYc2SEEjKunw=;
	24:7NdTGqHPuLhsIozjrvRwJPgDk35qbM4vMbk2hLPJ5ZyNfYyvki3lS3EBhK4g2NxdNzoJMXn2WoDCEunu84lg/nc8pv7QvqmNBSW5xdwGJAI=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; DB6PR0701MB1880;
	7:qooMMd68F4lvUywt6yPmKkqaqIpbC/JrgkNvEoO5oO0omYbrD/cb9pYDwfQubhGOqFhT2JoGqv6q5OB41bC9BhWBMcs7lCHLxMheR81Jl2qsd4v8bQKYLacKhmSYK1w0VI9bwt3AuYobyRmGzYqWaiVDjl+sB+QjyGrgvolIdX4TlC9DnmgwEtahbbKLgVaD+ZIXnOnaDPCim1Qluu5ocU6Y0hTWgepa1cJ3/I4u23DuXJkhLhGnhhEaX5nSoVZzoDfU5f/ODJbYu5ylV2wNYVR4w8t04ywCiIQWmi65b9dYwRgNbdRdkyYqcnQKkyaykya5c7y1PceOW9HyTrEH7VmOGgJyAIHWKnyKoAEbQGA=
X-OriginatorOrg: net2edge.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2016 13:10:43.4621 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0701MB1880
Subject: How do I used Yocto to build an sdcard image for my Raspberry Pi 3 Model B?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Thomas.Thorne@Net2Edge.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Nov 2016 03:48:24 -0000
X-Groupsio-MsgNum: 32792
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="25pucHr3hTbJTSe4nJf3UAC99TV7PXttm"

--25pucHr3hTbJTSe4nJf3UAC99TV7PXttm
Content-Type: multipart/mixed; boundary="4uaihduXUVDDj75fSgUGClHOxFcFwqCRM"
From: "Thomas A. F. Thorne MEng AUS MIET" <Thomas.Thorne@Net2Edge.com>
Reply-To: Thomas.Thorne@Net2Edge.com
To: yocto@yoctoproject.org
Message-ID: <150d439e-c90f-9252-ab12-6ba0ac99668c@Net2Edge.com>
Subject: How do I used Yocto to build an sdcard image for my Raspberry Pi 3
 Model B?

--4uaihduXUVDDj75fSgUGClHOxFcFwqCRM
Content-Type: multipart/alternative;
 boundary="------------3E2292AAA1FB8A87B727A7E6"

--------------3E2292AAA1FB8A87B727A7E6
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I was starting to look at using Yocto <https://www.yoctoproject.org/> as
a system for building software images for the Raspberry Pi 3 Model B
that I have. I wanted to try using Yocto as there are some projects at
my office that may begin using it in the future. One of the nice points
is that all the setup of cross compilers for your target system is
handled by a Yocto layer. There is already a Yocto layer for the
Raspberry Pi
<http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/>(meta-raspbe=
rrypi
<http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/>) and a
custom meta-rpi <https://github.com/jumpnow/meta-rpi> layer someone has
put together with a few more example images.

I need to either cross-compile kernel modules or use Yocto as I have
special drivers I wish to add to the Pi. These are already compiled and
working on my Ubuntu PC and I hoped using Yocto might make it easy to
cross compile these and any other updates in the future.

My difficulty is that the SD Card image talked about in
the meta-raspberrypi documentation
<http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/about/> and
several tutorials, never gets generated, even on successful builds.


    Tutorials Mentioning The Use Of |dd| & An .sdimg File

  * Build a Raspberry Pi 2 Minimal Image with The Yocto Project
    <http://www.cnx-software.com/2015/02/27/yocto-project-raspberry-pi-2-=
board-minimal-image/>
  * Building Raspberry Pi Systems with Yocto
    <http://www.jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html>
  * 12MB Minimal Image for Raspberry Pi using the Yocto Project
    <http://www.cnx-software.com/2013/07/05/12mb-minimal-image-for-raspbe=
rry-pi-using-the-yocto-project/>
  * Poky Raspberry Pi SD Card Image
    <http://www.crashcourse.ca/wiki/index.php/Poky_Raspberry_Pi_SD_Card_I=
mage>


    Commonly Seen Error

None of the builds I have made so far generate .sdimg files. When I try
to add the |sdcard| or |sdcard_image-rpi| image types to IMAGE_FSTYPES I
get messages such as:

|ERROR:
/home/thomasthorne/work/yocto-rpi/meta-raspberrypi/recipes-core/images/rp=
i-test-image.bb:
No IMAGE_CMD defined for IMAGE_FSTYPES entry 'sdcard_image-rpi' -
possibly invalid type name or missing support class |


    Main Questions

/How do I generate the SD card image for my Pi from Yocto?/

Do I need to format the SD card manually and copy over the contents bit
by bit?

Why do all these tutorials suggest it would be as simple as a
single |dd| command? I guess something changed in the last couple of
years and they are all out of date.


This was also posted at
http://raspberrypi.stackexchange.com/questions/57155/how-do-i-used-yocto-=
to-build-an-sdcard-image-for-my-raspberry-pi-3-model-b
before I realised it is probably more of a Yocto question than a
Raspberry Pi one.=20

I will be very grateful of any help or advice you can offer.  Even an
explanation of when the generation of SD card images was dropped from
the Yocto Project would be very helpful.=20

Regards,

--=20
Thomas A. F. Thorne MEng. AUS MIET
*Software Engineer*

*NET2EDGE*

Tel: +44 3450 130 030 <tel:+443450130030>
Email: Thomas.Thorne@Net2Edge.com <mailto:Thomas.Thorne@Net2Edge.com>
Web: http://www.Net2Edge.com/ <http://www.Net2Edge.com>

Net2Edge Limited is a company registered in England & Wales (Company No.
2438435, VAT No. GB 537553821) Passfield Oak, Liphook, Hampshire, GU30
7RL. This email transmission is confidential and intended solely for the
person or organisation to whom it is addressed. If you are not the
intended recipient, you must not copy, distribute or disseminate the
information, or take any action in reliance of it. Any views expressed
in this message are those of the individual sender, except where the
sender specifically states them to be the views of any organisation or
employer. If you have received this message in error, do not open any
attachment but please notify the sender (above) and delete this message
from your system. Please rely on your own virus check. Although all
outbound mail is checked for viruses, no responsibility is taken by the
sender for any damage rising out of any bug or virus infection.


--------------3E2292AAA1FB8A87B727A7E6
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3Du=
tf-8">
    </p>
    <p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; font-size=
:
      15px; clear: both; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">I was starting to look at using<span
        class=3D"Apple-converted-space">=C2=A0</span><a
        href=3D"https://www.yoctoproject.org/" rel=3D"nofollow noreferrer=
"
        style=3D"margin: 0px; padding: 0px; border: 0px; font-size: 15px;=

        color: rgb(111, 171, 169); text-decoration: none; cursor:
        pointer;">Yocto</a><span class=3D"Apple-converted-space">=C2=A0</=
span>as
      a system for building software images for the Raspberry Pi 3 Model
      B that I have. I wanted to try using Yocto as there are some
      projects at my office that may begin using it in the future. One
      of the nice points is that all the setup of cross compilers for
      your target system is handled by a Yocto layer. There is already a<=
span
        class=3D"Apple-converted-space">=C2=A0</span><a
        href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberryp=
i/"
        rel=3D"nofollow noreferrer" style=3D"margin: 0px; padding: 0px;
        border: 0px; font-size: 15px; color: rgb(111, 171, 169);
        text-decoration: none; cursor: pointer;">Yocto layer for the
        Raspberry Pi</a>(<a
        href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberryp=
i/"
        rel=3D"nofollow noreferrer" style=3D"margin: 0px; padding: 0px;
        border: 0px; font-size: 15px; color: rgb(111, 171, 169);
        text-decoration: none; cursor: pointer;">meta-raspberrypi</a>)
      and a custom<span class=3D"Apple-converted-space">=C2=A0</span><a
        href=3D"https://github.com/jumpnow/meta-rpi" rel=3D"nofollow
        noreferrer" style=3D"margin: 0px; padding: 0px; border: 0px;
        font-size: 15px; color: rgb(111, 171, 169); text-decoration:
        none; cursor: pointer;">meta-rpi</a><span
        class=3D"Apple-converted-space">=C2=A0</span>layer someone has pu=
t
      together with a few more example images.</p>
    <p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; font-size=
:
      15px; clear: both; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">I need to either cross-compile kernel modules or use Yocto
      as I have special drivers I wish to add to the Pi. These are
      already compiled and working on my Ubuntu PC and I hoped using
      Yocto might make it easy to cross compile these and any other
      updates in the future.</p>
    <p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; font-size=
:
      15px; clear: both; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">My difficulty is that the SD Card image talked about in the<=
span
        class=3D"Apple-converted-space">=C2=A0</span><a
        href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberryp=
i/about/"
        rel=3D"nofollow noreferrer" style=3D"margin: 0px; padding: 0px;
        border: 0px; font-size: 15px; color: rgb(111, 171, 169);
        text-decoration: none; cursor: pointer;">meta-raspberrypi
        documentation</a><span class=3D"Apple-converted-space">=C2=A0</sp=
an>and
      several tutorials, never gets generated, even on successful
      builds.</p>
    <h2 style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px;
      font-size: 19px; line-height: 1.3; word-wrap: break-word;
      font-weight: 400; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      letter-spacing: normal; orphans: 2; text-align: left; text-indent:
      0px; text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">Tutorials Mentioning The
      Use Of<span class=3D"Apple-converted-space">=C2=A0</span><code styl=
e=3D"margin: 0px 0px 0.5em; padding: 1px 5px; border: 0px; font-size: 19p=
x; font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&quot;, &quo=
t;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bitstream Ve=
ra Sans Mono&quot;, &quot;Courier New&quot;, monospace, sans-serif; backg=
round-color: rgb(239, 240, 241); white-space: pre-wrap;">dd</code><span
        class=3D"Apple-converted-space">=C2=A0</span>&amp; An .sdimg File=
</h2>
    <ul style=3D"margin: 0px 0px 1em 30px; padding: 0px; border: 0px;
      font-size: 15px; list-style-type: disc; color: rgb(36, 39, 41);
      font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica,
      sans-serif; font-style: normal; font-variant-ligatures: normal;
      font-variant-caps: normal; font-weight: normal; letter-spacing:
      normal; orphans: 2; text-align: left; text-indent: 0px;
      text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">
      <li style=3D"margin: 0px 0px 0.5em; padding: 0px; border: 0px;
        font-size: 15px; word-wrap: break-word;"><a
href=3D"http://www.cnx-software.com/2015/02/27/yocto-project-raspberry-pi=
-2-board-minimal-image/"
          rel=3D"nofollow noreferrer" style=3D"margin: 0px; padding: 0px;=

          border: 0px; font-size: 15px; color: rgb(111, 171, 169);
          text-decoration: none; cursor: pointer;">Build a Raspberry Pi
          2 Minimal Image with The Yocto Project</a></li>
      <li style=3D"margin: 0px 0px 0.5em; padding: 0px; border: 0px;
        font-size: 15px; word-wrap: break-word;"><a
href=3D"http://www.jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.htm=
l"
          rel=3D"nofollow noreferrer" style=3D"margin: 0px; padding: 0px;=

          border: 0px; font-size: 15px; color: rgb(111, 171, 169);
          text-decoration: none; cursor: pointer;">Building Raspberry Pi
          Systems with Yocto</a></li>
      <li style=3D"margin: 0px 0px 0.5em; padding: 0px; border: 0px;
        font-size: 15px; word-wrap: break-word;"><a
href=3D"http://www.cnx-software.com/2013/07/05/12mb-minimal-image-for-ras=
pberry-pi-using-the-yocto-project/"
          rel=3D"nofollow noreferrer" style=3D"margin: 0px; padding: 0px;=

          border: 0px; font-size: 15px; color: rgb(111, 171, 169);
          text-decoration: none; cursor: pointer;">12MB Minimal Image
          for Raspberry Pi using the Yocto Project</a></li>
      <li style=3D"margin: 0px; padding: 0px; border: 0px; font-size:
        15px; word-wrap: break-word;"><a
href=3D"http://www.crashcourse.ca/wiki/index.php/Poky_Raspberry_Pi_SD_Car=
d_Image"
          rel=3D"nofollow noreferrer" style=3D"margin: 0px; padding: 0px;=

          border: 0px; font-size: 15px; color: rgb(111, 171, 169);
          text-decoration: none; cursor: pointer;">Poky Raspberry Pi SD
          Card Image</a></li>
    </ul>
    <h2 style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px;
      font-size: 19px; line-height: 1.3; word-wrap: break-word;
      font-weight: 400; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      letter-spacing: normal; orphans: 2; text-align: left; text-indent:
      0px; text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">Commonly Seen Error</h2>
    <p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; font-size=
:
      15px; clear: both; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">None of the builds I have made so far generate .sdimg
      files. When I try to add the<span class=3D"Apple-converted-space">=C2=
=A0</span><code style=3D"margin: 0px; padding: 1px 5px; border: 0px; font=
-size: 13px; font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&q=
uot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bi=
tstream Vera Sans Mono&quot;, &quot;Courier New&quot;, monospace, sans-se=
rif; background-color: rgb(239, 240, 241); white-space: pre-wrap;">sdcard=
</code><span
        class=3D"Apple-converted-space">=C2=A0</span>or<span
        class=3D"Apple-converted-space">=C2=A0</span><code style=3D"margi=
n: 0px; padding: 1px 5px; border: 0px; font-size: 13px; font-family: Cons=
olas, Menlo, Monaco, &quot;Lucida Console&quot;, &quot;Liberation Mono&qu=
ot;, &quot;DejaVu Sans Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;, =
&quot;Courier New&quot;, monospace, sans-serif; background-color: rgb(239=
, 240, 241); white-space: pre-wrap;">sdcard_image-rpi</code><span
        class=3D"Apple-converted-space">=C2=A0</span>image types to
      IMAGE_FSTYPES I get messages such as:</p>
    <pre style=3D"margin: 0px 0px 1em; padding: 5px; border: 0px; font-si=
ze: 13px; width: auto; max-height: 600px; overflow: auto; font-family: Co=
nsolas, Menlo, Monaco, &quot;Lucida Console&quot;, &quot;Liberation Mono&=
quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;=
, &quot;Courier New&quot;, monospace, sans-serif; background-color: rgb(2=
39, 240, 241); word-wrap: normal; color: rgb(36, 39, 41); font-style: nor=
mal; font-variant-ligatures: normal; font-variant-caps: normal; font-weig=
ht: normal; letter-spacing: normal; orphans: 2; text-align: left; text-in=
dent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px;"><code style=3D"margin: 0px; padding: 0px; border: =
0px; font-size: 13px; font-family: Consolas, Menlo, Monaco, &quot;Lucida =
Console&quot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;,=
 &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, monospace=
, sans-serif; background-color: rgb(239, 240, 241); white-space: inherit;=
">ERROR: /home/thomasthorne/work/yocto-rpi/meta-raspberrypi/recipes-core/=
images/rpi-test-image.bb: No IMAGE_CMD defined for IMAGE_FSTYPES entry 's=
dcard_image-rpi' - possibly invalid type name or missing support class
</code></pre>
    <h2 style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px;
      font-size: 19px; line-height: 1.3; word-wrap: break-word;
      font-weight: 400; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      letter-spacing: normal; orphans: 2; text-align: left; text-indent:
      0px; text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">Main Questions</h2>
    <p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; font-size=
:
      15px; clear: both; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);"><em style=3D"margin: 0px; padding: 0px; border: 0px;
        font-size: 15px; font-style: italic;">How do I generate the SD
        card image for my Pi from Yocto?</em></p>
    <p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; font-size=
:
      15px; clear: both; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">Do I need to format the SD card manually and copy over the
      contents bit by bit?</p>
    <p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; font-size=
:
      15px; clear: both; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">Why do all these tutorials suggest it would be as simple as
      a single<span class=3D"Apple-converted-space">=C2=A0</span><code st=
yle=3D"margin: 0px; padding: 1px 5px; border: 0px; font-size: 13px; font-=
family: Consolas, Menlo, Monaco, &quot;Lucida Console&quot;, &quot;Libera=
tion Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bitstream Vera Sans =
Mono&quot;, &quot;Courier New&quot;, monospace, sans-serif; background-co=
lor: rgb(239, 240, 241); white-space: pre-wrap;">dd</code><span
        class=3D"Apple-converted-space">=C2=A0</span>command? I guess som=
ething
      changed in the last couple of years and they are all out of date.</=
p>
    <p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; font-size=
:
      15px; clear: both; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);"><br>
    </p>
    <p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; font-size=
:
      15px; clear: both; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">This was also posted at
<a class=3D"moz-txt-link-freetext" href=3D"http://raspberrypi.stackexchan=
ge.com/questions/57155/how-do-i-used-yocto-to-build-an-sdcard-image-for-m=
y-raspberry-pi-3-model-b">http://raspberrypi.stackexchange.com/questions/=
57155/how-do-i-used-yocto-to-build-an-sdcard-image-for-my-raspberry-pi-3-=
model-b</a>
      before I realised it is probably more of a Yocto question than a
      Raspberry Pi one.=C2=A0 <br>
    </p>
    <p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; font-size=
:
      15px; clear: both; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">I will be very grateful of any help or advice you can
      offer.=C2=A0 Even an explanation of when the generation of SD card
      images was dropped from the Yocto Project would be very helpful.=C2=
=A0
      <br>
    </p>
    <p style=3D"margin: 0px 0px 1em; padding: 0px; border: 0px; font-size=
:
      15px; clear: both; color: rgb(36, 39, 41); font-family: Arial,
      &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: normal; letter-spacing: normal; orphans: 2;
      text-align: left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: 2; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255);">Regards, <br>
    </p>
    <div class=3D"moz-signature">-- <br>
      Thomas A. F. Thorne MEng. AUS MIET<br>
      <b>Software Engineer</b><br>
      <br>
      <b>NET2EDGE</b><br>
      <br>
      Tel: <a href=3D"tel:+443450130030">+44 3450 130 030</a><br>
      Email: <a href=3D"mailto:Thomas.Thorne@Net2Edge.com">Thomas.Thorne@=
Net2Edge.com</a><br>
      Web: <a href=3D"http://www.Net2Edge.com">http://www.Net2Edge.com/</=
a><br>
      <br>
      <p><small>Net2Edge Limited is a company registered in England
          &amp; Wales (Company No. 2438435, VAT No. GB 537553821)
          Passfield Oak, Liphook, Hampshire, GU30 7RL. This email
          transmission is confidential and intended solely for the
          person or organisation to whom it is addressed. If you are not
          the intended recipient, you must not copy, distribute or
          disseminate the information, or take any action in reliance of
          it. Any views expressed in this message are those of the
          individual sender, except where the sender specifically states
          them to be the views of any organisation or employer. If you
          have received this message in error, do not open any
          attachment but please notify the sender (above) and delete
          this message from your system. Please rely on your own virus
          check. Although all outbound mail is checked for viruses, no
          responsibility is taken by the sender for any damage rising
          out of any bug or virus infection.</small></p>
    </div>
  </body>
</html>

--------------3E2292AAA1FB8A87B727A7E6--

--4uaihduXUVDDj75fSgUGClHOxFcFwqCRM--

--25pucHr3hTbJTSe4nJf3UAC99TV7PXttm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJYGeXMAAoJEPXLKKkUazGAHbIH/3ixVHGhYPBr7M7rAauUDG+B
wuQMQTa8sXFD54hQgOEP/Q+XKaN2f4IA6Ab/I4PZpY2tKCcEZg36ah+HBWZn++jD
ftDlL1yj2r239nBmqKgCNKSFvQy94TdJAvEHy2TOnjk+0ZOyxcK/UJ3B34utjLse
K3yziJdZ7+OkqkaxwbAcHvNMW+Wfy6HuhMTI8atB8JIf5FTzM/CRZHUkkfZ/JlYu
2Y8TC0VIeVc4RKDaQNra9FU4BMNkZSG747fnPCwyMB4RUMeK3A4vGrA6pWEg/WOk
zqZtC9wFurnruf2aLGwwlKUHCeH8GRi28Ubb39yxGLhWvHSpTYaPbJsEX0ZsNuI=
=PAiJ
-----END PGP SIGNATURE-----

--25pucHr3hTbJTSe4nJf3UAC99TV7PXttm--
