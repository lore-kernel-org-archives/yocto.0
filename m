Received: from EUR06-VI1-obe.outbound.protection.outlook.com (EUR06-VI1-obe.outbound.protection.outlook.com [40.92.17.106])
 by mx.groups.io with SMTP id smtpd.web09.583.1620755673524209924
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 May 2021 10:54:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com header.s=selector1 header.b=SPPkY+A8;
 spf=pass (domain: outlook.com, ip: 40.92.17.106, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jzrg9N1hZI9E5aGkbKk+nldET1YxHzfK/fFwGOSarmANun5sslG2a2fCM1EEkGXZjTd2wwq/YynDngZ8gbSK5URwW3BtKg2Ej0Ge638AfznQyh2OwITyyf6pimlLDAnKRgSCR7CH2ZUG/R6k4PzPWlyCdUjM9xw7gSK6dOAa/joDPhoW2W53yBnW2vMiC/6D7oEiSE9juudu4/ICxShXRyCbRPz0+fBBFaG/iK4ddystXXocvyTMyUQ8hgLM7Uj3ppHjwHi4TfMVW7SXhh/IqRXP7X3U0wOrVNN+jkEeMXA/g5hz2uPWZq3TNqC65zLlz97d+PRm8z0qMxjNFwEoDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3B0PibGchW9SEM65LOEG3XoAL3HYBJZNEy7cMtuIQG4=;
 b=NZCa4P8MCuax6VAJdI8JJe6SQZggWKSNlHP2t/yzKo3RCAMS8mgcx7/DbCon1kEVxfsx0lldjSjWkHKlrSuidB9orLgLem/2ugfi9kWpAaEnWYAz7VOA0O4Ee2PXtNSt4tOeE5eMZZrkYjZ/BT/i0rrdc4fbKmO13rF+Ij1wApmLeuSnul2yrDPWJLpkNCKW3FL1vOZKU/IvGpHqXiNVxgLGCakY1K9DjuAKlT33fhXp7OjxTHsB6YSg20p/n67cEmjvcjoTzLlT1UXgcYWlZn/VN5YrEilTfQoyfQSa7WqdjJULp8t9/wiKA7ndVqP7FRsqKsGl8D+PZFv+WlvS1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3B0PibGchW9SEM65LOEG3XoAL3HYBJZNEy7cMtuIQG4=;
 b=SPPkY+A8kK8YkUpdq0Lfym+4R9oeBlJB5lgeQMEUI/aoZE7sInm44okki+BzQHyfBgQ8NiJO6YVjF1FsROVqWDQA9czkBXLjlfXgs4suDBWq6/e9SCP+DVA0SuHX6GaygcrfKpx07mq1/GNPIXW++e/JYI1rnoA7vJhliC64cQTiT/LoF3qPYVDDGUj6AFcIJJVnrO7ZUIM3ec/Td232JaI9V9zE/0+vgc9n0pNWertzbDAOP/nc/e78gXDpKth/o9viTuD6Pl+IRJOD8POzVRedDZ3YnWhQxfoADQa/ygps/uhUx9oIZsWZrBgDtXoQHN6j5gWIVMtq+5DG+YUwXg==
Received: from VI1EUR06FT042.eop-eur06.prod.protection.outlook.com
 (2a01:111:e400:fc37::45) by
 VI1EUR06HT236.eop-eur06.prod.protection.outlook.com (2a01:111:e400:fc37::450)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.25; Tue, 11 May
 2021 17:54:30 +0000
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 (2a01:111:e400:fc37::49) by VI1EUR06FT042.mail.protection.outlook.com
 (2a01:111:e400:fc37::221) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.25 via Frontend
 Transport; Tue, 11 May 2021 17:54:30 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:1667BB2A6BCEEE3DE3F0DCC71BDC5AE92407CF5356CDBD8CEF36D7B7A39E56BC;UpperCasedChecksum:F2A8DE63E4C02C2F0602E6C16E0CB8AF8E3E634A1FF0C51F78D291C3DCDAF307;SizeAsReceived:8693;Count:47
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::9c9b:9858:17df:de84]) by AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::9c9b:9858:17df:de84%6]) with mapi id 15.20.4108.032; Tue, 11 May 2021
 17:54:30 +0000
Subject: Re: [yocto] [zeus] python3-numpy: No module named 'numpy.core._multiarray_umath' #yocto #zeus #python
To: yocto@lists.yoctoproject.org, bhstalel@gmail.com
References: <W4Wv.1620749689544013808.s8FD@lists.yoctoproject.org>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: <AM9PR09MB4642E07CC4C2181267BE05F1A8539@AM9PR09MB4642.eurprd09.prod.outlook.com>
Date: Tue, 11 May 2021 19:54:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <W4Wv.1620749689544013808.s8FD@lists.yoctoproject.org>
X-TMN: [yq1foGILkkZVY8P8unAsoucS/UvDHf5C]
X-ClientProxiedBy: AM6PR04CA0040.eurprd04.prod.outlook.com
 (2603:10a6:20b:f0::17) To AM9PR09MB4642.eurprd09.prod.outlook.com
 (2603:10a6:20b:284::24)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: <3673c2c4-f159-c6c6-162f-35c042a7b13d@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.23] (87.141.81.56) by AM6PR04CA0040.eurprd04.prod.outlook.com (2603:10a6:20b:f0::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.25 via Frontend Transport; Tue, 11 May 2021 17:54:30 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 47
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 6ed61dc5-f513-4146-3aa9-08d914a5d394
X-MS-TrafficTypeDiagnostic: VI1EUR06HT236:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	HkZi9EcOaboeDnixWKnMwe9cczBH4/d84QsdqqIWzMPmL4jZobCnxU9a1MqfM40Gx4YZYp9FYE3tcrm7eS48pa2CLO1J5n9sJiNwxCohvk5k7tAFlFyMJ47gU60ioNpY0gjEoRiXjZ8mWaHqWa9297UqscrsIOh7/rvAqQ2RCnblWXcIFnZmnUMuPmRoy02HKPmCcnUGzHPf8WBH/eROhEUoW65bohHPJi2A3qjnvUrutdkvuEa8/lplbTQNTmcY62XE+CsxQgugZcs5i2FkLYrtAHWp3Z7ROJspmsSzSC59tQNcEBnyt7h9LcISjxoGAu/4A/bkayX9tKWGO86xBl/X7blU1elSezZpaxrHWy+soThTTDYJgWkzHQqn1WIOVi861BW5TXihLGaNwHOm6belrUuCzVozEQ/ShX9AJsFY+8jx6WExjuhybBKRpLUjJTMc+5SQ+M9UjwqSvPvTmKjNt/aZNmKkA58xnfNojHU=
X-MS-Exchange-AntiSpam-MessageData: 
	AF6SvGXclsk5wyyC9DtxN+subVqKtLOagERRBT4mA3hmHnXAZqIns+QRBAo+Pc2Np41I+3E5mWFYW+dAle0L9rDYPnRBRvQXSXT5BUrd/CczcDZ+RxHi+gCCsTxYsxgI/XWX9+oOeTh0NwNdPiUrdg==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ed61dc5-f513-4146-3aa9-08d914a5d394
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2021 17:54:30.4190
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: 
	VI1EUR06FT042.eop-eur06.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1EUR06HT236
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 11.05.21 18:14, Bel Hadj Salem Talel wrote:
> Hi All,
> I integrated python3-numpy in my image and when trying to import it I=20
> get this error: (python3 version: 3.7.7)
>=20
> ------
>  >>> import cv2
> OpenCV bindings requires "numpy" package.
> Install it via command:
>  =C2=A0 =C2=A0 pip install numpy
> Traceback (most recent call last):
>  =C2=A0 File "/usr/lib/python3.7/site-packages/numpy/core/__init__.py", =
line=20
> 17, in <module>
>  =C2=A0 =C2=A0 from . import multiarray
>  =C2=A0 File "/usr/lib/python3.7/site-packages/numpy/core/multiarray.py"=
,=20
> line 14, in <module>
>  =C2=A0 =C2=A0 from . import overrides
>  =C2=A0 File "/usr/lib/python3.7/site-packages/numpy/core/overrides.py",=
 line=20
> 7, in <module>
>  =C2=A0 =C2=A0 from numpy.core._multiarray_umath import (
> ModuleNotFoundError: No module named 'numpy.core._multiarray_umath'
> During handling of the above exception, another exception occurred:
> Traceback (most recent call last):
>  =C2=A0 File "<stdin>", line 1, in <module>
>  =C2=A0 File "/usr/lib/python3.7/site-packages/cv2/__init__.py", line 8,=
 in=20
> <module>
>  =C2=A0 =C2=A0 import numpy
>  =C2=A0 File "/usr/lib/python3.7/site-packages/numpy/__init__.py", line =
142,=20
> in <module>
> root@menzu-media:~# python3
> Python 3.7.7 (default, Apr 22 2021, 09:42:29)
> [GCC 9.2.0] on linux
> Type "help", "copyright", "credits" or "license" for more information.
>  >>> import cv2
> OpenCV bindings requires "numpy" package.
> Install it via command:
>  =C2=A0 =C2=A0 pip install numpy
> Traceback (most recent call last):
>  =C2=A0 File "/usr/lib/python3.7/site-packages/numpy/core/__init__.py", =
line=20
> 17, in <module>
>  =C2=A0 =C2=A0 from . import multiarray
>  =C2=A0 File "/usr/lib/python3.7/site-packages/numpy/core/multiarray.py"=
,=20
> line 14, in <module>
>  =C2=A0 =C2=A0 from . import overrides
>  =C2=A0 File "/usr/lib/python3.7/site-packages/numpy/core/overrides.py",=
 line=20
> 7, in <module>
>  =C2=A0 =C2=A0 from numpy.core._multiarray_umath import (
> ModuleNotFoundError: No module named 'numpy.core._multiarray_umath'
> During handling of the above exception, another exception occurred:
> Traceback (most recent call last):
>  =C2=A0 File "<stdin>", line 1, in <module>
>  =C2=A0 File "/usr/lib/python3.7/site-packages/cv2/__init__.py", line 8,=
 in=20
> <module>
>  =C2=A0 =C2=A0 import numpy
>  =C2=A0 File "/usr/lib/python3.7/site-packages/numpy/__init__.py", line =
142,=20
> in <module>
>  =C2=A0 =C2=A0 from . import core
>  =C2=A0 File "/usr/lib/python3.7/site-packages/numpy/core/__init__.py", =
line=20
> 47, in <module>
>  =C2=A0 =C2=A0 raise ImportError(msg)
> ImportError:
> IMPORTANT: PLEASE READ THIS FOR ADVICE ON HOW TO SOLVE THIS ISSUE!
> Importing the numpy c-extensions failed.
> - Try uninstalling and reinstalling numpy.
> - If you have already done that, then:
>  =C2=A0 1. Check that you expected to use Python3.7 from "/usr/bin/pytho=
n3",
>  =C2=A0 =C2=A0 =C2=A0and that you have no directories in your PATH or PY=
THONPATH that can
>  =C2=A0 =C2=A0 =C2=A0interfere with the Python and numpy version "1.17.0=
" you're trying=20
> to use.
>  =C2=A0 2. If (1) looks fine, you can open a new issue at
>  =C2=A0 =C2=A0 =C2=A0https://github.com/numpy/numpy/issues.=C2=A0 Please=
 include details on:
>  =C2=A0 =C2=A0 =C2=A0- how you installed Python
>  =C2=A0 =C2=A0 =C2=A0- how you installed numpy
>  =C2=A0 =C2=A0 =C2=A0- your operating system
>  =C2=A0 =C2=A0 =C2=A0- whether or not you have multiple versions of Pyth=
on installed
>  =C2=A0 =C2=A0 =C2=A0- if you built from source, your compiler versions =
and ideally a=20
> build log
> - If you're working with a numpy git repository, try `git clean -xdf`
>  =C2=A0 (removes all files not under version control) and rebuild numpy.
> Note: this error has many possible causes, so please don't comment on
> an existing issue about this - open a new one instead.
> Original error was: No module named 'numpy.core._multiarray_umath'
> ----------
>=20
> Did any one encounter this issue?

According to [1] yes - you might want to consider back porting one of=20
the more recent versions of numpy from [2], as you are using a pretty=20
outdated one

[1]=20
https://stackoverflow.com/questions/54665842/when-importing-tensorflow-i-g=
et-the-following-error-no-module-named-numpy-cor
[2] http://layers.openembedded.org/layerindex/recipe/51338/

Also the github issue tracker of numpy contains at least one issue of=20
the same sort

>=20
> Thanks,
> Talel
>=20
>=20
>=20
>=20
