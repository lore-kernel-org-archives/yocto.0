Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web12.11355.1614260249289036785
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Feb 2021 05:37:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=FZFCiRei;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1614260249; x=1771940249;
  h=from:to:subject:date:mime-version;
  bh=S/n0w3BYnnv3N8/7Fo0tA4XaQKTTpdlahZkzx4tvJZg=;
  b=FZFCiReiUPVKmjdbJnucotnxplRJgL+yDigJtn2KdzfEWXKTzXSlgIfV
   +MRP9Jo2tiuylNb06SMk6kCDAFWoH/J6phT74Rjz0u1fWsqYXNxzqlR2x
   qQWflT/ud1i4VLPXi1KaX0e3LzyNSWHXsfUX1MsC70umSnxgLxDxTWTy+
   k=;
IronPort-PHdr: =?us-ascii?q?9a23=3AVddZ3xMnx1FfHlp7eXAl6mtUPXoX/o7sNwtQ0KIM?=
 =?us-ascii?q?zox0I/T6rarrMEGX3/hxlliBBdydt6sVzbqG+P69EUU7or+5+EgYd5JNUxJXwe?=
 =?us-ascii?q?43pCcHRPC/NEvgMfTxZDY7FskRHHVs/nW8LFQHUJ2mPw6arXK99yMdFQviPgRp?=
 =?us-ascii?q?OOv1BpTSj8Oq3Oyu5pHfeQpFiCe5bL9oLxi7rgrdu8gWjIB/Nqs/1xzFr2dSde?=
 =?us-ascii?q?9L321oP1WTnxj95se04pFu9jlbtuwi+cBdT6j0Zrw0QrNEAjsoNWA1/9DrugLY?=
 =?us-ascii?q?TQST/HscU34ZnQRODgPY8Rz1RJbxsi/9tupgxCmXOND9QL4oVTi+6apgVRnlgz?=
 =?us-ascii?q?oFOTEk6mHaksx+grxGrhK9qRJxwI/Ub52aO/dlZKzRYdEaSHBdUspNSSBMBJ63?=
 =?us-ascii?q?YYsVD+oGOOZVt4fxqVwJrRu4HgmjGv3gyiRQinTrwKM6z/ouER/Y0wwmAtkDrm?=
 =?us-ascii?q?nfoNH7O6kPVOy5wrTDwDLYb/NKxzj99pbHchY7rfGJWrJwd9HRxlcxGAPelVif?=
 =?us-ascii?q?spbqMC2O1uUNqGib8/RvVee0i2I9tw5xpT2vy94qh4LUiY0b1krK+j9lwIYpO9?=
 =?us-ascii?q?K4Ukh7bMaqHpZeqyyXNol7T8I8T211pis3yb0LtJq0cSUF1ZgpyR7SZfOaf4WM?=
 =?us-ascii?q?4B/uVOmcLDZliH97fL+yhBW//FW9xuPzUMS/zVVErjJdn9XRqnwBzRLe58qdRv?=
 =?us-ascii?q?dj4Eus2SyD2gHT5+1cPEw4ibDXJpEuz7IqmZcfq1nPEy/wlU7rlqGZbF8k9fKt?=
 =?us-ascii?q?6+n/Z7XmoYKTOJFshwHlN6QuhtS/AeMlMggSR2Sb+fqz1Lnk/UDhXLVLgec5kq?=
 =?us-ascii?q?/csJDBIckXurK1DxNI3oo57RawFS2q388CknYZN1JEeAmHj5T3NFHLO/D0F+uw?=
 =?us-ascii?q?g1OpkDtzxvDGOKPuAonVI3TejLvtZ7hw5kxGxAYt09xS54hYB7ABLf7rX0/+rt?=
 =?us-ascii?q?3YDhs3MwyuxObnDc1w1pgCWW2RHK+WLqXSvUWN5uIoJemMf5EatyjmK/U+/PHh?=
 =?us-ascii?q?l2E2mUQdfKmywZsYdnW4Hu98L0qFZnrsh88NEX0WsQomUOzqlFqCXCZTZna1Q6?=
 =?us-ascii?q?08+jY7BZmiDYfCXYCtnKeB0D27H51Rem9GFleMEW/yd4WDWfcDdj6dItN7njwD?=
 =?us-ascii?q?T7ihRNxp6Rb7/h79wKZgBu7V4TED84Pk38Ry//fUlxw56XpzFcvXmzWcSGpomU?=
 =?us-ascii?q?sMRiQqx+ZupkdhzU+Z1qp1iOAeEsZcsaBnSAA/YNT5yOphBt3pHkr6YtqXRVDu?=
 =?us-ascii?q?aZ3mPApwBJpl2MMDfUt7XdCliAvO0jGCCbYYjK2QGJEx6eTX2H2ndJU18GrPyK?=
 =?us-ascii?q?R01wpuecBIL2Dz3qM=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AaBQBxpzdg/0HhJQpigQmCcmuBE4FLq?=
 =?us-ascii?q?zmHLwsBAQEBAQEBAQEIATQEAQGGSCY4EwIQAQEGAQEBAQEGBAGGUgwCgjYig2Y?=
 =?us-ascii?q?4XgGBACYBBBstgjxHgTexSYE0hViEfwkBgS6GfIhLQYERjgwEA4JEgQ6CcYZFl?=
 =?us-ascii?q?QaeHQcDgnycFCujTS2UIaIaAgQCBAUCFoFrgXpwUIJqTxcCDZxngSsCBgoBAQM?=
 =?us-ascii?q?JiwSBDwEB?=
X-IPAS-Result: =?us-ascii?q?A2AaBQBxpzdg/0HhJQpigQmCcmuBE4FLqzmHLwsBAQEBAQE?=
 =?us-ascii?q?BAQEIATQEAQGGSCY4EwIQAQEGAQEBAQEGBAGGUgwCgjYig2Y4XgGBACYBBBstg?=
 =?us-ascii?q?jxHgTexSYE0hViEfwkBgS6GfIhLQYERjgwEA4JEgQ6CcYZFlQaeHQcDgnycFCu?=
 =?us-ascii?q?jTS2UIaIaAgQCBAUCFoFrgXpwUIJqTxcCDZxngSsCBgoBAQMJiwSBDwEB?=
X-IronPort-AV: E=Sophos;i="5.81,205,1610409600"; 
   d="scan'208,217";a="350626554"
X-IronPort-AV: E=Sophos;i="5.81,205,1610409600"; 
   d="scan'208,217";a="99899848"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: BB_HASHBASE_WHITELIST
Thread-Topic: BB_HASHBASE_WHITELIST
Thread-Index: AdcLekhCACdq46jaS7SNqv9mcQES3A==
Date: Thu, 25 Feb 2021 13:37:18 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.16670125637EC67C.18846@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_e320441dec044fc5bf644441b61cac94baesystemscom_"

--_000_e320441dec044fc5bf644441b61cac94baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Where and when is it appropriate to add to/modify BB_HASHBASE_WHITELIST " ?

I tried to do : BB_HASHBASE_WHITELIST +=3D "BB_TRACE" in my local.conf but =
it ended up replacing existing list with just "BB_TRACE"...


basewhitelist changed from '{'TERM', 'FILESPATH', 'CCACHE', 'COREBASE', 'BB=
PATH', 'STAMPS_DIR', 'EXTERNAL_TOOLCHAIN', 'LOGNAME', 'FILESEXTRAPATHS', 'C=
CACHE_NOHASHDIR', 'LICENSE_PATH', 'BB_WORKERCONTEXT', 'BB_HASHSERVE', 'BB_U=
NIHASH', 'HOME', 'DL_DIR', 'SSTATE_HASHEQUIV_OWNER', 'PRSERV_DUMPDIR', 'SDK=
PKGSUFFIX', 'WORKDIR', 'SSTATE_PKGARCH', 'SSTATE_HASHEQUIV_METHOD', 'PRSERV=
_HOST', 'CCACHE_DIR', 'PRSERV_LOCKDOWN', 'STAGING_DIR_TARGET', 'STAGING_DIR=
_HOST', 'PWD', 'USER', 'STAMPCLEAN', 'BUILD_ARCH', 'BBSERVER', 'BB_LIMITEDD=
EPS', 'SSTATE_HASHEQUIV_REPORT_TASKDATA', 'TMPDIR', 'SHELL', 'THISDIR', 'DE=
PLOY_DIR', 'PRSERV_DUMPFILE', 'ERROR_QA', 'WARN_QA', 'FILE_DIRNAME', 'exten=
d_recipe_sysroot', 'CCACHE_TOP_DIR', 'PARALLEL_MAKE', 'FILE', 'BB_TASKHASH'=
, 'PATH', 'SSTATE_DIR', 'PKGDATA_DIR'}' to '{'BB_TRACE'}'
changed items: {'TERM', 'FILESPATH', 'CCACHE', 'COREBASE', 'BBPATH', 'STAMP=
S_DIR', 'EXTERNAL_TOOLCHAIN', 'LOGNAME', 'FILESEXTRAPATHS', 'CCACHE_NOHASHD=
IR', 'BB_WORKERCONTEXT', 'LICENSE_PATH', 'BB_UNIHASH', 'BB_HASHSERVE', 'HOM=
E', 'DL_DIR', 'SSTATE_HASHEQUIV_OWNER', 'PRSERV_DUMPDIR', 'PATH', 'WORKDIR'=
, 'SSTATE_PKGARCH', 'SSTATE_HASHEQUIV_METHOD', 'SSTATE_DIR', 'PRSERV_HOST',=
 'CCACHE_DIR', 'STAGING_DIR_TARGET', 'STAGING_DIR_HOST', 'PWD', 'USER', 'ST=
AMPCLEAN', 'BUILD_ARCH', 'BBSERVER', 'BB_LIMITEDDEPS', 'SSTATE_HASHEQUIV_RE=
PORT_TASKDATA', 'TMPDIR', 'SHELL', 'THISDIR', 'DEPLOY_DIR', 'BB_TRACE', 'PR=
SERV_DUMPFILE', 'ERROR_QA', 'WARN_QA', 'FILE_DIRNAME', 'extend_recipe_sysro=
ot', 'CCACHE_TOP_DIR', 'PARALLEL_MAKE', 'FILE', 'BB_TASKHASH', 'SDKPKGSUFFI=
X', 'PRSERV_LOCKDOWN', 'PKGDATA_DIR'}

Thanks,
Steve

--_000_e320441dec044fc5bf644441b61cac94baesystemscom_
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Where and when is it appropriate to add to/modify BB=
_HASHBASE_WHITELIST &#8220; ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I tried to do : BB_HASHBASE_WHITELIST &#43;=3D &#822=
0;BB_TRACE&#8221; in my local.conf but it ended up replacing existing list =
with just &#8220;BB_TRACE&#8221;&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">basewhitelist changed from '{'TERM', 'FILESPATH', 'C=
CACHE', 'COREBASE', 'BBPATH', 'STAMPS_DIR', 'EXTERNAL_TOOLCHAIN', 'LOGNAME'=
, 'FILESEXTRAPATHS', 'CCACHE_NOHASHDIR', 'LICENSE_PATH', 'BB_WORKERCONTEXT'=
, 'BB_HASHSERVE', 'BB_UNIHASH', 'HOME',
 'DL_DIR', 'SSTATE_HASHEQUIV_OWNER', 'PRSERV_DUMPDIR', 'SDKPKGSUFFIX', 'WOR=
KDIR', 'SSTATE_PKGARCH', 'SSTATE_HASHEQUIV_METHOD', 'PRSERV_HOST', 'CCACHE_=
DIR', 'PRSERV_LOCKDOWN', 'STAGING_DIR_TARGET', 'STAGING_DIR_HOST', 'PWD', '=
USER', 'STAMPCLEAN', 'BUILD_ARCH',
 'BBSERVER', 'BB_LIMITEDDEPS', 'SSTATE_HASHEQUIV_REPORT_TASKDATA', 'TMPDIR'=
, 'SHELL', 'THISDIR', 'DEPLOY_DIR', 'PRSERV_DUMPFILE', 'ERROR_QA', 'WARN_QA=
', 'FILE_DIRNAME', 'extend_recipe_sysroot', 'CCACHE_TOP_DIR', 'PARALLEL_MAK=
E', 'FILE', 'BB_TASKHASH', 'PATH',
 'SSTATE_DIR', 'PKGDATA_DIR'}' to '{'BB_TRACE'}'<o:p></o:p></p>
<p class=3D"MsoNormal">changed items: {'TERM', 'FILESPATH', 'CCACHE', 'CORE=
BASE', 'BBPATH', 'STAMPS_DIR', 'EXTERNAL_TOOLCHAIN', 'LOGNAME', 'FILESEXTRA=
PATHS', 'CCACHE_NOHASHDIR', 'BB_WORKERCONTEXT', 'LICENSE_PATH', 'BB_UNIHASH=
', 'BB_HASHSERVE', 'HOME', 'DL_DIR',
 'SSTATE_HASHEQUIV_OWNER', 'PRSERV_DUMPDIR', 'PATH', 'WORKDIR', 'SSTATE_PKG=
ARCH', 'SSTATE_HASHEQUIV_METHOD', 'SSTATE_DIR', 'PRSERV_HOST', 'CCACHE_DIR'=
, 'STAGING_DIR_TARGET', 'STAGING_DIR_HOST', 'PWD', 'USER', 'STAMPCLEAN', 'B=
UILD_ARCH', 'BBSERVER', 'BB_LIMITEDDEPS',
 'SSTATE_HASHEQUIV_REPORT_TASKDATA', 'TMPDIR', 'SHELL', 'THISDIR', 'DEPLOY_=
DIR', 'BB_TRACE', 'PRSERV_DUMPFILE', 'ERROR_QA', 'WARN_QA', 'FILE_DIRNAME',=
 'extend_recipe_sysroot', 'CCACHE_TOP_DIR', 'PARALLEL_MAKE', 'FILE', 'BB_TA=
SKHASH', 'SDKPKGSUFFIX', 'PRSERV_LOCKDOWN',
 'PKGDATA_DIR'}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_e320441dec044fc5bf644441b61cac94baesystemscom_--
