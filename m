Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75DD2E00B8F; Thu, 18 Jul 2019 02:32:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [216.40.44.125 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from smtprelay.hostedemail.com (smtprelay0125.hostedemail.com
	[216.40.44.125])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 898C3E00B8F
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 02:32:05 -0700 (PDT)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 833CE100E806B
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 09:32:04 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: straw83_2f240dd0f174f
X-Filterd-Recvd-Size: 2868
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf14.hostedemail.com (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 09:32:03 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Date: Thu, 18 Jul 2019 09:32:02 +0000
Message-Id: <em160e1583-fdb5-4106-b01b-7f7ffc441898@andys-imac.local>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Subject: Atmel device tree overlays
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
X-List-Received-Date: Thu, 18 Jul 2019 09:32:06 -0000
Content-Type: multipart/alternative;
	boundary="------=_MBD24889AF-F766-4D7B-95DA-B3A3B233B313"

--------=_MBD24889AF-F766-4D7B-95DA-B3A3B233B313
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,=0A=0AThe meta-atmel layer includes a BSP recipe called dt-overlay-at=
91[1] =0Athat pulls in a number of .dtso files for various peripheral devic=
es =0Athat can be connected to their reference boards.=0A=0AI can=E2=80=99t =
figure out how to get the overlays into the FIT image that my =0Aboard is=
 booting from.  For the time being, if I have to include all of =0Athem then =
so be it but ideally I would like to be able to define which =0Aget used.=
=0A=0A-Andy.=0A=0A[1] https://layers.openembedded.org/layerindex/recipe/887=
06/=0A=0A

--------=_MBD24889AF-F766-4D7B-95DA-B3A3B233B313
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style id=3D"css_styles">blockquote.cite { margin-left: 5px; ma=
rgin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px so=
lid #cccccc }=0Ablockquote.cite2 {margin-left: 5px; margin-right: 0px; padd=
ing-left: 10px; padding-right:0px; border-left: 1px solid #cccccc; margin-t=
op: 3px; padding-top: 0px; }=0Aa img { border: 0px; }=0Ali[style=3D'text-al=
ign: center;'], li[style=3D'text-align: right;'] {  list-style-position: in=
side;}=0Abody { font-family: Verdana; font-size: 12px;   }</style></head><b=
ody class=3D"plain"><div>Hello,</div><div><br /></div><div>The meta-atmel l=
ayer includes a BSP recipe called dt-overlay-at91[1] that pulls in a number =
of .dtso files for various peripheral devices that can be connected to the=
ir reference boards.</div><div><br /></div><div>I can=E2=80=99t figure out=
 how to get the overlays into the FIT image that my board is booting from. =
=C2=A0For the time being, if I have to include all of them then so be it b=
ut ideally I would like to be able to define which get used.</div><div><br=
 /></div><div>-Andy.</div><div><br /></div><div>[1] https://layers.openembed=
ded.org/layerindex/recipe/88706/</div><div id=3D"signature_old"><div>=C2=A0=
</div></div><div><br /></div>=0A</body></html>

--------=_MBD24889AF-F766-4D7B-95DA-B3A3B233B313--
