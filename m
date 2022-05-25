Return-Path: <dwatkins@sierrawireless.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25E42C433F5
	for <webhook@archiver.kernel.org>; Wed, 25 May 2022 19:34:58 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (NAM12-DM6-obe.outbound.protection.outlook.com [40.107.243.47])
 by mx.groups.io with SMTP id smtpd.web09.11286.1653507288034101055
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 May 2022 12:34:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sierrawireless.com header.s=selector1 header.b=FatKItRE;
 spf=pass (domain: sierrawireless.com, ip: 40.107.243.47,
 mailfrom: dwatkins@sierrawireless.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fhDKZowMDGnzbymfE4VQIS0N/86HhqTu8ZnF1T+OYSoMvzaDH+a4hX6TFSjtR3kK+1XriUKWmR/+rl1qnZH2FcNZ52vKVr2IwZgjWF4Yzja8JummrDWYkVOPEcttE2T6E+XXjyXjxk8o/yUWA6sVjg1W1pcUWakr4z0sYcM9FmETObZetG031HsQEle3EjxzrRrRnsBzvkuCFdx3ILSkGrmenu1WrspqYKbnpD95vt7+X8YIi+8oZdBDX1PSXzI1PAei1sxb23d7y8VLY55Iq5pl3ANXUBzJtcXlTPCDDg8dCGz80CO2VNh+HyoLvvz/F+EoD4UqOQJBM2G26kaLyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bm/oE7wnqQI+ZSdA+GAV3GulYpRxa3iAuOTbI/fmQAQ=;
 b=l6jlUeB16Wer/304btFbaZ+m4oM+wRiqsjC0EqBqI4THZ1I85SPfjTgt8ICe16DsULPoBguQXsZZsIHaBWPC7mOP8n5cw5ZRAzG63KuVM59T9IeomAQlpZz4Rj3Qi70H/KgMcHPEc566taoBPSEuyxNZI2TZjM2YXEvntt37dt0AMR7lcaaVYF1db150D1X5hibN4QaojelBawQkL3lHGZBY1xQs8EHnTiTs33E56qkFT3srN+32hkXyEJHkFCH0ZoMRgF5nV5b1z7ELpSqnto560uwLtbeKSiNIY1MnkpWsYVddoR5wVYXmnsKaMMyN7SBsi828wC21mlBZT3u3kA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sierrawireless.com; dmarc=pass action=none
 header.from=sierrawireless.com; dkim=pass header.d=sierrawireless.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sierrawireless.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bm/oE7wnqQI+ZSdA+GAV3GulYpRxa3iAuOTbI/fmQAQ=;
 b=FatKItREdIsJ4WZWh61kny7LvaAKRU330waakjKoCixQrd7jVGUeLUJM09j/qG7nLKQjJRUGA0u9g0L8v3G9cjlHaxkU3VRGfMxcx9jEColhy7WYPg9KwEAMlgQj1OjAK+IKSElmBFuO6JPh05jC0HKrefMyJ7yVBpYmDT5ZaPY=
Received: from CO6PR02MB8740.namprd02.prod.outlook.com (2603:10b6:303:137::20)
 by SJ0PR02MB7391.namprd02.prod.outlook.com (2603:10b6:a03:2a1::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.15; Wed, 25 May
 2022 19:34:44 +0000
Received: from CO6PR02MB8740.namprd02.prod.outlook.com
 ([fe80::14d1:e21:14e8:209a]) by CO6PR02MB8740.namprd02.prod.outlook.com
 ([fe80::14d1:e21:14e8:209a%5]) with mapi id 15.20.5293.013; Wed, 25 May 2022
 19:34:44 +0000
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Kirkstone 4.0.1 - Exception: NameError: name 'json_summary_name' is
 not defined
Thread-Topic: Kirkstone 4.0.1 - Exception: NameError: name 'json_summary_name'
 is not defined
Thread-Index: AQHYcG1ish3HVK20KUaBIDap8n2Xxw==
Date: Wed, 25 May 2022 19:34:43 +0000
Message-ID: 
 <CO6PR02MB8740C7906FFA88F226E683A4B2D69@CO6PR02MB8740.namprd02.prod.outlook.com>
Accept-Language: en-CA, en-US
Content-Language: en-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sierrawireless.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0e7fe673-457d-4483-b767-08da3e859eaf
x-ms-traffictypediagnostic: SJ0PR02MB7391:EE_
x-microsoft-antispam-prvs: 
 <SJ0PR02MB7391D66D8F420F8B0281336CB2D69@SJ0PR02MB7391.namprd02.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 LPf5yUCJPEkfMdy3qTHrohWXDw0UUF5e5i55uLkmBizZu53j/ok0Xz8PRs1WBZRhFoOzV2LceM5AmITM06MPhbc+nNh6T0TOmZDyj/WEdYLAVbvwWCs4Z2fXfgRMw/2ppXknibBA4S8SBlkIvMv1BycXoQhdi7ZXBpkyv/tLCb/EPAEJhD3yhwizBwI6aa5ODEYzjJ7pVWu8ewGxl40+g58NuTPzD87jLPJT04jwE/XDGisxkpmEWrIgQBbmjiEvNG/qBBFOx6WA6XHd5/5KcE/EnHsgiC0SlI9RZx6pVqidmJM8Q9FUyMP8m3yuxC5eNfsL66IEPDzaqnItdX4V2oqXgpiqtosC0f2hH/iQufS39r1kf37SaddIDqIIAL86CrwECkDWcWT43WEvJ7MMt37OnRh+OFb+5I0xqAXf09l3Fwin4AB+NLuOF4EfkdmTvTL2/qvWcZ3maAQMJK5JqBdF54tLwPJ2NcZzxwADlf0HVeaNGLFwLjXrRys4JdZwLpyQoIf5NuYc/+JRkFM8/6yE1b0Uo6cIKfGrq92ToQaT48qL/6DbRGlqQeBNhkGoQszifpVkepKp6sO/D0fKWTM3YW/XlKiMLcx6jxGqL7kqmm64xGxTw2BIqSo4GgF1rIZQ8raoPq+B/DuLTqzZqOV+I9qsLyW2bvsqV6rzajmcuVpfPO0V6sKmpoubEFJtEEshWZUx+3R55NlVTWuzpD6u/aeVkj3n9yBIzKn6JDIyKPesg/idJcofCsJvGVWfm/b1zAMe88UOB3CCWJ/NSyuUJLGlwt/YFMth3llapwE=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR02MB8740.namprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(66946007)(83380400001)(66556008)(66446008)(64756008)(9326002)(8936002)(33656002)(316002)(8676002)(55016003)(76116006)(52536014)(7696005)(6916009)(38100700002)(166002)(6506007)(9686003)(5660300002)(38070700005)(86362001)(508600001)(186003)(122000001)(66476007)(2906002)(40140700001)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?bcrK48Bg45N5K7fnPyOyY3jG9+R4luLli3+mqDIEg+pkVqMcgJA8AIqZ?=
 =?Windows-1252?Q?ke6ELqGYhX6wLfPJqy5XnuOR7XGAhFSLk7rDa/bdZ+p/AupEc7JIj+m3?=
 =?Windows-1252?Q?2XrcG+gD/lWaaKUL6lHfJUuJ1I4cu2W7G9gfDvmF0P5lwmNUYTXtP0Gv?=
 =?Windows-1252?Q?CGEc4vw92eHTdAhxwSfpCnzNRGH21E4auWcae8DIIGAy1voRX0ThsnVj?=
 =?Windows-1252?Q?fj1RnBlHo1ImaDonv0PdOtpYa6rLAjCRrZDCetj9Bzq6ow/fglHJ8zzz?=
 =?Windows-1252?Q?8wJ8A7GfFTejwsshuOF3I2JmF26CGjY5hFKUGfocY3YSfG/5atBr6hWV?=
 =?Windows-1252?Q?jZyXgieTcEZv7eWRafB5cyeZ1dUjbcK88ZfrkWQYtEhjnJIdUuyBmQJ5?=
 =?Windows-1252?Q?ouaKRszRS1ixRz6FeGggfkqcosPAXn8jl8TS3FWJs1pCQYlsf9JSrv5d?=
 =?Windows-1252?Q?ytafB5R+AuCpc7LvhCMcbXxQRm2sltm45flGara1xANGCDxVPNTjSB82?=
 =?Windows-1252?Q?e5jwiMIrQuQETSrd9N+RlupOJbKPMXKvAa4EJ9vJ4Kq+cdZTvoy1BoBs?=
 =?Windows-1252?Q?p6D7tT79nB/0CLuXx3CtwLvD1RrP+rpt80wl04LqCxuogjQCoF7LVdda?=
 =?Windows-1252?Q?YzKIT4Ci4pzbiUdYRM8tCJsp1t68JD3KaikLa8MEmkzRCU2Dc8teml4N?=
 =?Windows-1252?Q?USWpnUCjaMZCisKOX/2rN1OTgWCY//7z86H6cqqUSiVoSdTGdkOHcnpe?=
 =?Windows-1252?Q?sAoSaCxwrjkmYqyK1wQDXI/R7Lc6YW63MRrKqAP+fPUCAZ5eGrTeE90F?=
 =?Windows-1252?Q?dXMnXqYW59t4X3vtNFkzRaOKoukcJ8SXgphqZYf1TjkWxuCm2ZG4QMiN?=
 =?Windows-1252?Q?DooiTW8Puq7gtHlVKIjM0NMMUs0Zicb1wqmeW2dKMgj4FuTyGTntmlqb?=
 =?Windows-1252?Q?87xnsBgKG8MmODkkmJ4n+WXeOZBVx6hYvwe8Jb3N/YTHGy1z+I/bIvKr?=
 =?Windows-1252?Q?AN3xHtEgnvbxSYG/T8xSAMHM1gqrOUrcyejspQwOochJSquPX34iRIdU?=
 =?Windows-1252?Q?OYO57PS47pjvgFWLiThdgOim3Spnqfm+HwBzff8fj2HjjDFpuplci7ic?=
 =?Windows-1252?Q?fQMnWZt/Xf2hbvgPEGwk+vpRNSoLP8lsMpm3Bn8LaeKKasccqRO0mnfC?=
 =?Windows-1252?Q?fNPP6US4LWbN7qcHs466czG5q/IMJNisLcKdea/+yjkMf8kEzUIyY5J1?=
 =?Windows-1252?Q?Ut+Ga43dwEr6QkLwvp7gBNlF90QheXckFJpnFjZLL0P9k/eRy61nlz+t?=
 =?Windows-1252?Q?j5CA4SfQKDehzwJb+uyCiCWQXmdBdWlFcT0YAZN/uGCLI3M6HxHbC9Ut?=
 =?Windows-1252?Q?PWuc0EPHjiPM6NTJEIE6w/rdvK5tw9kcT5PYjylziCd34mx5a6q6Dth2?=
 =?Windows-1252?Q?jg9jn2Jrp/VdKXPRMQQoWXMMOYRbwRyIDnantZVJxTnvM/iDg6Y7ouRZ?=
 =?Windows-1252?Q?NZKHnIUhAFeg3y5W6DAnCvVWQqKc+ufbM7wb9MLRdM2cXPN+hwBAgZKy?=
 =?Windows-1252?Q?x8w6I2jx5ZWce8ivD8xLO4OSCKdGnyRq6USl6fl+C5jJ5/j51hPEjBye?=
 =?Windows-1252?Q?zY96Ub+BVkoW3+ps100NlgmZgrfuTILjQfJCLcDDEPcHf2OT4Wd2z9lh?=
 =?Windows-1252?Q?u+ktRm0MpINf61Ep5DXajpj/AYNoFxLX0jIqae4ITyhwY+RpXSLLRyx/?=
 =?Windows-1252?Q?i6aODY/aU7GuMJCUEh7tD2AZgum8EinKGJ+AJzqMceoh7MUYh0m7cKGd?=
 =?Windows-1252?Q?eB74ZBpPKZ3vTHBy55LeBwyMHIzr4nkQrekZ3RfE/RaNvqTTJ9aDWuPk?=
 =?Windows-1252?Q?xN+39JhfRX/vQV3dB63QnrZe/JRykbGkCFmvNZ4jlXJBIvAZU11S2xXO?=
 =?Windows-1252?Q?jI89YQDq?=
x-ms-exchange-antispam-messagedata-1: 
 dVIkQSQdUaNOehsJ1NuIHoIM6PjUxgEv7R8U48Wpy1Lh0w6fwvS1uQtQ
Content-Type: multipart/alternative;
	boundary="_000_CO6PR02MB8740C7906FFA88F226E683A4B2D69CO6PR02MB8740namp_"
MIME-Version: 1.0
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR02MB8740.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 0e7fe673-457d-4483-b767-08da3e859eaf
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2022 19:34:43.9609
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 xvv1Y3XEYasFHxUyLdEF+hWZM3OWpmdv6H0HCouex0D5rclfi+Zh35LJdq3K8R7EMLgC6j1j3FibMc3SX4W+wGZ8TqjjhwXaCN5yqF6FLoQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR02MB7391
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 May 2022 19:34:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57189

--_000_CO6PR02MB8740C7906FFA88F226E683A4B2D69CO6PR02MB8740namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,



After sync-up with kirkstone 4.0.1, I get the following error=85



Image CVE report stored in: /home/dwatkins/workspace/mgos/voyager1/build/tm=
p/deploy/images/mg90/omg-supplement-mfwimages-mg90-20220525182226.rootfs.cv=
e

ERROR: omg-supplement-mfwimages-1.0-r0 do_rootfs: Error executing a python =
function in exec_func_python() autogenerated:



The stack trace of python calls that resulted in this exception/failure was=
:

File: 'exec_func_python() autogenerated', lineno: 2, function: <module>

     0001:

 *** 0002:cve_check_write_rootfs_manifest(d)

     0003:

File: '/home/dwatkins/workspace/mgos/voyager1/upstream/yocto/poky/meta/clas=
ses/cve-check.bbclass', lineno: 213, function: cve_check_write_rootfs_manif=
est

     0209:

     0210:        link_path =3D os.path.join(deploy_dir, "%s.json" % link_n=
ame)

     0211:        manifest_path =3D d.getVar("CVE_CHECK_MANIFEST_JSON")

     0212:        bb.note("Generating JSON CVE manifest")

 *** 0213:        generate_json_report(json_summary_name, json_summary_link=
_name)

     0214:        bb.plain("Image CVE JSON report stored in: %s" % link_pat=
h)

     0215:}

     0216:

     0217:ROOTFS_POSTPROCESS_COMMAND:prepend =3D "${@'cve_check_write_rootf=
s_manifest; ' if d.getVar('CVE_CHECK_CREATE_MANIFEST') =3D=3D '1' else ''}"

Exception: NameError: name 'json_summary_name' is not defined



ERROR: Logfile of failure stored in: /home/dwatkins/workspace/mgos/voyager1=
/build/tmp/work/mg90-poky-linux-gnueabi/omg-supplement-mfwimages/1.0-r0/tem=
p/log.do_rootfs.16510

ERROR: Task (/home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-=
images/images/omg-supplement-mfwimages.bb:do_rootfs) failed with exit code =
'1'

NOTE: Tasks Summary: Attempted 8400 tasks of which 7718 didn't need to be r=
erun and 1 failed.

NOTE: Generating JSON CVE summary

CVE report summary created at: /home/dwatkins/workspace/mgos/voyager1/build=
/tmp/log/cve/cve-summary.json


645c157befa (Davide Gardenal        2022-05-03 09:51:43 +0200 130)         =
json_summary_link_name =3D os.path.join(cvelogpath, d.getVar("CVE_CHECK_SUM=
MARY_FILE_NAME_JSON"))
645c157befa (Davide Gardenal        2022-05-03 09:51:43 +0200 131)         =
json_summary_name =3D os.path.join(cvelogpath, "%s-%s.json" % (cve_summary_=
name, timestamp))
645c157befa (Davide Gardenal        2022-05-03 09:51:43 +0200 132)         =
generate_json_report(json_summary_name, json_summary_link_name)
645c157befa (Davide Gardenal        2022-05-03 09:51:43 +0200 133)         =
bb.plain("CVE report summary created at: %s" % json_summary_link_name)


645c157befa (Davide Gardenal        2022-05-03 09:51:43 +0200 210)         =
link_path =3D os.path.join(deploy_dir, "%s.json" % link_name)
645c157befa (Davide Gardenal        2022-05-03 09:51:43 +0200 211)         =
manifest_path =3D d.getVar("CVE_CHECK_MANIFEST_JSON")
777f1d42b62 (Marta Rybczynska       2022-03-29 14:54:31 +0200 212)         =
bb.note("Generating JSON CVE manifest")
645c157befa (Davide Gardenal        2022-05-03 09:51:43 +0200 213)         =
generate_json_report(json_summary_name, json_summary_link_name)
645c157befa (Davide Gardenal        2022-05-03 09:51:43 +0200 214)         =
bb.plain("Image CVE JSON report stored in: %s" % link_path)


I am not sure whether we need to locally setup the =93json_summary_name=94 =
in  =93python cve_check_write_rootfs_manifest ()=94 like was done inside =
=93python cve_save_summary_handler ()=94 or if something different was supp=
osed to be passed to =93generate_json_report()=94 instead.


Regards,

Darcy

Darcy Watkins ::  Senior Staff Engineer, Firmware

SIERRA WIRELESS
Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +1 604 231 11=
00
13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
[M4]
dwatkins@sierrawireless.com<mailto:dwatkins@sierrawireless.com> :: www.sier=
rawireless.com<http://www.sierrawireless.com/>

--_000_CO6PR02MB8740C7906FFA88F226E683A4B2D69CO6PR02MB8740namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Menlo;
	panose-1:2 11 6 9 3 8 4 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
p.p1, li.p1, div.p1
	{mso-style-name:p1;
	margin:0cm;
	font-size:8.5pt;
	font-family:Menlo;
	color:black;}
p.p2, li.p2, div.p2
	{mso-style-name:p2;
	margin:0cm;
	font-size:8.5pt;
	font-family:Menlo;
	color:#CA3323;}
p.p3, li.p3, div.p3
	{mso-style-name:p3;
	margin:0cm;
	font-size:8.5pt;
	font-family:Menlo;
	color:black;}
span.s2
	{mso-style-name:s2;
	color:black;}
span.s1
	{mso-style-name:s1;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-CA" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"p1"><span class=3D"s1">Hi,<o:p></o:p></span></p>
<p class=3D"p1"><span class=3D"s1"><o:p>&nbsp;</o:p></span></p>
<p class=3D"p1"><span class=3D"s1">After sync-up with kirkstone 4.0.1, I ge=
t the following error=85<o:p></o:p></span></p>
<p class=3D"p1"><span class=3D"s1"><o:p>&nbsp;</o:p></span></p>
<p class=3D"p1"><span class=3D"s1">Image CVE report stored in: /home/dwatki=
ns/workspace/mgos/voyager1/build/tmp/deploy/images/mg90/omg-supplement-mfwi=
mages-mg90-20220525182226.rootfs.cve</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"s1"><b>ERROR</b></span><span class=3D"s2">: =
</span><span class=3D"s1">omg-supplement-mfwimages-1.0-r0 do_rootfs: Error =
executing a python function in exec_func_python() autogenerated:</span><o:p=
></o:p></p>
<p class=3D"p3"><o:p>&nbsp;</o:p></p>
<p class=3D"p2"><span class=3D"s1">The stack trace of python calls that res=
ulted in this exception/failure was:</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"s1">File: 'exec_func_python() autogenerated'=
, lineno: 2, function: &lt;module&gt;</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp;&nbsp; &nbsp; <=
/span><span class=3D"s1">0001:</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp;</span><span cl=
ass=3D"s1">*** 0002:cve_check_write_rootfs_manifest(d)</span><o:p></o:p></p=
>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp;&nbsp; &nbsp; <=
/span><span class=3D"s1">0003:</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"s1">File: '/home/dwatkins/workspace/mgos/voy=
ager1/upstream/yocto/poky/meta/classes/cve-check.bbclass', lineno: 213, fun=
ction: cve_check_write_rootfs_manifest</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp;&nbsp; &nbsp; <=
/span><span class=3D"s1">0209:</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp;&nbsp; &nbsp; <=
/span><span class=3D"s1">0210:</span><span class=3D"apple-converted-space">=
&nbsp; &nbsp; &nbsp; &nbsp;
</span><span class=3D"s1">link_path =3D os.path.join(deploy_dir, &quot;%s.j=
son&quot; % link_name)</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp;&nbsp; &nbsp; <=
/span><span class=3D"s1">0211:</span><span class=3D"apple-converted-space">=
&nbsp; &nbsp; &nbsp; &nbsp;
</span><span class=3D"s1">manifest_path =3D d.getVar(&quot;CVE_CHECK_MANIFE=
ST_JSON&quot;)</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp;&nbsp; &nbsp; <=
/span><span class=3D"s1">0212:</span><span class=3D"apple-converted-space">=
&nbsp; &nbsp; &nbsp; &nbsp;
</span><span class=3D"s1">bb.note(&quot;Generating JSON CVE manifest&quot;)=
</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp;</span><span cl=
ass=3D"s1">*** 0213:</span><span class=3D"apple-converted-space">&nbsp; &nb=
sp; &nbsp; &nbsp;
</span><span class=3D"s1">generate_json_report(json_summary_name, json_summ=
ary_link_name)</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp;&nbsp; &nbsp; <=
/span><span class=3D"s1">0214:</span><span class=3D"apple-converted-space">=
&nbsp; &nbsp; &nbsp; &nbsp;
</span><span class=3D"s1">bb.plain(&quot;Image CVE JSON report stored in: %=
s&quot; % link_path)</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp;&nbsp; &nbsp; <=
/span><span class=3D"s1">0215:}</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp;&nbsp; &nbsp; <=
/span><span class=3D"s1">0216:</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp;&nbsp; &nbsp; <=
/span><span class=3D"s1">0217:ROOTFS_POSTPROCESS_COMMAND:prepend =3D &quot;=
${@'cve_check_write_rootfs_manifest; ' if d.getVar('CVE_CHECK_CREATE_MANIFE=
ST') =3D=3D '1' else ''}&quot;</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"s1">Exception: NameError: name 'json_summary=
_name' is not defined</span><o:p></o:p></p>
<p class=3D"p3"><o:p>&nbsp;</o:p></p>
<p class=3D"p2"><span class=3D"s1"><b>ERROR</b></span><span class=3D"s2">: =
</span><span class=3D"s1">Logfile of failure stored in: /home/dwatkins/work=
space/mgos/voyager1/build/tmp/work/mg90-poky-linux-gnueabi/omg-supplement-m=
fwimages/1.0-r0/temp/log.do_rootfs.16510</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"s1"><b>ERROR</b></span><span class=3D"s2">: =
</span><span class=3D"s1">Task (/home/dwatkins/workspace/mgos/voyager1/meta=
-mgos-core/recipes-images/images/omg-supplement-mfwimages.bb:do_rootfs) fai=
led with exit code '1'</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1"><b>NOTE</b>: Tasks Summary: Attempted 84=
00 tasks of which 7718 didn't need to be rerun and 1 failed.</span><o:p></o=
:p></p>
<p class=3D"p1"><span class=3D"s1"><b>NOTE</b>: Generating JSON CVE summary=
</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">CVE report summary created at: /home/dwa=
tkins/workspace/mgos/voyager1/build/tmp/log/cve/cve-summary.json</span><o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:white;background:black">645c157befa</span><span style=3D"font-size:8.5pt=
;font-family:Menlo;color:black"> (Davide Gardenal&nbsp; &nbsp; &nbsp; &nbsp=
; 2022-05-03 09:51:43 +0200 130) &nbsp; &nbsp; &nbsp; &nbsp; json_summary_l=
ink_name
 =3D os.path.join(cvelogpath, d.getVar(&quot;CVE_CHECK_SUMMARY_FILE_NAME_JS=
ON&quot;))<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:white;background:black">645c157befa</span><span style=3D"font-size:8.5pt=
;font-family:Menlo;color:black"> (Davide Gardenal&nbsp; &nbsp; &nbsp; &nbsp=
; 2022-05-03 09:51:43 +0200 131) &nbsp; &nbsp; &nbsp; &nbsp; json_summary_n=
ame
 =3D os.path.join(cvelogpath, &quot;%s-%s.json&quot; % (cve_summary_name, t=
imestamp))<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:white;background:black">645c157befa</span><span style=3D"font-size:8.5pt=
;font-family:Menlo;color:black"> (Davide Gardenal&nbsp; &nbsp; &nbsp; &nbsp=
; 2022-05-03 09:51:43 +0200 132) &nbsp; &nbsp; &nbsp; &nbsp; generate_json_=
report(json_summary_name,
 json_summary_link_name)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:white;background:black">645c157befa</span><span style=3D"font-size:8.5pt=
;font-family:Menlo;color:black"> (Davide Gardenal&nbsp; &nbsp; &nbsp; &nbsp=
; 2022-05-03 09:51:43 +0200 133) &nbsp; &nbsp; &nbsp; &nbsp; bb.plain(&quot=
;CVE report
 summary created at: %s&quot; % json_summary_link_name)<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:white;background:black">645c157befa</span><span style=3D"font-size:8.5pt=
;font-family:Menlo;color:black"> (Davide Gardenal&nbsp; &nbsp; &nbsp; &nbsp=
; 2022-05-03 09:51:43 +0200 210) &nbsp; &nbsp; &nbsp; &nbsp; link_path =3D =
os.path.join(deploy_dir,
 &quot;%s.json&quot; % link_name)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:white;background:black">645c157befa</span><span style=3D"font-size:8.5pt=
;font-family:Menlo;color:black"> (Davide Gardenal&nbsp; &nbsp; &nbsp; &nbsp=
; 2022-05-03 09:51:43 +0200 211) &nbsp; &nbsp; &nbsp; &nbsp; manifest_path =
=3D d.getVar(&quot;CVE_CHECK_MANIFEST_JSON&quot;)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">777f1d42b62 (Marta Rybczynska &nbsp; &nbsp; &nbsp; 2022-03-29 14:=
54:31 +0200 212) &nbsp; &nbsp; &nbsp; &nbsp; bb.note(&quot;Generating JSON =
CVE manifest&quot;)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:white;background:black">645c157befa</span><span style=3D"font-size:8.5pt=
;font-family:Menlo;color:black"> (Davide Gardenal&nbsp; &nbsp; &nbsp; &nbsp=
; 2022-05-03 09:51:43 +0200 213) &nbsp; &nbsp; &nbsp; &nbsp; generate_json_=
report(json_summary_name,
 json_summary_link_name)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:white;background:black">645c157befa</span><span style=3D"font-size:8.5pt=
;font-family:Menlo;color:black"> (Davide Gardenal&nbsp; &nbsp; &nbsp; &nbsp=
; 2022-05-03 09:51:43 +0200 214) &nbsp; &nbsp; &nbsp; &nbsp; bb.plain(&quot=
;Image CVE
 JSON report stored in: %s&quot; % link_path)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am not sure whether we need to locally setup the =
=93json_summary_name=94 in &nbsp;=93python cve_check_write_rootfs_manifest =
()=94 like was done inside =93python cve_save_summary_handler ()=94 or if s=
omething different was supposed to be passed to =93generate_json_report()=
=94
 instead.<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">&nbsp;</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Regards,</span></b><span lan=
g=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">&nbsp;</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Darcy</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">&nbsp;</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Darcy Watkins ::&nbsp;&nbsp;=
Senior Staff Engineer, Firmware</span></b><span lang=3D"EN-US"><o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">&nbsp;</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"color:red">SIERRA W=
IRELESS</span></b><span lang=3D"EN-US" style=3D"color:red"><o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Direct&nbsp; +1 604 233 7989&nb=
sp; &nbsp;::&nbsp;&nbsp;Fax&nbsp;&nbsp;+1 604 231 1109&nbsp; ::&nbsp;&nbsp;=
Main&nbsp;&nbsp;+1 604 231 1100<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">13811 Wireless Way&nbsp; ::&nbs=
p;Richmond, BC Canada V6V 3A4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[M4]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"mailto:dwatkins@sier=
rawireless.com"><span style=3D"color:#0563C1">dwatkins@sierrawireless.com</=
span></a>&nbsp;::&nbsp;<a href=3D"http://www.sierrawireless.com/"><span sty=
le=3D"color:#0563C1">www.sierrawireless.com</span></a>
</span><o:p></o:p></p>
</div>
</body>
</html>

--_000_CO6PR02MB8740C7906FFA88F226E683A4B2D69CO6PR02MB8740namp_--

