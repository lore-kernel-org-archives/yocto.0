Return-Path: <lianhao.lu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8CD9E0136A
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2012 01:05:20 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Feb 2012 01:05:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="109774592"
Received: from pgsmsx102.gar.corp.intel.com ([10.221.44.80])
	by orsmga002.jf.intel.com with ESMTP; 14 Feb 2012 01:05:19 -0800
Received: from pgsmsx602.gar.corp.intel.com (10.221.43.81) by
	PGSMSX102.gar.corp.intel.com (10.221.44.80) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 14 Feb 2012 17:04:53 +0800
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 14 Feb 2012 17:04:37 +0800
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.36]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.142]) with mapi id
	14.01.0355.002; Tue, 14 Feb 2012 17:04:29 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] How to find Log
Thread-Index: AQHM6vTxfnUv2fNykky4F6SPU4fZZpY8Fw/Q
Date: Tue, 14 Feb 2012 09:04:28 +0000
Message-ID: <857BE142E5399E46B20FD45B9DB8A7BC0FCE74AA@SHSMSX102.ccr.corp.intel.com>
References: <CA+FcS-zG0sxF34GjLSsp+505ov2cJASjwWrK+5PB6+Yt4JQ0DA@mail.gmail.com>
In-Reply-To: <CA+FcS-zG0sxF34GjLSsp+505ov2cJASjwWrK+5PB6+Yt4JQ0DA@mail.gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: How to find Log
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
X-List-Received-Date: Tue, 14 Feb 2012 09:05:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

James W. wrote on 2012-02-14:
> How to locate Log file while a error occur.

It's under the directory ${WORKDIR}/temp/. Actually when an error occurs, y=
ou can find the specific log file in the output, something like.

ERROR: Logfile of failure stored in:=20
/intel/poky/builds/toolchain/tmp/work-shared/gcc-4.6.2+svnr181430-r22/temp/=
log.do_patch.15156

Best Regards,
Lianhao



