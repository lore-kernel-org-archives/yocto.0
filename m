Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 332C3E00D8F; Tue, 13 Aug 2019 03:21:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [216.40.44.67 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from smtprelay.hostedemail.com (smtprelay0067.hostedemail.com
	[216.40.44.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D672E00927
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 03:21:35 -0700 (PDT)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 066B7283D
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 10:21:34 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: son68_64e700c9c495a
X-Filterd-Recvd-Size: 4185
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf07.hostedemail.com (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 10:21:33 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Date: Tue, 13 Aug 2019 10:21:31 +0000
Message-Id: <emef36a268-6066-4af6-82a6-f8cb04f9c1a8@andys-imac.leeshillfarm.local>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Subject: Init stops working on second boot cycle
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
X-List-Received-Date: Tue, 13 Aug 2019 10:21:36 -0000
Content-Type: multipart/alternative;
	boundary="------=_MB6C3F4A9B-B8FC-4444-AF92-FABC6D5095A8"

--------=_MB6C3F4A9B-B8FC-4444-AF92-FABC6D5095A8
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99ve got a strange issue and I don=E2=80=99t know whether it is a Y=
octo related =0Aissue, a kernel issue or something else completely=E2=80=A6=
=0A=0AI have an image that is built with thud (2.6.2) using meta-atmel for=
 the =0ASAMA5D2-Xplained reference board.  I deploy the resulting .wic file=
 to =0Aan SD card and boot the reference board and all is OK.  I can log int=
o =0Athe terminal, upload files, etc. and again all seems to be well.=0A=0A=
If I press the reset button on the hardware platform, on the next boot =0Ac=
ycle it always stops with the following being last messages being =0Adispla=
yed:=0A=0AFreeing unused kernel memory: 1024K=0ARun /sbin/init as init proc=
ess=0AINIT: version 2.88 booting=0A=0AThe system hasn=E2=80=99t completely=
 hung as the occasional kernel message =0Aappears but the user space init pr=
ocess (sysvinit) doesn=E2=80=99t seem to be =0Aworking at all.  If I put th=
e SD card into a Linux desktop machine the =0Afile system on it is still va=
lid and the changes that I have made are =0Astill present.=0A=0AAnyone got=
 any ideas as to what is screwing it up?=0A=0A-Andy.=0A=0A=0A=0A

--------=_MB6C3F4A9B-B8FC-4444-AF92-FABC6D5095A8
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style id=3D"css_styles">blockquote.cite { margin-left: 5px; ma=
rgin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px so=
lid #cccccc }=0Ablockquote.cite2 {margin-left: 5px; margin-right: 0px; padd=
ing-left: 10px; padding-right:0px; border-left: 1px solid #cccccc; margin-t=
op: 3px; padding-top: 0px; }=0Aa img { border: 0px; }=0Ali[style=3D'text-al=
ign: center;'], li[style=3D'text-align: right;'] {  list-style-position: in=
side;}=0Abody { font-family: Verdana; font-size: 12px;   }</style></head><b=
ody class=3D"plain"><div>I=E2=80=99ve got a strange issue and I don=E2=80=
=99t know whether it is a Yocto related issue, a kernel issue or something=
 else completely=E2=80=A6</div><div><br /></div><div>I have an image that is =
built with thud (2.6.2) using meta-atmel for the SAMA5D2-Xplained referenc=
e board. =C2=A0I deploy the resulting .wic file to an SD card and boot the=
 reference board and all is OK. =C2=A0I can log into the terminal, upload fi=
les, etc. and again all seems to be well.</div><div><br /></div><div>If I p=
ress the reset button on the hardware platform, on the next boot cycle it a=
lways stops with the following being last messages being displayed:</div><d=
iv><br /></div><div>Freeing unused kernel memory: 1024K</div><div>Run /sbin=
/init as init process</div><div>INIT: version 2.88 booting</div><div><br />=
</div><div>The system hasn=E2=80=99t completely hung as the occasional kern=
el message appears but the user space init process (sysvinit) doesn=E2=80=
=99t seem to be working at all. =C2=A0If I put the SD card into a Linux des=
ktop machine the file system on it is still valid and the changes that I ha=
ve made are still present.</div><div><br /></div><div>Anyone got any ideas=
 as to what is screwing it up?</div><div><br /></div><div>-Andy.</div><div i=
d=3D"signature_old"><div>=C2=A0</div><div>=C2=A0</div><div>=C2=A0</div></di=
v><div><br /></div>=0A</body></html>

--------=_MB6C3F4A9B-B8FC-4444-AF92-FABC6D5095A8--
