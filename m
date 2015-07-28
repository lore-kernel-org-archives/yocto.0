Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56C9AE00A73; Tue, 28 Jul 2015 15:43:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.91.139 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm9-vm3.bullet.mail.ne1.yahoo.com
	(nm9-vm3.bullet.mail.ne1.yahoo.com [98.138.91.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD43CE00A54
	for <yocto@yoctoproject.org>; Tue, 28 Jul 2015 15:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1438123411; bh=SjAvl/GBVteGqEGM1/iqYFNHjPLYwbo1UqytI0rUaog=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=lGe6ZnJAZdpphwcfDyu9sG0R9bTTOPpXlcccIK17xcvI2DdSFHpNGXwgaOon1eYe2U9koCWbNph0Uv76D+CGTL/CowrJRC2p3Oiv0O8BGmmYF6fygTcCJ6uUoXZLxSBjQMwE7yL9+EnsaSHCkcgfgT2MggPY6Ozi49elOdI+Fqbrs5gvxg/ISDXLP0b7skgy9KNUQHbV9A1dIpD0LBzGsmYP471xJZObErRGRrlF01BkKlQQE62frf8bgZZH+l2WPg54054B23faQxuOVmEju0WwvKymVmNgoKQ7M6C/x/7Ry4oTW0Cub6qDmZeV+3/GcEHs3x9Hru1yGfQTQGF1IQ==
Received: from [98.138.101.130] by nm9.bullet.mail.ne1.yahoo.com with NNFMP;
	28 Jul 2015 22:43:31 -0000
Received: from [98.138.226.163] by tm18.bullet.mail.ne1.yahoo.com with NNFMP;
	28 Jul 2015 22:43:30 -0000
Received: from [127.0.0.1] by omp1064.mail.ne1.yahoo.com with NNFMP;
	28 Jul 2015 22:43:30 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 895637.89067.bm@omp1064.mail.ne1.yahoo.com
X-YMail-OSG: 5WEXbQoVM1kokk92ZroLBNgE5zVAVbsBgBMHwJUkvsoJrDu8yuZfDd_V2uQFYzr
	7zfETGrBUWRKd0Cmr.1KpmfDvundpa_a6c56JL1mk2RFaFRGsNi9e00YOyI2ONwzm3T66Di4jdQH
	cNTANQRN8aqSmfKVExalNQfacfW6afNvMy2bUmZRyKQNxAQSzMZxTAmfLiW3lpIq1la4JFF.h_k5
	CtH40DxwqN0XpXi.y6i6kt3fYGvnutlViomP45cfN6iVDYtNkeCACeSEkU82jTiQ.IcyGSMFNt9K
	54z7yYntw5iQ2Aj2bV_2m.Ey5Ny_cIjnQhKWbzo82yQ6gbwRhRfQjupdfAGnZlO6obr9fAhkxxF7
	0PNI.wL.clE4CzgXtrt_r7b7KHjU8oz4cvaoBboxEZvylVqquOqz3S.xjHpYJQryl_GpLXTWPRtL
	hJ4pBKs4ZQuZ.RwX1KyGa.Ew3b.QL8ReXuKdllWqXjeTi5pi56E9NMcc3wU8P3ltGAUbN2uVcJRx
	PFYdVsuZknZdpbcEYbUgb1m025oKmkpQ-
Received: by 98.138.105.208; Tue, 28 Jul 2015 22:43:29 +0000 
Date: Tue, 28 Jul 2015 22:43:13 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1456738842.4069533.1438123393229.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: ADT and ast issue.
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
X-List-Received-Date: Tue, 28 Jul 2015 22:43:37 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_4069532_96708809.1438123393227"

------=_Part_4069532_96708809.1438123393227
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All,
I am trying to use the ADT to build myhdl a python library.To obtain myhdl =
I use git clone https://github.com/jandecaluwe/myhdl.git

I first setup the ADT.

source /opt/poky/1.8+snapshot/environment-setup-cortexa7hf-vfp-vfpv4-neon-p=
oky-linux-gnueabi

The working python is appears to be the one I created with the bitbake meta=
-toolchain.

vidal@ws009:~/yocto_adt/build_myhdl/myhdl$ python
Python 2.7.9 (default, Jul 27 2015, 06:41:40)=20
[GCC 4.9.3] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>>
I see ast in the path of the ADT.

find /opt/poky/ -name ast*
/opt/poky/1.8+snapshot/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/comp=
iler/ast.pyc
/opt/poky/1.8+snapshot/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/comp=
iler/ast.py

This is the error that I am seeing.
=C2=A0
vidal@ws009:~/yocto_adt/build_myhdl/myhdl$ python setup.py install
Traceback (most recent call last):
=C2=A0 File "setup.py", line 3, in <module>python setup.py install
=C2=A0=C2=A0=C2=A0 import ast
ImportError: No module named ast

When I use sudo to execute the command "sudo python setup.py install"

It appears to be using the system python not the ADT python.

=C2=A0python=20
Python 2.7.3 (default, Sep 26 2013, 20:03:06)=20
[GCC 4.6.3] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> import ast
>>>=C2=A0This works okay without the using the ADT.
Thanks in advance.=C2=A0Edward Vidal Jr.
e-mail develone@sbcglobal.net
915-595-1613

------=_Part_4069532_96708809.1438123393227
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div dir=3D"ltr" id=3D"yui_3_16_0_1_1438122990392_2611"><span=
 id=3D"yui_3_16_0_1_1438122990392_2695">Hello All,<br class=3D"">I am tryin=
g to use the ADT to build myhdl a python library.</span></div><div id=3D"yu=
i_3_16_0_1_1438122990392_2802" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1438122=
990392_2695">To obtain myhdl I use git clone <a id=3D"yui_3_16_0_1_14381229=
90392_2800" href=3D"https://github.com/jandecaluwe/myhdl.git">https://githu=
b.com/jandecaluwe/myhdl.git</a><br></span></div><div id=3D"yui_3_16_0_1_143=
8122990392_2821" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1438122990392_2695"><=
br></span></div><div dir=3D"ltr"><span id=3D"yui_3_16_0_1_1438122990392_269=
5">I first setup the ADT.<br class=3D""><br class=3D"">source /opt/poky/1.8=
+snapshot/environment-setup-cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi<br=
 class=3D""><br class=3D"">The working python is appears to be the one I cr=
eated with the bitbake meta-toolchain.<br class=3D""><br class=3D"">vidal@w=
s009:~/yocto_adt/build_myhdl/myhdl$ python<br class=3D"">Python 2.7.9 (defa=
ult, Jul 27 2015, 06:41:40) <br class=3D"">[GCC 4.9.3] on linux2<br class=
=3D"">Type "help", "copyright", "credits" or "license" for more information=
.<br class=3D"">&gt;&gt;&gt;<br class=3D"">I see ast in the path of the ADT=
.<br class=3D""><br class=3D"">find /opt/poky/ -name ast*<br class=3D"">/op=
t/poky/1.8+snapshot/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/compile=
r/ast.pyc<br class=3D"">/opt/poky/1.8+snapshot/sysroots/x86_64-pokysdk-linu=
x/usr/lib/python2.7/compiler/ast.py<br class=3D""><br class=3D"">This is th=
e error that I am seeing.<br class=3D"">&nbsp;<br class=3D"">vidal@ws009:~/=
yocto_adt/build_myhdl/myhdl$ python setup.py install<br class=3D"">Tracebac=
k (most recent call last):<br class=3D"">&nbsp; File "setup.py", line 3, in=
 &lt;module&gt;python setup.py install<br class=3D"">&nbsp;&nbsp;&nbsp; imp=
ort ast<br class=3D"">ImportError: No module named ast<br class=3D""><br cl=
ass=3D"">When I use sudo to execute the command "sudo python setup.py insta=
ll"<br class=3D""><br class=3D"">It appears to be using the system python n=
ot the ADT python.<br class=3D""><br class=3D"">&nbsp;python <br class=3D""=
>Python 2.7.3 (default, Sep 26 2013, 20:03:06) <br class=3D"">[GCC 4.6.3] o=
n linux2<br class=3D"">Type "help", "copyright", "credits" or "license" for=
 more information.<br class=3D"">&gt;&gt;&gt; import ast<br class=3D"">&gt;=
&gt;&gt;&nbsp;</span></div><div dir=3D"ltr"><span id=3D"yui_3_16_0_1_143812=
2990392_2695">This works okay without the using the ADT.</span></div><div d=
ir=3D"ltr"><span id=3D"yui_3_16_0_1_1438122990392_2695"><br></span></div><d=
iv dir=3D"ltr"><span id=3D"yui_3_16_0_1_1438122990392_2695">Thanks in advan=
ce.</span></div><div dir=3D"ltr"><span></span></div><div>&nbsp;</div><div><=
div>Edward Vidal Jr.<br>e-mail develone@sbcglobal.net<br>915-595-1613</div>=
</div></div></body></html>

------=_Part_4069532_96708809.1438123393227--
