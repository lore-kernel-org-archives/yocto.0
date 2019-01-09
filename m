Return-Path: <Kamal.Pandey@ifm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89B96E00BC8; Wed,  9 Jan 2019 07:50:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [91.90.150.23 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from s2023.ppsmtp.net (s2023.ppsmtp.net [91.90.150.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DBF3E009B1
	for <yocto@yoctoproject.org>; Wed,  9 Jan 2019 07:50:09 -0800 (PST)
Received: from pps.filterd (s2023.ppsmtp.net [127.0.0.1])
	by s2023.ppsmtp.net (8.16.0.22/8.16.0.22) with SMTP id x09FegDe005923
	for <yocto@yoctoproject.org>; Wed, 9 Jan 2019 16:50:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ifm.com;
	h=from : to : subject :
	date : message-id : mime-version : content-type; s=pps;
	bh=mfDqwJ0RXOCbGyPz8tw8Atdh9+gTnvNjZOWVC2PGyB0=;
	b=wgOvLUUFknlqGG4DABZ0XOU4NXQZawcO7DxtqeUbqc8d+jlPzaow4P2zRdYCx5/fTIJa
	unKX2qUtVTixbbScO2GwEtn36TNno1lnz7qpeXmRSVrq7uaXa5L4GKKyb1LTR9PTVNoU
	jYl8Or+AlfD+Reytf0HLeI9iTgofYeuX6FQedEjcxr4GZMAkf7H1vnbXrs3Hv+BKauFt
	ugDzMMgSIK4cW79XaaFDNKihS1g6YMGGMcTuXSAVPRBe0U8ZiIBOzpPyRQ5Y124UnJIW
	MxrGS39Edoff3RlCqNVW91JahLVGcsJ5B02Ptdw0Vkn/olpXGC1kuo+YMLnpoYFXuLyx
	0w== 
Received: from deesdmz227.dmz.es.de.ifm (mail27.ifm.com [194.156.152.227])
	by s2023.ppsmtp.net with ESMTP id 2ptkhcrdrp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Wed, 09 Jan 2019 16:50:08 +0100
Received: from deesdmz227.dmz.es.de.ifm (localhost [127.0.0.1])
	by deesdmz227.dmz.es.de.ifm (Postfix) with ESMTP id EAA4D884444
	for <yocto@yoctoproject.org>; Wed,  9 Jan 2019 16:50:07 +0100 (CET)
From: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: unable to boot r5 core while using meta-openamp layer for r5 and
	a53 communication
Thread-Index: AdSoMtG6V0pxWidrSmGbehd/Xoux8w==
Date: Wed, 9 Jan 2019 15:50:04 +0000
Message-ID: <b2368de96f154338ae4e4eeba8ff7790@ifm.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.29.169.147]
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.2.1013-24350.000
X-TM-AS-Result: No-12.561300-5.000000-10
X-TMASE-MatchedRID: IsCpxH92vNF+S5m2/8VLmn1hCKg0ss1NIQ+LdPSbXXcr193kjpYE65a5
	q8APeXN1/zHzlVrCtbF7wVopF8zag9jWmbQB5MpqVIIGDZeg8BePvbsUGjabk/eJL0zTNbVnguw
	XfXQpbhhPXYdz0WFWNQPZZctd3P4B5upRESNMRR/y/UzgUWIix+5YoCKgzs8LPf7xVQccaoBJpV
	9rHFX3jwK3yA1Y0A1+wbRQ2Bpmlioay+BQxgCfhZb7No0srrTk7KBBZ2QBUyzQ23n+P5pIMRQji
	zXtCXfTWYqLLUX2mAtB6yOrxc8xu7PksiHb4g58j2iyfwmt0k+fT+tFD2StERGdJ4eSxuIY9yaX
	hPhnUZ2CIg7tJ//usYvptQwz5tsiM9g+YfdqJKFCI7pNLiSjfeRqQAxbWD9+4vM1YF6AJbY96sx
	ygIbFGLhRbCW0NeMwOlxBO2IcOBbcvaIPwt7/5A8uf8uciuBOuPQM+MMyaKxsUdzK/wXISklQD3
	huyb83EGLyuXet/fhTFwUImVnoQtOWFiV/DxJkrCr6U+RgVLYJK2MK45H+GA==
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--12.561300-5.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.2.1013-24350.000
X-TM-SNTS-SMTP: A79EAFC67D9A53FB8053BDA0A35E457365CE2E719E8F6D89A0DA186AEDAFA65C2002:9
x-c2processedorg: 02c94ccb-b9eb-40fe-af38-4bcaa8aaafa4
MIME-Version: 1.0
X-CompuMailGateway: Version: 7.00.0.19367.x86_64 COMPUMAIL Date:
	20190109155007Z
X-Proofpoint-ID: SID=2ptkhcrdrp QID=2ptkhcrdrp-1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-01-09_07:, , signatures=0
Subject: unable to boot r5 core while using meta-openamp layer for r5 and a53 communication
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
X-List-Received-Date: Wed, 09 Jan 2019 15:50:11 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_b2368de96f154338ae4e4eeba8ff7790ifmcom_"

--_000_b2368de96f154338ae4e4eeba8ff7790ifmcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
I am trying to run echo_test between r5 and a53 cores. I am following Build=
ing Linux Applications Using OpenAMP RPMsg in Linux
Userspace (UG1186). I built the Linux a53 side image using yocto and did th=
e changes in device tree as per mentioned in UG1186 (userspace part page no=
. 39).
Also, I updated the bootgen.bif file by adding the line :
[destination_cpu=3Dr5-0] <path to RPU firmware>
I created the RPU firmware elf file using Xilinx SDK and it also contains t=
he echo_test along with openamp and libmetal. I did not include this elf fi=
le in my yocto project.
It is just mentioned in the.bif file with proper path.
While booting the machine I did not see any logs for r5 booting as mention =
in ZynqMP Linux Master running on APU with RPMsg in userspace and 2 RPU sla=
ves  of the link<https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/1884=
2144/OpenAMP+2018.1#OpenAMP2018.1-ZynqMPLinuxMasterrunningonAPULinuxloadsOp=
enAMPRPUFirmware> as shown :
Starting application...
Try to init remoteproc resource
Init remoteproc resource succeeded
Waiting for events...
Also, while booting the a53 core and running echo_test-openamp, I get the f=
ollowing output :
metal: info:      metal_uio_dev_open: No IRQ for device 3ed40000.vring.
metal: info:      metal_uio_dev_open: No IRQ for device 3ed40000.vring.
metal: info:      metal_uio_dev_open: No IRQ for device 3ed80000.shm.
1 - Send data to remote core, retrieve the echo and validate its integrity =
..
Remote proc resource initialized.

and then nothing. I had to press Ctrl+C to abort.
Can somebody explain what am I missing and how can I boot r5 core?


--_000_b2368de96f154338ae4e4eeba8ff7790ifmcom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-IN" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal">I am trying to run echo_test between r5 and a53 core=
s. I am following&nbsp;Building Linux Applications Using&nbsp;OpenAMP&nbsp;=
RPMsg in Linux<o:p></o:p></p>
<p class=3D"MsoNormal">Userspace (UG1186). I built the Linux&nbsp;a53 side =
image using yocto and did the changes in device tree as per mentioned in UG=
1186 (userspace part page no. 39).<o:p></o:p></p>
<p class=3D"MsoNormal">Also, I updated the bootgen.bif&nbsp;file by adding =
the line :<o:p></o:p></p>
<p class=3D"MsoNormal"><i>[destination_cpu=3Dr5-0] &lt;path to RPU firmware=
&gt;<o:p></o:p></i></p>
<p class=3D"MsoNormal">I created the RPU firmware elf file using Xilinx SDK=
 and it also contains the echo_test along with openamp and libmetal. I did =
not include this elf file in my yocto project.<o:p></o:p></p>
<p class=3D"MsoNormal">It is just mentioned in the.bif&nbsp;file with prope=
r path.<o:p></o:p></p>
<p class=3D"MsoNormal">While booting&nbsp;the machine I<b>&nbsp;did not see=
</b>&nbsp;any logs for r5 booting as mention in ZynqMP Linux Master running=
 on APU with RPMsg in userspace and 2 RPU slaves&nbsp; of the&nbsp;<a href=
=3D"https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18842144/OpenAMP&=
#43;2018.1#OpenAMP2018.1-ZynqMPLinuxMasterrunningonAPULinuxloadsOpenAMPRPUF=
irmware" target=3D"_blank">link</a>&nbsp;as
 shown :<o:p></o:p></p>
<p class=3D"MsoNormal"><i>Starting application...<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>Try to init remoteproc resource<o:p></o:p></i></p=
>
<p class=3D"MsoNormal"><i>Init remoteproc resource succeeded<o:p></o:p></i>=
</p>
<p class=3D"MsoNormal"><i>Waiting for events...<o:p></o:p></i></p>
<p class=3D"MsoNormal">Also, while booting the a53 core and running echo_te=
st-openamp,&nbsp;I get the following output :<o:p></o:p></p>
<p class=3D"MsoNormal"><i>metal: info:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; metal_=
uio_dev_open: No IRQ for device 3ed40000.vring.<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>metal: info:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; metal_=
uio_dev_open: No IRQ for device 3ed40000.vring.<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>metal: info:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; metal_=
uio_dev_open: No IRQ for device 3ed80000.shm.<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>1 - Send data to remote core, retrieve the echo a=
nd validate its integrity ..<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>Remote proc resource initialized.<o:p></o:p></i><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">and then nothing. I had to press Ctrl&#43;C to abort=
.<o:p></o:p></p>
<p class=3D"MsoNormal">Can somebody explain what am I missing and how can I=
 boot r5 core?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_b2368de96f154338ae4e4eeba8ff7790ifmcom_--
