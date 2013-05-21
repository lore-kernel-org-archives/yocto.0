Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-ob0-f180.google.com (mail-ob0-f180.google.com
	[209.85.214.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01CB1E01542
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 02:42:37 -0700 (PDT)
Received: by mail-ob0-f180.google.com with SMTP id xk17so447509obc.39
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 02:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=O0m5itFoCrnyIa3/yNSSrJkpuOBIWUMyfedcT8deb2I=;
	b=JOtIS8DRmQ8HxUQ5tkZ3hgQfqFeKTl69/LgVb+NaDIEcLC5JvkmmQPlIxO6rc7Vpvz
	NSjgGtR/zZzoheQD3vq4TTfFsJDo/v644eBcOUPQvI/+s+lPxdccZu/r8tsvzBKcdD6Z
	f2nymVZOZnTgpq9Q8n2BoLgQ7jtR/gys7+zCAVT4gGCGa1AVbEshYXFp3UwBU2Oat7tl
	2I9G6ciOtHiGhC5J+JTbxg2iiCRzlbYXSibbxCEeopjF3NDLtBUZ8WqejNvLrpaJLmrH
	/cyLa2mdlQveC34JwIQ2InU8HQIiZx0sRlBzrHLlEIZJmLNL5mqDfy5p8UgFR8rBe9nh
	/W8g==
X-Received: by 10.60.38.169 with SMTP id h9mr819694oek.120.1369129356302; Tue,
	21 May 2013 02:42:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.114.163 with HTTP; Tue, 21 May 2013 02:42:14 -0700 (PDT)
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Tue, 21 May 2013 11:42:14 +0200
Message-ID: <CAAGt+t3ueJoFB=Vf9sX5pE5CTx4g9QG6px9XjW-uUrDH49BJvg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Hello world package error
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
X-List-Received-Date: Tue, 21 May 2013 09:42:38 -0000
Content-Type: multipart/alternative; boundary=089e0149530aef223104dd3744b0

--089e0149530aef223104dd3744b0
Content-Type: text/plain; charset=ISO-8859-1

Hi all,



I am trying to add Hello world package, my path is as follows,

*/home/siguser/yocto/poky*


    --meta-bebot
       --recipes-bebot
         --helloworld
           --helloworld.bb


                +-------------------------------------------


                |   +-------------------------------------------

                DESCRIPTION = "Simple helloworld application"
                SECTION = "examples"
                LICENSE = "MIT"
                PR = "r0"
                SRC_URI = "file://*hello.c*"
                S = "*/home/siguser/workspace/bebot-apps/helloworld*"

                do_compile() {
         	${CC} hello.c -o helloworld
                }

                do_install() {
	        install -d ${D}${bindir}
	        install -m 0755 helloworld ${D}${bindir}
                }
          +-------------------------------------------


                +-------------------------------------------
 Source file location: */home/siguser/workspace/bebot-apps/helloworld*


                                                              --hello.c


When i try to run *bitbake helloworld* from build it throws "Nothing
provides bitbake " error



P.S: My source file location is outside of poky and i gave source
location(S) in helloworld.bb


Any help or ideas?



Regards,

Zafrullah Syed

--089e0149530aef223104dd3744b0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><pre style=3D"font-family:courier,&#39;courier new&#3=
9;,monospace;font-size:14px;white-space:pre-wrap;word-wrap:break-word;margi=
n-top:0px;margin-bottom:0px;color:rgb(0,0,0);line-height:19px">Hi all,</pre=
>

<pre style=3D"font-family:courier,&#39;courier new&#39;,monospace;font-size=
:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin-botto=
m:0px;color:rgb(0,0,0);line-height:19px"><br></pre><pre style=3D"font-famil=
y:courier,&#39;courier new&#39;,monospace;font-size:14px;white-space:pre-wr=
ap;word-wrap:break-word;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0);l=
ine-height:19px">

I am trying to add Hello world package, my path is as follows,</pre><pre st=
yle=3D"font-family:courier,&#39;courier new&#39;,monospace;font-size:14px;w=
hite-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin-bottom:0px;c=
olor:rgb(0,0,0);line-height:19px">

<b>/home/siguser/yocto/poky</b></pre><pre style=3D"font-family:courier,&#39=
;courier new&#39;,monospace;font-size:14px;white-space:pre-wrap;word-wrap:b=
reak-word;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0);line-height:19p=
x">

    --meta-bebot
       --recipes-bebot
         --helloworld
      =A0    --<a href=3D"http://helloworld.bb">helloworld.bb</a>          =
</pre><pre style=3D"font-family:courier,&#39;courier new&#39;,monospace;fon=
t-size:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin=
-bottom:0px;color:rgb(0,0,0);line-height:19px">

               =A0+-------------------------------------------</pre><pre st=
yle=3D"font-family:courier,&#39;courier new&#39;,monospace;font-size:14px;w=
hite-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin-bottom:0px;c=
olor:rgb(0,0,0);line-height:19px">

                |   +-------------------------------------------
</pre><pre style=3D"font-family:courier,&#39;courier new&#39;,monospace;fon=
t-size:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin=
-bottom:0px;color:rgb(0,0,0);line-height:19px">                DESCRIPTION =
=3D &quot;Simple helloworld application&quot;
                SECTION =3D &quot;examples&quot;
                LICENSE =3D &quot;MIT&quot;
                PR =3D &quot;r0&quot;
                SRC_URI =3D &quot;file://<b>hello.c</b>&quot;
                S =3D &quot;<b>/home/siguser/workspace/bebot-apps/helloworl=
d</b>&quot;

                do_compile() {
         	${CC} hello.c -o helloworld
                }

                do_install() {
	        install -d ${D}${bindir}
	        install -m 0755 helloworld ${D}${bindir}
                }
          +-------------------------------------------</pre><pre style=3D"f=
ont-family:courier,&#39;courier new&#39;,monospace;font-size:14px;white-spa=
ce:pre-wrap;word-wrap:break-word;margin-top:0px;margin-bottom:0px;color:rgb=
(0,0,0);line-height:19px">

                +-------------------------------------------        =20
 Source file location: <b>/home/siguser/workspace/bebot-apps/helloworld</b>=
            </pre><pre style=3D"font-family:courier,&#39;courier new&#39;,m=
onospace;font-size:14px;white-space:pre-wrap;word-wrap:break-word;margin-to=
p:0px;margin-bottom:0px;color:rgb(0,0,0);line-height:19px">

                                                              --hello.c</pr=
e><pre style=3D"font-family:courier,&#39;courier new&#39;,monospace;font-si=
ze:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin-bot=
tom:0px;color:rgb(0,0,0);line-height:19px">

<br></pre><pre style=3D"font-family:courier,&#39;courier new&#39;,monospace=
;font-size:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;ma=
rgin-bottom:0px;color:rgb(0,0,0);line-height:19px">When i try to run <i>bit=
bake helloworld</i> from build it throws &quot;Nothing provides bitbake &qu=
ot; error<br>

</pre><pre style=3D"font-family:courier,&#39;courier new&#39;,monospace;fon=
t-size:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin=
-bottom:0px;color:rgb(0,0,0);line-height:19px"><br></pre><pre style=3D"font=
-family:courier,&#39;courier new&#39;,monospace;font-size:14px;white-space:=
pre-wrap;word-wrap:break-word;margin-top:0px;margin-bottom:0px;color:rgb(0,=
0,0);line-height:19px">

P.S: My source file location is outside of poky and i gave source location(=
S) in <a href=3D"http://helloworld.bb">helloworld.bb</a></pre><pre style=3D=
"font-family:courier,&#39;courier new&#39;,monospace;font-size:14px;white-s=
pace:pre-wrap;word-wrap:break-word;margin-top:0px;margin-bottom:0px;color:r=
gb(0,0,0);line-height:19px">

<br></pre><pre style=3D"font-family:courier,&#39;courier new&#39;,monospace=
;font-size:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;ma=
rgin-bottom:0px;color:rgb(0,0,0);line-height:19px">Any help or ideas?</pre>

<pre style=3D"font-family:courier,&#39;courier new&#39;,monospace;font-size=
:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin-botto=
m:0px;color:rgb(0,0,0);line-height:19px"><br></pre><pre style=3D"font-famil=
y:courier,&#39;courier new&#39;,monospace;font-size:14px;white-space:pre-wr=
ap;word-wrap:break-word;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0);l=
ine-height:19px">

Regards,</pre><pre style=3D"font-family:courier,&#39;courier new&#39;,monos=
pace;font-size:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0p=
x;margin-bottom:0px;color:rgb(0,0,0);line-height:19px">Zafrullah Syed</pre>

</div>
</div>

--089e0149530aef223104dd3744b0--
