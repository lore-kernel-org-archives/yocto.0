Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
 by mx.groups.io with SMTP id smtpd.web11.4835.1590582741447011244
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 May 2020 05:32:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ti.com header.s=ti-com-17q1 header.b=teyOefTs;
 spf=pass (domain: ti.com, ip: 198.47.23.249, mailfrom: wmills@ti.com)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04RCVs8N007692;
	Wed, 27 May 2020 07:31:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1590582714;
	bh=gTUomElLPxKxbrJwZ4969mtkDIVMY0Z8xB00diy1JHU=;
	h=From:To:CC:Subject:Date:References:In-Reply-To;
	b=teyOefTspGhmgG+c1l7fI47cps87j0JVMTmKbGgHXq/XEzD3y53YsavhJkz06pDPZ
	 d9o7pSS5S7rlxH874IlI6RdAwt7xGSwLry6XBzmz/JBZAocnpJ7r70372MkEJkaGJI
	 3zuUy6JB+HW50c2m/89+1mf5hY7V7D2L3M8KcL1U=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04RCVsE6008733
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 27 May 2020 07:31:54 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 27
 May 2020 07:31:53 -0500
Received: from DFLE109.ent.ti.com ([fe80::e4e5:c81b:7525:c9b2]) by
 DFLE109.ent.ti.com ([fe80::e4e5:c81b:7525:c9b2%17]) with mapi id
 15.01.1979.003; Wed, 27 May 2020 07:31:53 -0500
From: "William Mills" <wmills@ti.com>
To: "pokybuild@ubuntu1804-ty-1.yocto.io" <pokybuild@ubuntu1804-ty-1.yocto.io>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
        "yi.zhao@windriver.com" <yi.zhao@windriver.com>,
        "apoorv.sangal@intel.com"
	<apoorv.sangal@intel.com>,
        "ee.peng.yeoh@intel.com" <ee.peng.yeoh@intel.com>,
        "aaron.chun.yew.chan@intel.com" <aaron.chun.yew.chan@intel.com>,
        "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
        "akuster808@gmail.com" <akuster808@gmail.com>,
        "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>,
        "sangeeta.jain@intel.com"
	<sangeeta.jain@intel.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-2.7.4.rc2)
Thread-Topic: [yocto] QA notification for completed autobuilder build
 (yocto-2.7.4.rc2)
Thread-Index: AQHWNB+oBaImsY6QsUqkvMMULRecEai729Ig
Date: Wed, 27 May 2020 12:31:53 +0000
Message-ID: <615783cf129245af8973e3376b06f3bc@ti.com>
References: <20200527120917.D994DE01C24@yocto-www.yoctoproject.org>
In-Reply-To: <20200527120917.D994DE01C24@yocto-www.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.250.77.122]
x-exclaimer-md-config: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

In a script, how would I download all the files in this dir:

https://autobuilder.yocto.io/pub/releases/yocto-2.7.4.rc2/machines/beaglebo=
ne-yocto/

I see no global md5sum (or sha256sum etc) file in the tree anywhere.

The names are cut off in the default html list format so screen scrapping w=
on't work.  Is there an automated way to request a better format?  WebDav? =
Am I missing something obvious?

Thanks,
Bill

-----Original Message-----
From: yocto@lists.yoctoproject.org [mailto:yocto@lists.yoctoproject.org] On=
 Behalf Of pokybuild@ubuntu1804-ty-1.yocto.io
Sent: Wednesday, May 27, 2020 8:09 AM
To: yocto@lists.yoctoproject.org
Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; apoorv.sangal@intel.com=
; ee.peng.yeoh@intel.com; aaron.chun.yew.chan@intel.com; richard.purdie@lin=
uxfoundation.org; akuster808@gmail.com; sjolley.yp.pm@gmail.com; sangeeta.j=
ain@intel.com
Subject: [yocto] QA notification for completed autobuilder build (yocto-2.7=
.4.rc2)


A build flagged for QA (yocto-2.7.4.rc2) was completed on the autobuilder a=
nd is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-2.7.4.rc2


Build hash information:=20

bitbake: 7f7126211170439ac1d7d72e980786ce0edb7bb7
meta-gplv2: d5d9fc9a4bbd365d6cd6fe4d6a8558f7115c17da
meta-intel: 29ee4852a05931dcf856670d9d8a3c3077a40fe8
meta-mingw: 10695afe8cd406844e0d0dd868c11677e07557d4
oecore: db3ce703d03b18e8a4120969d32ff7f344f34fe9
poky: f65b24e9ca0918a4ede70ea48ed8b7cc4620f07f



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


=20
