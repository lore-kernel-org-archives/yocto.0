Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9486E0137D
	for <yocto@yoctoproject.org>; Mon, 13 May 2013 04:48:12 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 13 May 2013 04:48:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,662,1363158000"; d="scan'208";a="240733409"
Received: from fmsmsx104.amr.corp.intel.com ([10.19.9.35])
	by AZSMGA002.ch.intel.com with ESMTP; 13 May 2013 04:48:12 -0700
Received: from fmsmsx152.amr.corp.intel.com ([169.254.6.6]) by
	FMSMSX104.amr.corp.intel.com ([169.254.4.251]) with mapi id
	14.01.0355.002; Mon, 13 May 2013 04:48:11 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Documentation cross-reference links for 1.4 on don't seem to
	be working on my machine
Thread-Index: Ac5Pz72q8WDK/jOoQg+b0yUDjBDO+Q==
Date: Mon, 13 May 2013 11:48:11 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF35DF1@fmsmsx152.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Documentation cross-reference links for 1.4 on don't seem to be working on my machine
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
X-List-Received-Date: Mon, 13 May 2013 11:48:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Just a heads up for the documentation that is published on the web.  I have=
 encountered some strange behavior in which cross-reference links to other =
specific places in a manual other than the one the link is originating from=
 are not working.  Example URLs that will not link to a specific topic in a=
 manual are:

http://www.yoctoproject.org/docs/1.5/ref-manual/ref-manual.html#var-FILESEX=
TRAPATHS
http://www.yoctoproject.org/docs/1.4.1/ref-manual/ref-manual.html#var-FILES=
EXTRAPATHS

and so forth.  I just discovered this oddity and am trying to figure out th=
e issue.  Instead of links like the above taking you to the specific spot i=
n the manual they simply take you to the top of the manual. =20

This behavior doesn't seem to be beyond my machine, which is running Ubuntu=
 12.04 LTS.  I am using Mozilla's firefox for Ubuntu canonical - 1.0 (20.0)=
.  I tried going to the site on my Windows-based machine and all the links =
behave normally for IE, Chrome, and Firefox.  This is probably something to=
 do with my machine but I wanted to give a "heads-up" out there in case som=
ebody else was having problems with the links.

Scott

Scott Rifenbark
Intel Corporation
Yocto Project Documentation
503.712.2702
503.341.0418 (cell)



