Return-Path: <david.c.stewart@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAE12E00498
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2013 18:50:05 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 04 Jan 2013 18:50:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,413,1355126400"; d="scan'208";a="270154539"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by fmsmga001.fm.intel.com with ESMTP; 04 Jan 2013 18:50:05 -0800
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.201]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.132]) with mapi id
	14.01.0355.002; Fri, 4 Jan 2013 18:50:05 -0800
From: "Stewart, David C" <david.c.stewart@intel.com>
To: "Thornburg, Christopher A" <christopher.a.thornburg@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Host authenticity failures
Thread-Index: Ac3pKzQZhYJH+sn0QHOZ3HIEYrrlywBxCeUA
Date: Sat, 5 Jan 2013 02:50:04 +0000
Message-ID: <CD0CD4BB.1C4D8%david.c.stewart@intel.com>
In-Reply-To: <752F65977A748344A01D69BF22DCDBAE25B95894@FMSMSX102.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.3.120616
x-originating-ip: [10.254.118.218]
MIME-Version: 1.0
Subject: Re: Host authenticity failures
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
X-List-Received-Date: Sat, 05 Jan 2013 02:50:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <07EA8FA1B2CA1A45A3EBD1C3FE5DD148@intel.com>
Content-Transfer-Encoding: quoted-printable

Is this still a problem?

From: <Thornburg>, Christopher A <christopher.a.thornburg@intel.com<mailto:=
christopher.a.thornburg@intel.com>>
Date: Wednesday, January 2, 2013 2:48 PM
To: "yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>" <yocto@yoctopro=
ject.org<mailto:yocto@yoctoproject.org>>
Subject: [yocto] Host authenticity failures

I=92ve started getting the following error from bitbake when it=92s trying =
to access my git server:

The authenticity of host '[<githost>]:<port>([<IP>]:<port>)' can't be estab=
lished.
DSA key fingerprint is <blah>

I understand this error means that the server=92s key has probably changed,=
 and I understand in general how to deal with this via SSH config. When I m=
anually ssh=92d to the server the first time after receiving the error, I g=
ot the same message, as expected. I entered =93yes=94 and tried again to ve=
rify that the error went away. It did. I think ran bitbake again and got th=
e same error. I changed my ~/.ssh/ssh_config file to disable StrictHostKeyC=
hecking and still get the error.

Is bitbake somehow using different known_hosts and ssh_config files from th=
e ones I use for interactive logins? Other ideas on how to resolve this?


