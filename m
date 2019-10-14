Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38DA4E00B65; Mon, 14 Oct 2019 05:23:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [216.40.44.194 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
X-Greylist: delayed 568 seconds by postgrey-1.32 at yocto-www;
	Mon, 14 Oct 2019 05:23:08 PDT
Received: from smtprelay.hostedemail.com (smtprelay0194.hostedemail.com
	[216.40.44.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF599E00924
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 05:23:08 -0700 (PDT)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave01.hostedemail.com (Postfix) with ESMTP id 89C901813B4FD
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 12:13:40 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 875D218043069
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 12:13:39 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: sack12_1fdcd57397f12
X-Filterd-Recvd-Size: 4562
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf17.hostedemail.com (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 12:13:38 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 14 Oct 2019 12:13:36 +0000
Message-Id: <em926f07ef-bb18-4cd8-a0b5-f3fc191114c4@andys-imac.leeshillfarm.local>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Subject: Partitioning SD cards
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
X-List-Received-Date: Mon, 14 Oct 2019 12:23:10 -0000
Content-Type: multipart/alternative;
	boundary="------=_MBA8525617-65F8-4DD4-A6F6-90C66ECD89C5"

--------=_MBA8525617-65F8-4DD4-A6F6-90C66ECD89C5
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,=0A=0AI am working on a custom platform where U-Boot will be programm=
ed into =0Aan SPI NOR flash device and the ext4 file systems will be in a r=
emovable =0AmicroSD card.  The Linux kernel itself will be stored in the /b=
oot =0Adirectory of the root file system.=0A=0AThe customer wants the (16GB=
) microSD card formatted as 1GB to mount at =0A/ and the remaining 15GB mou=
nted as /home.=0A=0AIn the recipe for my image I have defined the following =
to try to create =0Aa suitable image for writing to the microSD card:=0A=
=0AIMAGE_FSTYPES_append =3D " wic"=0AIMAGE_ROOTFS_SIZE =3D =E2=80=9C1048576=
=E2=80=9D=0A=0AThe image file that is being created is bigger than 1GB even =
though the =0Aroot file system is only a little over 450MB.  Looking at th=
e contents =0Aof what gets written to the microSD card this looks as though =
it is, in =0Apart, because it also includes the ~20MB =E2=80=9Cboot=E2=80=
=9D partition containing the =0Aboot files.=0A=0AA couple of questions=E2=
=80=A6=0A=0AHow do I stop the wic generation process including the FAT form=
atted =0A=E2=80=9Cboot=E2=80=9D partition?=0A=0AWhat is the best strategy f=
or partitioning / formatting / mounting the =0Asecond partition as /home? =
 Should it be part of the image build process =0Aor a one-time task run at f=
irst boot?=0A=0A-Andy.=0A=0A

--------=_MBA8525617-65F8-4DD4-A6F6-90C66ECD89C5
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style id=3D"css_styles">blockquote.cite { margin-left: 5px; ma=
rgin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px so=
lid #cccccc }=0Ablockquote.cite2 {margin-left: 5px; margin-right: 0px; padd=
ing-left: 10px; padding-right:0px; border-left: 1px solid #cccccc; margin-t=
op: 3px; padding-top: 0px; }=0Aa img { border: 0px; }=0Ali[style=3D'text-al=
ign: center;'], li[style=3D'text-align: right;'] {  list-style-position: in=
side;}=0Abody { font-family: Verdana; font-size: 12px;   }</style></head><b=
ody class=3D"plain"><div>Hello,</div><div><br /></div><div>I am working on=
 a custom platform where U-Boot will be programmed into an SPI NOR flash dev=
ice and the ext4 file systems will be in a removable microSD card. =C2=A0Th=
e Linux kernel itself will be stored in the /boot directory of the root fil=
e system.</div><div><br /></div><div>The customer wants the (16GB) microSD=
 card formatted as 1GB to mount at / and the remaining 15GB mounted as /home=
.</div><div><br /></div><div>In the recipe for my image I have defined the=
 following to try to create a suitable image for writing to the microSD card=
:</div><div><br /></div><div>IMAGE_FSTYPES_append =3D " wic"</div><div>IMAG=
E_ROOTFS_SIZE =3D =E2=80=9C1048576=E2=80=9D</div><div><br /></div><div>The=
 image file that is being created is bigger than 1GB even though the root fi=
le system is only a little over 450MB. =C2=A0Looking at the contents of wha=
t gets written to the microSD card this looks as though it is, in part, bec=
ause it also includes the ~20MB =E2=80=9Cboot=E2=80=9D partition containing =
the boot files.</div><div><br /></div><div>A couple of questions=E2=80=A6<=
/div><div><br /></div><div>How do I stop the wic generation process includi=
ng the FAT formatted =E2=80=9Cboot=E2=80=9D partition?</div><div><br /></di=
v><div>What is the best strategy for partitioning / formatting / mounting t=
he second partition as /home? =C2=A0Should it be part of the image build pr=
ocess or a one-time task run at first boot?</div><div><br /></div><div>-And=
y.</div><div><br /></div><div><br /></div><div></div>=0A</body></html>

--------=_MBA8525617-65F8-4DD4-A6F6-90C66ECD89C5--
