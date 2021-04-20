Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.11257.1618927802124880604
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Apr 2021 07:10:04 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=OwRYjuX6;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1618927801; x=1776607801;
  h=from:to:subject:date:mime-version;
  bh=gehxsEfUErCVlFl0y1Qq30/MHzaSxzrgq0eRgHX2CSU=;
  b=OwRYjuX6K7B38P69hZCCyEPcXUFXtS0PfVnWwc5pA3kLDFtgNCwvhk00
   CzBFaSI/iedI8Xl2U5r52rSLhm2kgzAj54/PQNn0LFWVBPhXNWdZn0G/S
   1vKBiZcgQck77eKERLLRuWFIbnq9W4pU34ctdlPx+g1joRi01LFBA5JCN
   A=;
IronPort-SDR: leqZWwtWIp1vdjvedWhIkGK6tRmZzIvXjwBRd6OeRihxM12i6xSt/w0m0coSd/XCMKd4bZh8ko
 kFIHoMQlNalw==
IronPort-PHdr: =?us-ascii?q?A9a23=3AAsFAJRLbscLZxfOm8NmcuPZmWUAX047cDksu8?=
 =?us-ascii?q?pMizoh2WeGdxfzKAkXT6L1XgUPTWs2DsrQY0ruQ6fi9Ejdfqb+681k6OKRWU?=
 =?us-ascii?q?BEEjchE1ycBO+WiTXPBEfjxciYhF95DXlI2t1uyMExSBdqsLwaK+i764jEdA?=
 =?us-ascii?q?AjwOhRoLerpBIHSk9631+ev8JHPfglEnjWwba52IRmsswndqskbjYRsJ6sz1?=
 =?us-ascii?q?xDEvmZGd+NKyG1yOFmdhQz85sC+/J5i9yRfpfcs/NNeXKv5Yqo1U6VWACwpP?=
 =?us-ascii?q?G4p6sLrswLDTRaU6XsHTmoWiBtIDBPb4xz8Q5z8rzH1tut52CmdIM32UbU5U?=
 =?us-ascii?q?ims4qt3VBPljjoMOjgk+2/Vl8NwlrpWrhK/qRJi347aboKbNPR/fqzBctwXX?=
 =?us-ascii?q?nBOUtpTVyFbHo+wc5UDAuwcNuhYtYn9oF4OoAOwCQerA+PvzCRIiWHo0q0hy?=
 =?us-ascii?q?+gqDBzI3BA+ENIQrnvUqsj+ObkPWuyxwqbG0DDPY/1L0jr684jIbg4uoe+SU?=
 =?us-ascii?q?rJ2a8bRzE4vFwXejlqOt4PlJCiY2f8XvGeF9OphVfmvi3I5pAF0uTij3Nsji?=
 =?us-ascii?q?o7Mho8MzF3P6Cp2zpovK9KiVE57fcCrEIFWtyyCN4Z6XscvT31otisnyrAIu?=
 =?us-ascii?q?Zy2cTQExpk6yBPTduGLfoiJ7x7+VeucLyp1iWx4dbywmxq+7UatxvH9W8Wpz?=
 =?us-ascii?q?VtEoCxImcTPuHAVzxHf99SLRuFz80qjwzqDygTe5+9eLU01lKfXM4MtzqIqm?=
 =?us-ascii?q?pccvknPBCD7lF/rgKKWcEgv5/Km5P79Yrr8o5+RL4p0igbjPaswgsG/GuE4M?=
 =?us-ascii?q?hQWX2ic5OS8yKXv/U3nT7VOif07iq/ZsJDcJcsBo665GAxY34Y/5xqjEjuqy?=
 =?us-ascii?q?tIYkmMdIF1eYh2IkZPpOlHVIPDkE/i/hk+snC13yPDBO73tGpTNLn7dn7f9Z?=
 =?us-ascii?q?btx9lJQxBA9wN1d/Z5YF7UMLfzpVkLwtdHUFho5PBa1w+bjBtV9zIQeWWeXD?=
 =?us-ascii?q?6+CLKPdr0GI6fwpI+WWYY8VvzD9K+M76PHwln80gkQScrO30psMaHG4BehmL?=
 =?us-ascii?q?FucYXr3mNsODWAKvg8mQOzwlFKCSSJTZ2q1X68k5jA7D56pDZvERo22hLyB3?=
 =?us-ascii?q?Ty7HoFNZmxcClGMFmvnd5mDW/cUciKSJc1hnSIYWri9UYMh0guutACpg4Zge?=
 =?us-ascii?q?6DF/SYEsrrn1cNp/KvCkhou8iRuCMaQ2H3LSHt71CtcVjg9wKdXpU1m1kzFw?=
 =?us-ascii?q?K9zn/tAD9tR6vhVFAAgOsiP4fZ9DoW4fwXHZdqEUxLuecmrHzw3Bvl5g+I1I?=
 =?us-ascii?q?gw1T86+gw7O2WyvBLkOmrGQLJY9/7nNxGT8It07wHHDgvpyx2I6S9dCYDX1z?=
 =?us-ascii?q?pV08BLeUtahrg=3D=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A2DZEV6ue+hBXQijSXPBrs1qz7skCyoYji2?=
 =?us-ascii?q?hD6mlwRA09T+WxrOrrtOgH1BPylTYaUGwhn9fFA6WbXXbA7/dOgLU5FYyJGC?=
 =?us-ascii?q?3ronGhIo0n14vtxDX8Bzbzn9Qy6Y5JSII7MtH5CDFB4vrSyAOzH888hPyO96?=
 =?us-ascii?q?61jenTpk0dNj1CQYsI1XYdNi+wFEpqSA5aQb8wE5SB7sRKzgDQA0g/RMK9G3?=
 =?us-ascii?q?UDQqz/t8TG/aiWLCIuKjwGzE21jT2u4KPnCBTw5Hx/bxpjyaovmFK16jDRyb?=
 =?us-ascii?q?6kt5iAu3zh/kvyy7gTp9f70NtEA6W3+4QoAxHhkByhaogke5DqhkFMnMiV5F?=
 =?us-ascii?q?wnkMbBrn4bVqwf11rrcnyouhyo4gH80V8Vmjvf4GWFinjuq9GRfkNfN+N9hJ?=
 =?us-ascii?q?lUehacy00ssMAU6tMs40ultoFaBR6FoSLl59KgbWAMqmOIpxMZ4Iwupk0aeZ?=
 =?us-ascii?q?cSaKJwgOUkln99IdMqByL16Z0iGOlqSPzG7PxVfUjyVQGegkBfhPa2WG4oJw?=
 =?us-ascii?q?yLRkgZtta13zBakGti4Esc2cAFknoq5KgwTJRv4ePCPq50kqomdKMrRJM4IN?=
 =?us-ascii?q?1Ebdq8C2TLTx6JGnmVO07bGKYOPG+Ig4Lr4Z0ujdvaN6Ag/d8XotDsQVlYvW?=
 =?us-ascii?q?k9dwbFEsuVxqBG9RjLXSGUQSnt8MdD/JJ004eMCobDAGmmchQDgsGgq/IQDo?=
 =?us-ascii?q?nwQPCoIq9bBPflMC/IFZtW2Rb9H71fM2MXXsFQmttTYSPOnuv7bqnR8sDLev?=
 =?us-ascii?q?faI7TgVRw+XHnkP3cFVD/vYMpa6ESmXWL5nQjRV3vhdleXx+MyLIHqu8wojK?=
 =?us-ascii?q?QdPIxFtQYYzX6j4NuQFDFEuqsqOEtySYmX0J+TlC2TxyLl/m9pMh1SAgJ++7?=
 =?us-ascii?q?P7SU5HogcMLgfzarYMu9KWfGhIx3uZLhpjT8fbeTQv52hfyOaSFdi91CoiA9?=
 =?us-ascii?q?WoPiamlHMVvmuNVIpZsLaE/93ZdpQxCYsGVKR9GR7QLQF8nR9npQ54GUo5b3?=
 =?us-ascii?q?6aMgmrqK2+yLQIGenUdrBH8XqWCP8RjUiaiGKxioUEQGABUzunTMiN6DxeOw?=
 =?us-ascii?q?Z8txlW6KEWh7qSkSuuL2wfjOw0PEZXUX+aGr5cEwiJDb8k3YzDcB1sTGuMmD?=
 =?us-ascii?q?yRgwwyfG2v7EkJmmn9N0SvCI72K0sYtXZC3qnw9lRoMm2bYkJrc3h/9ZZwDG?=
 =?us-ascii?q?Lcpx9IoKS2T7v21mbUc0AFyO0GKj3JCAFiUD9G1pSy1BSPniyFGmhjzpIyPv?=
 =?us-ascii?q?bFBLBLScCb5lq9bImJn7oBBfla4dJsM83vqPYCVaaadxWOJD31T+Mv1Ar9nA?=
 =?us-ascii?q?dsBABk7H0lm+jvwhvr8Syx22M+G+PbJBB+XK4ASuvsm1TMVrKNytF0nNg1te?=
 =?us-ascii?q?y/PiH4bcOH07jea3pGJgnIqWC7Quk0oflvzOgPnao2G4OeXSrD1XlB0hl7Ns?=
 =?us-ascii?q?vymU8ESKlw4bzKOOZUDrovUjMc+kBsmMWELUMtvACzH/Q3eks1iWTHe9yO+L?=
 =?us-ascii?q?jFpNMUczi8jRq1PUPa9SJT//3IBXTekbEbDr89OmRQZgw37m948OaLao3XD0?=
 =?us-ascii?q?Greoh4jSqHG274dKUYTq6PXagUpFJ95dqDmueMbSr22AzKp1JAU9Vz2nfiRd?=
 =?us-ascii?q?n3GR6GHO5D7sezNluNiLa7+cLbtkaHdRKrL0ADwZBffUMebs5fmiAvgY0+3C?=
 =?us-ascii?q?+1ULH2qCse4ihjyCAikEXs1Iig6HraGk8DMRSxuOQpYQVu?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2CzAACr335g/0LBJQpaHAEBAQEBAQc?=
 =?us-ascii?q?BARIBAQQEAQFACYE4BAEBCwGBIoF/DoEzC5YuA4VmlRmBaAsBAQEBAQEBAQE?=
 =?us-ascii?q?IAR0BFgQBAYRQAoF1JjcGDgIDAQEMAQEGAQEBAQEGBAGBA4VRDII4IoNqAQE?=
 =?us-ascii?q?BBAEsXAIBCA0EBAEBFhIHKAoUCQgBAQQTCIJlBYF+qGA1d4E0GgJlhFiFFgk?=
 =?us-ascii?q?BgTABgWSFHIJeg3aCDUGBE4MiPoN7CAoBEgFXCYU5BIFvFIEBgR8uMBEOYwK?=
 =?us-ascii?q?Rf4p0nmUHA4MMlWuHGR4Pg0+Kf4V9A4schRiVHp4tDAY3hEgCBAIEBQIWgWo?=
 =?us-ascii?q?xXHBwgzlQFwKcenM4AgYKAQEDCYt/gRABAQ?=
X-IPAS-Result: =?us-ascii?q?A2CzAACr335g/0LBJQpaHAEBAQEBAQcBARIBAQQEAQFAC?=
 =?us-ascii?q?YE4BAEBCwGBIoF/DoEzC5YuA4VmlRmBaAsBAQEBAQEBAQEIAR0BFgQBAYRQA?=
 =?us-ascii?q?oF1JjcGDgIDAQEMAQEGAQEBAQEGBAGBA4VRDII4IoNqAQEBBAEsXAIBCA0EB?=
 =?us-ascii?q?AEBFhIHKAoUCQgBAQQTCIJlBYF+qGA1d4E0GgJlhFiFFgkBgTABgWSFHIJeg?=
 =?us-ascii?q?3aCDUGBE4MiPoN7CAoBEgFXCYU5BIFvFIEBgR8uMBEOYwKRf4p0nmUHA4MMl?=
 =?us-ascii?q?WuHGR4Pg0+Kf4V9A4schRiVHp4tDAY3hEgCBAIEBQIWgWoxXHBwgzlQFwKce?=
 =?us-ascii?q?nM4AgYKAQEDCYt/gRABAQ?=
X-IronPort-AV: E=Sophos;i="5.82,237,1613433600"; 
   d="scan'208,217";a="367344874"
IronPort-SDR: G+PQXlTvy8RzYu3knfzob8ynrs9oRa99AzEaqM0iLhQzfXpeuf1vEwK74sFXOWO3/z6VV/2O5F
 Fo5VWWPy2OlSZEN18ad5wZdU6VA/5EpuaLGt11n6NnfbzQaovdUrfSSyZTvWjxrZzGBu+qHp8M
 X6YZxbPDZdq5NzwGvrzq+fCVvYGIVevu5vNxjh4G3m+fxq8iiPfnetyagdRZUBKJPJuhqvssck
 o3Fi4JxTiInah05wu2B1IBwecWWEDvMrqyPO1mhlZooW+j4T/PZlLcTtUu275fn5GLmMNlh894
 IPA=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto llvm support
Thread-Topic: [yocto] #yocto llvm support
Thread-Index: Adc15CeJBNXiVQrnS+CDBQ6ketFtuQAKZz6AAAgxBaAAECQF4A==
Date: Tue, 20 Apr 2021 14:09:31 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.100.33
dlp-reaction: no-action
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.16779642C78F36A1.19697@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0eb032cae35542c88561c8f7accb1b83baesystemscom_"

--_000_0eb032cae35542c88561c8f7accb1b83baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


So, does anyone know proper usage here?

Is this a fully functional llvm drop under ../poky/meta/recipes-devtools ?
Is it compatible with meta-clang?, and can they be used together to build 3=
rd party extensions for my platform ?

Is it better to add supported components this way rather than building them=
 in directly to EXT SDK ?

Also, any known issues with meta-clang under zeus 3.0.4 ?

Thanks,
Steve

From: Monsees, Steven C (US)
Sent: Tuesday, April 20, 2021 10:01 AM
To: 'Anton Antonov' <anton.antonov@arm.com>; yocto@lists.yoctoproject.org
Subject: RE: [yocto] #yocto llvm support


I noticed similar behavior...

I am running zeus 3.0.4, "devtool sdk-install llvm" will get llvm 8.0.1...

When I build meta-clang, and I set TOOLCHAIN?=3D"clang" in local.conf it ap=
pears to grab llvm-project-source-9.0.1-9.0.1...

From: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yo=
cto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>> On Behalf =
Of Anton Antonov
Sent: Tuesday, April 20, 2021 9:51 AM
To: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto llvm support

External Email Alert

This email has been sent from an account outside of the BAE Systems network=
.
Please treat the email with caution, especially if you are requested to cli=
ck on a link, decrypt/open an attachment, or enable macros.  For further in=
formation on how to spot phishing, access "Cybersecurity OneSpace Page" and=
 report phishing by clicking the button "Report Phishing" on the Outlook to=
olbar.


Hi Steven,

  I used meta-clang in my recipes and I noticed that:
1. The current release of poky uses LLVM v11.1.0 by default (poky/meta/reci=
pes-devtools/llvm/llvm_git.bb)
2. Meta-clang requires LLVM v12.0.0 (meta-clang/conf/layer.conf defines LLV=
MVERSION =3D "12.0.0")

As a result just including meta-clang into bblayers.conf will require bitba=
ke to build a new version of LLVM and rebuild everything which uses it

Anton

--_000_0eb032cae35542c88561c8f7accb1b83baesystemscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">So, does anyone know proper usage her=
e?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Is this a fully functional llvm drop under ../poky/=
meta/recipes-devtools ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Is it compatible with meta-clang?, and can they be =
used together to build 3<sup>rd</sup> party extensions for my platform ?<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Is it better to add supported components this way r=
ather than building them in directly to EXT SDK ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">Also, any known issues with meta-clang under zeus 3=
.0.4 ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">Steve<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> Monsees, Steven C (US)
<br>
<b>Sent:</b> Tuesday, April 20, 2021 10:01 AM<br>
<b>To:</b> 'Anton Antonov' &lt;anton.antonov@arm.com&gt;; yocto@lists.yocto=
project.org<br>
<b>Subject:</b> RE: [yocto] #yocto llvm support<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">I noticed similar behavior&#8230;<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">I am running zeus 3.0.4, &#8220;devto=
ol sdk-install llvm&#8221; will get llvm 8.0.1&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D">When I build meta-clang, and I set TO=
OLCHAIN?=3D&#8221;clang&#8221; in local.conf it appears to grab llvm-projec=
t-source-9.0.1-9.0.1&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif">
<a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctoproject.or=
g</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yocto=
project.org</a>&gt;
<b>On Behalf Of </b>Anton Antonov<br>
<b>Sent:</b> Tuesday, April 20, 2021 9:51 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yoct=
oproject.org</a><br>
<b>Subject:</b> Re: [yocto] #yocto llvm support<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"97%" style=3D"width:97.0%;margin-left:5.4pt;border-collapse=
:collapse">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97.0%;border:solid red 1.0p=
t;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;color:red">External Email Alert<=
/span></u></strong><o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"686" valign=3D"top" style=3D"width:15.0in;border:solid red 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:3.0pt;m=
argin-right:0in;margin-bottom:4.0pt;margin-left:0in;text-align:center;backg=
round:white">
<strong><span style=3D"font-size:10.0pt;color:black">This email has been se=
nt from an account outside of the BAE Systems network.</span></strong><o:p>=
</o:p></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ma=
rgin-bottom:4.0pt;text-align:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, especi=
ally if you are requested to click on a link, decrypt/open an attachment, o=
r enable macros.&nbsp; For further information on how to spot phishing, acc=
ess &#8220;Cybersecurity OneSpace Page&#8221; and report
 phishing by clicking the button &#8220;Report Phishing&#8221; on the Outlo=
ok toolbar.</span><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><br>
Hi Steven,<br>
<br>
&nbsp; I used meta-clang in my recipes and I noticed that:<br>
1. The current release of poky uses LLVM v11.1.0 by default (poky/meta/reci=
pes-devtools/llvm/llvm_git.bb)<br>
2. Meta-clang requires LLVM v12.0.0 (meta-clang/conf/layer.conf defines LLV=
MVERSION =3D &quot;12.0.0&quot;)<br>
<br>
As a result just including meta-clang into bblayers.conf will require bitba=
ke to build a new version of LLVM and rebuild everything which uses it<br>
<br>
Anton <o:p></o:p></p>
</div>
</div>
</body>
</html>

--_000_0eb032cae35542c88561c8f7accb1b83baesystemscom_--
