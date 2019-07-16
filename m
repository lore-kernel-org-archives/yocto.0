Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 563F2E00D6B; Tue, 16 Jul 2019 10:36:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [216.40.44.193 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from smtprelay.hostedemail.com (smtprelay0193.hostedemail.com
	[216.40.44.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 000CCE00D67
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 10:36:50 -0700 (PDT)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id C2C08100E96E4;
	Tue, 16 Jul 2019 17:36:49 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: sort54_5891ba0052050
X-Filterd-Recvd-Size: 5459
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf15.hostedemail.com (Postfix) with ESMTPA;
	Tue, 16 Jul 2019 17:36:48 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "Joshua Watt" <jpewhacker@gmail.com>, "Burton,
	Ross" <ross.burton@intel.com>
Date: Tue, 16 Jul 2019 17:36:46 +0000
Message-Id: <emc0ea84ff-4bf5-4b4e-89c1-299102a74f86@andys-imac.local>
In-Reply-To: <19139793-90fa-6f48-729b-71327366a6f6@gmail.com>
References: <em1f413de5-81b2-4304-ba58-358a033d5bf7@andys-imac.local>
	<CAJTo0LZ54xu1as_EtmenHkTxq0JmonmUUm24ZnoaVWO3ujDVDw@mail.gmail.com>
	<emab60b5bf-fc36-4f84-9f82-34972ce7b708@andys-imac.local>
	<19139793-90fa-6f48-729b-71327366a6f6@gmail.com>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: wpewebkit, cog and libgles2
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
X-List-Received-Date: Tue, 16 Jul 2019 17:36:54 -0000
Content-Type: multipart/alternative;
	boundary="------=_MB4383068F-06F4-4B4B-B727-5E487008CFBA"

--------=_MB4383068F-06F4-4B4B-B727-5E487008CFBA
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Joshua wrote...=0A=0A>>I=E2=80=99m confused now as there appears to be two=
 active meta layers that support WPE WebKit. The one you reference meta-wpe=
 and the one I was originally using meta-webkit (https://github.com/Igalia/m=
eta-webkit) as that was the one that included Cog. Is one preferred to the=
 other?=0A>=0A>AFAIK, meta-webkit is the one you should be using. Its the on=
e currently being actively maintained by the WPEWebKit folks.=0AI have gone =
back to using that one. I think I am being a bit dim (I =0Ablame the unusu=
ally warm UK weather) but I can=E2=80=99t see what bitbake is =0Acomplainin=
g about. Having added:=0A=0AIMAGE_INSTALL_append =3D " nodejs wpewebkit=E2=
=80=9D=0A=0Abitbake reports:=0A=0AERROR: Nothing PROVIDES 'libepoxy' (but =
=0A/home/me/yocto/sources/meta-webkit/recipes-browser/wpewebkit/wpewebkit_=
2.24.2.bb =0ADEPENDS on or otherwise requires it)=0Alibepoxy was skipped: m=
issing required distro feature 'opengl' (not in =0ADISTRO_FEATURES)=0A=0Ade=
spite my local.conf containing:=0A=0ADISTRO_FEATURES_append =3D " opengl li=
bepoxy=E2=80=9D=0A=0ACan someone put me out of my misery?=0A=0A-Andy.=0A=0A

--------=_MB4383068F-06F4-4B4B-B727-5E487008CFBA
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
-webkit-nbsp-mode: space; line-break: after-white-space;"><div><div>Joshua =
wrote...</div>=0A</div><div><br /></div>=0A<div id=3D"x21023d525151463"><b=
lockquote type=3D"cite" class=3D"cite2"><blockquote type=3D"cite" class=3D"=
cite"><div class=3D"plain_line">I=E2=80=99m confused now as there appears t=
o be two active meta layers that support WPE WebKit. The one you reference=
 meta-wpe and the one I was originally using meta-webkit (https://github.com=
/Igalia/meta-webkit) as that was the one that included Cog. Is one preferre=
d to the other?</div>=0A</blockquote>=0A<div class=3D"plain_line">=C2=A0</d=
iv>=0A<div class=3D"plain_line">AFAIK, meta-webkit is the one you should be =
using. Its the one currently being actively maintained by the WPEWebKit fo=
lks.</div></blockquote>I have gone back to using that one.  I think I am be=
ing a bit dim (I blame the unusually warm UK weather) but I can=E2=80=99t s=
ee what bitbake is complaining about.  Having added:</div><div id=3D"x21023=
d525151463"><br /></div><div id=3D"x21023d525151463">IMAGE_INSTALL_append =
=3D " nodejs wpewebkit=E2=80=9D</div><div id=3D"x21023d525151463"><br /></=
div><div id=3D"x21023d525151463">bitbake reports:</div><div id=3D"x21023d52=
5151463"><br /></div><div id=3D"x21023d525151463">ERROR: Nothing PROVIDES '=
libepoxy' (but /home/me/yocto/sources/meta-webkit/recipes-browser/wpewebkit=
/wpewebkit_2.24.2.bb DEPENDS on or otherwise requires it)</div><div id=3D"x=
21023d525151463">libepoxy was skipped: missing required distro feature 'ope=
ngl' (not in DISTRO_FEATURES)</div><div id=3D"x21023d525151463"><br /></div=
><div id=3D"x21023d525151463">despite my local.conf containing:</div><div i=
d=3D"x21023d525151463"><br /></div><div id=3D"x21023d525151463">DISTRO_FEAT=
URES_append =3D " opengl libepoxy=E2=80=9D</div><div id=3D"x21023d525151463=
"><br /></div><div id=3D"x21023d525151463">Can someone put me out of my mis=
ery?</div><div id=3D"x21023d525151463"><br /></div><div id=3D"x21023d525151=
463">-Andy.</div><div id=3D"x21023d525151463"><br /></div><div id=3D"x21023=
d525151463"><br /><blockquote type=3D"cite" class=3D"cite2"><blockquote typ=
e=3D"cite" class=3D"cite2">=0A</blockquote>=0A</blockquote></div>=0A</body>=
</html>

--------=_MB4383068F-06F4-4B4B-B727-5E487008CFBA--
