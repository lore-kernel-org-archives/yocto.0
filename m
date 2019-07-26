Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18D8CE00C87; Fri, 26 Jul 2019 03:47:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [216.40.44.38 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from smtprelay.hostedemail.com (smtprelay0038.hostedemail.com
	[216.40.44.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59099E00BD5
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2019 03:47:49 -0700 (PDT)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 0C29A180A68C0
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2019 10:47:48 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: note93_9cdee4406632
X-Filterd-Recvd-Size: 3931
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf16.hostedemail.com (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2019 10:47:47 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Date: Fri, 26 Jul 2019 10:47:44 +0000
Message-Id: <em6add36a5-a095-434a-8cb6-09f00973e98b@andys-imac.local>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Subject: Shared area conflict
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
X-List-Received-Date: Fri, 26 Jul 2019 10:47:50 -0000
Content-Type: multipart/alternative;
	boundary="------=_MB0A908E8C-BE7A-4291-AE27-74EA433C1374"

--------=_MB0A908E8C-BE7A-4291-AE27-74EA433C1374
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,=0A=0AWhen I try to bitbake core-image-minimal it is giving up with t=
he =0Afollowing error:=0A=0AERROR: mesa-gl-2_18.1.9-r0 do_packagedata: The=
 recipe mesa-gl is trying =0Ato install files into a shared area when those=
 files already exist. =0AThose files and their manifest location are:=0A   /=
home/me/Yocto/BeagleBoneBlack/tmp/pkgdata/beaglebone/runtime/libgbm=0A    =
 (matched in manifest-beaglebone-libgbm.packagedata)=0A   =0A/home/me/Yocto/=
BeagleBoneBlack/tmp/pkgdata/beaglebone/runtime/libgbm-dev=0A     (matched i=
n manifest-beaglebone-libgbm.packagedata)=0APlease verify which recipe shou=
ld provide the above files.=0A=0AI=E2=80=99ve tried one of the suggestions=
 that it gives in the rather verbose =0Amessage that follows and nuked the =
=E2=80=9Ctmp=E2=80=9D directory and rebuilt but with =0Ano further success=
.  My local.conf contains:=0A=0APREFERRED_PROVIDER_libgbm =3D =E2=80=9Clibg=
bm=E2=80=9D=0APREFERRED_PROVIDER_libgbm-dev =3D "libgbm-dev=E2=80=9D=0A=0AH=
ow do I get it to stop complaining?=0A=0A-Andy.

--------=_MB0A908E8C-BE7A-4291-AE27-74EA433C1374
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style id=3D"css_styles">blockquote.cite { margin-left: 5px; ma=
rgin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px so=
lid #cccccc }=0Ablockquote.cite2 {margin-left: 5px; margin-right: 0px; padd=
ing-left: 10px; padding-right:0px; border-left: 1px solid #cccccc; margin-t=
op: 3px; padding-top: 0px; }=0Aa img { border: 0px; }=0Ali[style=3D'text-al=
ign: center;'], li[style=3D'text-align: right;'] {  list-style-position: in=
side;}=0Abody { font-family: Verdana; font-size: 12px;   }</style></head><b=
ody class=3D"plain"><div>Hello,</div><div><br /></div><div>When I try to bi=
tbake core-image-minimal it is giving up with the following error:</div><di=
v><br /></div><div>ERROR: mesa-gl-2_18.1.9-r0 do_packagedata: The recipe me=
sa-gl is trying to install files into a shared area when those files alread=
y exist. Those files and their manifest location are:</div><div>=C2=A0 /hom=
e/me/Yocto/BeagleBoneBlack/tmp/pkgdata/beaglebone/runtime/libgbm</div><div>=
=C2=A0 =C2=A0 (matched in manifest-beaglebone-libgbm.packagedata)</div><div=
>=C2=A0 /home/me/Yocto/BeagleBoneBlack/tmp/pkgdata/beaglebone/runtime/libgb=
m-dev</div><div>=C2=A0 =C2=A0 (matched in manifest-beaglebone-libgbm.packag=
edata)</div><div>Please verify which recipe should provide the above files.=
</div><div><br /></div><div>I=E2=80=99ve tried one of the suggestions that=
 it gives in the rather verbose message that follows and nuked the =E2=80=9C=
tmp=E2=80=9D directory and rebuilt but with no further success. =C2=A0My lo=
cal.conf contains:</div><div><br /></div><div>PREFERRED_PROVIDER_libgbm =3D =
=E2=80=9Clibgbm=E2=80=9D</div><div>PREFERRED_PROVIDER_libgbm-dev =3D "libg=
bm-dev=E2=80=9D</div><div><br /></div><div>How do I get it to stop complain=
ing?</div><div><br /></div><div>-Andy.</div>=0A</body></html>

--------=_MB0A908E8C-BE7A-4291-AE27-74EA433C1374--
