Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.7532.1600915570191659133
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Sep 2020 19:46:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=UVTrDrBj;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: qi.chen@windriver.com)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2068.outbound.protection.outlook.com [40.107.243.68])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E787F38C14CD
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 19:46:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=drdYg2a6dDbhK1mv9qk8qxrfs65xUui8DKHxjaLEAgzVgmjsq+T53wA1DNbKqTdCX4bgJ6WmUcp6L3jXgkIhq1Ae45YTcsTUXdlXEN2xrKOgUaodmcR20gTks1kIscM34lqTddptThrxvRoT67xpPZ5IiqzuYKYZdVNJR2GuBWPhXu2oH5/5jsjx5XFTYxtA9wyMDNT3zoXgzBemdonsJ0bDk2p0PG7iWdzow5EyBzin3qN5RpQXnQQawx98mpqEKXo0GIGM4iXn/3oPzzsR9hXgnjJ1ccZ+7NJ0iRW8PLXUSP/J/1s/s1GTj4SH8Ad2I68ZbTHbzKJsDhexXLPKrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nDtbFDptK1tm550kKOITm22j1zRWtYb3/VIN80auccM=;
 b=CyMe2oHB4S2a4oC60OLg/foiM2XJCxxDIIQ5B3B+pd6YWE5tmiOSg4AW6J0Rs8ff0Ty16Zew7RqgzaRut7kx6fsnsASxbHNTbgsQpoF3Qo5r5ED98vXX/YNu0lD0jRDB1Pby7y+bgf1oGF9wx5DsyNV4l5KdChJRatNMj5+TJqePD38b1kVs6Eor4F0/JvSzlR8dT3he9UN0qsXBWvR7U5QK9ev05MOPzE1HdnUQv7WZhI26eK8rOnPmmjYndRK2abD0BJyXHPkphE8qM+XpfpgFaIUuJZHPAu7mX3ZSp3VxLgU7uliSLDwPb3nJmNqK+ctIFHP99PA+0nNxiSU5ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nDtbFDptK1tm550kKOITm22j1zRWtYb3/VIN80auccM=;
 b=UVTrDrBjIzqODuFwVVKjUOKb+hHnneEPFeIBe+oXzBdmnnR9k1+qxrsMhYizl4Oe1ejTkowKCW2xOyLDoJP0kzav4cUL+AoPDXKX1RYbM4wnJJ0FbVJleT0cxvpkTAd+ipsv9FLPkjA3d05a2KMfJC1flLfdhJcFEvVshxcaGbA=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BYAPR11MB3480.namprd11.prod.outlook.com (2603:10b6:a03:79::27)
 by BY5PR11MB4435.namprd11.prod.outlook.com (2603:10b6:a03:1ce::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.20; Thu, 24 Sep
 2020 02:46:08 +0000
Received: from BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::4c97:65e4:a822:4cc1]) by BYAPR11MB3480.namprd11.prod.outlook.com
 ([fe80::4c97:65e4:a822:4cc1%7]) with mapi id 15.20.3391.027; Thu, 24 Sep 2020
 02:46:08 +0000
Subject: Re: [yocto] [meta-cgl][PATCH] meta-cgl-common: depend on meta-python2 layer
To: Randy MacLeod <randy.macleod@windriver.com>, yocto@yoctoproject.org
References: <20200923080109.24229-1-Qi.Chen@windriver.com>
 <3e915e94-4ebf-1100-45d7-f09a7a8f4cdd@windriver.com>
From: "Chen Qi" <Qi.Chen@windriver.com>
Message-ID: <5e1c1d7c-4d44-a4bf-f964-218d28c995c0@windriver.com>
Date: Thu, 24 Sep 2020 10:51:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
In-Reply-To: <3e915e94-4ebf-1100-45d7-f09a7a8f4cdd@windriver.com>
X-ClientProxiedBy: HK2PR04CA0075.apcprd04.prod.outlook.com
 (2603:1096:202:15::19) To BYAPR11MB3480.namprd11.prod.outlook.com
 (2603:10b6:a03:79::27)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.161] (60.247.85.82) by HK2PR04CA0075.apcprd04.prod.outlook.com (2603:1096:202:15::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.20.3412.21 via Frontend Transport; Thu, 24 Sep 2020 02:46:06 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5fa08d7e-38b6-4e89-aa18-08d86033fcf8
X-MS-TrafficTypeDiagnostic: BY5PR11MB4435:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<BY5PR11MB4435AD2AF9DEAF86C1A14A64ED390@BY5PR11MB4435.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7koLDZXcVF1GmYauVFMyGwcXNckwP7IK+y3UvkOxue5QWGAuFj80mPbQK027EOzwrKIbmI81bTM57/qYSUrLLcEVXHsQ3A8F7Ygicg7j5PvdfKpdkJs8eZjQZHPjVDMd0dtr2aaO8BUmh2qBxaA4mOoZrXAh4KEAV9NgAWkEqr2UJy9BkwOOO/ckGhllKRYxeZatZYUfpNUXdD/k1x9idbBcYJBLsXWSVC5QNbQLpBJq5zQmeHkrlR0EGz94rt1qOimEKtzbUQwW9WS8mjGoeg/7mUklw6X7UeY07FhCcSiNr1a4BS8CA8KdMm4peXrdEcfsKXswNtx/C87G+AhLRyl8LUb9mfyjT3b6EtgZPIKCeeyCeNyoq3TYHo5SCwuBt+jxqx2U9R6woVYX56bmD/RCCypsyT7yv9kmnveFBvKfXcOZHwo/epgyPlQyUkoXMC3fjji4fa5gfd8uHllr59VCzDhkx/oJLDsTFLDP1bw=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3480.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(366004)(346002)(136003)(39850400004)(396003)(6666004)(53546011)(2616005)(8936002)(66946007)(66476007)(16576012)(5660300002)(316002)(8676002)(6706004)(6486002)(2906002)(66556008)(33964004)(956004)(186003)(52116002)(966005)(31686004)(166002)(31696002)(26005)(478600001)(36756003)(66574015)(83380400001)(86362001)(16526019)(78286007)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	/HJ6+geSqQh/Ik0ypI2il9XE/sq0NZzPHTR1EPEVVK6fMAb0/qedD8bRoXKkA+4IWhoj1aN/yTEPrEyJq+IdG9cQDjHDMxbiqwW6aGq6SFSlkLDVKQ4laQQ+wSD1Xp6gYsulDyvIMHrZ+hCx5ZEPbnFVuAJYSmpi+j4R1Fki6MDr1zYh5G5zufLSvlDK+GMS9CaDDk2RVqbCW5WdIrJhRESXQ7x2oBdtaut0ftlQTz1DPO6VZM+5PD0RCBTybxnNQW3orMJe9Zc4WGNacQlqGUN39+C4RSXSsUKqnghzxLIqfcQfWegpLini0NhWAo10ehcmtPDktDkXyTPbvdoWMgHcowHreUJY01HK6uk2tc4wJz+SuCw+fF3xXwvyG3/8N3tK+cwF3FGAXAvkbF+AXAIU1aH6hhEcgIZ7HIAdHRQzALSvSPIWYEp2VcJ4w1EEQJpw9AUiGG2GbH2ry2uO3RwvsAZt6AAlEa6E2Zv+LwVzDw8SwnJ3f/z0UU2BmLrhwIz9Zah2N2hOaEN3mTbhznVxgTpPbA7tVNFpjBOwOm/eqztEGEyn6zv9F1uZDORTBj39L2YCySH0z/GH3Pxgf/jdRBVvIBm7wQAzW0TlIYfWtHuufgY8es7LQfOCEr4l4h3EDOJXjmq3S4VI+VdIMw==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fa08d7e-38b6-4e89-aa18-08d86033fcf8
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3480.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2020 02:46:07.8827
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 15FKztiUp/e/sK1G6Wka6sD/g2HFZk8gI4QCroDDPVND8Qjmrbfzrr2UIHBsPETNwo7jVtrVzB0RZybJmfAVRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4435
Content-Type: multipart/alternative;
 boundary="------------A84C72424BDAE5F204ACCBE2"

--------------A84C72424BDAE5F204ACCBE2
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

THANKS. I've sent out a new patch.

On 09/23/2020 11:58 PM, Randy MacLeod wrote:
> On 2020-09-23 4:01 a.m., Chen Qi wrote:
>> It requires meta-python2 to be there at the moment.
>> More specifically, the crmsh recipe needs python-setuptools-native.
>
> Hi Qi,
>
> Are you sure?
> It looks like crmsh moved to python3 a while ago as
> indicated below.
>
> If there's still a dependency, please open an issue:
>
> https://github.com/ClusterLabs/crmsh/issues?q=3Dis%3Aissue+is%3Aopen+set=
uptools
>
> Thanks,
>
> ../Randy
>
>
> $ cd .../crmsh.git
>
> $ git status
> HEAD detached at 4.2.0
> nothing to commit, working tree clean
>
> $ grep -r setuptools *
>
> contrib/setup.py:from setuptools import setup
> crmsh.spec.in:BuildRequires:  python3-setuptools
> doc/website-v1/development.adoc:* `setuptools`
> Dockerfile:RUN zypper -n --gpg-auto-import-keys ref && zypper -n=20
> --gpg-auto-import-keys in pacemaker python3 python3-lxml=20
> python3-python-dateutil python3-parallax libglue-devel=20
> python3-setuptools python3-tox asciidoc autoconf automake make=20
> pkgconfig which libxslt-tools mailx procps python3-nose python3-PyYAML=
=20
> python3-curses tar
> README.md:It then calls the python setuptools setup.py to actually=20
> process the
> setup.py:from setuptools import setup
>
>
> git log -1 --stat 845af7b9fb7a4c212d2e67b8a44cf655e702edaa
> commit 845af7b9fb7a4c212d2e67b8a44cf655e702edaa
> Author: Kristoffer Gr=C3=B6nlund <krig@koru.se>
> Date:   Fri Oct 27 05:47:02 2017
>
>     dev: Updated spec file
>
>  crmsh.spec | 106=20
> +++++++++++++++++...+++++++++-----------------------------------------
>  1 file changed, 65 insertions(+), 41 deletions(-)
>
> $ grep setuptools crmsh.spec.in
> BuildRequires:  python3-setuptools
>
>
>> Signed-off-by: Chen Qi<Qi.Chen@windriver.com>
>> ---
>>   meta-cgl-common/conf/layer.conf | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/lay=
er.conf
>> index 6035b4b..6b689ea 100644
>> --- a/meta-cgl-common/conf/layer.conf
>> +++ b/meta-cgl-common/conf/layer.conf
>> @@ -9,7 +9,7 @@ BBFILE_COLLECTIONS +=3D "cgl-common"
>>   BBFILE_PATTERN_cgl-common =3D "^${LAYERDIR}/"
>>   BBFILE_PRIORITY_cgl-common =3D "7"
>>  =20
>> -LAYERDEPENDS_cgl-common =3D "core openembedded-layer networking-layer =
perl-layer filesystems-layer security selinux"
>> +LAYERDEPENDS_cgl-common =3D "core openembedded-layer networking-layer =
perl-layer filesystems-layer security selinux meta-python2"
>>  =20
>>   LAYERSERIES_COMPAT_cgl-common =3D "warrior zeus dunfell"
>>  =20
>>
>>=20
>>
>
> --=20
> # Randy MacLeod
> # Wind River Linux



--------------A84C72424BDAE5F204ACCBE2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">THANKS. I've sent out a new patch.<br>
      <br>
      On 09/23/2020 11:58 PM, Randy MacLeod wrote:<br>
    </div>
    <blockquote cite=3D"mid:3e915e94-4ebf-1100-45d7-f09a7a8f4cdd@windriver=
.com" type=3D"cite">
      
      <div class=3D"moz-cite-prefix">On 2020-09-23 4:01 a.m., Chen Qi
        wrote:<br>
      </div>
      <blockquote type=3D"cite" cite=3D"mid:20200923080109.24229-1-Qi.Chen=
@windriver.com">
        <pre class=3D"moz-quote-pre" wrap=3D"">It requires meta-python2 to=
 be there at the moment.
More specifically, the crmsh recipe needs python-setuptools-native.</pre>
      </blockquote>
      <p>Hi Qi,<br>
      </p>
      <p>Are you sure? <br>
        It looks like crmsh moved to python3 a while ago as<br>
        indicated below.</p>
      <p>If there's still a dependency, please open an issue:</p>
      <p>&nbsp;&nbsp;
        <a moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext" href=
=3D"https://github.com/ClusterLabs/crmsh/issues?q=3Dis%3Aissue+is%3Aopen+s=
etuptools">https://github.com/ClusterLabs/crmsh/issues?q=3Dis%3Aissue+is%3A=
open+setuptools</a></p>
      <p>Thanks,<br>
      </p>
      <p>../Randy<br>
      </p>
      <p><br>
      </p>
      <p>$ cd .../crmsh.git <br>
      </p>
      <p>$ git status<br>
        HEAD detached at 4.2.0<br>
        nothing to commit, working tree clean<br>
        <br>
      </p>
      <p>$ grep -r setuptools *</p>
      contrib/setup.py:from setuptools import setup<br>
      crmsh.spec.in:BuildRequires:&nbsp; python3-setuptools<br>
      doc/website-v1/development.adoc:* `setuptools`<br>
      Dockerfile:RUN zypper -n --gpg-auto-import-keys ref &amp;&amp;
      zypper -n --gpg-auto-import-keys in pacemaker python3 python3-lxml
      python3-python-dateutil python3-parallax libglue-devel
      python3-setuptools python3-tox asciidoc autoconf automake make
      pkgconfig which libxslt-tools mailx procps python3-nose
      python3-PyYAML python3-curses tar<br>
      README.md:It then calls the python setuptools setup.py to actually
      process the<br>
      setup.py:from setuptools import setup<br>
      <p><br>
      </p>
      <p>git log -1 --stat 845af7b9fb7a4c212d2e67b8a44cf655e702edaa<br>
        commit 845af7b9fb7a4c212d2e67b8a44cf655e702edaa<br>
        Author: Kristoffer Gr=C3=B6nlund <a moz-do-not-send=3D"true" class=
=
=3D"moz-txt-link-rfc2396E" href=3D"mailto:krig@koru.se">&lt;krig@koru.se&g=
t;</a><br>
        Date:&nbsp;&nbsp; Fri Oct 27 05:47:02 2017<br>
        <br>
        &nbsp;&nbsp;&nbsp; dev: Updated spec file<br>
        <br>
        &nbsp;crmsh.spec | 106
        +++++++++++++++++...+++++++++-------------------------------------=
----<br>
        &nbsp;1 file changed, 65 insertions(+), 41 deletions(-)<br>
        <br>
      </p>
      <p>$ grep setuptools crmsh.spec.in <br>
        BuildRequires:&nbsp; python3-setuptools<br>
        <br>
      </p>
      <p><br>
      </p>
      <blockquote type=3D"cite" cite=3D"mid:20200923080109.24229-1-Qi.Chen=
@windriver.com">
        <pre class=3D"moz-quote-pre" wrap=3D"">
Signed-off-by: Chen Qi <a moz-do-not-send=3D"true" class=3D"moz-txt-link-r=
fc2396E" href=3D"mailto:Qi.Chen@windriver.com">&lt;Qi.Chen@windriver.com&gt=
;</a>
---
 meta-cgl-common/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.=
conf
index 6035b4b..6b689ea 100644
--- a/meta-cgl-common/conf/layer.conf
+++ b/meta-cgl-common/conf/layer.conf
@@ -9,7 +9,7 @@ BBFILE_COLLECTIONS +=3D &quot;cgl-common&quot;
 BBFILE_PATTERN_cgl-common =3D &quot;^${LAYERDIR}/&quot;
 BBFILE_PRIORITY_cgl-common =3D &quot;7&quot;
=20
-LAYERDEPENDS_cgl-common =3D &quot;core openembedded-layer networking-laye=
r perl-layer filesystems-layer security selinux&quot;
+LAYERDEPENDS_cgl-common =3D &quot;core openembedded-layer networking-laye=
r perl-layer filesystems-layer security selinux meta-python2&quot;
=20
 LAYERSERIES_COMPAT_cgl-common =3D &quot;warrior zeus dunfell&quot;
=20
</pre>
        <br>
        <fieldset class=3D"mimeAttachmentHeader"></fieldset>
        <pre class=3D"moz-quote-pre" wrap=3D"">

</pre>
      </blockquote>
      <p><br>
      </p>
      <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------A84C72424BDAE5F204ACCBE2--
