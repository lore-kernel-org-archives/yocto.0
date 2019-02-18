Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B0C2E00C38; Mon, 18 Feb 2019 03:10:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,MISSING_MID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (idealsim[at]laposte.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [194.117.213.102 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  0.5 MISSING_MID Missing Message-Id: header
X-Greylist: delayed 1392 seconds by postgrey-1.32 at yocto-www;
	Mon, 18 Feb 2019 03:10:29 PST
Received: from smtp.laposte.net (smtpoutz27.laposte.net [194.117.213.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41BE4E00A54
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 03:10:29 -0800 (PST)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout015 (Postfix) with ESMTP id 3A2BE276650
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 11:47:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail0;
	t=1550486836; bh=sI6P5mKy4QtD8DAtkholM4NoWujXlIE6l1usVBSmfWs=;
	h=To:From:Subject:Date;
	b=Bzj16ZIdGTIbZ0xN/6XV6fHdT42NVE9pej6C2Ag4zkl1YUElin6WVS20PObvvnRjY
	4uJjIkZU7SwjxHjZiKh9mbkT0b7calL49IlXwkIgcBYM8eyjS33KGGDGMXGuJVK6sf
	uGfS6oLSW0BYgGnoXdrbZI6LQeRNF81n4mVjGRrK/oUV7mtiPqh0B1bKMZVif32Ysk
	4aYNOqL9Lkm4n7j++/Y/pw4HE4Appn8z0puk/pGZoDbpLHs6jjqBYQAcjYwsgcjLJR
	OY02taqCTxqkBHdOhG54UntnUX6su8kllTnPLstP/+hx/7lxQWz2MWeUwchh4W8l1Z
	uOz0JuoN0Ap7g==
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout015 (Postfix) with ESMTP id 2B76C276910
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 11:47:16 +0100 (CET)
Received: from lpn-prd-vrin004 (lpn-prd-vrin004.laposte [10.128.63.5])
	by lpn-prd-vrout015 (Postfix) with ESMTP id 263EB276650
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 11:47:16 +0100 (CET)
Received: from lpn-prd-vrin004 (localhost [127.0.0.1])
	by lpn-prd-vrin004 (Postfix) with ESMTP id 177F4728938
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 11:47:16 +0100 (CET)
Received: from [IPv6:::ffff:192.168.1.27]
	(lstlambert-657-1-115-3.w92-154.abo.wanadoo.fr [92.154.26.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by lpn-prd-vrin004 (Postfix) with ESMTPSA id DEFE87288D9
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 11:47:15 +0100 (CET)
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: modjoi <idealsim@laposte.net>
Date: Mon, 18 Feb 2019 11:47:16 +0100
Importance: normal
X-Priority: 3
X-VR-FullState: 0
X-VR-Score: 10
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrgedutddrtddtgddtudcutefuodetggdotefrodftvfcurfhrohhf
X-VR-Cause-2: ihhlvgemucfntefrqffuvffgnecuuegrihhlohhuthemucehtddtnecuogfpohfkffculddutddmnecu
X-VR-Cause-3: jfgurhepggfvhffuffgkrfgtsehmtddtredttdejnecuhfhrohhmpehmohgujhhoihcuoehiuggvrghl
X-VR-Cause-4: shhimheslhgrphhoshhtvgdrnhgvtheqnecuffhomhgrihhnpehjuhhmphhnohifthgvkhdrtghomhdp
X-VR-Cause-5: ghhithhhuhgsrdgtohhmpdhmihgtrhhoshhofhhtrdgtohhmnecukfhppeelvddrudehgedrvdeirdef
X-VR-Cause-6: necurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhinhgvthepledvrdduheegrddviedrfedphhgv
X-VR-Cause-7: lhhopeglkffrvheimeemmehffhhffhemudelvddrudeikedruddrvdejngdpmhgrihhlfhhrohhmpehi
X-VR-Cause-8: uggvrghlshhimheslhgrphhoshhtvgdrnhgvthdprhgtphhtthhopeihohgtthhoseihohgtthhophhr
X-VR-Cause-9: ohhjvggtthdrohhrghenucevlhhushhtvghrufhiiigvpedt
X-VR-AvState: No
X-VR-State: 0
X-VR-State: 0
Message-Id: <20190218111031.6B0C2E00C38@yocto-www.yoctoproject.org>
X-Mailman-Approved-At: Mon, 18 Feb 2019 10:32:45 -0800
Subject: [meta-raspberry] Bluetooth issue
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
X-List-Received-Date: Mon, 18 Feb 2019 11:10:31 -0000
X-Groupsio-MsgNum: 44139
Content-Type: multipart/mixed;
	boundary="_FE644085-5AD5-4936-A897-49B3D85C1D32_"

--_FE644085-5AD5-4936-A897-49B3D85C1D32_
Content-Type: multipart/alternative;
	boundary="_95C4F33C-7258-4948-9D31-737495F0A395_"

--_95C4F33C-7258-4948-9D31-737495F0A395_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi all, I=E2=80=99m making an image for a rpi3 from this meta=C2=A0: https:=
//github.com/jumpnow/meta-rpi here the instruction for build=C2=A0: https:/=
/jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html

I have a problem with the integrated Bluetooth soc on rpi3. It seems that i=
s not recognized/mounted at boot sequence. On pi when i use Bluetoothctl i =
have this=C2=A0:=20

root@rpi3:~# bluetoothctl=20
Agent registered
[bluetooth]# power on
No default controller available
[bluetooth]# exit
root@rpi3:~# exit

If i plug a Bluetooth usb dongle on pi, it work fine (the usb dongle).

root@raspberrypi3:~# bluetoothctl
Agent registered
[bluetooth]# list
Controller 5C:F3:70:92:25:A4 BlueZ 5.50 [default] [bluetooth]#

For information, the branch is thud and see join the local.conf i use. This=
 image use sysvinit.

Do you have an idea how to resolve this=C2=A0please ?

Regards,

Micka=C3=ABl

Provenance=C2=A0: Courrier pour Windows 10


--_95C4F33C-7258-4948-9D31-737495F0A395_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta ht=
tp-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta name=
=3DGenerator content=3D"Microsoft Word 15 (filtered medium)"><style><!--
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Texte brut Car";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.TextebrutCar
	{mso-style-name:"Texte brut Car";
	mso-style-priority:99;
	mso-style-link:"Texte brut";
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3DFR link=3Dblue vlink=3D"#954F72"><div class=
=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-GB>Hi all, I=E2=80=99m=
 making an image for a rpi3 from this meta&nbsp;: <a href=3D"https://github=
.com/jumpnow/meta-rpi">https://github.com/jumpnow/meta-rpi</a> here the ins=
truction for build&nbsp;: <a href=3D"https://jumpnowtek.com/rpi/Raspberry-P=
i-Systems-with-Yocto.html">https://jumpnowtek.com/rpi/Raspberry-Pi-Systems-=
with-Yocto.html</a><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3D=
EN-GB><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-GB>I=
 have a problem with the integrated Bluetooth soc on rpi3. It seems that is=
 not recognized/mounted at boot sequence. On pi when i use Bluetoothctl i h=
ave this&nbsp;: <o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-=
GB><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><i><span lang=3DEN-GB s=
tyle=3D'color:#767171;mso-style-textfill-fill-color:#767171;mso-style-textf=
ill-fill-alpha:100.0%'>root@rpi3:~# bluetoothctl <o:p></o:p></span></i></p>=
<p class=3DMsoNormal><i><span lang=3DEN-GB style=3D'color:#767171;mso-style=
-textfill-fill-color:#767171;mso-style-textfill-fill-alpha:100.0%'>Agent re=
gistered<o:p></o:p></span></i></p><p class=3DMsoNormal><i><span lang=3DEN-G=
B style=3D'color:#767171;mso-style-textfill-fill-color:#767171;mso-style-te=
xtfill-fill-alpha:100.0%'>[bluetooth]# power on<o:p></o:p></span></i></p><p=
 class=3DMsoNormal><i><span lang=3DEN-GB style=3D'color:#767171;mso-style-t=
extfill-fill-color:#767171;mso-style-textfill-fill-alpha:100.0%'>No default=
 controller available<o:p></o:p></span></i></p><p class=3DMsoNormal><i><spa=
n lang=3DEN-GB style=3D'color:#767171;mso-style-textfill-fill-color:#767171=
;mso-style-textfill-fill-alpha:100.0%'>[bluetooth]# exit<o:p></o:p></span><=
/i></p><p class=3DMsoNormal><i><span lang=3DEN-GB style=3D'color:#767171;ms=
o-style-textfill-fill-color:#767171;mso-style-textfill-fill-alpha:100.0%'>r=
oot@rpi3:~# exit<o:p></o:p></span></i></p><p class=3DMsoNormal><span lang=
=3DEN-GB><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-G=
B>If i plug a Bluetooth usb dongle on pi, it work fine (the usb dongle).<o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-GB><o:p>&nbsp;</o:p=
></span></p><div><p class=3DMsoPlainText><i><span lang=3DEN-GB style=3D'col=
or:#767171;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill-al=
pha:100.0%'>root@raspberrypi3:~# bluetoothctl<o:p></o:p></span></i></p><p c=
lass=3DMsoPlainText><i><span lang=3DEN-GB style=3D'color:#767171;mso-style-=
textfill-fill-color:#767171;mso-style-textfill-fill-alpha:100.0%'>Agent reg=
istered<o:p></o:p></span></i></p><p class=3DMsoPlainText><i><span lang=3DEN=
-GB style=3D'color:#767171;mso-style-textfill-fill-color:#767171;mso-style-=
textfill-fill-alpha:100.0%'>[bluetooth]# list<o:p></o:p></span></i></p><p c=
lass=3DMsoPlainText><i><span lang=3DEN-GB style=3D'color:#767171;mso-style-=
textfill-fill-color:#767171;mso-style-textfill-fill-alpha:100.0%'>Controlle=
r 5C:F3:70:92:25:A4 BlueZ 5.50 [default] [bluetooth]#<o:p></o:p></span></i>=
</p><p class=3DMsoPlainText><i><span lang=3DEN-GB style=3D'color:#767171;ms=
o-style-textfill-fill-color:#767171;mso-style-textfill-fill-alpha:100.0%'><=
o:p>&nbsp;</o:p></span></i></p></div><p class=3DMsoNormal><span lang=3DEN-G=
B>For information, the branch is thud and see join the local.conf i use. Th=
is image use sysvinit.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-GB><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-G=
B>Do you have an idea how to resolve this&nbsp;please ?<o:p></o:p></span></=
p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Regards,</=
p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Micka=C3=
=ABl</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Prov=
enance&nbsp;: <a href=3D"https://go.microsoft.com/fwlink/?LinkId=3D550986">=
Courrier</a> pour Windows 10</p><p class=3DMsoNormal><span lang=3DEN-GB><o:=
p>&nbsp;</o:p></span></p></div></body></html>=

--_95C4F33C-7258-4948-9D31-737495F0A395_--

--_FE644085-5AD5-4936-A897-49B3D85C1D32_
Content-Type: application/octet-stream; name="local.conf"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="local.conf"

IyBMb2NhbCBjb25maWd1cmF0aW9uIGZvciBtZXRhLXJwaSBpbWFnZXMKIyBZb2N0byBQcm9qZWN0
IDIuNiBQb2t5IGRpc3RyaWJ1dGlvbiBbdGh1ZF0gYnJhbmNoCiMgVGhpcyBpcyBhIHN5c3Zpbml0
IHN5c3RlbQoKTElDRU5TRV9GTEFHU19XSElURUxJU1QgPSAiY29tbWVyY2lhbCIKCkRJU1RST19G
RUFUVVJFUyArPSAiYmx1ZXo1IHdpZmkgZXh0MiBvcGVuZ2wgdXNiaG9zdCAke0RJU1RST19GRUFU
VVJFU19MSUJDfSIKCkRJU1RST19GRUFUVVJFU19CQUNLRklMTF9DT05TSURFUkVEICs9ICJwdWxz
ZWF1ZGlvIgoKUFJFRkVSUkVEX1BST1ZJREVSX2pwZWcgPSAibGlianBlZy10dXJibyIKUFJFRkVS
UkVEX1BST1ZJREVSX2pwZWctbmF0aXZlID0gImxpYmpwZWctdHVyYm8tbmF0aXZlIgoKUFJFRkVS
UkVEX1BST1ZJREVSX3VkZXYgPSAiZXVkZXYiClZJUlRVQUwtUlVOVElNRV9pbml0X21hbmFnZXIg
PSAic3lzdmluaXQiIAoKTUFDSElORV9GRUFUVVJFU19yZW1vdmUgPSAiYXBtIgoKSU1BR0VfRlNU
WVBFUyA9ICJ0YXIueHoiCgojIENob29zZSB0aGUgYm9hcmQgeW91IGFyZSBidWlsZGluZyBmb3IK
I01BQ0hJTkU9InJhc3BiZXJyeXBpIgojTUFDSElORT0icmFzcGJlcnJ5cGkwIgojTUFDSElORT0i
cmFzcGJlcnJ5cGkwLXdpZmkiCiNNQUNISU5FPSJyYXNwYmVycnlwaTIiCk1BQ0hJTkUgPSAicmFz
cGJlcnJ5cGkzIgojTUFDSElORT0icmFzcGJlcnJ5cGktY20iCiNNQUNISU5FPSJyYXNwYmVycnlw
aS1jbTMiCgpNQUNISU5FX0VYVFJBX1JSRUNPTU1FTkRTICs9ICJcCiAgICBsaW51eC1maXJtd2Fy
ZS1ycGlkaXN0cm8tYmNtNDM0MzAgXAogICAgbGludXgtZmlybXdhcmUtcnBpZGlzdHJvLWJjbTQz
NDU1IFwKICAgIGJsdWV6LWZpcm13YXJlLXJwaWRpc3Ryby1iY200MzQzMGExLWhjZCBcCiAgICBi
bHVlei1maXJtd2FyZS1ycGlkaXN0cm8tYmNtNDM0NWMwLWhjZCBcCiIKCiMgQ2hvaWNlcyBhcmUg
SW1hZ2Ugb3IgekltYWdlIGlmIE5PVCB1c2luZyB1LWJvb3QgKG5vIHUtYm9vdCBpcyB0aGUgZGVm
YXVsdCkKIyBDaG9pY2VzIGFyZSB1SW1hZ2Ugb3IgekltYWdlIGlmIHVzaW5nIHUtYm9vdCwgdGhv
dWdoIGlmIHlvdSBjaG9vc2UgekltYWdlCiMgd2l0aCB1LWJvb3QgeW91IHdpbGwgYWxzbyBoYXZl
IHRvIGNoYW5nZSB0aGUgYm9vdCBzY3JpcHQgYm9vdCBjb21tYW5kCktFUk5FTF9JTUFHRVRZUEUg
PSAiekltYWdlIgoKRElTQUJMRV9PVkVSU0NBTiA9ICIxIgojRU5BQkxFX1VBUlQgPSAiMSIKI0VO
QUJMRV9SUEkzX1NFUklBTF9DT05TT0xFID0gIjEiCiNTRVJJQUxfQ09OU09MRVMgPSAiMTE1MjAw
O3R0eUFNQTAiCiMgU0VSSUFMX0NPTlNPTEVTX2ZvcmNldmFyaWFibGUgPSAiIgoKI0RMX0RJUiA9
ICIke0hPTUV9L29lLXNvdXJjZXMiCiNTU1RBVEVfRElSID0gIi9vZTQvcnBpL3NzdGF0ZS1jYWNo
ZSIKI1RNUERJUiA9ICIvb2U0L3JwaS90bXAtdGh1ZCIKCkRJU1RSTyA9ICJwb2t5IgpQQUNLQUdF
X0NMQVNTRVMgPSAicGFja2FnZV9pcGsiCgojIGk2ODYgb3IgeDg2XzY0ClNES01BQ0hJTkUgPSAi
eDg2XzY0IgoKIyBmb3Igbm8gcm9vdCBwYXNzd2QgdW5jb21tZW50IHRoZSBmb2xsb3dpbmcgYW5k
IGNvbW1lbnQgdGhlIHR3byBleHRyYSB1c2VyIGxpbmVzCiNFWFRSQV9JTUFHRV9GRUFUVVJFUyA9
ICJkZWJ1Zy10d2Vha3MiCgojIGZvciBhIHJvb3QgcGFzc3dkLCBjaGFuZ2UganVtcG5vd3RlayBi
ZWxvdyB0byB5b3VyIHBhc3N3b3JkCiNJTkhFUklUICs9ICJleHRyYXVzZXJzIgojRVhUUkFfVVNF
UlNfUEFSQU1TID0gInVzZXJtb2QgLVAganVtcG5vd3RlayByb290OyAiCgojIHRoaXMgd2lsbCBm
b3JjZSByb290IHRvIGNoYW5nZSBwYXNzd29yZCBvbiBmaXJzdCBsb2dpbgojSU5IRVJJVCArPSAi
Y2hhZ2V1c2VycyIKI0NIQUdFX1VTRVJTX1BBUkFNUyA9ICJjaGFnZSAtZDAgcm9vdDsgIgoKSU1B
R0VfSU5TVEFMTCArPSAiIFwKICAgIGJsdWV6NSBcCiIKClVTRVJfQ0xBU1NFUyA9ICJpbWFnZS1t
a2xpYnMgaW1hZ2UtcHJlbGluayIKUEFUQ0hSRVNPTFZFID0gIm5vb3AiClJNX09MRF9JTUFHRSA9
ICIxIgpJTkhFUklUICs9ICJybV93b3JrIgpDT05GX1ZFUlNJT04gPSAiMSIK

--_FE644085-5AD5-4936-A897-49B3D85C1D32_--
