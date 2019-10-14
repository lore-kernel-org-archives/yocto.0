Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40597E00B65; Mon, 14 Oct 2019 05:53:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [216.40.44.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from smtprelay.hostedemail.com (smtprelay0195.hostedemail.com
	[216.40.44.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 615FFE00973
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 05:53:28 -0700 (PDT)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 4C58A100E7B45;
	Mon, 14 Oct 2019 12:53:27 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: board39_583b0be5aa80f
X-Filterd-Recvd-Size: 4719
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf13.hostedemail.com (Postfix) with ESMTPA;
	Mon, 14 Oct 2019 12:53:26 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>
Date: Mon, 14 Oct 2019 12:53:23 +0000
Message-Id: <embc564463-42d3-4bec-8064-19278acc8b91@andys-imac.leeshillfarm.local>
In-Reply-To: <7f04b29d-9ac6-28d2-2db8-33eae0289ccc@3mdeb.com>
References: <em926f07ef-bb18-4cd8-a0b5-f3fc191114c4@andys-imac.leeshillfarm.local>
	<7f04b29d-9ac6-28d2-2db8-33eae0289ccc@3mdeb.com>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Partitioning SD cards
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
X-List-Received-Date: Mon, 14 Oct 2019 12:53:29 -0000
Content-Type: multipart/alternative;
	boundary="------=_MB45B41717-42BA-4CD8-8171-45105BAB214E"

--------=_MB45B41717-42BA-4CD8-8171-45105BAB214E
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Maciej wrote...=0A=0A>>How do I stop the wic generation process including t=
he FAT formatted =0A>>=E2=80=9Cboot=E2=80=9D partition?=0A>This depends on=
 the wic (.wks) file you are using.=0AI have been using the default one (sdi=
mage-bootpart.wks)?=0A=0A>>What is the best strategy for partitioning / for=
matting / mounting the =0A>>second partition as /home?  Should it be part o=
f the image build =0A>>process or a one-time task run at first boot?=0A>Use =
--exclude-path and --rootfs-dir flags in the .wks file.=0A>You can look at =
my example, where I extract one subdir from rootfs =0A>(/storage in this c=
ase) on a separate partition.=0A>https://github.com/3mdeb/meta-rte/blob/mas=
ter/wic/sunxi-mmc-spl.wks=0AI have created a =E2=80=9Cwic=E2=80=9D director=
y in my custom layer and copied =0Asdimage-bootpart.wks into it as sdimage-=
project.wks without making any =0Achanges but =E2=80=9Cwic list image=E2=80=
=9D throws an error with the new .wks file:=0A=0AUnicodeDecodeError: 'utf-8=
' codec can't decode byte 0xb0 in position 37: =0Ainvalid start byte=0A=0A-=
Andy.

--------=_MB45B41717-42BA-4CD8-8171-45105BAB214E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style id=3D"css_styles">blockquote.cite { margin-left: 5px; ma=
rgin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px so=
lid #cccccc }=0Ablockquote.cite2 {margin-left: 5px; margin-right: 0px; padd=
ing-left: 10px; padding-right:0px; border-left: 1px solid #cccccc; margin-t=
op: 3px; padding-top: 0px; }=0Aa img { border: 0px; }=0Ali[style=3D'text-al=
ign: center;'], li[style=3D'text-align: right;'] {  list-style-position: in=
side;}=0Abody { font-family: Verdana; font-size: 12px;   }</style></head><b=
ody class=3D"plain"><div><div>Maciej wrote...</div>=0A</div><div><br /></di=
v>=0A<div id=3D"x8d469debe0aa44d"><blockquote type=3D"cite" class=3D"cite2"=
><blockquote type=3D"cite" class=3D"cite"><div>How do I stop the wic genera=
tion process including the FAT=0A        formatted =E2=80=9Cboot=E2=80=9D p=
artition?</div>=0A    </blockquote>=0A    This depends on the wic (.wks) fi=
le you are using.</blockquote>I have been using the default one (sdimage-bo=
otpart.wks)?</div><div id=3D"x8d469debe0aa44d"><br /></div><div id=3D"x8d46=
9debe0aa44d"><blockquote type=3D"cite" class=3D"cite2">=0A    <blockquote t=
ype=3D"cite" class=3D"cite">=0A      <div>What is the best strategy for par=
titioning / formatting /=0A        mounting the second partition as /home? =
=C2=A0Should it be part of=0A        the image build process or a one-time =
task run at first boot?</div>=0A    </blockquote>=0A    Use --exclude-path =
and --rootfs-dir flags in the .wks file.<br />=0A    You can look at my ex=
ample, where I extract one subdir from rootfs=0A    (/storage in this case) =
on a separate partition.<br />=0A    https://github.com/3mdeb/meta-rte/blo=
b/master/wic/sunxi-mmc-spl.wks</blockquote><blockquote type=3D"cite" class=
=3D"cite2"></blockquote>I have created a =E2=80=9Cwic=E2=80=9D directory in =
my custom layer and copied sdimage-bootpart.wks into it as sdimage-project=
.wks without making any changes but =E2=80=9Cwic list image=E2=80=9D throws =
an error with the new .wks file:</div><div id=3D"x8d469debe0aa44d"><br /><=
/div><div id=3D"x8d469debe0aa44d">UnicodeDecodeError: 'utf-8' codec can't d=
ecode byte 0xb0 in position 37: invalid start byte</div><div id=3D"x8d469de=
be0aa44d"><br /></div><div id=3D"x8d469debe0aa44d">-Andy.</div>=0A=0A=0A</b=
ody></html>

--------=_MB45B41717-42BA-4CD8-8171-45105BAB214E--
