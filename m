Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8819E00C5B; Wed,  6 Apr 2016 03:54:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.38 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Wed, 06 Apr 2016 03:54:28 PDT
Received: from DUB004-OMC3S29.hotmail.com (dub004-omc3s29.hotmail.com
	[157.55.2.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5F68E00B37
	for <yocto@yoctoproject.org>; Wed,  6 Apr 2016 03:54:28 -0700 (PDT)
Received: from DUB130-W48 ([157.55.2.8]) by DUB004-OMC3S29.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Wed, 6 Apr 2016 03:53:26 -0700
X-TMN: [2xmMUtnQgYpA2bspaXEA+RIqQv2IEPa+]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W48119310217EFF39E1E035DA9F0@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 6 Apr 2016 11:53:25 +0100
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 06 Apr 2016 10:53:26.0348 (UTC)
	FILETIME=[8BF630C0:01D18FF2]
Subject: Python GObject Errors on yocto-2.1_M3.rc2
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
X-List-Received-Date: Wed, 06 Apr 2016 10:54:29 -0000
Content-Type: multipart/alternative;
	boundary="_65808208-e274-4891-b596-56c731023435_"

--_65808208-e274-4891-b596-56c731023435_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



I have a code base using gobject introspection that has been running fine o=
n Alex's gobject-introspection-experimental branch on poky-contrib but is b=
roken on 2.1 M3.
I am using it with python3 (3.5) but it isn't accessible with python27 eith=
er.  It appears it may be partially installed for 2.7 but not at all for 3.=
5.
To simplify things=2C I have built core-image-full-cmdline on genericx86-64=
 and this gives the same result as my image:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3DPoky (Yocto Project Reference Distro=
) 2.0+snapshot-20160406 genericx86-64 console
genericx86-64 login: rootroot@genericx86-64:~# pythonPython 2.7.11 (default=
=2C Apr  6 2016=2C 10:05:21) [GCC 5.3.0] on linux2Type "help"=2C "copyright=
"=2C "credits" or "license" for more information.>>> import giTraceback (mo=
st recent call last):  File "<stdin>"=2C line 1=2C in <module>  File "/usr/=
lib/python2.7/site-packages/gi/__init__.py"=2C line 29=2C in <module>    im=
port importlibImportError: No module named importlib>>> =3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
Is there something else I need to change to get gobject introspection to wo=
rk with the RC or does this indicate a bug/omission?
Cheers=2CChris
 		 	   		  =

--_65808208-e274-4891-b596-56c731023435_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'><div><br></div><div><br></div>I =
have a code base using gobject introspection that has been running fine on =
Alex's&nbsp=3Bgobject-introspection-experimental branch on poky-contrib but=
 is broken on 2.1 M3.<div><br></div><div>I am using it with python3 (3.5) b=
ut it isn't accessible with python27 either. &nbsp=3BIt appears it may be p=
artially installed for 2.7 but not at all for 3.5.</div><div><br></div><div=
>To simplify things=2C I have built core-image-full-cmdline on&nbsp=3B<span=
 style=3D"font-size: 12pt=3B">genericx86-64 and this gives the same result =
as my image:</span></div><div><span style=3D"font-size: 12pt=3B"><br></span=
></div><div><div><div style=3D"font-size: 12pt=3B">=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D</div></div><div>Poky (Yocto Project Reference Distro) 2.0+s=
napshot-20160406 genericx86-64 console</div><div><br></div><div>genericx86-=
64 login: root</div><div>root@genericx86-64:~# python</div><div>Python 2.7.=
11 (default=2C Apr &nbsp=3B6 2016=2C 10:05:21)&nbsp=3B</div><div>[GCC 5.3.0=
] on linux2</div><div>Type "help"=2C "copyright"=2C "credits" or "license" =
for more information.</div><div>&gt=3B&gt=3B&gt=3B import gi</div><div>Trac=
eback (most recent call last):</div><div>&nbsp=3B File "&lt=3Bstdin&gt=3B"=
=2C line 1=2C in &lt=3Bmodule&gt=3B</div><div>&nbsp=3B File "/usr/lib/pytho=
n2.7/site-packages/gi/__init__.py"=2C line 29=2C in &lt=3Bmodule&gt=3B</div=
><div>&nbsp=3B &nbsp=3B import importlib</div><div>ImportError: No module n=
amed importlib</div><div>&gt=3B&gt=3B&gt=3B&nbsp=3B</div><div style=3D"font=
-size: 12pt=3B">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div></div><div sty=
le=3D"font-size: 12pt=3B"><br></div><div style=3D"font-size: 12pt=3B">Is th=
ere something else I need to change to get gobject introspection to work wi=
th the RC or does this indicate a bug/omission?</div><div style=3D"font-siz=
e: 12pt=3B"><br></div><div style=3D"font-size: 12pt=3B">Cheers=2C</div><div=
 style=3D"font-size: 12pt=3B">Chris</div><div style=3D"font-size: 12pt=3B">=
<br></div> 		 	   		  </div></body>
</html>=

--_65808208-e274-4891-b596-56c731023435_--
