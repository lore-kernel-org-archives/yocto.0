Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3246EE00F3B; Fri,  2 Oct 2015 07:28:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.90.158 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm10-vm2.bullet.mail.ne1.yahoo.com
	(nm10-vm2.bullet.mail.ne1.yahoo.com [98.138.90.158])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8BB8E00ADD
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 07:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1443796125; bh=RrJmZ3bfi0C+4OhR3K0aHCn6/Us+w/fbavvuhXNCe20=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=phCNuBXEFDZOsfQAxNGuhS4ykN3HoyN4FI+ZLOHsyoDhFo2acMe5QIQoie+oRegwVj0faS2+EEsZch+aCYyBN0JFUatsMhaEOd1ZHhzAn0HZvfGo59VCHq6/3yPP0glw6EuHUY9rxUFpzv8yH/Oom5faTSkW+eeparYzL3V4pcFiXgX9IYmuHoT7zrgOTHbSWsHMVp2OWf5qkBgreexPeOsTaNRxV/7pdCt7zcwsJl2y/VyY5QhPS1h2rYgomokrJU3r4bEPYkt34RIe9VrxQ3imjPMngqZscxw6KOFJEr8bWdLCZYmv7o1HPFo72aFA1oynLuAUFFbuXE8HAJ06pA==
Received: from [98.138.226.177] by nm10.bullet.mail.ne1.yahoo.com with NNFMP;
	02 Oct 2015 14:28:45 -0000
Received: from [98.138.89.167] by tm12.bullet.mail.ne1.yahoo.com with NNFMP;
	02 Oct 2015 14:28:45 -0000
Received: from [127.0.0.1] by omp1023.mail.ne1.yahoo.com with NNFMP;
	02 Oct 2015 14:28:45 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 570631.41208.bm@omp1023.mail.ne1.yahoo.com
X-YMail-OSG: IBn0TY4VM1lKuxstwIya0zMw7Krvz1_mPPbJM9Pa8KwMh1rHuItGS4pZBG0p.EF
	Q3oElO41LySsiVv5stLvbek2U6cKz0aSL3I3jVat7iY8I9VCbsie2VUwf9HhUp886J3AqwYYgoQE
	QRAWMfxHo1k1ZtNF5WUl4k3OlEOq2L9x.pXDdTcJ8CkawQj19uruFGkxmVORHSB3j7vMB0p4VAO4
	C4UGyIa6dbj8X4ECl7_XjaOtOqNwIuxzZzXn40LZbabohhHljQdJ3.wy8X4IMrcR3yr0Te9ClesB
	7_ngbLJX7KFb.Fq7E8DkKjd3HUCFgSxn.zrMLuxAkB0nGRCrPxw6hLBlYn6AF9Cf6VTJi0cBuQ5S
	BGan4TN35qdus_LuTGZttQig5I6aeptpyMkJIJAobp..hUQ2vly1pq2i_hkp7zyz2peUU5UZlU12
	j.XJAgsvXL6LtAoHl5xHRjbb5tsrZI19HZUElySttRjR0FLW4aUq2v5jQYDc3x9L8Ei6aYQb9y4N
	HZ2CEdfqEACwG1ybNQKVgXeYh277t4DTenbnVXTCAmF6YLhvyY2O0JBC_S2hyOg--
Received: by 98.138.101.169; Fri, 02 Oct 2015 14:28:45 +0000 
Date: Fri, 2 Oct 2015 14:27:58 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1006153332.270433.1443796078701.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: wpa_supplicant on Raspberry Pi 2B
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
X-List-Received-Date: Fri, 02 Oct 2015 14:28:49 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_270432_2073990587.1443796078695"

------=_Part_270432_2073990587.1443796078695
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello all,I am using a Wi-Pi wireless adapter.=C2=A0
My image has the following packages installed.
wpa-supplicant-2.4-r0.cortexa7hf_vfp_vfpv4_neon
wpa-supplicant-cli-2.4-r0.cortexa7hf_vfp_vfpv4_neon
wpa-supplicant-dev-2.4-r0.cortexa7hf_vfp_vfpv4_neon
wpa-supplicant-doc-2.4-r0.cortexa7hf_vfp_vfpv4_neon
wpa-supplicant-passphrase-2.4-r0.cortexa7hf_vfp_vfpv4_neon
Do I need any additional packages?
My wired eth0 works okay.
Which document has the most current information on setting up wireless netw=
orking?From the information at=20
 http://trac.gateworks.com/wiki/Yocto/Wireless

I modified my /etc/wpa_supplicant.conf as below without success.
ctrl_interface=3D/var/run/wpa_supplicant
ctrl_interface_group=3D0
update_config=3D1

network=3D{
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 scan_ssid=3D1
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ssid=3D"myssid"
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 psk=3D"mypsk"
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 proto=3DWPA
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 key_mgmt=3DWPA-PSK
}Below is the results I get when I run iwconfig.
iwconfig=20
wlan0=C2=A0=C2=A0=C2=A0=C2=A0 IEEE 802.11bgn=C2=A0 ESSID:off/any=C2=A0=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mode:Managed=C2=A0 A=
ccess Point: Not-Associated=C2=A0=C2=A0 Tx-Power=3D0 dBm=C2=A0=C2=A0=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Retry short limit:7=
=C2=A0=C2=A0 RTS thr:off=C2=A0=C2=A0 Fragment thr:off
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Encryption key:off
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Power Management:off
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20
lo=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 no wireless extensions.

eth0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 no wireless extensions.
Thanks in advance.=C2=A0 Any help is appreciated.

 Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_270432_2073990587.1443796078695
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div id=3D"yui_3_16_0_1_1443792461016_3589"><span id=3D"yui_3=
_16_0_1_1443792461016_3779">Hello all,</span></div><div id=3D"yui_3_16_0_1_=
1443792461016_4251"><span id=3D"yui_3_16_0_1_1443792461016_3779">I am using=
 a Wi-Pi wireless adapter.&nbsp;</span></div><div id=3D"yui_3_16_0_1_144379=
2461016_4255"><span id=3D"yui_3_16_0_1_1443792461016_3779"><br></span></div=
><div id=3D"yui_3_16_0_1_1443792461016_4037"><span id=3D"yui_3_16_0_1_14437=
92461016_3779">My image has the following packages installed.</span></div><=
div dir=3D"ltr" id=3D"yui_3_16_0_1_1443792461016_4053"><span id=3D"yui_3_16=
_0_1_1443792461016_3779"><br></span></div><div id=3D"yui_3_16_0_1_144379246=
1016_4096" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1443792461016_3779">wpa-sup=
plicant-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br class=3D"" id=3D"yui_3_16_0_1_1=
443792461016_4055">wpa-supplicant-cli-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br c=
lass=3D"" id=3D"yui_3_16_0_1_1443792461016_4057">wpa-supplicant-dev-2.4-r0.=
cortexa7hf_vfp_vfpv4_neon<br class=3D"" id=3D"yui_3_16_0_1_1443792461016_40=
59">wpa-supplicant-doc-2.4-r0.cortexa7hf_vfp_vfpv4_neon<br class=3D"" id=3D=
"yui_3_16_0_1_1443792461016_4061">wpa-supplicant-passphrase-2.4-r0.cortexa7=
hf_vfp_vfpv4_neon</span></div><div id=3D"yui_3_16_0_1_1443792461016_4073" d=
ir=3D"ltr"><span id=3D"yui_3_16_0_1_1443792461016_3779"><br></span></div><d=
iv id=3D"yui_3_16_0_1_1443792461016_4100" dir=3D"ltr"><span id=3D"yui_3_16_=
0_1_1443792461016_3779">Do I need any additional packages?</span></div><div=
 id=3D"yui_3_16_0_1_1443792461016_4101" dir=3D"ltr"><span id=3D"yui_3_16_0_=
1_1443792461016_3779"><br></span></div><div id=3D"yui_3_16_0_1_144379246101=
6_4102" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1443792461016_3779">My wired e=
th0 works okay.</span></div><div id=3D"yui_3_16_0_1_1443792461016_4103" dir=
=3D"ltr"><span id=3D"yui_3_16_0_1_1443792461016_3779"><br></span></div><div=
 id=3D"yui_3_16_0_1_1443792461016_3717"><span id=3D"yui_3_16_0_1_1443792461=
016_3718">Which document has the most current information on setting up wir=
eless networking?</span></div><div dir=3D"ltr" id=3D"yui_3_16_0_1_144379246=
1016_3777"><span id=3D"yui_3_16_0_1_1443792461016_3718">From the informatio=
n at <br></span></div><div id=3D"yui_3_16_0_1_1443792461016_3876" dir=3D"lt=
r"><span id=3D"yui_3_16_0_1_1443792461016_3718"> <a id=3D"yui_3_16_0_1_1443=
792461016_3824" href=3D"http://trac.gateworks.com/wiki/Yocto/Wireless">http=
://trac.gateworks.com/wiki/Yocto/Wireless</a><br></span></div><div dir=3D"l=
tr" id=3D"yui_3_16_0_1_1443792461016_3733"><span id=3D"yui_3_16_0_1_1443792=
461016_3718"><br></span></div><div id=3D"yui_3_16_0_1_1443792461016_3952" d=
ir=3D"ltr"><span id=3D"yui_3_16_0_1_1443792461016_3718">I modified my /etc/=
wpa_supplicant.conf as below without success.</span></div><div id=3D"yui_3_=
16_0_1_1443792461016_3953" dir=3D"ltr"><span id=3D"yui_3_16_0_1_14437924610=
16_3718"><br></span></div><div id=3D"yui_3_16_0_1_1443792461016_3901" dir=
=3D"ltr"><span id=3D"yui_3_16_0_1_1443792461016_3718">ctrl_interface=3D/var=
/run/wpa_supplicant<br class=3D"" id=3D"yui_3_16_0_1_1443792461016_3746">ct=
rl_interface_group=3D0<br class=3D"" id=3D"yui_3_16_0_1_1443792461016_3748"=
>update_config=3D1<br class=3D"" id=3D"yui_3_16_0_1_1443792461016_3750"><br=
 class=3D"" id=3D"yui_3_16_0_1_1443792461016_3752">network=3D{<br class=3D"=
" id=3D"yui_3_16_0_1_1443792461016_3754">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; scan_ssid=3D1<br class=3D"" id=3D"yui_3_16_0_1_1443792461016_3756"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ssid=3D"myssid"<br class=3D"" i=
d=3D"yui_3_16_0_1_1443792461016_3758">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; psk=3D"mypsk"<br class=3D"" id=3D"yui_3_16_0_1_1443792461016_3760">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; proto=3DWPA<br class=3D"" id=3D"yu=
i_3_16_0_1_1443792461016_3762">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; k=
ey_mgmt=3DWPA-PSK<br class=3D"" id=3D"yui_3_16_0_1_1443792461016_3764">}</s=
pan></div><div id=3D"yui_3_16_0_1_1443792461016_4201" dir=3D"ltr">Below is =
the results I get when I run iwconfig.<br><span id=3D"yui_3_16_0_1_14437924=
61016_3718"></span></div><div id=3D"yui_3_16_0_1_1443792461016_4180" dir=3D=
"ltr"><span id=3D"yui_3_16_0_1_1443792461016_3718">iwconfig <br class=3D"" =
id=3D"yui_3_16_0_1_1443792461016_4182">wlan0&nbsp;&nbsp;&nbsp;&nbsp; IEEE 8=
02.11bgn&nbsp; ESSID:off/any&nbsp; <br class=3D"" id=3D"yui_3_16_0_1_144379=
2461016_4184">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mode:M=
anaged&nbsp; Access Point: Not-Associated&nbsp;&nbsp; Tx-Power=3D0 dBm&nbsp=
;&nbsp; <br class=3D"" id=3D"yui_3_16_0_1_1443792461016_4186">&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Retry short limit:7&nbsp;&nbsp; R=
TS thr:off&nbsp;&nbsp; Fragment thr:off<br class=3D"" id=3D"yui_3_16_0_1_14=
43792461016_4188">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; En=
cryption key:off<br class=3D"" id=3D"yui_3_16_0_1_1443792461016_4190">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Power Management:off<br c=
lass=3D"" id=3D"yui_3_16_0_1_1443792461016_4192">&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; <br class=3D"" id=3D"yui_3_16_0_1_144379246101=
6_4194">lo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; no wireless extensions=
.<br class=3D"" id=3D"yui_3_16_0_1_1443792461016_4196"><br class=3D"" id=3D=
"yui_3_16_0_1_1443792461016_4198">eth0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; no wir=
eless extensions.<br class=3D"" id=3D"yui_3_16_0_1_1443792461016_4200"></sp=
an></div><div id=3D"yui_3_16_0_1_1443792461016_3644"><div id=3D"yui_3_16_0_=
1_1443792461016_3955">Thanks in advance.&nbsp; Any help is appreciated.</di=
v><div id=3D"yui_3_16_0_1_1443792461016_3990"><br></div><div id=3D"yui_3_16=
_0_1_1443792461016_3976"><br> </div></div><div id=3D"yui_3_16_0_1_144379246=
1016_3645" class=3D"signature">Edward Vidal Jr. e-mail develone@sbcglobal.n=
et 915-595-1613</div></div></body></html>

------=_Part_270432_2073990587.1443796078695--
