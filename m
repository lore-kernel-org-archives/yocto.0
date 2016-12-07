Return-Path: <rthakkar@ciright.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 555DBE00D1C; Wed,  7 Dec 2016 02:30:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from ciright.com (unknown [144.202.209.24])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id EE936E00D0A
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 02:30:52 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by ciright.com (Postfix) with ESMTP id 488381AD3AF5
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 05:15:12 -0500 (EST)
Received: from ciright.com ([127.0.0.1])
	by localhost (ciright.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id E6EHLt6nffaD for <yocto@yoctoproject.org>;
	Wed,  7 Dec 2016 05:15:11 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by ciright.com (Postfix) with ESMTP id C44431AD3B50
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 05:15:11 -0500 (EST)
X-Virus-Scanned: amavisd-new at ciright.com
Received: from ciright.com ([127.0.0.1])
	by localhost (ciright.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id oedZ6rh8zFWy for <yocto@yoctoproject.org>;
	Wed,  7 Dec 2016 05:15:04 -0500 (EST)
Received: from ciright.com (ciright.com [10.10.10.100])
	by ciright.com (Postfix) with ESMTP id A4DB11AD3B4F
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 05:15:04 -0500 (EST)
Date: Wed, 7 Dec 2016 05:15:04 -0500 (EST)
From: Rushin Thakkar <rthakkar@ciright.com>
To: yocto@yoctoproject.org
Message-ID: <138346419.2363700.1481105704623.JavaMail.zimbra@ciright.com>
In-Reply-To: <2107513184.2068825.1480924816241.JavaMail.zimbra@ciright.com>
References: <566212531.1559919.1480508909186.JavaMail.zimbra@ciright.com>
	<6A92E7CF-F574-4DA6-A84F-C65CA2F1E40E@gmail.com>
	<1042006133.1610572.1480567719431.JavaMail.zimbra@ciright.com>
	<1069025273.1664073.1480654660169.JavaMail.zimbra@ciright.com>
	<2107513184.2068825.1480924816241.JavaMail.zimbra@ciright.com>
MIME-Version: 1.0
X-Originating-IP: [49.34.13.38]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC54 (Win)/8.0.6_GA_5922)
Thread-Topic: yocto project in raspberry pi 3
Thread-Index: TonH2+RldVlpHp/JwpF29xfzFCLmK/rFPGKosdu5DfqXeK562w==
Subject: yocto project in raspberry pi 3
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
X-List-Received-Date: Wed, 07 Dec 2016 10:30:55 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2363699_679633716.1481105704623"

------=_Part_2363699_679633716.1481105704623
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit




hello there i am trying to do yocto project on raspberry pi 3. 
when i run bitbake rpi-basic-image. 


this task 0: bcm2835-bootfiles-20151021-r3 do_fetch (pid 4922) is taking too much time. after that 





You should use latest master where we have switched to tarball fetch 
especially 

http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/commit/?id=716b6a9cd7f24a8bacd539bb40519d185e3f963a 


<blockquote>

i am getting message like 




ERROR: Fetcher failure: Fetch command failed with exit code 128, output: 
Cloning into bare repository '/home/rushin/yoctopi/poky/build/downloads/git2/github.com.raspberrypi.firmware.git'... 
fatal: The remote end hung up unexpectedly 
fatal: early EOF 
fatal: index-pack failed 

ERROR: Function failed: Fetcher failure for URL: ' git://github.com/raspberrypi/firmware.git;protocol=git;branch=master '. Unable to fetch URL from any source. 
ERROR: Logfile of failure stored in: /home/rushin/yoctopi/poky/build/tmp/work/raspberrypi2-poky-linux-gnueabi/bcm2835-bootfiles/20151021-r3/temp/log.do_fetch.3385 
ERROR: Task 207 (/home/rushin/yoctopi/poky/meta-raspberrypi/recipes-bsp/bootfiles/bcm2835-bootfiles.bb, do_fetch) failed with exit code '1' 

can you tell me how to download this file manually?? 

like in download folder there is file called 
wpa_supplicant-2.4.tar.gz . i can download this file. but how to get these files like wpa_supplicant-2.4.tar.gz.done,wpa_supplicant.sh.done?? 


</blockquote>







------=_Part_2363699_679633716.1481105704623
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: times new roman, new york, times, se=
rif; font-size: 12pt; color: #000000"><div style=3D"color:#000;font-weight:=
normal;font-style:normal;text-decoration:none;font-family:Helvetica,Arial,s=
ans-serif;font-size:12pt;" data-mce-style=3D"color: #000; font-weight: norm=
al; font-style: normal; text-decoration: none; font-family: Helvetica,Arial=
,sans-serif; font-size: 12pt;"><div style=3D"font-family: times new roman, =
new york, times, serif; font-size: 12pt; color: #000000" data-mce-style=3D"=
font-family: times new roman, new york, times, serif; font-size: 12pt; colo=
r: #000000;"><div style=3D"color:#000;font-weight:normal;font-style:normal;=
text-decoration:none;font-family:Helvetica,Arial,sans-serif;font-size:12pt;=
" data-mce-style=3D"color: #000; font-weight: normal; font-style: normal; t=
ext-decoration: none; font-family: Helvetica,Arial,sans-serif; font-size: 1=
2pt;"><div style=3D"font-family: times new roman, new york, times, serif; f=
ont-size: 12pt; color: #000000" data-mce-style=3D"font-family: times new ro=
man, new york, times, serif; font-size: 12pt; color: #000000;"><div style=
=3D"color:#000;font-weight:normal;font-style:normal;text-decoration:none;fo=
nt-family:Helvetica,Arial,sans-serif;font-size:12pt;" data-mce-style=3D"col=
or: #000; font-weight: normal; font-style: normal; text-decoration: none; f=
ont-family: Helvetica,Arial,sans-serif; font-size: 12pt;"><div style=3D"fon=
t-family: times new roman, new york, times, serif; font-size: 12pt; color: =
#000000" data-mce-style=3D"font-family: times new roman, new york, times, s=
erif; font-size: 12pt; color: #000000;"><div style=3D"color:#000;font-weigh=
t:normal;font-style:normal;text-decoration:none;font-family:Helvetica,Arial=
,sans-serif;font-size:12pt;" data-mce-style=3D"color: #000; font-weight: no=
rmal; font-style: normal; text-decoration: none; font-family: Helvetica,Ari=
al,sans-serif; font-size: 12pt;"><div><blockquote class=3D""><div class=3D"=
"><span style=3D"font-size: 12pt;">hello there i am trying to do yocto proj=
ect on raspberry pi 3.</span></div><div class=3D""><div class=3D"">when i r=
un bitbake rpi-basic-image.<br class=3D""><br class=3D""><br class=3D"">thi=
s task 0: bcm2835-bootfiles-20151021-r3 do_fetch (pid 4922) is taking too m=
uch time. after that<br class=3D""><br class=3D""></div></div></blockquote>=
<div><br class=3D""></div><div>You should use latest master where we have s=
witched to tarball fetch</div><div>especially</div><div><br class=3D""></di=
v><div><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberryp=
i/commit/?id=3D716b6a9cd7f24a8bacd539bb40519d185e3f963a" class=3D"" target=
=3D"_blank" data-mce-href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta=
-raspberrypi/commit/?id=3D716b6a9cd7f24a8bacd539bb40519d185e3f963a">http://=
git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/commit/?id=3D716b6a9cd7=
f24a8bacd539bb40519d185e3f963a</a></div><br class=3D""><blockquote class=3D=
""><div class=3D""><div class=3D"">i am getting message like<br class=3D"">=
<br class=3D""><br class=3D""><br class=3D""><br class=3D"">ERROR: Fetcher =
failure: Fetch command failed with exit code 128, output:<br class=3D"">Clo=
ning into bare repository '/home/rushin/yoctopi/poky/build/downloads/git2/g=
ithub.com.raspberrypi.firmware.git'...<br class=3D"">fatal: The remote end =
hung up unexpectedly<br class=3D"">fatal: early EOF<br class=3D"">fatal: in=
dex-pack failed<br class=3D""><br class=3D"">ERROR: Function failed: Fetche=
r failure for URL: '<a href=3D"git://github.com/raspberrypi/firmware.git;pr=
otocol=3Dgit;branch=3Dmaster" class=3D"" target=3D"_blank" data-mce-href=3D=
"git://github.com/raspberrypi/firmware.git;protocol=3Dgit;branch=3Dmaster">=
git://github.com/raspberrypi/firmware.git;protocol=3Dgit;branch=3Dmaster</a=
>'. Unable to fetch URL from any source.<br class=3D"">ERROR: Logfile of fa=
ilure stored in: /home/rushin/yoctopi/poky/build/tmp/work/raspberrypi2-poky=
-linux-gnueabi/bcm2835-bootfiles/20151021-r3/temp/log.do_fetch.3385<br clas=
s=3D"">ERROR: Task 207 (/home/rushin/yoctopi/poky/meta-raspberrypi/recipes-=
bsp/bootfiles/bcm2835-bootfiles.bb, do_fetch) failed with exit code '1'<br =
class=3D""><br class=3D"">can you tell me how to download this file manuall=
y??<br class=3D""><br class=3D"">like in download folder there is file call=
ed <br class=3D"">wpa_supplicant-2.4.tar.gz . i can download this file. but=
 how to get these files like wpa_supplicant-2.4.tar.gz.done,wpa_supplicant.=
sh.done??<br class=3D""><br class=3D""></div></div></blockquote></div><br c=
lass=3D""></div><div><br></div></div></div><div><br></div></div></div><div>=
<br></div></div></div><div><br></div></div></body></html>

------=_Part_2363699_679633716.1481105704623--
