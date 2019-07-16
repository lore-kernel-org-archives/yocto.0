Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BD8FE00D83; Tue, 16 Jul 2019 12:44:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [216.40.44.71 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from smtprelay.hostedemail.com (smtprelay0071.hostedemail.com
	[216.40.44.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AD8EE003E1
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 12:44:17 -0700 (PDT)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 4C7A640D6;
	Tue, 16 Jul 2019 19:44:16 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: crow42_251d11798e037
X-Filterd-Recvd-Size: 4012
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf04.hostedemail.com (Postfix) with ESMTPA;
	Tue, 16 Jul 2019 19:44:14 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Jul 2019 19:44:12 +0000
Message-Id: <em5fc92910-8a05-49f2-8de4-549a958d3bfb@andys-imac.local>
In-Reply-To: <CAJTo0LYmuCZma7ERtbU7ujX9OUVXLqGEe7qfmdN6OjxSmzgKvQ@mail.gmail.com>
References: <em1f413de5-81b2-4304-ba58-358a033d5bf7@andys-imac.local>
	<CAJTo0LZ54xu1as_EtmenHkTxq0JmonmUUm24ZnoaVWO3ujDVDw@mail.gmail.com>
	<emab60b5bf-fc36-4f84-9f82-34972ce7b708@andys-imac.local>
	<19139793-90fa-6f48-729b-71327366a6f6@gmail.com>
	<emc0ea84ff-4bf5-4b4e-89c1-299102a74f86@andys-imac.local>
	<CAJTo0LYmuCZma7ERtbU7ujX9OUVXLqGEe7qfmdN6OjxSmzgKvQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 16 Jul 2019 19:44:20 -0000
Content-Type: multipart/alternative;
	boundary="------=_MB1031376E-BD41-4152-8F1A-EFCE4778402C"

--------=_MB1031376E-BD41-4152-8F1A-EFCE4778402C
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Ross wrote...=0A=0A>Search that until you find the DISTRO_FEATURES=3D and s=
ee if it it=0A>contains opengl.  It presumably doesn't, and above the assig=
nment it=0A>will tell you what removed it (or the absence of something addi=
ng it).=0A=0AThe conf/distro/poky-atmel.conf file in meta-atmel contains th=
e =0Afollowing line:=0A=0ADISTRO_FEATURES_remove ?=3D "opengl wayland x11 3=
g nfc pulseaudio=E2=80=9D=0A=0ASwitching back to the regular DISTRO =3D =E2=
=80=9Cpoky=E2=80=9D seems to have got it =0Abuilding again.=0A=0AThanks for =
your help and guidance!=0A=0A-Andy.

--------=_MB1031376E-BD41-4152-8F1A-EFCE4778402C
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
rote...</div>=0A</div><div><br /></div>=0A<div id=3D"xf02825291217422"><blo=
ckquote type=3D"cite" class=3D"cite2"><div class=3D"plain_line">Search that =
until you find the DISTRO_FEATURES=3D and see if it it</div>=0A<div class=
=3D"plain_line">contains opengl.  It presumably doesn't, and above the assi=
gnment it</div>=0A<div class=3D"plain_line">will tell you what removed it (=
or the absence of something adding it).</div></blockquote><div id=3D"xf0282=
5291217422" style=3D"white-space: pre-wrap;"><br /></div>The conf/distro/po=
ky-atmel.conf file in meta-atmel contains the following line:</div><div id=
=3D"xf02825291217422"><br /></div><div id=3D"xf02825291217422">DISTRO_FEATU=
RES_remove ?=3D "opengl wayland x11 3g nfc pulseaudio=E2=80=9D</div><div id=
=3D"xf02825291217422"><br /></div><div id=3D"xf02825291217422">Switching ba=
ck to the regular DISTRO =3D =E2=80=9Cpoky=E2=80=9D seems to have got it bu=
ilding again.</div><div id=3D"xf02825291217422"><br /></div><div id=3D"xf02=
825291217422">Thanks for your help and guidance!</div><div id=3D"xf02825291=
217422"><br /></div><div id=3D"xf02825291217422">-Andy.</div>=0A</body></ht=
ml>

--------=_MB1031376E-BD41-4152-8F1A-EFCE4778402C--
