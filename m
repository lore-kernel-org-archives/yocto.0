Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CC6AE00DEE; Wed, 23 Oct 2019 04:28:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [216.40.44.216 listed in list.dnswl.org]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from smtprelay.hostedemail.com (smtprelay0216.hostedemail.com
	[216.40.44.216])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EBE5E00B7A
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2019 04:27:30 -0700 (PDT)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 6E4CA181D341A;
	Wed, 23 Oct 2019 11:27:29 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: man37_71109eaee913
X-Filterd-Recvd-Size: 2115
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf19.hostedemail.com (Postfix) with ESMTPA;
	Wed, 23 Oct 2019 11:27:28 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "meta-freescale Mailing List" <meta-freescale@yoctoproject.org>
Date: Wed, 23 Oct 2019 11:27:26 +0000
Message-Id: <em2944f528-f3cb-4055-92d5-6284b7d079eb@andys-imac.leeshillfarm.local>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"webkit-wpe@lists.webkit.org" <webkit-wpe@lists.webkit.org>
Subject: Optimising imx6 performance for HTML5 using Cog + WPE WebKit
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Andy Pont <andy.pont@sdcsystems.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 23 Oct 2019 11:28:32 -0000
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,=0A=0ABroadening this out to the Freescale and Yocto mailing lists to =
see if =0Aany one has any answers=E2=80=A6=0A=0AWe are using Cog and WPE W=
ebkit on an i.MX6 Solo based board with a user =0Ainterface that is based o=
n HTML5, Javascript and CSS and are having some =0Aissues with fading and o=
ther canvas effects.  The board is running a =0AYocto image with the follow=
ing in conf/local.conf:=0A=0APREFERRED_PROVIDER_virtual/wpebackend =3D "wpe=
backend-rdk"=0APACKAGECONFIG_pn-wpebackend-rdk =3D "imx6"=0A=0APACKAGECONFI=
G_append_pn-cairo =3D " glesv2 egl"=0APACKAGECONFIG_append_pn-wpewebkit =3D =
" 2dcanvas"=0A=0AWe start the browser with the following command line:=0A=
=0Acog --enable-accelerated-2d-canvas=3D1 appui/index.html=0A=0AAre there a=
ny other settings we should be using either in the Yocto =0Abuild or when l=
aunching Cog as we are finding the CPU usage is >90%?=0A=0AIs there a defin=
itive way to show that all of the necessary drivers are =0Aloaded and Cog i=
s making use of the GPU?=0A=0AI have tried this with Cog 0.3.0 built with W=
PE WebKit 2.24.1 and Cog =0A0.4.0 built with WPE WebKit 2.26.1 and both giv=
e the same dissappointing =0Aresults, as does running on the iMX6Q-SDP boar=
d I also have here.=0A=0A-Andy.


