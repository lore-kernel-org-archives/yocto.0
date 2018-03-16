Return-Path: <sarayu@m5nv.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 058EBE0084E; Thu, 15 Mar 2018 21:54:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.208.4.197 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Mar 2018 21:53:59 PDT
Received: from mout.perfora.net (mout.perfora.net [74.208.4.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AA7EE00708
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 21:53:59 -0700 (PDT)
Received: from sarayugiripc ([122.167.54.211]) by mrelay.perfora.net
	(mreueus003 [74.208.5.2]) with ESMTPSA (Nemesis) id
	0MHFEj-1erWkf38LL-00E86k
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 05:48:56 +0100
From: <sarayu@m5nv.com>
To: <yocto@yoctoproject.org>
Date: Fri, 16 Mar 2018 10:18:45 +0530
Message-ID: <000f01d3bce2$13d4a490$3b7dedb0$@m5nv.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdO84VXUpMI05a1eTu2hwcPV0eVUcw==
X-Provags-ID: V03:K0:CdkvhyxRgl3CRka+xyHQG7ztgLJmI8fQVAnnWCKFw+GQvbZVrcB
	/v2jrmDssM2Kjb93MhXGdvBGN48uB9Y4HX1izBvDg82M8d7LQYIfj8GAO3lzztwQY3dvFqK
	SHOO0prxKnEZLh8fcQhdHeo70u6zb2d+1vyu7dkbdGRxruL8HWZbX85+Xe5AbdOJiBtQWC3
	K2FnplZi4z3Ps8ycTzOvg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:p6XqOuQke2E=:Liqogo16p16ZwqqICT9qmj
	sSFWCHrn2dbhf2MVM/cmIVCzvyzdOoPgoVjVPwelnVWSPJ5JmjMnMbe8XC4NCyyOvire4TvQj
	HZrSuivsqkYJgMHAymaQnCMr73zs7u1dpE9/12CI7TRrc6461S8NDJRPnLeeVb5m9MJhjSPaW
	5SfBTZgWWn2N65nxm2l/mZ1Gv9SGA3sKuRdTZG1Tzx5XVv1nZpHLVvmaAZth9lTDPCrV7L2ic
	1GEzK37gAf9qxphldh97sEoUe4ixGJDFtKEpd/iWU3UeTx1U2ZN/4IQcHG2jxf+20FA5CaVFo
	DaC0wsLpK+AyFrN1Uxu8aoCv5GZu4cS7mA+fCZJjBNVnzyCISjE64gkxmQf8zRpVGmWKGiuVu
	ISP7Ld2vT9qHGiJ2qPZaJRmJ5fYFr5Zy4g3oVsazROw9bSRPJX1FkTMbyc0mG0b2oWh2sWEQX
	BNk13tMHLvbW7vx/OC3kjtA4+E2Ohgn4XLgCEX07Ei3bqxkPaxxPzFnXNrJ4HGKhCBqMS+GbV
	Gw0J/uCuEUiO6kPVPgaFr1niA9Bq17BhJ+wnDGQfatnf6WFow3pmzhpOOsuv4QW0NNDNBqWZ5
	eyokow3xFRst4sG6DV8uw9cGAs0Wgj4+ZPuGFKSJaQ40m2ttDq/ORdkyS6lqWoOiCyzqNLXC3
	SETvMT2hMlbxE+q8ej+4iInrr2kzykJhxubapstPGCDuP6+nf4kMQasOmMU4SaPpdqy6EVlRe
	RSRp36P005m4rZ9JgDjTs6MYbXgrg5bXE3xpkq6lfepZCFxBV7Cz2BHy/7k=
X-Mailman-Approved-At: Mon, 19 Mar 2018 08:36:15 -0700
Subject: Issue with gcc6
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
X-List-Received-Date: Fri, 16 Mar 2018 04:54:01 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0010_01D3BD10.2D9C9800"
Content-Language: en-in

------=_NextPart_000_0010_01D3BD10.2D9C9800
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi , 

 

I was trying to setup yocto on my debian VM and pulled the latest yocto fido
and tried to compile the core_image_sato. 

I am getting the below error in the base build.

 

/home/sarayu/code/yocto-sample/poky/build/tmp/work/x86_64-linux/elfutils-nat
ive/0.161-r0/elfutils-0.161/libebl/eblinitreg.c:50:26: error: nonnull
argument 'ebl' compared to NULL [-Werror=nonnull-compare]

|    return ebl == NULL ? 0 : ebl->frame_nregs;

|           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~

| cc1: all warnings being treated as errors

| Makefile:529: recipe for target 'eblinitreg.o' failed

| make[2]: *** [eblinitreg.o] Error 1

 

 

Can you please let me know if a patch or fix is already available for the
same. 

Thanks in advance for your help.

 

Thanks and Regards

Sarayu


------=_NextPart_000_0010_01D3BD10.2D9C9800
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-IN link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>Hi , =
<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>I was trying to setup yocto on my debian VM and pulled =
the latest yocto fido and tried to compile the core_image_sato. =
<o:p></o:p></p><p class=3DMsoNormal>I am getting the below error in the =
base build.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>/home/sarayu/code/yocto-sample/poky/build/tmp/work/x86_=
64-linux/elfutils-native/0.161-r0/elfutils-0.161/libebl/eblinitreg.c:50:2=
6: error: nonnull argument 'ebl' compared to NULL =
[-Werror=3Dnonnull-compare]<o:p></o:p></p><p =
class=3DMsoNormal>|&nbsp;&nbsp;&nbsp; return ebl =3D=3D NULL ? 0 : =
ebl-&gt;frame_nregs;<o:p></o:p></p><p =
class=3DMsoNormal>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~<o:p></o:p></p><p =
class=3DMsoNormal>| cc1: all warnings being treated as =
errors<o:p></o:p></p><p class=3DMsoNormal>| Makefile:529: recipe for =
target 'eblinitreg.o' failed<o:p></o:p></p><p class=3DMsoNormal>| =
make[2]: *** [eblinitreg.o] Error 1<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Can you =
please let me know if a patch or fix is already available for the same. =
<o:p></o:p></p><p class=3DMsoNormal>Thanks in advance for your =
help.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thanks and Regards<o:p></o:p></p><p =
class=3DMsoNormal>Sarayu<o:p></o:p></p></div></body></html>

------=_NextPart_000_0010_01D3BD10.2D9C9800--
