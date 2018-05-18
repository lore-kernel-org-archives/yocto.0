Return-Path: <enrico.bonomi92@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE9CDE009E2; Fri, 18 May 2018 02:40:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (enrico.bonomi92[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D70AE009B9
	for <yocto@yoctoproject.org>; Fri, 18 May 2018 02:40:23 -0700 (PDT)
Received: by mail-it0-f50.google.com with SMTP id 70-v6so12397670ity.2
	for <yocto@yoctoproject.org>; Fri, 18 May 2018 02:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=6XBgInBJymjsv0vlsSONAQ1ECrYaj6E7yv1z11Lx1XE=;
	b=ZsSnUNF1Opa3trAKS24q/t2bNsoO9Urm4+08yAtO3Tj3D7Zv79qYUt9iSinaqv1X14
	Y1H+0psuD8W/kc1GF6fcOVkAWtqDeOgqxPGBcIu0IzyOqrqnvcVx0M4d6TirUsG3mg17
	2naXI/ILsXOu//PsjvKuY59Ae5F7mgzEBkygnvO7ToAb/VzuwGN8SQIxx+0vLfSuAM7e
	7Kdy44OTnue3WEt7td2U4vwTcaRfF0QnQ4kVReFLdxdraqC/IANqpCNyuaJMwPmVc8Wx
	o8NojLG1SqTaWXFnfiDL0kP1cM3yJhzT7OkvpBSQ15u59w+Cdm/fimv/43f9EsspUcRX
	oihg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=6XBgInBJymjsv0vlsSONAQ1ECrYaj6E7yv1z11Lx1XE=;
	b=mDmcWOFgcl9LiqYWKPNjwNrnfFJLVdHaObhgae6dFG7cnN3zc0Vj1TgcRIjVjOJ68v
	OEkWsqgoLFpi08lmWNtf9quIzeVpcsQ/Qot+PqjYdWajJpl+NkYTLFR7o54YM/AWtU8t
	HyWaWLR3yh+rKuzSJbaO8il9UO+zkNGWhPM9j6hFlOZtEtCWhdJ74ZgQHaqOFjwNTKFp
	ObrtdnY/OcSOvt3L4NBykk2z+sXGsPkxSzRebBvUCYvODKxSDQtXJ1e9HBvbSq288Woz
	ExUNxj5tvMwQZph6eIdm+l9VkydyeVk9LxnOfcvPZ1jQc3GNsm7RMoArFBkPHP/1PCPw
	IZBw==
X-Gm-Message-State: ALKqPwdb2kDRgQ3PmOKvFwrKZWa/N+kdqvzX15/4uMmYF0q9ql22H93g
	L3yQE9HWfChwPozs7s3OcaEL3OTw7Wi95XfzKl1omw==
X-Google-Smtp-Source: AB8JxZrI2Mey5nj27C4tLsYvh33vJ5GX5rxXllURVpJ4eEmKe2ikNxe8+dC5ZO/bKpqvuAjHlaJL5a01OG92N9lLpgE=
X-Received: by 2002:a24:a90d:: with SMTP id
	r13-v6mr6083532ite.119.1526636422921; 
	Fri, 18 May 2018 02:40:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.4.206 with HTTP; Fri, 18 May 2018 02:40:22 -0700 (PDT)
From: Enrico Bonomi <enrico.bonomi92@gmail.com>
Date: Fri, 18 May 2018 11:40:22 +0200
Message-ID: <CALmqtKZf-2zEYTr7duH3FRUkPtL_-ftUys+nMfkBNph5Axx0wA@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Display 1920x1080 double LVDS channel problem
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
X-List-Received-Date: Fri, 18 May 2018 09:40:25 -0000
Content-Type: multipart/alternative; boundary="000000000000b080b0056c77bd6e"

--000000000000b080b0056c77bd6e
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm working with an imx6duallite with Yocto 1.7.3. I want to drive a
1920x1080 display with 2 LVDS channels but i came across a problem.
Pictures are shown correctly on display but they have wrong colors (for
example a blue bar during psplash is shown pink).

my .dts has the following ldb:

&ldb {
ipu_id = <1>;
disp_id = <0>;
ext_ref = <1>;
mode = "sep0";
sec_ipu_id = <1>;
sec_disp_id = <1>;
status = "okay";
split-mode;

lvds-channel@0{
fsl,data-mapping = "spwg";
fsl,data-width = <24>;
crtc = "ipu1-di0";
status = "okay";
};

lvds-channel@1{
fsl,data-mapping = "spwg";
fsl,data-width = <24>;
crtc = "ipu1-di0";
status = "okay";
};

--000000000000b080b0056c77bd6e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m working with an imx6duallit=
e with Yocto 1.7.3. I want to drive a 1920x1080 display with 2 LVDS channel=
s but i came across a problem. Pictures are shown correctly on display but =
they have wrong colors (for example a blue bar during psplash is shown pink=
).</div><div><br></div><div>my .dts has the following ldb:</div><div><br></=
div><div>

<span style=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif;font-size:=
13px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:left;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;text-decoration-style=
:initial;text-decoration-color:initial;float:none;display:inline">&amp;ldb =
{</span><br style=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif;font=
-size:13px;font-style:normal;font-variant-ligatures:normal;font-variant-cap=
s:normal;font-weight:400;letter-spacing:normal;text-align:left;text-indent:=
0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration=
-style:initial;text-decoration-color:initial"><span style=3D"color:rgb(38,5=
0,56);font-family:Roboto,sans-serif;font-size:13px;font-style:normal;font-v=
ariant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spa=
cing:normal;text-align:left;text-indent:0px;text-transform:none;white-space=
:normal;word-spacing:0px;text-decoration-style:initial;text-decoration-colo=
r:initial;float:none;display:inline">ipu_id =3D &lt;1&gt;;</span><br style=
=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif;font-size:13px;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:left;text-indent:0px;text-transfor=
m:none;white-space:normal;word-spacing:0px;text-decoration-style:initial;te=
xt-decoration-color:initial"><span style=3D"color:rgb(38,50,56);font-family=
:Roboto,sans-serif;font-size:13px;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:left;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;text-decoration-style:initial;text-decoration-color:initial;float:n=
one;display:inline">disp_id =3D &lt;0&gt;;</span><br style=3D"color:rgb(38,=
50,56);font-family:Roboto,sans-serif;font-size:13px;font-style:normal;font-=
variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-sp=
acing:normal;text-align:left;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration-style:initial;text-decoration-col=
or:initial"><span style=3D"color:rgb(38,50,56);font-family:Roboto,sans-seri=
f;font-size:13px;font-style:normal;font-variant-ligatures:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:left;text-i=
ndent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-deco=
ration-style:initial;text-decoration-color:initial;float:none;display:inlin=
e">ext_ref =3D &lt;1&gt;;</span><br style=3D"color:rgb(38,50,56);font-famil=
y:Roboto,sans-serif;font-size:13px;font-style:normal;font-variant-ligatures=
:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text=
-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spa=
cing:0px;text-decoration-style:initial;text-decoration-color:initial"><span=
 style=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif;font-size:13px;=
font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fo=
nt-weight:400;letter-spacing:normal;text-align:left;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;text-decoration-style:init=
ial;text-decoration-color:initial;float:none;display:inline">mode =3D &quot=
;sep0&quot;;</span><br style=3D"color:rgb(38,50,56);font-family:Roboto,sans=
-serif;font-size:13px;font-style:normal;font-variant-ligatures:normal;font-=
variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:left;t=
ext-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text=
-decoration-style:initial;text-decoration-color:initial"><span style=3D"col=
or:rgb(38,50,56);font-family:Roboto,sans-serif;font-size:13px;font-style:no=
rmal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400=
;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;=
white-space:normal;word-spacing:0px;text-decoration-style:initial;text-deco=
ration-color:initial;float:none;display:inline">sec_ipu_id =3D &lt;1&gt;;</=
span><br style=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif;font-si=
ze:13px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:n=
ormal;font-weight:400;letter-spacing:normal;text-align:left;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;text-decoration-st=
yle:initial;text-decoration-color:initial"><span style=3D"color:rgb(38,50,5=
6);font-family:Roboto,sans-serif;font-size:13px;font-style:normal;font-vari=
ant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacin=
g:normal;text-align:left;text-indent:0px;text-transform:none;white-space:no=
rmal;word-spacing:0px;text-decoration-style:initial;text-decoration-color:i=
nitial;float:none;display:inline">sec_disp_id =3D &lt;1&gt;;</span><br styl=
e=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif;font-size:13px;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:left;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px;text-decoration-style:initial;t=
ext-decoration-color:initial"><span style=3D"color:rgb(38,50,56);font-famil=
y:Roboto,sans-serif;font-size:13px;font-style:normal;font-variant-ligatures=
:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text=
-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spa=
cing:0px;text-decoration-style:initial;text-decoration-color:initial;float:=
none;display:inline">status =3D &quot;okay&quot;;</span><br style=3D"color:=
rgb(38,50,56);font-family:Roboto,sans-serif;font-size:13px;font-style:norma=
l;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;text-decoration-style:initial;text-decorat=
ion-color:initial"><span style=3D"color:rgb(38,50,56);font-family:Roboto,sa=
ns-serif;font-size:13px;font-style:normal;font-variant-ligatures:normal;fon=
t-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:left=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;te=
xt-decoration-style:initial;text-decoration-color:initial;float:none;displa=
y:inline">split-mode;</span><br style=3D"color:rgb(38,50,56);font-family:Ro=
boto,sans-serif;font-size:13px;font-style:normal;font-variant-ligatures:nor=
mal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-ali=
gn:left;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px;text-decoration-style:initial;text-decoration-color:initial"><br style=
=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif;font-size:13px;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:left;text-indent:0px;text-transfor=
m:none;white-space:normal;word-spacing:0px;text-decoration-style:initial;te=
xt-decoration-color:initial"><span style=3D"color:rgb(38,50,56);font-family=
:Roboto,sans-serif;font-size:13px;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:left;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;text-decoration-style:initial;text-decoration-color:initial;float:n=
one;display:inline">lvds-channel@0{</span><br style=3D"color:rgb(38,50,56);=
font-family:Roboto,sans-serif;font-size:13px;font-style:normal;font-variant=
-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:n=
ormal;text-align:left;text-indent:0px;text-transform:none;white-space:norma=
l;word-spacing:0px;text-decoration-style:initial;text-decoration-color:init=
ial"><span style=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif;font-=
size:13px;font-style:normal;font-variant-ligatures:normal;font-variant-caps=
:normal;font-weight:400;letter-spacing:normal;text-align:left;text-indent:0=
px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration-=
style:initial;text-decoration-color:initial;float:none;display:inline">fsl,=
data-mapping =3D &quot;spwg&quot;;</span><br style=3D"color:rgb(38,50,56);f=
ont-family:Roboto,sans-serif;font-size:13px;font-style:normal;font-variant-=
ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:left;text-indent:0px;text-transform:none;white-space:normal=
;word-spacing:0px;text-decoration-style:initial;text-decoration-color:initi=
al"><span style=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif;font-s=
ize:13px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:=
normal;font-weight:400;letter-spacing:normal;text-align:left;text-indent:0p=
x;text-transform:none;white-space:normal;word-spacing:0px;text-decoration-s=
tyle:initial;text-decoration-color:initial;float:none;display:inline">fsl,d=
ata-width =3D &lt;24&gt;;</span><br style=3D"color:rgb(38,50,56);font-famil=
y:Roboto,sans-serif;font-size:13px;font-style:normal;font-variant-ligatures=
:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text=
-align:left;text-indent:0px;text-transform:none;white-space:normal;word-spa=
cing:0px;text-decoration-style:initial;text-decoration-color:initial"><span=
 style=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif;font-size:13px;=
font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fo=
nt-weight:400;letter-spacing:normal;text-align:left;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;text-decoration-style:init=
ial;text-decoration-color:initial;float:none;display:inline">crtc =3D &quot=
;ipu1-di0&quot;;</span><br style=3D"color:rgb(38,50,56);font-family:Roboto,=
sans-serif;font-size:13px;font-style:normal;font-variant-ligatures:normal;f=
ont-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:le=
ft;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;=
text-decoration-style:initial;text-decoration-color:initial"><span style=3D=
"color:rgb(38,50,56);font-family:Roboto,sans-serif;font-size:13px;font-styl=
e:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight=
:400;letter-spacing:normal;text-align:left;text-indent:0px;text-transform:n=
one;white-space:normal;word-spacing:0px;text-decoration-style:initial;text-=
decoration-color:initial;float:none;display:inline">status =3D &quot;okay&q=
uot;;</span><br style=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif;=
font-size:13px;font-style:normal;font-variant-ligatures:normal;font-variant=
-caps:normal;font-weight:400;letter-spacing:normal;text-align:left;text-ind=
ent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decora=
tion-style:initial;text-decoration-color:initial"><span style=3D"color:rgb(=
38,50,56);font-family:Roboto,sans-serif;font-size:13px;font-style:normal;fo=
nt-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter=
-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-s=
pace:normal;word-spacing:0px;text-decoration-style:initial;text-decoration-=
color:initial;float:none;display:inline">};</span><br style=3D"color:rgb(38=
,50,56);font-family:Roboto,sans-serif;font-size:13px;font-style:normal;font=
-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-s=
pacing:normal;text-align:left;text-indent:0px;text-transform:none;white-spa=
ce:normal;word-spacing:0px;text-decoration-style:initial;text-decoration-co=
lor:initial"><br style=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif=
;font-size:13px;font-style:normal;font-variant-ligatures:normal;font-varian=
t-caps:normal;font-weight:400;letter-spacing:normal;text-align:left;text-in=
dent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decor=
ation-style:initial;text-decoration-color:initial"><span style=3D"color:rgb=
(38,50,56);font-family:Roboto,sans-serif;font-size:13px;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lette=
r-spacing:normal;text-align:left;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;text-decoration-style:initial;text-decoration=
-color:initial;float:none;display:inline">lvds-channel@1{</span><br style=
=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif;font-size:13px;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:left;text-indent:0px;text-transfor=
m:none;white-space:normal;word-spacing:0px;text-decoration-style:initial;te=
xt-decoration-color:initial"><span style=3D"color:rgb(38,50,56);font-family=
:Roboto,sans-serif;font-size:13px;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:left;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;text-decoration-style:initial;text-decoration-color:initial;float:n=
one;display:inline">fsl,data-mapping =3D &quot;spwg&quot;;</span><br style=
=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif;font-size:13px;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:left;text-indent:0px;text-transfor=
m:none;white-space:normal;word-spacing:0px;text-decoration-style:initial;te=
xt-decoration-color:initial"><span style=3D"color:rgb(38,50,56);font-family=
:Roboto,sans-serif;font-size:13px;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:left;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;text-decoration-style:initial;text-decoration-color:initial;float:n=
one;display:inline">fsl,data-width =3D &lt;24&gt;;</span><br style=3D"color=
:rgb(38,50,56);font-family:Roboto,sans-serif;font-size:13px;font-style:norm=
al;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;l=
etter-spacing:normal;text-align:left;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration-style:initial;text-decora=
tion-color:initial"><span style=3D"color:rgb(38,50,56);font-family:Roboto,s=
ans-serif;font-size:13px;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:lef=
t;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;t=
ext-decoration-style:initial;text-decoration-color:initial;float:none;displ=
ay:inline">crtc =3D &quot;ipu1-di0&quot;;</span><br style=3D"color:rgb(38,5=
0,56);font-family:Roboto,sans-serif;font-size:13px;font-style:normal;font-v=
ariant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spa=
cing:normal;text-align:left;text-indent:0px;text-transform:none;white-space=
:normal;word-spacing:0px;text-decoration-style:initial;text-decoration-colo=
r:initial"><span style=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif=
;font-size:13px;font-style:normal;font-variant-ligatures:normal;font-varian=
t-caps:normal;font-weight:400;letter-spacing:normal;text-align:left;text-in=
dent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
">status =3D &quot;okay&quot;;</span><br style=3D"color:rgb(38,50,56);font-=
family:Roboto,sans-serif;font-size:13px;font-style:normal;font-variant-liga=
tures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:left;text-indent:0px;text-transform:none;white-space:normal;wor=
d-spacing:0px;text-decoration-style:initial;text-decoration-color:initial">=
<span style=3D"color:rgb(38,50,56);font-family:Roboto,sans-serif;font-size:=
13px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:left;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;text-decoration-style=
:initial;text-decoration-color:initial;float:none;display:inline">};</span>

<br></div><div><br></div><div><br></div><div><br></div></div>

--000000000000b080b0056c77bd6e--
