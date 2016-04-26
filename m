Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70BF0E00D02; Tue, 26 Apr 2016 04:03:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	FREEMAIL_REPLY, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.23 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from DUB004-OMC3S14.hotmail.com (dub004-omc3s14.hotmail.com
	[157.55.2.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 993B4E00CFF
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 04:03:45 -0700 (PDT)
Received: from DUB130-W15 ([157.55.2.7]) by DUB004-OMC3S14.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Tue, 26 Apr 2016 04:03:44 -0700
X-TMN: [6ngS+HPLAJcENab6mNfi5/lkdj+3L0rF]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W154CC2F8D508806658A3E5DA630@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: Andreas Enbacka <andreas.enbacka@gasera.fi>, 'Rudolf Streif'
	<rudolf.streif@gmail.com>
Date: Tue, 26 Apr 2016 12:03:43 +0100
Importance: Normal
In-Reply-To: <01a101d19fa3$8b1ec430$a15c4c90$@gasera.fi>
References: <000f01d19dfa$51e59400$f5b0bc00$@gasera.fi>
	<43F0718C449F6A46B393DA2BEC8E01280C9FE07D@post>,
	<CAEKp-aY7dyXZSAvFD8tJCP-rQDhg08SF=srT0GscMGqMi1-h6Q@mail.gmail.com>,
	<01a101d19fa3$8b1ec430$a15c4c90$@gasera.fi>
MIME-Version: 1.0
X-OriginalArrivalTime: 26 Apr 2016 11:03:44.0041 (UTC)
	FILETIME=[4C65A990:01D19FAB]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Customize login prompt text in Yocto
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
X-List-Received-Date: Tue, 26 Apr 2016 11:03:48 -0000
Content-Type: multipart/alternative;
	boundary="_02e25fdc-aac6-4331-910c-b4332ff9c4f3_"

--_02e25fdc-aac6-4331-910c-b4332ff9c4f3_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Andreas=2C
In general=2C you should not add your changes to poky directly=2C or any of=
 the other provided layers.
In this case the 'permanent' way to do this is to produce your own distribu=
tion layer but the quick alternative is to set the variable in conf/local.c=
onf.
Regards=2CChris=20

From: andreas.enbacka@gasera.fi
To: rudolf.streif@gmail.com
Date: Tue=2C 26 Apr 2016 13:08:13 +0300
CC: yocto@yoctoproject.org
Subject: Re: [yocto] Customize login prompt text in Yocto

Hello=2C What is the correct way to override poky.conf? I tried adding a ne=
w file custom-poky.conf into meta-yocto/conf/distro=2C including the poky.c=
onf file and overriding e.g.=2C DISTRO_VERSION. Is this the correct approac=
h=2C or is some other changes required as well? Best regards=2CAndreas Enba=
cka From: Rudolf Streif [mailto:rudolf.streif@gmail.com]=20
Sent: 25. huhtikuutata 2016 0:07
To: Peter Bergin <peter.bergin@tritech.se>
Cc: Andreas Enbacka <andreas.enbacka@gasera.fi>=3B yocto@yoctoproject.org
Subject: Re: [yocto] Customize login prompt text in Yocto the information s=
hown is from the file /etc/issue. You can for example do post-processing on=
 this file and change the information. You can add this to your image recip=
e.

update_issue() {
    echo "Your text" > ${IMAGE_ROOTFS}/etc/issue
}

ROOTFS_POSTPROCESS_COMMAND +=3D " update issue=3B "  The more "yoctonic" wa=
y of setting this is to modify the DISTRO_NAME variable=2C which is set in =
the distro configuration file e.g. poky.conf. If you are building your own =
distro it you may want to derive your own distro configuration file from th=
e ones that Poky provides. There you can also set other variables such as D=
ISTRO_VERSION=2C MAINTAINER=2C etc. Cheers=2CRudi
-- =0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto 		 	   		  =

--_02e25fdc-aac6-4331-910c-b4332ff9c4f3_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>Hi Andreas=2C<div><br></div><div=
>In general=2C you should not add your changes to poky directly=2C or any o=
f the other provided layers.</div><div><br></div><div>In this case the 'per=
manent' way to do this is to produce your own distribution layer but the qu=
ick alternative is to set the variable in conf/local.conf.</div><div><br></=
div><div>Regards=2C</div><div>Chris&nbsp=3B<br><br><div><hr id=3D"stopSpell=
ing">From: andreas.enbacka@gasera.fi<br>To: rudolf.streif@gmail.com<br>Date=
: Tue=2C 26 Apr 2016 13:08:13 +0300<br>CC: yocto@yoctoproject.org<br>Subjec=
t: Re: [yocto] Customize login prompt text in Yocto<br><br><style><!--=0A=
.ExternalClass p.ecxMsoNormal=2C .ExternalClass li.ecxMsoNormal=2C .Externa=
lClass div.ecxMsoNormal {=0A=
font-size:12.0pt=3B=0A=
font-family:"Times New Roman"=2Cserif=3B=0A=
}=0A=
=0A=
.ExternalClass a:link=2C .ExternalClass span.ecxMsoHyperlink {=0A=
color:#0563C1=3B=0A=
text-decoration:underline=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxMsoHyperlinkFollowed {=0A=
color:#954F72=3B=0A=
text-decoration:underline=3B=0A=
}=0A=
=0A=
.ExternalClass p.ecxmsonormal0=2C .ExternalClass li.ecxmsonormal0=2C .Exter=
nalClass div.ecxmsonormal0 {=0A=
font-size:12.0pt=3B=0A=
font-family:"Times New Roman"=2Cserif=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxEmailStyle18 {=0A=
font-family:"Calibri"=2Csans-serif=3B=0A=
color:windowtext=3B=0A=
}=0A=
=0A=
.ExternalClass .ecxMsoChpDefault {=0A=
font-family:"Calibri"=2Csans-serif=3B=0A=
}=0A=
=0A=
.ExternalClass div.ecxWordSection1 {=0A=
}=0A=
=0A=
--></style><div class=3D"ecxWordSection1"><p class=3D"ecxMsoNormal"><span s=
tyle=3D"font-size:11.0pt=3Bfont-family:&quot=3BCalibri&quot=3B=2Csans-serif=
=3B">Hello=2C</span></p><p class=3D"ecxMsoNormal"><span style=3D"font-size:=
11.0pt=3Bfont-family:&quot=3BCalibri&quot=3B=2Csans-serif=3B">&nbsp=3B</spa=
n></p><p class=3D"ecxMsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.=
0pt=3Bfont-family:&quot=3BCalibri&quot=3B=2Csans-serif=3B">What is the corr=
ect way to override poky.conf? I tried adding a new file custom-poky.conf i=
nto meta-yocto/conf/distro=2C including the poky.conf file and overriding e=
.g.=2C DISTRO_VERSION. Is this the correct approach=2C or is some other cha=
nges required as well?</span></p><p class=3D"ecxMsoNormal"><span lang=3D"EN=
-US" style=3D"font-size:11.0pt=3Bfont-family:&quot=3BCalibri&quot=3B=2Csans=
-serif=3B">&nbsp=3B</span></p><p class=3D"ecxMsoNormal"><span lang=3D"EN-US=
" style=3D"font-size:11.0pt=3Bfont-family:&quot=3BCalibri&quot=3B=2Csans-se=
rif=3B">Best regards=2C</span></p><p class=3D"ecxMsoNormal"><span lang=3D"E=
N-US" style=3D"font-size:11.0pt=3Bfont-family:&quot=3BCalibri&quot=3B=2Csan=
s-serif=3B">Andreas Enbacka</span></p><p class=3D"ecxMsoNormal"><span lang=
=3D"EN-US" style=3D"font-size:11.0pt=3Bfont-family:&quot=3BCalibri&quot=3B=
=2Csans-serif=3B">&nbsp=3B</span></p><p class=3D"ecxMsoNormal"><b><span lan=
g=3D"EN-US" style=3D"font-size:11.0pt=3Bfont-family:&quot=3BCalibri&quot=3B=
=2Csans-serif=3B">From:</span></b><span lang=3D"EN-US" style=3D"font-size:1=
1.0pt=3Bfont-family:&quot=3BCalibri&quot=3B=2Csans-serif=3B"> Rudolf Streif=
 [mailto:rudolf.streif@gmail.com] <br><b>Sent:</b> 25. huhtikuutata 2016 0:=
07<br><b>To:</b> Peter Bergin &lt=3Bpeter.bergin@tritech.se&gt=3B<br><b>Cc:=
</b> Andreas Enbacka &lt=3Bandreas.enbacka@gasera.fi&gt=3B=3B yocto@yoctopr=
oject.org<br><b>Subject:</b> Re: [yocto] Customize login prompt text in Yoc=
to</span></p><p class=3D"ecxMsoNormal">&nbsp=3B</p><div><div><div><blockquo=
te style=3D"border:none=3Bborder-left:solid #CCCCCC 1.0pt=3Bpadding:0cm 0cm=
 0cm 6.0pt=3B"><div><p class=3D"ecxMsoNormal">the information shown is from=
 the file /etc/issue. You can for example do post-processing on this file a=
nd change the information. You can add this to your image recipe.<br><br>up=
date_issue() {<br>&nbsp=3B&nbsp=3B&nbsp=3B echo "Your text" &gt=3B ${IMAGE_=
ROOTFS}/etc/issue<br>}<br><br>ROOTFS_POSTPROCESS_COMMAND +=3D " update issu=
e=3B "</p></div></blockquote><div><p class=3D"ecxMsoNormal">&nbsp=3B</p></d=
iv></div><div><div><p class=3D"ecxMsoNormal">&nbsp=3B</p></div><div><p clas=
s=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BGaramond&quot=3B=2Cse=
rif=3B">The more "yoctonic" way of setting this is to modify the DISTRO_NAM=
E variable=2C which is set in the distro configuration file e.g. poky.conf.=
 If you are building your own distro it you may want to derive your own dis=
tro configuration file from the ones that Poky provides. There you can also=
 set other variables such as DISTRO_VERSION=2C MAINTAINER=2C etc.</span></p=
></div><div><p class=3D"ecxMsoNormal">&nbsp=3B</p></div><div><p class=3D"ec=
xMsoNormal"><span style=3D"font-family:&quot=3BGaramond&quot=3B=2Cserif=3B"=
>Cheers=2C</span></p></div><div><p class=3D"ecxMsoNormal"><span style=3D"fo=
nt-family:&quot=3BGaramond&quot=3B=2Cserif=3B">Rudi</span></p></div></div><=
/div></div></div><br>-- =0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto</div></div> 		 	   		  </div>=
</body>
</html>=

--_02e25fdc-aac6-4331-910c-b4332ff9c4f3_--
