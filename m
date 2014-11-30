Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97D26E0090A; Sun, 30 Nov 2014 08:54:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [202.136.110.237 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail3.adam.net.au (webmail3.adam.net.au [202.136.110.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71ABDE0080C
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 08:54:18 -0800 (PST)
Received: from localhost (webmail3.adam.net.au [127.0.0.1])
	by webmail3.adam.net.au (8.13.8/8.13.8) with ESMTP id sAUGsDtI025709
	for <yocto@yoctoproject.org>; Mon, 1 Dec 2014 03:24:13 +1030
Message-Id: <7e703953f0f0a43c4c61dab8ec278c3ab5b5b76c@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: yocto@yoctoproject.org
X-Mailer: Atmail 6.3.5.8698
Date: Mon, 01 Dec 2014 03:24:13 +1030
MIME-Version: 1.0
Subject: Yocto Eclipse Plugin for Dizzy does not appear to work.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: peterengcomau001@adam.com.au
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 30 Nov 2014 16:54:28 -0000
Content-Type: multipart/alternative;
	boundary="=_62d5c6e1c0b55b47c613dcf208d4fdbb"

--=_62d5c6e1c0b55b47c613dcf208d4fdbb
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=0A If using yocto 1.6.1 plugin for Eclipse then selecting help->install=
=0Anew software->add then=0Ausing=C2=A0http://downloads.yoctoproject.org=
/releases/eclipse-plugin/1.6.1/kepler=0A[1]=C2=A0works fine.=0AFor V1.7=
 I have tried:- doing the above but using 1.7 instead of=0A1.6.1 -> does=
 not work- I try follwing the dev-manual section=0A4.2.2.1.3.1 using the=
 install=0Apath=C2=A0=C2=A0/releases/eclipse-plugin//kepler and this doe=
s not work- I=0Atry downloading the tarball=0A(eclipse-poky-kepler-dizzy=
-12.0.0.tar.bz2) from the yocto website=0A=C2=A0but Eclipse only takes z=
ip files and when I convert to zip this=0Adoes not work- try following t=
he dev-manual section 4.2.2.1.3.2 and=0Abuild from source but when I try=
: $ git checkout dizzy - it does not=0Awork.=0AInstead I have followed t=
he dev-manual section 4.2.2.1.3.2 to build=0Afrom source, but I have use=
d ' checkout daisy'. This works but is=0Adaisy compatible with dizzy?=0A=
If it is not, Is there something missing in the dev-manual sections=0A4.=
2.2.1.3.1 and 4.2.2.1.3.2 that can make 'dizzy' work?=0AThanksLachlan---=
- Message sent via Adam Internet WebMail -=0Ahttp://www.adam.com.au/=0A=
=0ALinks:=0A------=0A[1]=0Ahttp://downloads.yoctoproject.org/releases/ec=
lipse-plugin/1.6.1/kepler=0A

--=_62d5c6e1c0b55b47c613dcf208d4fdbb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><br />=0A=09=09=09=09If using yocto 1.6.1 plugin for Eclipse=
 then selecting help-&gt;install new software-&gt;add then using=C2=A0<s=
pan style=3D"font-size:11pt;line-height:107%;font-family:Calibri, sans-s=
erif;"><a href=3D"http://downloads.yoctoproject.org/releases/eclipse-plu=
gin/1.6.1/kepler">http://downloads.yoctoproject.org/releases/eclipse-plu=
gin/1.6.1/kepler</a>=C2=A0works fine.</span><div><span style=3D"font-siz=
e:11pt;line-height:107%;font-family:Calibri, sans-serif;"><br /></span><=
/div><div><span style=3D"font-size:11pt;line-height:107%;font-family:Cal=
ibri, sans-serif;">For V1.7 I have tried:</span></div><div><span style=
=3D"font-size:11pt;line-height:107%;font-family:Calibri, sans-serif;">-=
 doing the above but using 1.7 instead of 1.6.1 -&gt; does not work</spa=
n></div><div><span style=3D"font-size:11pt;line-height:107%;font-family:=
Calibri, sans-serif;">- I try follwing the dev-manual section 4.2.2.1.3.=
1 using the install path=C2=A0</span><span style=3D"color:rgb(51,51,51);=
font-family:Verdana, Sans, sans-serif;font-size:medium;line-height:24px;=
">=C2=A0</span><code class=3D"filename" style=3D"font-size:medium;font-f=
amily:Courier, monospace;color:rgb(51,51,51);line-height:24px;">/release=
s/eclipse-plugin//kepler and this does not work</code></div><div><span s=
tyle=3D"font-family:Calibri, sans-serif;font-size:11pt;line-height:107%;=
">- I try downloading the tarball (eclipse-poky-kepler-dizzy-12.0.0.tar.=
bz2) from the yocto website =C2=A0but Eclipse only takes zip files and w=
hen I convert to zip this does not work</span></div><div><span style=3D"=
font-family:Calibri, sans-serif;font-size:11pt;line-height:107%;">- try=
 following the dev-manual section 4.2.2.1.3.2 and build from source but=
 when I try: $ git checkout dizzy - it does not work.</span></div><div><=
span style=3D"font-family:Calibri, sans-serif;font-size:11pt;line-height=
:107%;"><br /></span></div><div><span style=3D"font-family:Calibri, sans=
-serif;font-size:11pt;line-height:107%;">Instead I have followed the dev=
-manual section 4.2.2.1.3.2 to build from source, but I have used ' chec=
kout daisy'. This works but is daisy compatible with dizzy?</span></div>=
<div><span style=3D"font-family:Calibri, sans-serif;font-size:11pt;line-=
height:107%;"><br /></span></div><div><font face=3D"Calibri, sans-serif"=
><span style=3D"font-size:15px;line-height:15.6933336257935px;">If it is=
 not, Is there something missing in the dev-manual sections 4.2.2.1.3.1=
 and 4.2.2.1.3.2 that can make 'dizzy' work?</span></font></div><div><fo=
nt face=3D"Calibri, sans-serif"><span style=3D"font-size:15px;line-heigh=
t:15.6933336257935px;"><br /></span></font></div><div><font face=3D"Cali=
bri, sans-serif"><span style=3D"font-size:15px;line-height:15.6933336257=
935px;">Thanks</span></font></div><div><font face=3D"Calibri, sans-serif=
"><span style=3D"font-size:15px;line-height:15.6933336257935px;">Lachlan=
</span></font></div>---- Message sent via Adam Internet WebMail  - http:=
//www.adam.com.au/</body></html>

--=_62d5c6e1c0b55b47c613dcf208d4fdbb--
