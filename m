Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 985EEE00C14; Tue, 29 Aug 2017 15:17:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_MUA_MOZILLA, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.6.129.253 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
Received: from sonic309-17.consmr.mail.bf2.yahoo.com
	(sonic309.consmr.mail.bf2.yahoo.com [74.6.129.253])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3CE2E00B8B
	for <yocto@yoctoproject.org>; Tue, 29 Aug 2017 15:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1504045046; bh=vusqvRWKkenn2IgawdkUVMPcMDfd++0Rtjnj2Gj2jdw=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=o7vgSrmyPvFxGlleFcMrW3m4K2EZJs7jUPjvRaywXuQkPhgiK6LDoISIK4GyefZqRQuUoPnR2pPfM5Wz8wUTPZO3EDbsj7qBbqCV8JpI6I3vEGaHiqMsucJxkkx/BkqUXnomf8KrtNMaQUIWyb90Ei08xHiPVTCRR+pzTihnC7VcH3Zf2PD5leKEulHwjiC1Y2Wi47NGUn0wOe6Fuv+nxlewn/JqW3Kryk47HPvBSPCGIoTgL8HhWcA436D63vObi+XkQW/2veBPkkb7Mkb5Y6mCly8XCKWntvahHTqgbGveCJMcMm6rVFrkwHq517+1ALRJETCd9FPBQ7v4o8RW7g==
X-YMail-OSG: AFj7sPQVM1l7tAp5dr7ohxg6KGJX__8D2N5UwQHowh.rN5wBg6HyeYPpE150oLi
	ji.yT9YJZ2rgpzacr1wAjUjU1GYGbuBBkVkY70kGcO9V_qhi3Wry96m2lgUIFhMlBobOgnu5C._V
	U7CuTsizMzOMKAD7IK.BN2HIcw4N4_hh3NeULEMstmxvsBU3jyp6vUnbqdL5l1RUyvcCN1M6Pmuv
	AUPUcnWPocmnwYKwsBWK6KgrWKbiPuoiPgx1VRLmbLsmU9rJjIz2Tn9O7bu7Nz7pAXeSUcIjYbyZ
	tzyFNurbD1CHVtowu6i.YUYJjy.VeIJ_0_UHfMtWCG90U7M7du1k6dLMRPn2Vwm.e62ngKi.S3j0
	YpQAZ77j99WwVa53Q5RwsxG4mRKmTHT4M9T1TEiZ_Mwk0ISj42NUJgUi16cIk8.KBZdRTbemexwF
	jbxIuGhnD0nZg_DnC5_C_lxlkzlB.djYN2rYnsQs47EQQHphwCF.O8.oE9Ow8PZ2ALMwS8LQ2wNy
	.7oC7ZQ--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic309.consmr.mail.bf2.yahoo.com with HTTP;
	Tue, 29 Aug 2017 22:17:26 +0000
Date: Tue, 29 Aug 2017 22:17:15 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <602056695.3203266.1504045035417@mail.yahoo.com>
MIME-Version: 1.0
References: <602056695.3203266.1504045035417.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.10451 YahooMailNeo Mozilla/5.0 (X11;
	Linux armv7l) AppleWebKit/537.36 (KHTML, like Gecko)
	Chrome/56.0.2924.84 Safari/537.36
Subject: Bare metal Ultibo with openjjpeg with TFTP Server & Remote shell
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 29 Aug 2017 22:17:28 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_3203265_455437891.1504045035414"

------=_Part_3203265_455437891.1504045035414
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All,This should work on either a RPi2B or RPi3BThe micro sd-card that=
 I used was 8GB with 1 partition.A 4GB micro sd-card should work just as we=
ll.
Device =C2=A0 =C2=A0 Boot Start =C2=A0 =C2=A0 End Sectors Size Id Type/dev/=
sda1 =C2=A0* =C2=A0 =C2=A0 2048 8390655 8388608 =C2=A0 4G =C2=A0b W95 FAT32
https://github.com/develone/jpeg-2000-test/tree/master/bare-metal/openjp/sd=
-card
=C2=A0 =C2=A0 these 5 files are needed on micro sd-card=C2=A0 =C2=A0 bootco=
de.bin=C2=A0 =C2=A0 fixup.dat=C2=A0 =C2=A0 MyBitmap.bmp This is a 2048 x 20=
48 lena in RGB format=C2=A0 =C2=A0 start.elf=C2=A0 =C2=A0 kernel7.img This =
file was created with=C2=A0=C2=A0 =C2=A0 Free Pascal Compiler FPC.
A monitor needs to be connected on the HDMI connector to display the bootpr=
ocess. The RJ-45 connector needs to be connected to network that providesDH=
CP and NTP services. If the RJ-45 is not connected it will take a bitlonger=
 to boot and the TFTP & Remote shell will not be available.
This will require the transfer of files with USB apdater.=C2=A0
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 This is the latest version with a co=
mpression ratio of 125:1=C2=A0 =C2=A0 12583034 --> 100660=C2=A0 =C2=A0 This=
 will create the file test.j2k=C2=A0 =C2=A0 tftp xx.xx.xx.xx=C2=A0 =C2=A0 b=
inary=C2=A0 =C2=A0 get test.j2k=C2=A0 =C2=A0 this md5sum should be=C2=A0 =
=C2=A0 c38b036fc5dbd84082f9490deb45c59e =C2=A0test.j2k=C2=A0 =C2=A0 running=
 the test_tile_decoder=C2=A0 =C2=A0 =C2=A0~/t_ultibo/build/bin/test_tile_de=
coder 0 0 2048 2048 test.j2k=C2=A0 =C2=A0 create test_wr.bmp=C2=A0 =C2=A0=
=C2=A0https://github.com/develone/jpeg-2000-test/tree/master/bare-metal/ope=
njp/decomp-sd-card=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 Adding the files kernel7=
.img & t_1024_125r.j2k=C2=A0 =C2=A0 to the sd-card.=C2=A0 =C2=A0 The file t=
_1024_125r.j2k on Raspbian=C2=A0 =C2=A0 pi@raspberrypi3:~/t_ultibo/build/bi=
n $ "./opj_compress -r 125 -i=C2=A0 =C2=A0 ~/jpeg-2000-test/bare-metal/LibC=
/lena_rgb_1024.bmp -o t_1024_125r.j2k"=C2=A0 =C2=A0 When rebooted the displ=
ay will appear like 1024_1024.jpg=C2=A0 =C2=A0 The file test_wr.bmp will be=
 created on Ultibo RPi=C2=A0 =C2=A0=C2=A0Let me know if you have any questi=
ons. =C2=A0I look forward to hearing your comments on this.I have tested wi=
th a compression of 400:1 which further reduces the image transfer to about=
 a 0.1 sec.=C2=A0Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-161=
3

------=_Part_3203265_455437891.1504045035414
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font=
-size:13px"><div id=3D"yui_3_16_0_ym19_1_1504041840651_16729"><span id=3D"y=
ui_3_16_0_ym19_1_1504041840651_16776">Hello All,</span></div><div id=3D"yui=
_3_16_0_ym19_1_1504041840651_16880">This should work on either a RPi2B or R=
Pi3B</div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16881">The micro sd-ca=
rd that I used was 8GB with 1 partition.</div><div id=3D"yui_3_16_0_ym19_1_=
1504041840651_16882">A 4GB micro sd-card should work just as well.</div><di=
v id=3D"yui_3_16_0_ym19_1_1504041840651_16883"><br id=3D"yui_3_16_0_ym19_1_=
1504041840651_16884"></div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16885=
">Device &nbsp; &nbsp; Boot Start &nbsp; &nbsp; End Sectors Size Id Type</d=
iv><div id=3D"yui_3_16_0_ym19_1_1504041840651_16886">/dev/sda1 &nbsp;* &nbs=
p; &nbsp; 2048 8390655 8388608 &nbsp; 4G &nbsp;b W95 FAT32</div><div id=3D"=
yui_3_16_0_ym19_1_1504041840651_16887"><br id=3D"yui_3_16_0_ym19_1_15040418=
40651_16888"></div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16889">https:=
//github.com/develone/jpeg-2000-test/tree/master/bare-metal/openjp/sd-card<=
/div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16890"><br id=3D"yui_3_16_0=
_ym19_1_1504041840651_16891"></div><div id=3D"yui_3_16_0_ym19_1_15040418406=
51_16892">&nbsp; &nbsp; these 5 files are needed on micro sd-card</div><div=
 id=3D"yui_3_16_0_ym19_1_1504041840651_16893">&nbsp; &nbsp; bootcode.bin</d=
iv><div id=3D"yui_3_16_0_ym19_1_1504041840651_16894">&nbsp; &nbsp; fixup.da=
t</div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16895">&nbsp; &nbsp; MyBi=
tmap.bmp<span style=3D"white-space:pre-wrap;" id=3D"yui_3_16_0_ym19_1_15040=
41840651_16896">=09</span>This is a 2048 x 2048 lena in RGB format</div><di=
v id=3D"yui_3_16_0_ym19_1_1504041840651_16897">&nbsp; &nbsp; start.elf</div=
><div id=3D"yui_3_16_0_ym19_1_1504041840651_16898">&nbsp; &nbsp; kernel7.im=
g<span style=3D"white-space:pre-wrap;" id=3D"yui_3_16_0_ym19_1_150404184065=
1_16899">=09=09</span>This file was created with&nbsp;</div><div id=3D"yui_=
3_16_0_ym19_1_1504041840651_16900">&nbsp; &nbsp; Free Pascal Compiler FPC.<=
/div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16901"><br id=3D"yui_3_16_0=
_ym19_1_1504041840651_16902"></div><div id=3D"yui_3_16_0_ym19_1_15040418406=
51_16903">A monitor needs to be connected on the HDMI connector to display =
the boot</div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16904">process. Th=
e RJ-45 connector needs to be connected to network that provides</div><div =
id=3D"yui_3_16_0_ym19_1_1504041840651_16905">DHCP and NTP services. If the =
RJ-45 is not connected it will take a bit</div><div id=3D"yui_3_16_0_ym19_1=
_1504041840651_16906">longer to boot and the TFTP &amp; Remote shell will n=
ot be available.</div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16907"><br=
 id=3D"yui_3_16_0_ym19_1_1504041840651_16908"></div><div id=3D"yui_3_16_0_y=
m19_1_1504041840651_16909">This will require the transfer of files with USB=
 apdater.&nbsp;</div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16910"><br =
id=3D"yui_3_16_0_ym19_1_1504041840651_16911"></div><div id=3D"yui_3_16_0_ym=
19_1_1504041840651_16912">&nbsp;</div><div id=3D"yui_3_16_0_ym19_1_15040418=
40651_16913">&nbsp; &nbsp;&nbsp;</div><div id=3D"yui_3_16_0_ym19_1_15040418=
40651_16914">&nbsp; &nbsp; This is the latest version with a compression ra=
tio of 125:1</div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16915">&nbsp; =
&nbsp; 12583034 --&gt; 100660</div><div id=3D"yui_3_16_0_ym19_1_15040418406=
51_16916">&nbsp; &nbsp; This will create the file test.j2k</div><div id=3D"=
yui_3_16_0_ym19_1_1504041840651_16917">&nbsp; &nbsp; tftp xx.xx.xx.xx</div>=
<div id=3D"yui_3_16_0_ym19_1_1504041840651_16918">&nbsp; &nbsp; binary</div=
><div id=3D"yui_3_16_0_ym19_1_1504041840651_16919">&nbsp; &nbsp; get test.j=
2k</div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16920">&nbsp; &nbsp; thi=
s md5sum should be</div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16921">&=
nbsp; &nbsp; c38b036fc5dbd84082f9490deb45c59e &nbsp;test.j2k</div><div id=
=3D"yui_3_16_0_ym19_1_1504041840651_16922">&nbsp; &nbsp; running the test_t=
ile_decoder</div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16923">&nbsp; &=
nbsp; &nbsp;~/t_ultibo/build/bin/test_tile_decoder 0 0 2048 2048 test.j2k</=
div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16924">&nbsp; &nbsp; create =
test_wr.bmp</div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16925">&nbsp; &=
nbsp;&nbsp;</div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16926">https://=
github.com/develone/jpeg-2000-test/tree/master/bare-metal/openjp/decomp-sd-=
card</div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16927">&nbsp; &nbsp;&n=
bsp;</div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16928">&nbsp; &nbsp; A=
dding the files kernel7.img &amp; t_1024_125r.j2k</div><div id=3D"yui_3_16_=
0_ym19_1_1504041840651_16929">&nbsp; &nbsp; to the sd-card.</div><div id=3D=
"yui_3_16_0_ym19_1_1504041840651_16930">&nbsp; &nbsp; The file t_1024_125r.=
j2k on Raspbian</div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16931">&nbs=
p; &nbsp; pi@raspberrypi3:~/t_ultibo/build/bin $ "./opj_compress -r 125 -i<=
/div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16932">&nbsp; &nbsp; ~/jpeg=
-2000-test/bare-metal/LibC/lena_rgb_1024.bmp -o t_1024_125r.j2k"</div><div =
id=3D"yui_3_16_0_ym19_1_1504041840651_16933">&nbsp; &nbsp; When rebooted th=
e display will appear like 1024_1024.jpg</div><div id=3D"yui_3_16_0_ym19_1_=
1504041840651_16934">&nbsp; &nbsp; The file test_wr.bmp will be created on =
Ultibo RPi</div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16935">&nbsp; &n=
bsp;&nbsp;</div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16936">Let me kn=
ow if you have any questions. &nbsp;I look forward to hearing your comments=
 on this.</div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16729"></div><div=
 dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1504041840651_16937">I have tested wit=
h a compression of 400:1 which further reduces the image transfer to about =
a 0.1 sec.</div><div></div><div id=3D"yui_3_16_0_ym19_1_1504041840651_16728=
">&nbsp;</div><div class=3D"signature" id=3D"yui_3_16_0_ym19_1_150404184065=
1_16727">Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613</div><=
/div></body></html>

------=_Part_3203265_455437891.1504045035414--
