Return-Path: <sridhar.pitchai@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B589CE00B48; Tue, 21 Jun 2016 07:22:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_20,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sridhar.pitchai[at]outlook.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.55.116.84 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.1428]
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Tue, 21 Jun 2016 07:21:36 PDT
Received: from BLU004-OMC3S9.hotmail.com (blu004-omc3s9.hotmail.com
	[65.55.116.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 328B8E009A0
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 07:21:36 -0700 (PDT)
Received: from BLU402-EAS169 ([65.55.116.72]) by BLU004-OMC3S9.hotmail.com
	over TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008);
	Tue, 21 Jun 2016 07:20:34 -0700
X-TMN: [8QUiMJqa0L5XMhAIh09I6wrKuhCCcjnv]
X-Originating-Email: [sridhar.pitchai@outlook.com]
Message-ID: <BLU402-EAS1698ACB5C59CFDA811114DAEB2B0@phx.gbl>
Date: Tue, 21 Jun 2016 14:20:34 +0000
From: Sridhar Pitchai <sridhar.pitchai@outlook.com>
To: <yocto@yoctoproject.org>
In-Reply-To: <BLU168-W471A7D6D8ADF364C276C1FEB2B0@phx.gbl>
References: <BLU168-W471A7D6D8ADF364C276C1FEB2B0@phx.gbl>
MIME-Version: 1.0
X-Mailer: Outlook for iOS and Android
X-OriginalArrivalTime: 21 Jun 2016 14:20:34.0956 (UTC)
	FILETIME=[136244C0:01D1CBC8]
Subject: meta-go
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
X-List-Received-Date: Tue, 21 Jun 2016 14:22:00 -0000
Content-Type: multipart/alternative;
	boundary="----=_Part_14053_715017326.1466518834237"

------=_Part_14053_715017326.1466518834237
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable


Hi,I am trying to write a recipe to compile a go program. i am using meta-g=
o for go compiler.=C2=A0
getting the following error
"=C2=A0# runtime/cgo| ../../../../../../../../../sysroots/x86_64-linux/usr/=
lib/x86_64-openswitch-linux/go/src/runtime/cgo/cgo.go:54:19: fatal error: e=
rrno.h: No such file or directory
"
here is my recipe.=C2=A0
"
inherit goDEPENDS =3D " nanomsg linux-libc-headers "
FILESEXTRAPATHS_prepend =3D "${THISDIR}:"SRC_URI +=3D "file://${PV}/anchor.=
tgz"S =3D "${WORKDIR}/anchor"


do_compile() {=C2=A0 cd ${S}/reltools && make -I${S}/include}
"
I am getting error for missing header files. Can someone help me address it=
.
Thanks,Sridhar

 =09=09 =09   =09=09 =20


=09

------=_Part_14053_715017326.1466518834237
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable


=09=09<div id=3D"compose" contenteditable=3D"true" style=3D"padding-left: 2=
0px; padding-right: 20px; padding-bottom: 8px;"><br></div><div class=3D"gma=
il_quote"><style><!--.hmmessage P{margin:0px;padding:0px}body.hmmessage{fon=
t-size: 12pt;font-family:Calibri}--></style><div dir=3D"ltr">Hi,<div>I am t=
rying to write a recipe to compile a go program. i am using meta-go for go =
compiler.&nbsp;</div><div><br></div><div>getting the following error</div><=
div><br></div><div>"</div><div><div>&nbsp;# runtime/cgo</div><div>| ../../.=
./../../../../../../sysroots/x86_64-linux/usr/lib/x86_64-openswitch-linux/g=
o/src/runtime/cgo/cgo.go:54:19: fatal error: errno.h: No such file or direc=
tory</div></div><div><br></div><div>"</div><div><br></div><div>here is my r=
ecipe.&nbsp;</div><div><br></div><div>"</div><div><div><br></div><div>inher=
it go</div><div>DEPENDS =3D " nanomsg linux-libc-headers "</div><div><br></=
div><div>FILESEXTRAPATHS_prepend =3D "${THISDIR}:"</div><div>SRC_URI +=3D "=
file://${PV}/anchor.tgz"</div><div>S =3D "${WORKDIR}/anchor"</div><div><br>=
</div><div><br></div><div><br></div><div>do_compile() {</div><div><span sty=
le=3D"font-size: 12pt;">&nbsp; cd ${S}/reltools &amp;&amp; make -I${S}/incl=
ude</span></div><div>}</div><div><br></div><div><span style=3D"font-size: 1=
2pt;">"</span></div></div><div><span style=3D"font-size: 12pt;"><br></span>=
</div><div><span style=3D"font-size: 12pt;">I am getting error for missing =
header files. Can someone help me address it.</span></div><div><span style=
=3D"font-size: 12pt;"><br></span></div><div><span style=3D"font-size: 12pt;=
">Thanks,</span></div><div><span style=3D"font-size: 12pt;">Sridhar</span><=
/div><div><span style=3D"font-size: 12pt;"><br></span></div><div><span styl=
e=3D"font-size: 12pt;"><br></span></div> =09=09 =09   =09=09  </div><br><br=
></div>
=09

------=_Part_14053_715017326.1466518834237--
