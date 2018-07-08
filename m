Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97193E00C70; Sun,  8 Jul 2018 13:48:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [40.92.4.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rksyeung[at]hotmail.com)
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
X-Greylist: delayed 39628 seconds by postgrey-1.32 at yocto-www;
	Sun, 08 Jul 2018 13:48:45 PDT
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-oln040092004067.outbound.protection.outlook.com [40.92.4.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19410E00C1B
	for <yocto@yoctoproject.org>; Sun,  8 Jul 2018 13:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=zC1qSylzXedszhpeJNTFfyjtSlHKf0TXB+xJYF0mJfM=;
	b=CDyNsxzAj+egglOcd8owhW2dos3+4T3kv5m8GxGWjLDFfZXBxs2V3dRPqPo0E9nzEkdNwDDSAOgOxvi/fcQJz/uGd5iybWZG0DcgP6z0a66l+4VMQexs0XKmE3zXQ0Xwxc7urPOiqMDnyqIQs+rDCMxST6V6HY/QdKSuM6OpKfKb5kmFLpQoL4SfJyW1j1D3W47VcuF/+6CZLfxxFTQXe5yL3w53NFoaNC2hi6t+0t/y6MvfFVg7JktuEx8dOoFSJ/pfxfuWBKRGBy0QcP9655ReM45zaV4u8c/NM4p1gbz+Pa/SFUxy7NRaZ2CCk2GsTc1U8thK0TmFK5/XOi9rGw==
Received: from SN1NAM02FT044.eop-nam02.prod.protection.outlook.com
	(10.152.72.56) by SN1NAM02HT107.eop-nam02.prod.protection.outlook.com
	(10.152.73.229) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.906.15;
	Sun, 8 Jul 2018 06:14:36 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.72.51) by
	SN1NAM02FT044.mail.protection.outlook.com (10.152.72.173) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.906.15 via Frontend Transport; Sun, 8 Jul 2018 06:14:36 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::641a:8a85:b9d5:1bcd]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::641a:8a85:b9d5:1bcd%4]) with mapi id 15.20.0930.016;
	Sun, 8 Jul 2018 06:14:36 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] How to remove openssl from sysroots
Thread-Index: AQHUFXWajXIcjzfwuUSyRHt2ANT94aSEXDwAgAB9+Ok=
Date: Sun, 8 Jul 2018 06:14:36 +0000
Message-ID: <MWHPR19MB11839E1E2C80F4549861D246C5450@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <mailman.87211.1530587331.15860.yocto@yoctoproject.org>
	<MWHPR19MB118319929EC2DAFB0F1281A5C5420@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB11832EE45DE3D590BC782414C5470@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<CAJTo0LZDtCuKvvG7D9qfFQVAfSFd2xvOZiWMgdiiz1QriNYHTg@mail.gmail.com>
In-Reply-To: <CAJTo0LZDtCuKvvG7D9qfFQVAfSFd2xvOZiWMgdiiz1QriNYHTg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:16B3C46523689C5243BB4E02A192C207658D1EEFB0A6D05BADA69E85C731D1CD;
	UpperCasedChecksum:5F7EE1B8B7F654076590F10CD94614BF7F9AB5C7193FEFD2ACAC71FED5D72B28;
	SizeAsReceived:7452; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [+Fr/wq8E1kcjHWG9DFA2N9uhDrlMuxflquefE+D1MvZQJZVh5Mi1lkW27EVk4cEF]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; SN1NAM02HT107;
	7:MnUnajz1zqQtMiJhfXiB4aPXALHg6dbsRxdjosv1coId8lQh1HPF1XGIH0YXocZFaj0S/w5gTlGDZA5D5eI34z6xBdZEOHpjk5BBUtp+CoE6AYi/WUgCYfY7OxgWNaV7krX0HXnO3LTg44vqBynbCzdb0ADrWW7Tfmzu0JDVjBS7+r8yQXRmYPRFyeFJletD+fC+NM0GVdbkLSreadRshvqFI9mJ/krDOhTioth3vnG5dTNcOycla/JhrfswkG+D
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125500)(1701031045);
	SRVR:SN1NAM02HT107; 
x-ms-traffictypediagnostic: SN1NAM02HT107:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(82015058);
	SRVR:SN1NAM02HT107; BCL:0; PCL:0; RULEID:; SRVR:SN1NAM02HT107; 
x-forefront-prvs: 0727122FC6
x-forefront-antispam-report: SFV:NSPM;
	SFS:(7070007)(199004)(189003)(6436002)(446003)(6246003)(68736007)(4326008)(14454004)(46003)(236005)(6346003)(45080400002)(2900100001)(966005)(256004)(9686003)(55016002)(19627405001)(7696005)(76176011)(97736004)(53546011)(6506007)(83332001)(104016004)(5250100002)(6916009)(6606003)(11346002)(86362001)(20460500001)(82202002)(8676002)(14444005)(6306002)(87572001)(54896002)(8936002)(229853002)(73972006)(606006)(81156014)(33656002)(106356001)(25786009)(105586002)(476003)(102836004)(74316002)(99286004)(486006)(93886005)(5660300001)(15852004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:SN1NAM02HT107;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:; 
received-spf: None (protection.outlook.com: hotmail.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=rksyeung@hotmail.com; 
x-microsoft-antispam-message-info: ynOnd+M9xQpKz4mFHFclLm34X9X9ntQfu3+UDekpl/8Ul2jPQWODWwSkXJjWd4tQst2nd8Pt30/0PTcashWK/dATHoCWY9dCjIDfCtDIbtBLhBprN22EYoB7iyaTMEV2/07AeQDM9FjXNih7XBttdTrsDKKOL+yJv5VdCSwibJI0M/+kY4VljJgC2EXqP7fT6tiZiIN3dnJAenrbEUnodLGXdJmsW3KRAQPbQtg4LDo=
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: 924c6c6f-c626-478c-ea85-08d5e49a147f
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2018 06:14:36.2056 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM02HT107
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to remove openssl from sysroots
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
X-List-Received-Date: Sun, 08 Jul 2018 20:48:46 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB11839E1E2C80F4549861D246C5450MWHPR19MB1183namp_"

--_000_MWHPR19MB11839E1E2C80F4549861D246C5450MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

We have a shell script that builds openssl.  It uses the native makefiles f=
rom the open source project.  There's no  recipe.  I suppose we define a re=
cipe for this out-of-tree sources.


Still, if we could yank out embedded openssl easily, that would be the best=
.


Raymond


________________________________
From: Burton, Ross <ross.burton@intel.com>
Sent: Saturday, July 7, 2018 3:41 PM
To: Raymond Yeung
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] How to remove openssl from sysroots

Presumably you've a recipe for the vendor openssl.  If it has the same
name but is a different version then just set PREFERRED_VERSION.  If
it has a different name too, it should PROVIDE openssl and you can
just set PREFERRED_PROVIDER.

If it doesn't do either of those things, then it is broken.

Ross

On 6 July 2018 at 23:06, Raymond Yeung <rksyeung@hotmail.com> wrote:
> I've changed the subject heading to make it more specific to our problem.
> Hopefully this generates some responses.
>
>
> It has been blocking us for close to one week now.  We want to use our 3r=
d
> party vendor openssl, not the one that comes with the source.  Apparently=
,
> even with "minimal" instead of "base" or "sato" cannot exclude it.
>
>
> Any idea [e.g. how do we systematically find out how it's included now, a=
nd
> possibly what other packages/recipes we may also need to remove due to
> dependency]?
>
>
> Thanks,
>
> Raymond
>
>
>
> ________________________________
> From: Raymond Yeung <rksyeung@hotmail.com>
> Sent: Monday, July 2, 2018 11:05 PM
> To: yocto@yoctoproject.org
> Subject: How to remove a package from a build
>
>
> We've our own non-yocto openssl that we want to use.  At the moment, we'r=
e
> using "sato" image, rather than "minimal" and includes its openssl that i=
s
> out-of-date.  What is the best way to exclude it from our image (and from
> sysroots)?
>
>
> We have thought about two ideas -
>
>
> Use smaller image like core-image-base, or core-image-full-cmdline (but n=
ot
> -minimal that may remove too much functionality).
> Use INSTALL_IMAGE_remove +=3D " openssl"
>
>
> Would either one work?  Also, how do I follow the .bb files etc (e.g.
> starting from the one for sato) to trace down which sub-package includes
> openssl?
>
>
> Thanks,
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

--_000_MWHPR19MB11839E1E2C80F4549861D246C5450MWHPR19MB1183namp_
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
<p style=3D"margin-top:0;margin-bottom:0">We have a shell script that build=
s openssl. &nbsp;It uses the native makefiles from the open source project.=
 &nbsp;There's no &nbsp;recipe. &nbsp;I suppose we define a recipe for this=
 out-of-tree sources.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Still, if we could yank out embed=
ded openssl easily, that would be the best.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Raymond</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Burton, Ross &lt;ross=
.burton@intel.com&gt;<br>
<b>Sent:</b> Saturday, July 7, 2018 3:41 PM<br>
<b>To:</b> Raymond Yeung<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] How to remove openssl from sysroots</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Presumably you've a recipe for the vendor openssl.=
&nbsp; If it has the same<br>
name but is a different version then just set PREFERRED_VERSION.&nbsp; If<b=
r>
it has a different name too, it should PROVIDE openssl and you can<br>
just set PREFERRED_PROVIDER.<br>
<br>
If it doesn't do either of those things, then it is broken.<br>
<br>
Ross<br>
<br>
On 6 July 2018 at 23:06, Raymond Yeung &lt;rksyeung@hotmail.com&gt; wrote:<=
br>
&gt; I've changed the subject heading to make it more specific to our probl=
em.<br>
&gt; Hopefully this generates some responses.<br>
&gt;<br>
&gt;<br>
&gt; It has been blocking us for close to one week now.&nbsp; We want to us=
e our 3rd<br>
&gt; party vendor openssl, not the one that comes with the source.&nbsp; Ap=
parently,<br>
&gt; even with &quot;minimal&quot; instead of &quot;base&quot; or &quot;sat=
o&quot; cannot exclude it.<br>
&gt;<br>
&gt;<br>
&gt; Any idea [e.g. how do we systematically find out how it's included now=
, and<br>
&gt; possibly what other packages/recipes we may also need to remove due to=
<br>
&gt; dependency]?<br>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Raymond<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; ________________________________<br>
&gt; From: Raymond Yeung &lt;rksyeung@hotmail.com&gt;<br>
&gt; Sent: Monday, July 2, 2018 11:05 PM<br>
&gt; To: yocto@yoctoproject.org<br>
&gt; Subject: How to remove a package from a build<br>
&gt;<br>
&gt;<br>
&gt; We've our own non-yocto openssl that we want to use.&nbsp; At the mome=
nt, we're<br>
&gt; using &quot;sato&quot; image, rather than &quot;minimal&quot; and incl=
udes its openssl that is<br>
&gt; out-of-date.&nbsp; What is the best way to exclude it from our image (=
and from<br>
&gt; sysroots)?<br>
&gt;<br>
&gt;<br>
&gt; We have thought about two ideas -<br>
&gt;<br>
&gt;<br>
&gt; Use smaller image like core-image-base, or core-image-full-cmdline (bu=
t not<br>
&gt; -minimal that may remove too much functionality).<br>
&gt; Use INSTALL_IMAGE_remove &#43;=3D &quot; openssl&quot;<br>
&gt;<br>
&gt;<br>
&gt; Would either one work?&nbsp; Also, how do I follow the .bb files etc (=
e.g.<br>
&gt; starting from the one for sato) to trace down which sub-package includ=
es<br>
&gt; openssl?<br>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Raymond<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"LPlnk6=
88081" class=3D"OWAAutoLink" previewremoved=3D"true">
https://lists.yoctoproject.org/listinfo/yocto</a>
<div id=3D"LPBorder_GT_15310303524610.3933807486307961" style=3D"margin-bot=
tom: 20px; overflow: auto; width: 100%; text-indent: 0px;">
<table id=3D"LPContainer_15310303524580.18065774736671225" role=3D"presenta=
tion" cellspacing=3D"0" style=3D"width: 90%; background-color: rgb(255, 255=
, 255); position: relative; overflow: auto; padding-top: 20px; padding-bott=
om: 20px; margin-top: 20px; border-top-width: 1px; border-top-style: dotted=
; border-top-color: rgb(200, 200, 200); border-bottom-width: 1px; border-bo=
ttom-style: dotted; border-bottom-color: rgb(200, 200, 200);">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td id=3D"TextCell_15310303524590.8211319156256691" colspan=3D"2" style=3D"=
vertical-align: top; position: relative; padding: 0px; display: table-cell;=
">
<div id=3D"LPRemovePreviewContainer_15310303524590.6726902240970273"></div>
<div id=3D"LPTitle_15310303524590.5921623636573192" style=3D"top: 0px; colo=
r: rgb(0, 120, 215); font-weight: normal; font-size: 21px; font-family: wf_=
segoe-ui_light, &quot;Segoe UI Light&quot;, &quot;Segoe WP Light&quot;, &qu=
ot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; line-he=
ight: 21px;">
<a id=3D"LPUrlAnchor_15310303524600.5137109933851659" href=3D"https://lists=
.yoctoproject.org/listinfo/yocto" target=3D"_blank" style=3D"text-decoratio=
n: none;">yocto Info Page</a></div>
<div id=3D"LPMetadata_15310303524600.8558606096493264" style=3D"margin: 10p=
x 0px 16px; color: rgb(102, 102, 102); font-weight: normal; font-family: wf=
_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial=
, sans-serif; font-size: 14px; line-height: 14px;">
lists.yoctoproject.org</div>
<div id=3D"LPDescription_15310303524600.4046822785049662" style=3D"display:=
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

--_000_MWHPR19MB11839E1E2C80F4549861D246C5450MWHPR19MB1183namp_--
