Return-Path: <chunhuax.lv@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28EAEE00348
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2012 20:34:48 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 12 Jul 2012 20:34:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="png'150?scan'150,208,217,150";a="121836462"
Received: from fmsmsx105.amr.corp.intel.com ([10.19.9.36])
	by AZSMGA002.ch.intel.com with ESMTP; 12 Jul 2012 20:34:46 -0700
Received: from shsmsx102.ccr.corp.intel.com (10.239.4.154) by
	FMSMSX105.amr.corp.intel.com (10.19.9.36) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 12 Jul 2012 20:34:45 -0700
Received: from shsmsx101.ccr.corp.intel.com ([169.254.1.220]) by
	SHSMSX102.ccr.corp.intel.com ([169.254.2.70]) with mapi id
	14.01.0355.002; Fri, 13 Jul 2012 11:34:43 +0800
From: "Lv, ChunhuaX" <chunhuax.lv@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: webhob database design
Thread-Index: Ac1gqHCGIvgOLUT4TmqCXH/meg3OWw==
Date: Fri, 13 Jul 2012 03:34:42 +0000
Message-ID: <11E5CEEDEF69BA4BAFC2DB04F73355550877A8@SHSMSX101.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 13 Jul 2012 07:30:59 -0700
Subject: webhob database design
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 13 Jul 2012 03:34:51 -0000
X-Groupsio-MsgNum: 7874
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_11E5CEEDEF69BA4BAFC2DB04F73355550877A8SHSMSX101ccrcorpi_";
	type="multipart/alternative"

--_004_11E5CEEDEF69BA4BAFC2DB04F73355550877A8SHSMSX101ccrcorpi_
Content-Type: multipart/alternative;
	boundary="_000_11E5CEEDEF69BA4BAFC2DB04F73355550877A8SHSMSX101ccrcorpi_"

--_000_11E5CEEDEF69BA4BAFC2DB04F73355550877A8SHSMSX101ccrcorpi_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

aGkgZXZlcnlvbmUsDQpoZXJlIGFyZSB3ZWJob2IgZGF0YWJhc2UgZGVzaWduLg0Kob53ZWJob2Ig
ZGF0YWJhc2Whvw0Kd2ViaG9iIGRhdGFiYXNlIGluY2x1ZGUgMTQgdGFibGVzOg0KZGJfcm9sZSwg
ZGJfb3BlcmF0b3IsIGRiX3N5c3RlbUNvbmZpZywgZGJfc2V0dGluZ3MsIGRiX2xheWVycywgZGJf
aGlzdG9yeSwNCmRiX2J1aWxkcywgZGJfZ3JvdXAsIGRiX3Byb2plY3QsIGRiX2ltYWdlcywgZGJf
cGVybWlzc2lvbnMsZGJfYnVpbGRfbG9ncywNCmRiX21ndF9iaXRiYWtlX3NlcnZlcnMsIGRiX2J1
aWxkX3RlbXANCg0KMSkgICAgICAgZGlhZ3JhbSBwaHlzaWNhbCBkaWFncmFtDQpbY2lkOmltYWdl
MDAzLnBuZ0AwMUNENjBFQi43RTkxRDU0MF0NCjIpdGFibGVzIGxpc3QNCjwxPnRhYmxlOiBkYl9i
dWlsZHMNCk5hbWUNCg0KRmllbGR0eXBlDQoNCk5vdGUNCg0KaWQNCg0KaW50DQoNCnByaW1hcnkg
a2V5DQoNCm5hbWUNCg0KdmFyY2hhcigxMDApDQoNCmJ1aWxkoa9zIG5hbWUNCg0KcHJvamVjdF9p
ZA0KDQppbnQNCg0KZm9yZWlnbiBrZXkNCg0Kb3BlcmF0b3JfaWQNCg0KaW50DQoNCmZvcmVpZ24g
a2V5DQoNCnNpemUNCg0KaW50DQoNCmltYWdloa9zIHNpemUNCg0KaW1hZ2VfaWQNCg0KaW50DQoN
CmZvcmVpZ24ga2V5DQoNCmlzX2J1aWxkQ29tcGxldGUNCg0KYm9vbGVhbg0KDQpidWlsZKGvcyBy
ZXN1bHQgKHRydWUvZmFsc2UpDQoNCnZhbGlkDQoNCmJvb2xlYW4NCg0KdmFsaWQNCg0KY3JlYXRl
X2RhdGUNCg0KZGF0ZXRpbWUNCg0KY3JlYXRlX2RhdGUNCg0KICA8Mj4gdGFibGU6IGRiX2dyb3Vw
DQpOYW1lDQoNCkZpZWxkdHlwZQ0KDQpOb3RlDQoNCmlkDQoNCmludA0KDQpwcmltYXJ5IGtleQ0K
DQpuYW1lDQoNCnZhcmNoYXIoMTAwKQ0KDQpncm91cKGvcyBuYW1lDQoNCmNyZWF0b3INCg0KdmFy
Y2hhcigxMDApDQoNCmNyZWF0b3INCg0Kb3BlcmF0b3JfX2lkDQoNCmludA0KDQpmb3JlaWduIGtl
eQ0KDQp2YWxpZA0KDQpib29sZWFuDQoNCnZhbGlkDQoNCmNyZWF0ZV9kYXRlDQoNCmRhdGV0aW1l
DQoNCmNyZWF0ZV9kYXRlDQoNCiAgPDM+dGFibGU6ZGJfaGlzdG9yeQ0KTmFtZQ0KDQpGaWVsZHR5
cGUNCg0KTm90ZQ0KDQppZA0KDQppbnQNCg0KcHJpbWFyeSBrZXkNCg0KbWVzc2FnZQ0KDQp0ZXh0
DQoNCm1lc3NhZ2UNCg0Kb3BlcmF0b3JfaWQNCg0KaW50DQoNCmZvcmVpZ24ga2V5DQoNCnByb2pl
Y3RfaWQNCg0KaW50DQoNCmZvcmVpZ24ga2V5DQoNCnZhbGlkDQoNCmJvb2xlYW4NCg0KdmFsaWQN
Cg0KY3JlYXRlX2RhdGUNCg0KZGF0ZXRpbWUNCg0KY3JlYXRlX2RhdGUNCg0KICA8ND50YWJsZTpk
Yl9pbWFnZXMNCk5hbWUNCg0KRmllbGR0eXBlDQoNCk5vdGUNCg0KaWQNCg0KaW50DQoNCnByaW1h
cnkga2V5DQoNCm5hbWUNCg0KdmFyY2hhcigxMDApDQoNCmltYWdloa9zIG5hbWUNCg0Kc2l6ZQ0K
DQppbnQNCg0KaW1hZ2Whr3Mgc2l6ZQ0KDQp1cmwNCg0KdmFyY2hhcigxMDApDQoNCmRvd25sb2Fk
IHVybA0KDQp2YWxpZA0KDQpib29sZWFuDQoNCnZhbGlkDQoNCmNyZWF0ZV9kYXRlDQoNCmRhdGV0
aW1lDQoNCmNyZWF0ZV9kYXRlDQoNCiAgPDU+dGFibGU6IGRiX2xheWVycw0KTmFtZQ0KDQpGaWVs
ZHR5cGUNCg0KQ29kZQ0KDQppZA0KDQppbnQNCg0KcHJpbWFyeSBrZXkNCg0KbmFtZQ0KDQp2YXJj
aGFyKDEwMCkNCg0KbGF5ZXKhr3MgbmFtZQ0KDQp0eXBlcw0KDQp2YXJjaGFyKDUwKQ0KDQpsYXll
cqGvcyB0eXBlIChjb3JlIGxheWVyL3VzZXKhr3MgbGF5ZXIpDQoNCnByb2plY3RfaWQNCg0KaW50
DQoNCmZvcmVpZ24ga2V5DQoNCmNyZWF0ZV9kYXRlDQoNCmRhdGV0aW1lDQoNCmNyZWF0ZV9kYXRl
DQoNCiAgPDY+dGFibGU6ZGJfb3BlcmF0b3INCk5hbWUNCg0KRmllbGR0eXBlDQoNCkNvZGUNCg0K
aWQNCg0KaW50DQoNCnByaW1hcnkga2V5DQoNCm5hbWUNCg0KdmFyY2hhcigxMDApDQoNCm9wZXJh
dG9yoa9zIG5hbWUNCg0KcGFzc3dvcmQNCg0KdmFyY2hhcigxMDApDQoNCmxvZ2luIHBhc3N3b3Jk
DQoNCnJvbGVfX2lkDQoNCmludA0KDQpmb3JlaWduIGtleQ0KDQplbWFpbA0KDQp2YXJjaGFyKDEw
MCkNCg0KbG9naW4gdXNlcm5hbWUNCg0KdmFsaWQNCg0KYm9vbGVhbg0KDQp2YWxpZA0KDQpjcmVh
dGVfZGF0ZQ0KDQpkYXRldGltZQ0KDQpjcmVhdGVfZGF0ZQ0KDQogIDw3PnRhYmxlOmRiX3Blcm1p
c3Npb25zDQpOYW1lDQoNCkZpZWxkdHlwZQ0KDQpDb2RlDQoNCmlkDQoNCmludA0KDQpwcmltYXJ5
IGtleQ0KDQpwcm9qZWN0X2lkDQoNCmludA0KDQpmb3JlaWduIGtleQ0KDQpncm91cF9pZA0KDQpp
bnQNCg0KZm9yZWlnbiBrZXkNCg0Kb3BlcmF0b3JfaWQNCg0KaW50DQoNCmZvcmVpZ24ga2V5DQoN
CnN5c3RlbV9jb25maWdfaWQNCg0KaW50DQoNCmZvcmVpZ24ga2V5DQoNCnZhbGlkDQoNCmJvb2xl
YW4NCg0KdmFsaWQNCg0KY3JlYXRlX2RhdGUNCg0KZGF0ZXRpbWUNCg0KY3JlYXRlX2RhdGUNCg0K
ICA8OD50YWJsZTpkYl9wcm9qZWN0DQpOYW1lDQoNCkZpZWxkdHlwZQ0KDQpDb2RlDQoNCmlkDQoN
CmludA0KDQpwcmltYXJ5IGtleQ0KDQpuYW1lDQoNCnZhcmNoYXIoMTAwKQ0KDQpwcm9qZWN0oa9z
IG5hbWUNCg0KdmFsaWQNCg0KYm9vbGVhbg0KDQp2YWxpZA0KDQpjcmVhdG9yDQoNCnZhcmNoYXIo
MTAwKQ0KDQpjcmVhdG9yDQoNCmNyZWF0ZV9kYXRlDQoNCmRhdGV0aW1lDQoNCmNyZWF0ZV9kYXRl
DQoNCm9wZXJhdG9yX19pZA0KDQppbnQNCg0KZm9yZWlnbiBrZXkNCg0KZ3JvdXBfX2lkDQoNCmlu
dA0KDQpmb3JlaWduIGtleQ0KDQogIDw5PnRhYmxlOmRiX3JvbGUNCk5hbWUNCg0KRmllbGR0eXBl
DQoNCkNvZGUNCg0KaWQNCg0KaW50DQoNCnByaW1hcnkga2V5DQoNCm5hbWUNCg0KdmFyY2hhcigx
MDApDQoNCnJvbGWhr3MgbmFtZQ0KDQp2YWxpZA0KDQpib29sZWFuDQoNCnZhbGlkDQoNCmNyZWF0
ZV9kYXRlDQoNCmRhdGV0aW1lDQoNCmNyZWF0ZV9kYXRlDQoNCiAgPDEwPnRhYmxlOmRiX3NldHRp
bmdzDQpOYW1lDQoNCkZpZWxkdHlwZQ0KDQpDb2RlDQoNCmlkDQoNCmludA0KDQpwcmltYXJ5IGtl
eQ0KDQppbWFnZV90eXBlcw0KDQp0ZXh0DQoNCmltYWdlX3R5cGVzDQoNCnBhY2thZ2VfZm9ybWF0
cw0KDQp2YXJjaGFyKDEwMCkNCg0KcGFja2FnZV9mb3JtYXRzDQoNCmltYWdlX3Jvb3Rmc19zaXpl
DQoNCmludA0KDQppbWFnZV9yb290ZnNfc2l6ZQ0KDQppbWFnZV9leHRyYV9zaXplDQoNCmludA0K
DQppbWFnZV9leHRyYV9zaXplDQoNCmdwbHYzX2NoZWNrYm94DQoNCnZhcmNoYXIoNTApDQoNCmdw
bHYzX2NoZWNrYm94oa9zIHZhbHVlDQoNCmJ1aWxkX3Rvb2xjaGFpbl9jaGVja2JveA0KDQpib29s
ZWFuDQoNCmJ1aWxkX3Rvb2xjaGFpbiBpcyBjaGVja2VkDQoNCmJ1aWxkX3Rvb2xjaGFpbl92YWx1
ZQ0KDQp2YXJjaGFyKDUwKQ0KDQpidWlsZF90b29sY2hhaW6hr3MgdmFsdWUNCg0KZGlzdHJvDQoN
CnZhcmNoYXIoNTApDQoNCmRpc3Rybw0KDQpwcm9qZWN0X2lkDQoNCmludA0KDQpmb3JlaWduIGtl
eQ0KDQppc190ZW1wbGF0ZQ0KDQpib29sZWFuDQoNCnNldHRpbmdzIGNvbmZpZyBpcyBzYXZlZCBh
cyBhIHRlbXBsYXRlDQoNCnZhbGlkDQoNCmJvb2xlYW4NCg0KdmFsaWQNCg0KY3JlYXRlX2RhdGUN
Cg0KZGF0ZXRpbWUNCg0KY3JlYXRlX2RhdGUNCg0KICA8MTE+dGFibGU6ZGJfc3lzdGVtQ29uZmln
DQpOYW1lDQoNCkZpZWxkdHlwZQ0KDQpDb2RlDQoNCmlkDQoNCmludA0KDQpwcmltYXJ5IGtleQ0K
DQp0eXBlcw0KDQp2YXJjaGFyKDEwMCkNCg0KdHlwZXMgKGRpc3Rybyxwa2cgZm9ybWF0LGltYWdl
IHR5cGUsYnVpbGQgdG9vbGNoYWluKQ0KDQpuYW1lDQoNCnZhcmNoYXIoMTAwKQ0KDQpuYW1lDQoN
CnZhbGlkDQoNCmJvb2xlYW4NCg0KdmFsaWQNCg0KY3JlYXRlX2RhdGUNCg0KZGF0ZXRpbWUNCg0K
Y3JlYXRlX2RhdGUNCg0KICA8MTI+dGFibGU6ZGJfYnVpbGRfbG9ncw0KTmFtZQ0KDQpGaWVsZHR5
cGUNCg0KQ29kZQ0KDQppZA0KDQppbnQNCg0KcHJpbWFyeSBrZXkNCg0KZ3VpZA0KDQp2YXJjaGFy
KDEwMCkNCg0KZ2xvYmFsIHVuaXF1ZSBpZCAodXNlcl9uYW1lICsgcHJvamVjdF9uYW1lICsgYnVp
bGRfbmFtZSArIHRpbWVyc3RhbXApDQoNCmJ1aWxkX3Rhc2sNCg0KdmFyY2hhcigxMDApDQoNCmN1
cnJlbnQgdGFzayAocGFyc2UgcmVjaXBlL2J1aWxkIHBrZyBvciBpbWFnZSkNCg0KdmFsaWQNCg0K
Ym9vbGVhbg0KDQp2YWxpZA0KDQpjcmVhdGVfZGF0ZQ0KDQpkYXRldGltZQ0KDQpjcmVhdGVfZGF0
ZQ0KDQpvcGVyYXRvcl9faWQNCg0KaW50DQoNCmZvcmVpZ24ga2V5DQoNCnByb2plY3RfaWQNCg0K
aW50DQoNCmZvcmVpZ24ga2V5DQoNCiAgPDEzPnRhYmxlOmRiX21ndF9iaXRiYWtlX3NlcnZlcnMN
Ck5hbWUNCg0KRmllbGR0eXBlDQoNCkNvZGUNCg0KaWQNCg0KaW50DQoNCnByaW1hcnkga2V5DQoN
CmlwDQoNCnZhcmNoYXIoMjAwKQ0KDQpiaXRiYWtlIG1hY2hpbmUgaXANCg0KcG9ydA0KDQppbnQo
NSkNCg0KYml0YmFrZSBwb3J0DQoNCnN0YXR1cw0KDQp2YXJjaGFyKDIwMCkNCg0Kc3RhdHVzKGZy
ZWUsIGJ1c3ksZG93bikNCg0Kc3RhdHVzX2NvZGUNCg0KaW50KDUpDQoNCjE6ZnJlZSAyOiBidXN5
IDM6ZG93bg0KDQplcnJvcl9tc2cNCg0KdmFyY2hhcigxMDAwKQ0KDQplcnJvciBtZXNzYWdlIG5v
dGUNCg0KICA8MTQ+dGFibGU6ZGJfYnVpbGRfdGVtcA0KTmFtZQ0KDQpGaWVsZHR5cGUNCg0KQ29k
ZQ0KDQppZA0KDQppbnQNCg0KcHJpbWFyeSBrZXkNCg0KZ3VpZA0KDQp2YXJjaGFyKDEwMCkNCg0K
Z2xvYmFsIHVuaXF1ZSBpZA0KDQpidWlsZF9jb250ZW50DQoNCnRleHQNCg0Kc3RvcmUgYnVpbGQg
aW5mbyhzdWNoIGFzIGJpdGJha2UsIHNldHRpbmcgY29uZmlnLCByZWNpcGUvcGtnIHRyZWVtb2Rl
bCkNCg0KdmFsaWQNCg0KYm9vbGVhbg0KDQp2YWxpZA0KDQpldmVyeSBmZWVkYmFjayBpcyB2ZXJ5
IHdlbGNvbWUuDQoNCnRoYW5rcw0KY2h1bmh1YQ0K

--_000_11E5CEEDEF69BA4BAFC2DB04F73355550877A8SHSMSX101ccrcorpi_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:=CB=CE=CC=E5;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@=CB=CE=CC=E5";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:" Times New Roman";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:" SimSun";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"\@ SimSun";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:8.0pt;
	font-family:"Calibri","sans-serif";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:21.0pt;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Calibri","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1875606505;
	mso-list-type:hybrid;
	mso-list-template-ids:-1544264424 -892018516 67698713 67698715 67698703 67=
698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"2050" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ZH-CN" link=3D"blue" vlink=3D"purple" style=3D"text-justify-t=
rim:punctuation">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">hi ever=
yone,<br>
here are webhob database design.<br>
</span><span style=3D"font-family:=CB=CE=CC=E5">=A1=BE</span><span lang=3D"=
EN-US">webhob database</span><span style=3D"font-family:=CB=CE=CC=E5">=A1=
=BF</span><span lang=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">webhob database include 14 tabl=
es: <o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:10.5pt"><span lang=3D"EN-US">db=
_role, db_operator, db_systemConfig, db_settings, db_layers, db_history,<o:=
p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:10.5pt;mso-para-margin-left:1.0=
gd"><span lang=3D"EN-US">db_builds, db_group, db_project, db_images, db_per=
missions,db_build_logs,<br>
db_mgt_bitbake_servers, db_build_temp<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:18.0pt;text-indent:-18.0=
pt;mso-list:l0 level1 lfo1">
<![if !supportLists]><span lang=3D"EN-US"><span style=3D"mso-list:Ignore">1=
)<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">diagram physical diagra=
m<br>
<img width=3D"665" height=3D"427" id=3D"Picture_x0020_1" src=3D"cid:image00=
3.png@01CD60EB.7E91D540"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:10.5pt;text-indent:-10.5pt"><sp=
an lang=3D"EN-US">2)tables list<br>
&lt;1&gt;table:<b> db_builds</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:solid window=
text 1.0pt;border-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:solid window=
text 1.0pt;border-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Note</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">name</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">build=A1=AFs name</span><span l=
ang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">project_id</span><span lang=3D"=
EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">operator_id</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">size</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">image=A1=AFs size</span><span l=
ang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">image_id</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">is_buildComplete</span><span la=
ng=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">build=A1=AFs result (true/false=
)</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span><=
/p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border=
-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border=
-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;2&gt; table:<b> db_g=
roup</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border-top:solid w=
indowtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Note</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">name</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">group=A1=AFs name</span><span l=
ang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">creator</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">creator</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">operator__id</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;border=
-bottom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;3&gt;table:<b>db_his=
tory</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border-top:solid w=
indowtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Note</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">message</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">text</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">message</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">operator_id</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">project_id</span><span lang=3D"=
EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;border=
-bottom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;4&gt;table:<b>db_ima=
ges</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border-top:solid w=
indowtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Note</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">name</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">image=A1=AFs name</span><span l=
ang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">size</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">image=A1=AFs size</span><span l=
ang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">url</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">download url</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;border=
-bottom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;5&gt;table: <b>db_la=
yers</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border-top:solid w=
indowtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Code</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">name</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">layer=A1=AFs name</span><span l=
ang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">types</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(50)</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">layer=A1=AFs type (core layer/u=
ser=A1=AFs layer)</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:=
p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">project_id</span><span lang=3D"=
EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;border=
-bottom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;6&gt;table:<b>db_ope=
rator</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border-top:solid w=
indowtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Code</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">name</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">operator=A1=AFs name</span><spa=
n lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">password</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">login password</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">role__id</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">email</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">login username</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;border=
-bottom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;7&gt;table:<b>db_per=
missions</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border-top:solid w=
indowtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Code</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">project_id</span><span lang=3D"=
EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">group_id</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">operator_id</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">system_config_id</span><span la=
ng=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;border=
-bottom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;8&gt;table:<b>db_pro=
ject</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border-top:solid w=
indowtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Code</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">name</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">project=A1=AFs name</span><span=
 lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">creator</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">creator</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">operator__id</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">group__id</span><span lang=3D"E=
N-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;border=
-bottom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;9&gt;table:<b>db_rol=
e</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"155" valign=3D"top" style=3D"width:116.25pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"170" valign=3D"top" style=3D"width:127.55pt;border-top:solid w=
indowtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Code</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"155" valign=3D"top" style=3D"width:116.25pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"170" valign=3D"top" style=3D"width:127.55pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"155" valign=3D"top" style=3D"width:116.25pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">name</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"170" valign=3D"top" style=3D"width:127.55pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">role=A1=AFs name</span><span la=
ng=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"155" valign=3D"top" style=3D"width:116.25pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"170" valign=3D"top" style=3D"width:127.55pt;border:none;paddin=
g:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"155" valign=3D"top" style=3D"width:116.25pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"170" valign=3D"top" style=3D"width:127.55pt;border:none;border=
-bottom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;10&gt;table:<b>db_se=
ttings</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border:solid window=
text 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;border-top:solid wi=
ndowtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;border=
-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Code</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;border:none;padding=
:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">image_types</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;border:none;padding=
:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">text</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">image_types</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">package_formats</span><span lan=
g=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;border:none;padding=
:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">package_formats</span><span lan=
g=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">image_rootfs_size</span><span l=
ang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;border:none;padding=
:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">image_rootfs_size</span><span l=
ang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">image_extra_size</span><span la=
ng=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;border:none;padding=
:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">image_extra_size</span><span la=
ng=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">gplv3_checkbox</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;border:none;padding=
:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(50)</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">gplv3_checkbox=A1=AFs value</sp=
an><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">build_toolchain_checkbox</span>=
<span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;border:none;padding=
:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">build_toolchain is checked</spa=
n><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">build_toolchain_value</span><sp=
an lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;border:none;padding=
:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(50)</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">build_toolchain=A1=AFs value</s=
pan><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">distro</span><span lang=3D"EN-U=
S" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;border:none;padding=
:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(50)</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">distro</span><span lang=3D"EN-U=
S" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">project_id</span><span lang=3D"=
EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;border:none;padding=
:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">is_template</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;border:none;padding=
:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">settings config is saved as a t=
emplate</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></=
span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;border:none;padding=
:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border:solid window=
text 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;border:none;border-=
bottom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;11&gt;table:<b>db_sy=
stemConfig</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border-top:solid wind=
owtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border:solid window=
text 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Code</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;padding:0=
cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">types</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;padding:0=
cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">types (distro,pkg format,image =
type,build toolchain)</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"=
><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">name</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;padding:0=
cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">name</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;padding:0=
cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;border-bo=
ttom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border:solid window=
text 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;12&gt;table:<b>db_bu=
ild_logs</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border-top:solid wind=
owtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border:solid window=
text 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Code</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;padding:0=
cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">guid</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;padding:0=
cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">global unique id (user_name &#4=
3; project_name &#43; build_name &#43; timerstamp)</span><span lang=3D"EN-U=
S" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">build_task</span><span lang=3D"=
EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;padding:0=
cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">current task (parse recipe/buil=
d pkg or image)</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p>=
</o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;padding:0=
cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;padding:0=
cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">operator__id</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;padding:0=
cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">project_id</span><span lang=3D"=
EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;border-bo=
ttom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border:solid window=
text 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;13&gt;table:<b>db_mg=
t_bitbake_servers</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border-top:solid wind=
owtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border:solid window=
text 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Code</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;padding:0=
cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">ip</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;padding:0=
cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(200)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">bitbake machine ip</span><span =
lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">port</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;padding:0=
cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int(5)</span><span lang=3D"EN-U=
S" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">bitbake port</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">status</span><span lang=3D"EN-U=
S" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;padding:0=
cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(200)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">status(free, busy,down)</span><=
span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">status_code</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;padding:0=
cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int(5)</span><span lang=3D"EN-U=
S" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">1:free 2: busy 3:down</span><sp=
an lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">error_msg</span><span lang=3D"E=
N-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;border-bo=
ttom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(1000)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border:solid window=
text 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">error message note</span><span =
lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;14&gt;table:<b>db_bu=
ild_temp</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border-top:solid wind=
owtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border:solid window=
text 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Code</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;padding:0=
cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">guid</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;padding:0=
cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">global unique id</span><span la=
ng=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">build_content</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;padding:0=
cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">text</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">store build info(such as bitbak=
e, setting config, recipe/pkg treemodel)</span><span lang=3D"EN-US" style=
=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;border-bo=
ttom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border:solid window=
text 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">every f=
eedback is very welcome.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><br>
thanks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">chunhua=
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_11E5CEEDEF69BA4BAFC2DB04F73355550877A8SHSMSX101ccrcorpi_--

--_004_11E5CEEDEF69BA4BAFC2DB04F73355550877A8SHSMSX101ccrcorpi_
Content-Type: image/png; name="image003.png"
Content-Description: image003.png
Content-Disposition: inline; filename="image003.png"; size=83086;
	creation-date="Fri, 13 Jul 2012 03:34:42 GMT";
	modification-date="Fri, 13 Jul 2012 03:34:42 GMT"
Content-ID: <image003.png@01CD60EB.7E91D540>
Content-Transfer-Encoding: base64

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

--_004_11E5CEEDEF69BA4BAFC2DB04F73355550877A8SHSMSX101ccrcorpi_--
