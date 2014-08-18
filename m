Return-Path: <mikhail.zakharov@cognitivesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E56F9E00563; Mon, 18 Aug 2014 12:24:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0002]
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Mon, 18 Aug 2014 12:24:36 PDT
Received: from ironport.highqlp.com (ironport.highqlp.com [207.107.155.245])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 980BEE004F5
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 12:24:36 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AmwGAD1S8lOsAWkL/2dsb2JhbABZgmsjAYEts1KDLJVziQYXd4QKOhw1AT5CByAEGxOIJwEEnHGkWReUHwWSIJ8lg12CNIEHAQEB
X-IPAS-Result: AmwGAD1S8lOsAWkL/2dsb2JhbABZgmsjAYEts1KDLJVziQYXd4QKOhw1AT5CByAEGxOIJwEEnHGkWReUHwWSIJ8lg12CNIEHAQEB
X-IronPort-AV: E=McAfee;i="5600,1067,7534"; a="27218"
X-IronPort-AV: E=Sophos;i="5.01,888,1400040000"; 
   d="scan'208";a="27218"
Received: from 172-1-105-11.lightspeed.sntcca.sbcglobal.net (HELO
	cas.cognitivesystems.com) ([172.1.105.11])
	by ironport.cognitivesystems.com with ESMTP; 18 Aug 2014 16:29:10 -0400
Received: from mb.cognitivesystems.com (2002:ac01:680b::ac01:680b) by
	mb.cognitivesystems.com (2002:ac01:680b::ac01:680b) with Microsoft SMTP
	Server (TLS) id 15.0.847.32; Mon, 18 Aug 2014 15:22:59 -0400
Received: from mb.cognitivesystems.com ([fe80::8d75:bde8:1d24:bd44]) by
	mb.cognitivesystems.com ([fe80::8d75:bde8:1d24:bd44%12]) with mapi id
	15.00.0847.030; Mon, 18 Aug 2014 15:22:59 -0400
From: Mikhail Zakharov <mikhail.zakharov@cognitivesystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Python3: Unable to get the locale encoding (Yocto/daisy)
Thread-Index: AQHPuxnSM2Wcdin8YUy5dDZYLx3Vjg==
Date: Mon, 18 Aug 2014 19:22:59 +0000
Message-ID: <9749e08e844448c0a4baee2ec0b2ae43@mb.cognitivesystems.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.1.105.2]
MIME-Version: 1.0
Subject: Python3: Unable to get the locale encoding (Yocto/daisy)
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
X-List-Received-Date: Mon, 18 Aug 2014 19:24:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,=0A=
=0A=
We are using yocto daisy 1.6.1  and added 'python3' to our local.conf=0A=
when building 'core-image-minimal' , however we get the following error=0A=
when invoking the interpreter in  on target:=0A=
=0A=
Fatal Python error: Py_Initialize: Unable to get the locale encoding=0A=
ImportError: No module named 'encodings'=0A=
=0A=
Could someone please share a possible cause/solution to this?=0A=
=0A=
Thanks and regards,=0A=
Mikhail=0A=

