Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0FB6E02BFA; Tue, 12 Jun 2018 11:02:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_00,DATE_IN_PAST_96_XX,
	HTML_MESSAGE, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.236.60.154 listed in list.dnswl.org]
	* 3.4 DATE_IN_PAST_96_XX Date: is 96 hours or more before Received:
	date * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from v-smtpout1.han.skanova.net (v-smtpout1.han.skanova.net
	[81.236.60.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8C6AE02B63
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 11:02:43 -0700 (PDT)
Received: from [10.175.196.108] ([37.123.169.62]) by cmsmtp with ESMTPA
	id SncnfOZvn19K9SncxfwXau; Tue, 12 Jun 2018 20:02:43 +0200
From: Ulf Samuelsson <yocto@emagii.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 1 Jun 2018 10:12:28 +0200
Message-Id: <6C255AB6-2605-4EAF-AAF0-FF610D75FF83@emagii.com>
References: <CA+FhBv94MKe=hP1om41-5knfLXxCQM92GKPLQaw=f8Pz-=RV7Q@mail.gmail.com>
In-Reply-To: <CA+FhBv94MKe=hP1om41-5knfLXxCQM92GKPLQaw=f8Pz-=RV7Q@mail.gmail.com>
To: Damien LEFEVRE <lefevre.da@gmail.com>
X-Mailer: iPad Mail (15B202)
X-CMAE-Envelope: MS4wfAna+k3WYr98KnS8QEgBXX4dG3YwpAwiqyuZjLE6Kz7Xisuk3g4iqSQlv7IcMYyZ8hj+kkweJ86adaQCsu9CRZCHdE61x5B7GAckJ+ywaaYakYMN9oJd
	jymXqkNNFc/3CQkQnErXX/+zbijPYBDcpIoPv7TFjix5XQbXhxin3nlK5BMOpfwBlE1J/8RJnmibvNs6pZj6isjkH3Bggs17py8=
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Image specific configuration files
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
X-List-Received-Date: Tue, 12 Jun 2018 18:02:44 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-4B86D2CF-0C8B-4052-9501-6C04FCD51DE2
Content-Transfer-Encoding: 7bit

--Apple-Mail-4B86D2CF-0C8B-4052-9501-6C04FCD51DE2
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

You can create three separate recipes that generate three different nginx co=
nfigurations and include one if them in each image recipe.


Best Regards,
Ulf Samuelsson

> 1 juni 2018 kl. 07:46 skrev Damien LEFEVRE <lefevre.da@gmail.com>:
>=20
> Hi,
>=20
> For the same MACHINE I create the following images:
> - myimage-production
> - myimage-rnd
> - myimage-retail
>=20
> The production one has production assisted tools for flashing peripheral H=
W, testing vital HW components, writing some serial numbers, etc.
>=20
> The rnd one has more packages than the retail one just to help rnd work an=
d debugging in device, but none of the rnd image extra packages.=20
>=20
> The retail one has the final product image.
>=20
> I'm using web and FTP servers. I would like for the rnd version of the ima=
ge to have a different nginx configuration to set the root directory to a de=
velopment folder, or set an alias.
>=20
> Furthermore, I'll have different variant of the device where only the devi=
ce SW changes but the platform is identical. So I'll end up with=20
> - myimage2-production
> - myimage2-rnd
> - myimage2-retail
>=20
> I know how to make MACHINE based configuration. How could I do this in my n=
ginx.bbappend based on image name?
>=20
> Thanks,
> -Damien
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--Apple-Mail-4B86D2CF-0C8B-4052-9501-6C04FCD51DE2
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><span style=3D"background-color: rgba(255, 2=
55, 255, 0);">You can create three separate recipes that generate three diff=
erent nginx configurations and include one if them in each image recipe.<br>=
<br><br></span><div><span style=3D"background-color: rgba(255, 255, 255, 0);=
">Best Regards,</span><div><span style=3D"background-color: rgba(255, 255, 2=
55, 0);">Ulf Samuelsson</span></div></div><div><br>1 juni 2018 kl. 07:46 skr=
ev Damien LEFEVRE &lt;<a href=3D"mailto:lefevre.da@gmail.com">lefevre.da@gma=
il.com</a>&gt;:<br><br></div><blockquote type=3D"cite"><div><div dir=3D"ltr"=
>Hi,<div><br></div><div>For the same MACHINE I create the following images:<=
/div><div>- myimage-production</div><div>- myimage-rnd</div><div>- myimage-r=
etail</div><div><br></div><div>The production one has production assisted to=
ols for flashing peripheral HW, testing vital HW components, writing some se=
rial numbers, etc.</div><div><br></div><div>The rnd one has more packages th=
an the retail one just to help rnd work and debugging in device, but none of=
 the rnd image extra packages.&nbsp;</div><div><br></div><div>The retail one=
 has the final product image.</div><div><br></div><div>I'm using web and FTP=
 servers. I would like for the rnd version of the image to have a different n=
ginx configuration to set the root directory to a development folder,&nbsp;<=
span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:sma=
ll;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;=
font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,=
255,255);text-decoration-style:initial;text-decoration-color:initial;float:n=
one;display:inline">or set an alias.</span></div><div><br></div><div>Further=
more, I'll have different variant of the device where only the device SW cha=
nges but the platform is identical. So I'll end up with&nbsp;<br></div><div>=
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:sma=
ll;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;=
font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;text-decoration-style:ini=
tial;text-decoration-color:initial">- myimage2-production</div><div style=3D=
"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style=
:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:4=
00;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:non=
e;white-space:normal;word-spacing:0px;text-decoration-style:initial;text-dec=
oration-color:initial">- myimage2-rnd</div><div style=3D"color:rgb(34,34,34)=
;font-family:arial,sans-serif;font-size:small;font-style:normal;font-variant=
-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:normal=
;word-spacing:0px;text-decoration-style:initial;text-decoration-color:initia=
l">- myimage2-retail</div><div><br></div><div>I know how to make MACHINE bas=
ed configuration. How could I do this in my&nbsp;nginx.bbappend based on ima=
ge name?<br></div></div><div><span style=3D"color:rgb(34,34,34);font-family:=
arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-de=
coration-color:initial;float:none;display:inline"><br></span></div><div><spa=
n style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;=
font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255=
,255);text-decoration-style:initial;text-decoration-color:initial;float:none=
;display:inline">Thanks,</span></div><div><span style=3D"color:rgb(34,34,34)=
;font-family:arial,sans-serif;font-size:small;font-style:normal;font-variant=
-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:normal=
;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial;float:none;display:inline">-Damien</span=
></div></div>
</div></blockquote><blockquote type=3D"cite"><div><span>-- </span><br><span>=
_______________________________________________</span><br><span>yocto mailin=
g list</span><br><span><a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a></span><br><span><a href=3D"https://lists.yoctoproject.org/li=
stinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a></span><br></=
div></blockquote></body></html>=

--Apple-Mail-4B86D2CF-0C8B-4052-9501-6C04FCD51DE2--
