Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15366E00843; Sat, 10 Mar 2018 04:53:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6093FE007E1
	for <yocto@yoctoproject.org>; Sat, 10 Mar 2018 04:53:51 -0800 (PST)
Received: by mail-pf0-f169.google.com with SMTP id d26so2422529pfn.5
	for <yocto@yoctoproject.org>; Sat, 10 Mar 2018 04:53:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=6mMpOBqUIl2cYv7jfaGj8d8cuzV0kanUapeV/FOGObk=;
	b=NDd/GVJNNq48JOOxJAkVMo8SW861O6DQ03CFrCLaabBvMOV0vl3xqF3dPrSuq7f0fi
	MdvLtoyIDz2YgMNgfkSHkzVgVCk2mRta2MRViQvIHZIPrEyO4B6FOvXrLTPNmMGGeeNd
	l6v9msnxTG5GM1zw2/zEpFMH7XxZLiiTRCCtqvzSkxnNtyv58xoLq/hF7awTXPmmya9f
	5YR48+AfGkvZDgtDzHEoFirKoUnzmLq/toXj6wOBAVpHqwl9nlXEyB5JPwq6bizNZRVw
	XiEe54MoTgmNrp5oJDAyYzUtIDvFmez5CXmOUmZrkfmMScu9GBQnJUGIHOeC9Qcl9/4r
	FIIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=6mMpOBqUIl2cYv7jfaGj8d8cuzV0kanUapeV/FOGObk=;
	b=ndXFqCrtgfqX/rMuLL5Oq7/niqEtYOVH3bNeN48+28KbuLiX2r941yr8b3S7Mcqkvj
	Qss6evHar3lK5rXmqTRKdOSlNa2+RbddUqcXzRQmWraWhqVIBPQgV/7GMqGRAkIQI/36
	2czsNYHfpQ/nTsh1Lo3xdSYBNl4FY+Tp6VC7H6j4aJcL7K250mKx2ZcTAvLU5VJ5+38w
	dNlZDMJzmMTA3/IJEFc7/Xy9d+5FR3tMNjBkIcj2gL5fcPwZ2R+O7CETlmsmFloVSFIA
	3oUP/2OqN6jQWSXeCb+buQGWk+JJT3qBvfk0sjRvYXdIq1y/1+vRJzKGspWelR1yjoAY
	CBgw==
X-Gm-Message-State: AElRT7HbeRw6gez2bBRbIuWSmDV0YbGX/3QamT8xIb+1DTQZy2V/SPgJ
	Iy6NDW13xoj/PQ5JIPB9KzybR61fvLmgbXmt4T8Ywg==
X-Google-Smtp-Source: AG47ELs/msqqmKXQL3bpW8I0U2+RTMPj9nSVLkYEXTeOcq7s65TADqZ3kgHLC/is4cCrpqL+3K4gkMMaXCRDOv1NTQA=
X-Received: by 10.98.254.6 with SMTP id z6mr1918781pfh.155.1520686431255; Sat,
	10 Mar 2018 04:53:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.236.166.23 with HTTP; Sat, 10 Mar 2018 04:53:50 -0800 (PST)
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Sat, 10 Mar 2018 13:53:50 +0100
Message-ID: <CAFq4t4gHeuROOaP3q7k3_i2BthqH2GQtf93OCTOcb6XhA1ANvw@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: python-pyqt
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
X-List-Received-Date: Sat, 10 Mar 2018 12:53:53 -0000
Content-Type: multipart/alternative; boundary="089e082eb4b48cbf0e05670e6648"

--089e082eb4b48cbf0e05670e6648
Content-Type: text/plain; charset="UTF-8"

Dears,



per Yocto build from fsl-arm-yocto-bsp.git - i.MX Linux BSP Release Yocto
Project manifests
<https://community.nxp.com/external-link.jspa?url=http%3A%2F%2Fgit.freescale.com%2Fgit%2Fcgit.cgi%2Fimx%2Ffsl-arm-yocto-bsp.git%2F>
of
imx-morty branch I have built fsl-image-qt5 image, I need to add qt5 python
support, how to add to the image?



Modifying local.conf not works

IMAGE_INSTALL_append += "python-pyqt"


I end up with errors...


ERROR: Nothing RPROVIDES 'python-pyqt5' (but
/home/ubuntu/work/morty/fsl-release-bsp-imx6/sources/meta-fsl-bsp-release/imx/meta-sdk/recipes-fsl/images/
fsl-image-qt5.bb RDEPENDS on or otherwise requires it)

NOTE: Runtime target 'python-pyqt5' is unbuildable, removing...

Missing or unbuildable dependency chain was: ['python-pyqt5']

ERROR: Required build target 'fsl-image-qt5' has no buildable providers.

Missing or unbuildable dependency chain was: ['fsl-image-qt5',
'python-pyqt5']



How to add python QT5 support to Yocto image build?


Thank you.

--089e082eb4b48cbf0e05670e6648
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"color:rgb(81,98,111);font-family:&quot=
;Helvetica Neue&quot;,Helvetica,Arial,&quot;Lucida Grande&quot;,sans-serif;=
font-size:15px">Dears,</span><br></div><div><p style=3D"margin:0px;padding:=
0px;border:0px;font-weight:400;font-style:normal;font-size:15px;font-family=
:&quot;Helvetica Neue&quot;,Helvetica,Arial,&quot;Lucida Grande&quot;,sans-=
serif;vertical-align:baseline;word-wrap:break-word;color:rgb(81,98,111);fon=
t-variant-ligatures:normal;font-variant-caps:normal;letter-spacing:normal;t=
ext-align:start;text-indent:0px;text-transform:none;white-space:normal;word=
-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initia=
l;text-decoration-color:initial;min-height:8pt">=C2=A0</p><p style=3D"margi=
n:0px;padding:0px;border:0px;font-weight:400;font-style:normal;font-size:15=
px;font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,&quot;Lucida Gran=
de&quot;,sans-serif;vertical-align:baseline;word-wrap:break-word;color:rgb(=
81,98,111);font-variant-ligatures:normal;font-variant-caps:normal;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;white-spa=
ce:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoratio=
n-style:initial;text-decoration-color:initial">per Yocto build from<span>=
=C2=A0</span><a class=3D"gmail-jive-link-external-small" href=3D"https://co=
mmunity.nxp.com/external-link.jspa?url=3Dhttp%3A%2F%2Fgit.freescale.com%2Fg=
it%2Fcgit.cgi%2Fimx%2Ffsl-arm-yocto-bsp.git%2F" rel=3D"nofollow" target=3D"=
_blank" style=3D"margin:0px;padding-top:0px;padding-bottom:0px;padding-left=
:0px;border:0px;font-weight:inherit;font-style:inherit;font-size:15px;font-=
family:inherit;vertical-align:baseline;color:rgb(94,137,193);text-decoratio=
n:none">fsl-arm-yocto-bsp.git - i.MX Linux BSP Release Yocto Project manife=
sts</a>=C2=A0of imx-morty branch I have built=C2=A0fsl-image-qt5 image, I n=
eed to add qt5 python support, how to add to the image?</p><p style=3D"marg=
in:0px;padding:0px;border:0px;font-weight:400;font-style:normal;font-size:1=
5px;font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,&quot;Lucida Gra=
nde&quot;,sans-serif;vertical-align:baseline;word-wrap:break-word;color:rgb=
(81,98,111);font-variant-ligatures:normal;font-variant-caps:normal;letter-s=
pacing:normal;text-align:start;text-indent:0px;text-transform:none;white-sp=
ace:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decorati=
on-style:initial;text-decoration-color:initial;min-height:8pt">=C2=A0</p><p=
 style=3D"margin:0px;padding:0px;border:0px;font-weight:400;font-style:norm=
al;font-size:15px;font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,&q=
uot;Lucida Grande&quot;,sans-serif;vertical-align:baseline;word-wrap:break-=
word;color:rgb(81,98,111);font-variant-ligatures:normal;font-variant-caps:n=
ormal;letter-spacing:normal;text-align:start;text-indent:0px;text-transform=
:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255)=
;text-decoration-style:initial;text-decoration-color:initial">Modifying loc=
al.conf not works</p><p style=3D"margin:0px;padding:0px;border:0px;font-wei=
ght:400;font-style:normal;font-size:15px;font-family:&quot;Helvetica Neue&q=
uot;,Helvetica,Arial,&quot;Lucida Grande&quot;,sans-serif;vertical-align:ba=
seline;word-wrap:break-word;color:rgb(81,98,111);font-variant-ligatures:nor=
mal;font-variant-caps:normal;letter-spacing:normal;text-align:start;text-in=
dent:0px;text-transform:none;white-space:normal;word-spacing:0px;background=
-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color=
:initial">IMAGE_INSTALL_append +=3D &quot;python-pyqt&quot;</p><p style=3D"=
margin:0px;padding:0px;border:0px;font-weight:400;font-style:normal;font-si=
ze:15px;font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,&quot;Lucida=
 Grande&quot;,sans-serif;vertical-align:baseline;word-wrap:break-word;color=
:rgb(81,98,111);font-variant-ligatures:normal;font-variant-caps:normal;lett=
er-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whit=
e-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-deco=
ration-style:initial;text-decoration-color:initial"><br></p><p style=3D"mar=
gin:0px;padding:0px;border:0px;font-weight:400;font-style:normal;font-size:=
15px;font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,&quot;Lucida Gr=
ande&quot;,sans-serif;vertical-align:baseline;word-wrap:break-word;color:rg=
b(81,98,111);font-variant-ligatures:normal;font-variant-caps:normal;letter-=
spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-s=
pace:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decorat=
ion-style:initial;text-decoration-color:initial">I end up with errors...</p=
><p style=3D"margin:0px;padding:0px;border:0px;font-weight:400;font-style:n=
ormal;font-size:15px;font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial=
,&quot;Lucida Grande&quot;,sans-serif;vertical-align:baseline;word-wrap:bre=
ak-word;color:rgb(81,98,111);font-variant-ligatures:normal;font-variant-cap=
s:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial"><br></p><p=
 style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline;word-wr=
ap:break-word;min-height:8pt"><font color=3D"#51626f" face=3D"Helvetica Neu=
e, Helvetica, Arial, Lucida Grande, sans-serif"><span style=3D"font-size:15=
px">ERROR: Nothing RPROVIDES &#39;python-pyqt5&#39; (but /home/ubuntu/work/=
morty/fsl-release-bsp-imx6/sources/meta-fsl-bsp-release/imx/meta-sdk/recipe=
s-fsl/images/<a href=3D"http://fsl-image-qt5.bb">fsl-image-qt5.bb</a> RDEPE=
NDS on or otherwise requires it)</span></font></p><p style=3D"margin:0px;pa=
dding:0px;border:0px;vertical-align:baseline;word-wrap:break-word;min-heigh=
t:8pt"><font color=3D"#51626f" face=3D"Helvetica Neue, Helvetica, Arial, Lu=
cida Grande, sans-serif"><span style=3D"font-size:15px">NOTE: Runtime targe=
t &#39;python-pyqt5&#39; is unbuildable, removing...</span></font></p><p st=
yle=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline;word-wrap:=
break-word;min-height:8pt"><font color=3D"#51626f" face=3D"Helvetica Neue, =
Helvetica, Arial, Lucida Grande, sans-serif"><span style=3D"font-size:15px"=
>Missing or unbuildable dependency chain was: [&#39;python-pyqt5&#39;]</spa=
n></font></p><p style=3D"margin:0px;padding:0px;border:0px;vertical-align:b=
aseline;word-wrap:break-word;min-height:8pt"><font color=3D"#51626f" face=
=3D"Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif"><span styl=
e=3D"font-size:15px">ERROR: Required build target &#39;fsl-image-qt5&#39; h=
as no buildable providers.</span></font></p><p style=3D"margin:0px;padding:=
0px;border:0px;vertical-align:baseline;word-wrap:break-word;min-height:8pt"=
><font color=3D"#51626f" face=3D"Helvetica Neue, Helvetica, Arial, Lucida G=
rande, sans-serif"><span style=3D"font-size:15px">Missing or unbuildable de=
pendency chain was: [&#39;fsl-image-qt5&#39;, &#39;python-pyqt5&#39;]</span=
></font></p><p style=3D"margin:0px;padding:0px;border:0px;font-size:15px;fo=
nt-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,&quot;Lucida Grande&qu=
ot;,sans-serif;vertical-align:baseline;word-wrap:break-word;color:rgb(81,98=
,111);min-height:8pt">=C2=A0<br></p><p style=3D"margin:0px;padding:0px;bord=
er:0px;font-weight:400;font-style:normal;font-size:15px;font-family:&quot;H=
elvetica Neue&quot;,Helvetica,Arial,&quot;Lucida Grande&quot;,sans-serif;ve=
rtical-align:baseline;word-wrap:break-word;color:rgb(81,98,111);font-varian=
t-ligatures:normal;font-variant-caps:normal;letter-spacing:normal;text-alig=
n:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-d=
ecoration-color:initial"><span style=3D"margin:0px;padding:0px;border:0px;f=
ont-weight:inherit;font-style:inherit;font-size:15px;font-family:inherit;ve=
rtical-align:baseline">How to add python QT5 support to Yocto image build?<=
/span></p><p style=3D"margin:0px;padding:0px;border:0px;font-weight:400;fon=
t-style:normal;font-size:15px;font-family:&quot;Helvetica Neue&quot;,Helvet=
ica,Arial,&quot;Lucida Grande&quot;,sans-serif;vertical-align:baseline;word=
-wrap:break-word;color:rgb(81,98,111);font-variant-ligatures:normal;font-va=
riant-caps:normal;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(=
255,255,255);text-decoration-style:initial;text-decoration-color:initial"><=
span style=3D"margin:0px;padding:0px;border:0px;font-weight:inherit;font-st=
yle:inherit;font-size:15px;font-family:inherit;vertical-align:baseline"><br=
></span></p>Thank you.</div></div>

--089e082eb4b48cbf0e05670e6648--
