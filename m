Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CF5AE00D44; Thu, 18 Jul 2019 07:20:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [216.40.44.80 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from smtprelay.hostedemail.com (smtprelay0080.hostedemail.com
	[216.40.44.80])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A034E00931
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 07:20:55 -0700 (PDT)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id D24A418223257
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 14:20:54 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: mouth83_5f307338bc51b
X-Filterd-Recvd-Size: 4424
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf05.hostedemail.com (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 14:20:53 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Date: Thu, 18 Jul 2019 14:20:52 +0000
Message-Id: <em63551664-00f9-4739-a4b7-be1cbb48c459@andys-imac.local>
In-Reply-To: <em5fc92910-8a05-49f2-8de4-549a958d3bfb@andys-imac.local>
References: <em1f413de5-81b2-4304-ba58-358a033d5bf7@andys-imac.local>
	<CAJTo0LZ54xu1as_EtmenHkTxq0JmonmUUm24ZnoaVWO3ujDVDw@mail.gmail.com>
	<emab60b5bf-fc36-4f84-9f82-34972ce7b708@andys-imac.local>
	<19139793-90fa-6f48-729b-71327366a6f6@gmail.com>
	<emc0ea84ff-4bf5-4b4e-89c1-299102a74f86@andys-imac.local>
	<CAJTo0LYmuCZma7ERtbU7ujX9OUVXLqGEe7qfmdN6OjxSmzgKvQ@mail.gmail.com>
	<em5fc92910-8a05-49f2-8de4-549a958d3bfb@andys-imac.local>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
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
X-List-Received-Date: Thu, 18 Jul 2019 14:20:57 -0000
Content-Type: multipart/alternative;
	boundary="------=_MB7CF4B4A0-67B3-4056-A166-073476AFC233"

--------=_MB7CF4B4A0-67B3-4056-A166-073476AFC233
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I wrote...=0A=0A>The conf/distro/poky-atmel.conf file in meta-atmel contain=
s the =0A>following line:=0A>=0A>DISTRO_FEATURES_remove ?=3D "opengl waylan=
d x11 3g nfc pulseaudio=E2=80=9D=0A>=0A>Switching back to the regular DISTR=
O =3D =E2=80=9Cpoky=E2=80=9D seems to have got it =0A>building again.=0ASwi=
tching back to poky caused a whole host of other issues.  I have =0Amanaged =
to create a configuration that fully builds cog and wpewebkit =0Ausing pok=
y-atmel with wpebackend-rdk, wayland and core-image-weston.=0A=0AWhen I boo=
t the board a desktop appears with an icon that opens a =0AWayland terminal=
.   I=E2=80=99m trying to find some information on how to =0Areplace that s=
o that it starts Cog automatically at boot up but not =0Afinding anything h=
elpful.  I know that Cog itself works as I can start =0Ait up using the deb=
ug terminal.=0A=0A-Andy.=0A

--------=_MB7CF4B4A0-67B3-4056-A166-073476AFC233
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style id=3D"css_styles">blockquote.cite { margin-left: 5px; ma=
rgin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px so=
lid #cccccc }=0Ablockquote.cite2 {margin-left: 5px; margin-right: 0px; padd=
ing-left: 10px; padding-right:0px; border-left: 1px solid #cccccc; margin-t=
op: 3px; padding-top: 0px; }=0Aa img { border: 0px; }=0Ali[style=3D'text-al=
ign: center;'], li[style=3D'text-align: right;'] {  list-style-position: in=
side;}=0Abody { font-family: Verdana; font-size: 12px;   }</style></head><b=
ody class=3D"plain"><div><div>I wrote...</div>=0A</div><div><br /></div>=0A=
<div id=3D"x2dba15263e4345f"><blockquote type=3D"cite" class=3D"cite2"><div =
id=3D"xf02825291217422"><div id=3D"xf02825291217422">The conf/distro/poky-=
atmel.conf file in meta-atmel contains the following line:</div></div><div=
 id=3D"xf02825291217422"><br /></div><div id=3D"xf02825291217422">DISTRO_FEA=
TURES_remove ?=3D "opengl wayland x11 3g nfc pulseaudio=E2=80=9D</div><div=
 id=3D"xf02825291217422"><br /></div><div id=3D"xf02825291217422">Switching=
 back to the regular DISTRO =3D =E2=80=9Cpoky=E2=80=9D seems to have got it=
 building again.</div></blockquote>Switching back to poky caused a whole hos=
t of other issues. =C2=A0I have managed to create a configuration that full=
y builds cog and wpewebkit using poky-atmel with wpebackend-rdk, wayland an=
d core-image-weston.</div><div id=3D"x2dba15263e4345f"><br /></div><div id=
=3D"x2dba15263e4345f">When I boot the board a desktop appears with an icon=
 that opens a Wayland terminal. =C2=A0 I=E2=80=99m trying to find some infor=
mation on how to replace that so that it starts Cog automatically at boot u=
p but not finding anything helpful. =C2=A0I know that Cog itself works as I =
can start it up using the debug terminal.</div><div id=3D"x2dba15263e4345f=
"><br /></div><div id=3D"x2dba15263e4345f">-Andy.</div><div id=3D"x2dba1526=
3e4345f"><br /></div>=0A</body></html>

--------=_MB7CF4B4A0-67B3-4056-A166-073476AFC233--
