Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82564E00A21; Sun, 28 Jul 2019 01:06:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [216.40.44.155 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from smtprelay.hostedemail.com (smtprelay0155.hostedemail.com
	[216.40.44.155])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BE20E0096F
	for <yocto@yoctoproject.org>; Sun, 28 Jul 2019 01:05:56 -0700 (PDT)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 4D1A3182CF66E;
	Sun, 28 Jul 2019 08:05:55 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: floor08_167ac88644e61
X-Filterd-Recvd-Size: 4510
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf14.hostedemail.com (Postfix) with ESMTPA;
	Sun, 28 Jul 2019 08:05:54 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "Khem Raj" <raj.khem@gmail.com>
Date: Sun, 28 Jul 2019 08:05:51 +0000
Message-Id: <eme52024d7-066d-41a0-8dbb-6581b3463c88@andys-imac.local>
In-Reply-To: <CAMKF1spg0j7VaRq_j=CywWMEg4=82QhEanqFMktT5xppSKGE_A@mail.gmail.com>
References: <em6add36a5-a095-434a-8cb6-09f00973e98b@andys-imac.local>
	<CAMKF1spg0j7VaRq_j=CywWMEg4=82QhEanqFMktT5xppSKGE_A@mail.gmail.com>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Shared area conflict
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
X-List-Received-Date: Sun, 28 Jul 2019 08:06:00 -0000
Content-Type: multipart/alternative;
	boundary="------=_MB162DE0D1-E290-44D1-BD6B-DDA9FFC28023"

--------=_MB162DE0D1-E290-44D1-BD6B-DDA9FFC28023
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Khem wrote...=0A=0A>there are two recipes building/installing same files. Y=
ou have to=0A>avoid conflicts via either removing them from one recipe or n=
ot=0A>installing them=0AI=E2=80=99ve fixed this issue by creating a .bbappe=
nd file in my custom =0Ameta-layer that tells mesa not to install these two =
packages.=0A=0AOnly one major issue left to resolve which is described in=
 [1] albeit =0Athat I have gone back to thud but I get the same results as I =
did with =0Awarrior. I have borrowed the recipes for v1.14 of the PowerVR=
 drivers =0Afrom [2] and fixed a couple of kernel compile issues for kernel=
 >=3D =0A4.1.15 and will try those once I have the device tree entries for m=
y LCD =0Acape incorporated.=0A=0A-Andy.=0A=0A1. https://lists.yoctoproject.=
org/pipermail/yocto/2019-July/046165.html=0A2. https://git.phytec.de/meta-p=
hytec=0A

--------=_MB162DE0D1-E290-44D1-BD6B-DDA9FFC28023
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>=0A=0A<style id=3D"css_styles" type=3D"text/css">blockquote.cit=
e { margin-left: 5px; margin-right: 0px; padding-left: 10px; padding-right:=
0px; border-left: 1px solid #cccccc }=0Ablockquote.cite2 {margin-left: 5px; =
margin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px =
solid #cccccc; margin-top: 3px; padding-top: 0px; }=0Aa img { border: 0px; =
}=0Ali[style=3D'text-align: center;'], li[style=3D'text-align: right;'] {  =
list-style-position: inside;}=0Abody { font-family: Verdana; font-size: 12=
px;   }</style></head><body class=3D"plain" style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;"><div><div>Khem w=
rote...</div>=0A</div><div><br /></div>=0A<div id=3D"x9cbe73ffc8b248c"><blo=
ckquote type=3D"cite" class=3D"cite2"><div class=3D"plain_line">there are t=
wo recipes building/installing same files. You have to</div>=0A<div class=
=3D"plain_line">avoid conflicts via either removing them from one recipe or =
not</div>=0A<div class=3D"plain_line">installing them</div></blockquote>I=
=E2=80=99ve fixed this issue by creating a .bbappend file in my custom meta=
-layer that tells mesa not to install these two packages. =C2=A0</div><div=
 id=3D"x9cbe73ffc8b248c"><br /></div><div id=3D"x9cbe73ffc8b248c">Only one m=
ajor issue left to resolve which is described in [1] albeit that I have gon=
e back to thud but I get the same results as I did with warrior.  I have bo=
rrowed the recipes for v1.14 of the PowerVR drivers from [2] and fixed a co=
uple of kernel compile issues for kernel &gt;=3D 4.1.15 and will try those=
 once I have the device tree entries for my LCD cape incorporated.</div><div =
id=3D"x9cbe73ffc8b248c"><br /></div><div id=3D"x9cbe73ffc8b248c">-Andy.</d=
iv><div id=3D"x9cbe73ffc8b248c"><br /></div><div id=3D"x9cbe73ffc8b248c">1. =
<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2019-July/046165=
.html">https://lists.yoctoproject.org/pipermail/yocto/2019-July/046165.html=
</a></div><div id=3D"x9cbe73ffc8b248c">2.=C2=A0<a href=3D"https://git.phyte=
c.de/meta-phytec">https://git.phytec.de/meta-phytec</a></div><div id=3D"x9c=
be73ffc8b248c"><br /></div><div id=3D"x9cbe73ffc8b248c"><blockquote type=3D=
"cite" class=3D"cite2"><blockquote type=3D"cite" class=3D"cite2">=0A</block=
quote>=0A</blockquote></div>=0A</body></html>

--------=_MB162DE0D1-E290-44D1-BD6B-DDA9FFC28023--
