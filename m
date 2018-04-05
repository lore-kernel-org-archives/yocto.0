Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8534FE00B30; Thu,  5 Apr 2018 11:02:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rksyeung[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [40.92.5.75 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3289 seconds by postgrey-1.32 at yocto-www;
	Thu, 05 Apr 2018 11:02:55 PDT
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-oln040092005075.outbound.protection.outlook.com [40.92.5.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8997E005A9
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2018 11:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=2sZp63lxlrIZVo+G1O4Ij/IGvqJO0m4RI8SEXyc6EVU=;
	b=Nt/jQyeSAjpRmlT0Yl8b8/NJuEqYXgKhIxFQMF9AiD9UVpe/esGiiriSymOU+W7Xs3ABXLgyHKEq6mTA+GjsyiRDngynOfB9JES6T20OfY1PAYYaCcgcza4NGWEDqx6wGiim1l7XWb4a8jH7MsjzlwAe2V6xN7dKRk38pBmgo7ts9cHvFS2nDGbf1GFx+51qnndrjyfLcFxK1W4nq+D6+PdTteyWiEFKtsMnUsVjinCjrD48VZVmEiYd0XI4W0D0fKldc9IFNVz51BMHa+Q4qtqWYHNkYBgth08Jcpi34xlIQIGWQ31mduHG2c7YnSLO+RsXTZVVOfZV4MsNIgqcxw==
Received: from BL2NAM02FT054.eop-nam02.prod.protection.outlook.com
	(10.152.76.58) by BL2NAM02HT027.eop-nam02.prod.protection.outlook.com
	(10.152.76.127) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.653.8;
	Thu, 5 Apr 2018 18:02:54 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.76.60) by
	BL2NAM02FT054.mail.protection.outlook.com (10.152.77.107) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.653.8 via Frontend Transport; Thu, 5 Apr 2018 18:02:54 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41%17]) with mapi id 15.20.0631.013;
	Thu, 5 Apr 2018 18:02:54 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Problem with packages during "devtool build"
Thread-Index: AQHTzH12aB4neOupkEGhBC8TIHhB3aPxbNIPgAD4OACAABFJog==
Date: Thu, 5 Apr 2018 18:02:54 +0000
Message-ID: <MWHPR19MB11833298715A5E9438C791C8C5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB11832923DB3D62F88A7A0BB5C5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB118384708AABF27804EBDD66C5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<CAMKF1sqodNOr9oxCTgqapjaZAxYjqLj3s86_MNj74i5D-1orQw@mail.gmail.com>
In-Reply-To: <CAMKF1sqodNOr9oxCTgqapjaZAxYjqLj3s86_MNj74i5D-1orQw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:9B164E9D12D812FA143BD54B2B9F223123959DCB30F09B8278C18CC69C635502;
	UpperCasedChecksum:FF78876CFCD73F06E5D638A91DB0D65CED2340DA181024E25E76813E9C841B26;
	SizeAsReceived:7282; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [uW4icN3LHUS40WZJawnUXKCe1uJeC15F]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BL2NAM02HT027;
	7:Sn2i53xTSTz8805Ef1UfxxCj6+cfH+n4YDRCFQQMai+MwcuVkH7aXAoejp/6pSNOByGo/Rt4x4atvf9FbiC/jzx7BpDAIQ7x9rElXp9uSzjxRnJ0g60yvhjhCC/17p93FZ3wddHkitnhqFVeHJizQ4YKDC0CSHfFe1EK4WUa7nCTLrO7IVXLwyrlWjiqBlYCVYMov3t9YkO/n8ppI1IVDEbZJrdgMAFq3DxWAJrFkrqZaaD7DzCsuViNZkKpbbkC
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:BL2NAM02HT027; 
x-ms-traffictypediagnostic: BL2NAM02HT027:
x-ms-office365-filtering-correlation-id: a3eff944-3a8f-43b7-61b7-08d59b1f7478
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:BL2NAM02HT027; BCL:0; PCL:0; RULEID:; SRVR:BL2NAM02HT027; 
x-forefront-prvs: 06339BAE63
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:BL2NAM02HT027;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: yV9CJ3VrHs3SfuA+rc5qH5Qpn6RBVR4vMGjgXL8wK6CBMZv8Tpr71gaEq9Duu7AzqwiyjjmNSNf5ueml3vtHN87dpP5YvV+cLBD3dJdgWs9R96sUAhlc2oa1eIvaArtd2dR8tRfsqkpBonJ0lHdvmkcWgPC+reXPC0F2J+3FeA+IxicRZAZhYz7fEDFlCFKo
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3eff944-3a8f-43b7-61b7-08d59b1f7478
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2018 18:02:54.2349 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2NAM02HT027
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem with packages during "devtool build"
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
X-List-Received-Date: Thu, 05 Apr 2018 18:02:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB11833298715A5E9438C791C8C5BB0MWHPR19MB1183namp_"

--_000_MWHPR19MB11833298715A5E9438C791C8C5BB0MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

"inherit module" is already in recipes/cgosapi.bb file.  In fact, as I use =
devtool to "add" the recipe to workspace layer, this .bb file is autogenera=
ted.  I only added the last line that sets KERNELDIR that 3rd Party softwar=
e's Makefile uses.


Below is edited cgosapi.bb file with all generated comments removed for ref=
erence.  Note also that there is also a generated cgosapi.bbapend that spec=
ifies location of the 3rd party software.


LICENSE =3D "GPLv2 Unknown"

LIC_FILES_CHKSUM =3D "file://CgosDrv/COPYING_GPL2;md5=3Db234ee4d69f5fce4486=
a80fdaf4a4263 \

                    file://CgosMon/COPYING_BSD2;md5=3Ded45fbc9a3094e8564261=
0390226ff9c \

                    file://CgosLib/COPYING_BSD2;md5=3Ded45fbc9a3094e8564261=
0390226ff9c \

                    file://CgosDump/COPYING_BSD2;md5=3Ded45fbc9a3094e856426=
10390226ff9c"



SRC_URI =3D ""


inherit module


EXTRA_OEMAKE_append_task-install =3D " -C ${STAGING_KERNEL_DIR} M=3D${S}"



KERNELDIR =3D "${KERNEL_SRC}"


________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Thursday, April 5, 2018 9:56 AM
To: Raymond Yeung
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Problem with packages during "devtool build"

On Wed, Apr 4, 2018 at 7:08 PM, Raymond Yeung <rksyeung@hotmail.com> wrote:
> Resent, after subscribing to the list.
>
>
>
> ________________________________
> From: Raymond Yeung <rksyeung@hotmail.com>
> Sent: Wednesday, April 4, 2018 6:40 PM
> To: yocto@yoctoproject.org
> Subject: Problem with packages during "devtool build"
>
>
> I've some 3rd party Makefile-based software I'd like to integrate to a
> working Poky snapshot.  The following are done:
>
>
> devtool add cgosapi <source path>
> Edit workspace/recipe/cgosapi/cgosapi.bb.
>
> Implement do_install to move files on build machine to directories on
> target.
> Files include a .so, a .ko, along with 2 other binaries.
>
> devtool build cgosapi
>
>
> At step 3, I got following error:
>
>
> ERROR: cgosapi-1.0-r0 do_package: QA Issue: cgosapi: Files/directories we=
re
> installed but not shipped in any package:
>
>     /lib
>
>     /lib/modules
>
>     /lib/modules/4.4.26-yocto-standard
>
>     /lib/modules/4.4.26-yocto-standard/extra
>

this seems to be a kernel module. So you might want to inherit module

> Please set FILES such that these items are packaged. Alternatively if the=
y
> are unneeded, avoid installing them or delete them within do_install.
>
> cgosapi: 4 installed and not shipped files. [installed-vs-shipped]
>
>
> Where do I get the above 4 lines; they're BTW directories, not files?  I
> googled online and found use of FILES_${PN}, but didn't help.  And the
> "extra" directory seems generated; I don't have it.
>
>
> Raymond
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
yocto Info Page<https://lists.yoctoproject.org/listinfo/yocto>
lists.yoctoproject.org
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
 Subscribe before posting to bypass moderation.



>

--_000_MWHPR19MB11833298715A5E9438C791C8C5BB0MWHPR19MB1183namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">&quot;inherit module&quot; is alr=
eady in recipes/cgosapi.bb file. &nbsp;In fact, as I use devtool to &quot;a=
dd&quot; the recipe to workspace layer, this .bb file is autogenerated. &nb=
sp;I only added the last line that sets KERNELDIR that 3rd Party
 software's Makefile uses.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Below is edited cgosapi.bb file w=
ith all generated comments removed for reference. &nbsp;Note also that ther=
e is also a generated cgosapi.bbapend that specifies location of the 3rd pa=
rty software.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p>LICENSE =3D &quot;GPLv2 Unknown&quot;</p>
<p>LIC_FILES_CHKSUM =3D &quot;file://CgosDrv/COPYING_GPL2;md5=3Db234ee4d69f=
5fce4486a80fdaf4a4263 \</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; fi=
le://CgosMon/COPYING_BSD2;md5=3Ded45fbc9a3094e85642610390226ff9c \</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; fi=
le://CgosLib/COPYING_BSD2;md5=3Ded45fbc9a3094e85642610390226ff9c \</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; fi=
le://CgosDump/COPYING_BSD2;md5=3Ded45fbc9a3094e85642610390226ff9c&quot;</p>
<p><br>
</p>
<p><br>
</p>
<p>SRC_URI =3D &quot;&quot;</p>
<p><br>
</p>
<p>inherit module</p>
<p><br>
</p>
<p>EXTRA_OEMAKE_append_task-install =3D &quot; -C ${STAGING_KERNEL_DIR} M=
=3D${S}&quot;</p>
<p><br>
</p>
<p><br>
</p>
<p>KERNELDIR =3D &quot;${KERNEL_SRC}&quot;</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Khem Raj &lt;raj.khem=
@gmail.com&gt;<br>
<b>Sent:</b> Thursday, April 5, 2018 9:56 AM<br>
<b>To:</b> Raymond Yeung<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Problem with packages during &quot;devtool buil=
d&quot;</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">On Wed, Apr 4, 2018 at 7:08 PM, Raymond Yeung &lt;=
rksyeung@hotmail.com&gt; wrote:<br>
&gt; Resent, after subscribing to the list.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; ________________________________<br>
&gt; From: Raymond Yeung &lt;rksyeung@hotmail.com&gt;<br>
&gt; Sent: Wednesday, April 4, 2018 6:40 PM<br>
&gt; To: yocto@yoctoproject.org<br>
&gt; Subject: Problem with packages during &quot;devtool build&quot;<br>
&gt;<br>
&gt;<br>
&gt; I've some 3rd party Makefile-based software I'd like to integrate to a=
<br>
&gt; working Poky snapshot.&nbsp; The following are done:<br>
&gt;<br>
&gt;<br>
&gt; devtool add cgosapi &lt;source path&gt;<br>
&gt; Edit workspace/recipe/cgosapi/cgosapi.bb.<br>
&gt;<br>
&gt; Implement do_install to move files on build machine to directories on<=
br>
&gt; target.<br>
&gt; Files include a .so, a .ko, along with 2 other binaries.<br>
&gt;<br>
&gt; devtool build cgosapi<br>
&gt;<br>
&gt;<br>
&gt; At step 3, I got following error:<br>
&gt;<br>
&gt;<br>
&gt; ERROR: cgosapi-1.0-r0 do_package: QA Issue: cgosapi: Files/directories=
 were<br>
&gt; installed but not shipped in any package:<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; /lib<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; /lib/modules<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; /lib/modules/4.4.26-yocto-standard<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; /lib/modules/4.4.26-yocto-standard/extra<br>
&gt;<br>
<br>
this seems to be a kernel module. So you might want to inherit module<br>
<br>
&gt; Please set FILES such that these items are packaged. Alternatively if =
they<br>
&gt; are unneeded, avoid installing them or delete them within do_install.<=
br>
&gt;<br>
&gt; cgosapi: 4 installed and not shipped files. [installed-vs-shipped]<br>
&gt;<br>
&gt;<br>
&gt; Where do I get the above 4 lines; they're BTW directories, not files?&=
nbsp; I<br>
&gt; googled online and found use of FILES_${PN}, but didn't help.&nbsp; An=
d the<br>
&gt; &quot;extra&quot; directory seems generated; I don't have it.<br>
&gt;<br>
&gt;<br>
&gt; Raymond<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"LPlnk7=
38422" previewremoved=3D"true">
https://lists.yoctoproject.org/listinfo/yocto</a>
<div id=3D"LPBorder_GT_15229510891790.429577205841408" style=3D"margin-bott=
om: 20px; overflow: auto; width: 100%; text-indent: 0px;">
<table id=3D"LPContainer_15229510891750.9177868176538189" role=3D"presentat=
ion" cellspacing=3D"0" style=3D"width: 90%; background-color: rgb(255, 255,=
 255); position: relative; overflow: auto; padding-top: 20px; padding-botto=
m: 20px; margin-top: 20px; border-top-width: 1px; border-top-style: dotted;=
 border-top-color: rgb(200, 200, 200); border-bottom-width: 1px; border-bot=
tom-style: dotted; border-bottom-color: rgb(200, 200, 200);">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td id=3D"TextCell_15229510891760.6166694324527111" colspan=3D"2" style=3D"=
vertical-align: top; position: relative; padding: 0px; display: table-cell;=
">
<div id=3D"LPRemovePreviewContainer_15229510891770.4005865191005501"></div>
<div id=3D"LPTitle_15229510891770.461067916200811" style=3D"top: 0px; color=
: rgb(0, 120, 215); font-weight: normal; font-size: 21px; font-family: wf_s=
egoe-ui_light, &quot;Segoe UI Light&quot;, &quot;Segoe WP Light&quot;, &quo=
t;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; line-hei=
ght: 21px;">
<a id=3D"LPUrlAnchor_15229510891780.4683469665640587" href=3D"https://lists=
.yoctoproject.org/listinfo/yocto" target=3D"_blank" style=3D"text-decoratio=
n: none;">yocto Info Page</a></div>
<div id=3D"LPMetadata_15229510891780.016388281690964623" style=3D"margin: 1=
0px 0px 16px; color: rgb(102, 102, 102); font-weight: normal; font-family: =
wf_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Ari=
al, sans-serif; font-size: 14px; line-height: 14px;">
lists.yoctoproject.org</div>
<div id=3D"LPDescription_15229510891780.6879436436140834" style=3D"display:=
 block; color: rgb(102, 102, 102); font-weight: normal; font-family: wf_seg=
oe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sa=
ns-serif; font-size: 14px; line-height: 20px; max-height: 100px; overflow: =
hidden;">
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
 Subscribe before posting to bypass moderation.</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<br>
&gt;<br>
</div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB11833298715A5E9438C791C8C5BB0MWHPR19MB1183namp_--
