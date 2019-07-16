Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08152E00D63; Tue, 16 Jul 2019 06:43:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [216.40.44.185 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from smtprelay.hostedemail.com (smtprelay0185.hostedemail.com
	[216.40.44.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4693E00D47
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 06:43:51 -0700 (PDT)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id DB259181D39C5;
	Tue, 16 Jul 2019 13:43:50 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: sock54_5bb0e71280430
X-Filterd-Recvd-Size: 4901
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf05.hostedemail.com (Postfix) with ESMTPA;
	Tue, 16 Jul 2019 13:43:49 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Jul 2019 13:43:48 +0000
Message-Id: <emab60b5bf-fc36-4f84-9f82-34972ce7b708@andys-imac.local>
In-Reply-To: <CAJTo0LZ54xu1as_EtmenHkTxq0JmonmUUm24ZnoaVWO3ujDVDw@mail.gmail.com>
References: <em1f413de5-81b2-4304-ba58-358a033d5bf7@andys-imac.local>
	<CAJTo0LZ54xu1as_EtmenHkTxq0JmonmUUm24ZnoaVWO3ujDVDw@mail.gmail.com>
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
X-List-Received-Date: Tue, 16 Jul 2019 13:43:53 -0000
Content-Type: multipart/alternative;
	boundary="------=_MBE208B1FA-6822-40D9-AFBC-4A122D6A99F7"

--------=_MBE208B1FA-6822-40D9-AFBC-4A122D6A99F7
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Ross wrote...=0A=0A>Well the libwpe build script says this:=0A>=0A>find_pac=
kage(EGL REQUIRED)=0A>=0A>(https://github.com/WebPlatformForEmbedded/libwpe=
/blob/master/CMakeLists.txt)=0A=0AI=E2=80=99m confused now as there appears =
to be two active meta layers that =0Asupport WPE WebKit. The one you refer=
ence meta-wpe and the one I was =0Aoriginally using meta-webkit (https://gi=
thub.com/Igalia/meta-webkit) as =0Athat was the one that included Cog. Is o=
ne preferred to the other?=0A=0A>Which suggests that you can't build it wit=
hout EGL.  You should=0A>investigate whether EGL is simply an option, or wh=
ether it's used as a=0A>fundamental part of the rendering.  If it's optiona=
l then the Mesa=0A>recipe can build a software GL implementation, if the la=
tter then=0A>you'll need a new browser as software GL is *terrible*.=0AI=E2=
=80=99m not wedded to Cog as a browser. I just need something that can =0As=
upport HTML5 and Javascript as it will be running a single page =0Aapplicat=
ion (SPA) served from localhost.=0A=0A-Andy.

--------=_MBE208B1FA-6822-40D9-AFBC-4A122D6A99F7
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
-webkit-nbsp-mode: space; line-break: after-white-space;"><div><div>Ross w=
rote...</div>=0A</div><div><br /></div>=0A<div id=3D"x7785aa2b94504de"><blo=
ckquote type=3D"cite" class=3D"cite2"><div class=3D"plain_line">Well the li=
bwpe build script says this:</div>=0A<div class=3D"plain_line">=C2=A0</div>=
=0A<div class=3D"plain_line">find_package(EGL REQUIRED)</div>=0A<div class=
=3D"plain_line">=C2=A0</div>=0A<div class=3D"plain_line">(https://github.co=
m/WebPlatformForEmbedded/libwpe/blob/master/CMakeLists.txt)</div></blockquo=
te><div id=3D"x7785aa2b94504de"><br /></div><div id=3D"x7785aa2b94504de">I=
=E2=80=99m confused now as there appears to be two active meta layers that=
 support WPE WebKit. The one you reference meta-wpe and the one I was origin=
ally using meta-webkit (<a href=3D"https://github.com/Igalia/meta-webkit">h=
ttps://github.com/Igalia/meta-webkit</a>) as that was the one that included =
Cog.  Is one preferred to the other?</div><br /><blockquote type=3D"cite"=
 class=3D"cite2"><div class=3D"plain_line">Which suggests that you can't bui=
ld it without EGL.  You should</div>=0A<div class=3D"plain_line">investigat=
e whether EGL is simply an option, or whether it's used as a</div>=0A<div c=
lass=3D"plain_line">fundamental part of the rendering.  If it's optional th=
en the Mesa</div>=0A<div class=3D"plain_line">recipe can build a software G=
L implementation, if the latter then</div>=0A<div class=3D"plain_line">you'=
ll need a new browser as software GL is *terrible*.</div></blockquote>I=E2=
=80=99m not wedded to Cog as a browser.  I just need something that can sup=
port HTML5 and Javascript as it will be running a single page application (=
SPA) served from localhost.</div><div id=3D"x7785aa2b94504de"><br /></div><=
div id=3D"x7785aa2b94504de">-Andy.</div><div id=3D"x7785aa2b94504de"><block=
quote type=3D"cite" class=3D"cite2">=0A</blockquote></div>=0A</body></html>

--------=_MBE208B1FA-6822-40D9-AFBC-4A122D6A99F7--
