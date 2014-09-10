Return-Path: <mikhail.zakharov@cognitivesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57E3CE00833; Wed, 10 Sep 2014 07:19:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ironport.highqlp.com (ironport.highqlp.com [207.107.155.245])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8F50E00819
	for <yocto@yoctoproject.org>; Wed, 10 Sep 2014 07:19:40 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AmMGACldEFSsAWkL/2dsb2JhbABZgmsjU1cEuEWRSh4Mh0qBEBcCdoJrLA1fAQEBAQMBAjccIxACAQgRAwECAR4QIQcKBxYIAgQOBQgTiBMDEQEECLdrDYY5AReNIIF6Mw2ERgWGGowogy+Df3ODb40UhjuDYWwBBIFDgQcBAQE
X-IPAS-Result: AmMGACldEFSsAWkL/2dsb2JhbABZgmsjU1cEuEWRSh4Mh0qBEBcCdoJrLA1fAQEBAQMBAjccIxACAQgRAwECAR4QIQcKBxYIAgQOBQgTiBMDEQEECLdrDYY5AReNIIF6Mw2ERgWGGowogy+Df3ODb40UhjuDYWwBBIFDgQcBAQE
X-IronPort-AV: E=McAfee;i="5600,1067,7556"; a="35694"
X-IronPort-AV: E=Sophos;i="5.04,499,1406606400"; 
   d="scan'208";a="35694"
Received: from 172-1-105-11.lightspeed.sntcca.sbcglobal.net (HELO
	cas.cognitivesystems.com) ([172.1.105.11])
	by ironport.cognitivesystems.com with ESMTP; 10 Sep 2014 10:19:38 -0400
Received: from mb.cognitivesystems.com (2002:ac01:680b::ac01:680b) by
	mb.cognitivesystems.com (2002:ac01:680b::ac01:680b) with Microsoft SMTP
	Server (TLS) id 15.0.847.32; Wed, 10 Sep 2014 10:20:23 -0400
Received: from mb.cognitivesystems.com ([fe80::8d75:bde8:1d24:bd44]) by
	mb.cognitivesystems.com ([fe80::8d75:bde8:1d24:bd44%12]) with mapi id
	15.00.0847.030; Wed, 10 Sep 2014 10:20:23 -0400
From: Mikhail Zakharov <mikhail.zakharov@cognitivesystems.com>
To: "sodovkar@gmail.com" <sodovkar@gmail.com>
Thread-Topic: [yocto] python3.3 module encodings not found
Thread-Index: AQHPzQJcqSHLOHSLA0uDyB/hSUVvwg==
Date: Wed, 10 Sep 2014 14:20:23 +0000
Message-ID: <fb2583ab189242d2918114a36c4cf49c@mb.cognitivesystems.com>
References: <mailman.22969.1410356230.26702.yocto@yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.1.105.2]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: python3.3 module encodings not found
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
X-List-Received-Date: Wed, 10 Sep 2014 14:19:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

On 14-09-10 09:39 AM, yocto-request@yoctoproject.org wrote:=0A=
> ------------------------------=0A=
>=0A=
> Message: 4=0A=
> Date: Wed, 10 Sep 2014 13:22:12 +0200=0A=
> From: Soda <sodovkar@gmail.com>=0A=
> To: yocto@yoctoproject.org=0A=
> Subject: [yocto] python3.3 module encodings not found=0A=
> Message-ID: <54103464.7070807@gmail.com>=0A=
> Content-Type: text/plain; charset=3DISO-8859-1; format=3Dflowed=0A=
>=0A=
> Hello developers,=0A=
>=0A=
> I have recently switch to the poky-1.6.1, mainly because of python3.=0A=
> First of all I must say that I see significant improvements in the new=0A=
> yocto 1.6.1 (compare to the 1.5.1), so thanks to all contributors!=0A=
>=0A=
> The python3 package is successfully compiled and installed on my target =
=0A=
> board (Atmel A5),=0A=
> the problem I'm getting is the python3 cannot find the 'encodings' =0A=
> module, maybe because=0A=
> there is none in the /usr/lib/python3.3/  copying one from python2 did =
=0A=
> not work - obviously.=0A=
>=0A=
> This is the actual error I get:=0A=
>=0A=
>   # python3=0A=
>   Fatal Python error: Py_Initialize: Unable to get the locale encoding=0A=
>   ImportError: No module named 'encodings'=0A=
>   Aborted=0A=
>=0A=
> More detailed error:=0A=
>=0A=
>   # python3 -v=0A=
>   import _frozen_importlib # frozen=0A=
>   import imp # builtin=0A=
>   import sys # builtin=0A=
>   # installing zipimport hook=0A=
>   import 'zipimport' # <class '_frozen_importlib.BuiltinImporter'>=0A=
>   # installed zipimport hook=0A=
>   Fatal Python error: Py_Initialize: Unable to get the locale encoding=0A=
>   Traceback (most recent call last):=0A=
>     File "<frozen importlib._bootstrap>", line 1565, in _find_and_load=0A=
>     File "<frozen importlib._bootstrap>", line 1529, in =0A=
> _find_and_load_unlocked=0A=
>   ImportError: No module named 'encodings'=0A=
>   Aborted=0A=
>=0A=
>=0A=
> Looking forward for any hints or solutions.=0A=
>=0A=
> Mark=0A=
>=0A=
Ensure you have added python3-modules and python3-misc. Take a look at=0A=
the following post:=0A=
http://lists.openembedded.org/pipermail/openembedded-core/2013-May/078568.h=
tml=0A=
=0A=
Also, please be aware of some bugs that have been fixed since daisy=0A=
1.6.1 that might affect you with python3:=0A=
=0A=
Our environemnt required this one:=0A=
https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D0ed5a13f5f9478=
e2c22f517fb3504b738422f85c=0A=
=0A=
master:=0A=
https://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?qt=3Dgrep&q=3Dpython3&=
h=3Dmaster=0A=
vs daisy:=0A=
https://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?qt=3Dgrep&q=3Dpython3&=
h=3Ddaisy=0A=
=0A=
-Mikhail=0A=
=0A=
=0A=

