Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00456E00C68
	for <yocto@yoctoproject.org>; Wed,  2 Apr 2014 22:50:23 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Apr 2014 22:45:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,784,1389772800"; d="scan'208";a="486295967"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by orsmga001.jf.intel.com with ESMTP; 02 Apr 2014 22:50:22 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.44]) by
	ORSMSX107.amr.corp.intel.com ([169.254.1.189]) with mapi id
	14.03.0123.003; Wed, 2 Apr 2014 22:50:23 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: =?koi8-r?B?88XSx8XKIOvSydfPzs/T?= <sergeikrivonos@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Eclipse+Webos
Thread-Index: AQHPTcoCQ4nGyk2X7UyEmUGavwz+IZr/Y/Iw
Date: Thu, 3 Apr 2014 05:50:21 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C805A5A77@ORSMSX103.amr.corp.intel.com>
References: <CAGz9X0eeJkRDOXN1+TFxT-TpwvS=xn+a5b9-GAgjNtKNDaQo2w@mail.gmail.com>
In-Reply-To: <CAGz9X0eeJkRDOXN1+TFxT-TpwvS=xn+a5b9-GAgjNtKNDaQo2w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: Eclipse+Webos
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
X-List-Received-Date: Thu, 03 Apr 2014 05:50:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

Hi Sergei,

Are you talking about importing webos meta data?  You can try to do a local=
 clone of the webos, then in Eclipse create a bitbake commander project.  F=
or the project locations, enter the directory that contains the webos meta =
data directory, for the project name, enter your webos meta-data folder nam=
e.  To use yocto meta-data as an example, I've cloned it under /home/jzhang=
/poky, so my project location I enter /home/jzhang, and project name I ente=
r poky.

Cheers,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of =F3=C5=D2=C7=C5=CA =EB=D2=C9=D7=CF=CE=CF=D3
Sent: Tuesday, April 01, 2014 9:37 AM
To: yocto@yoctoproject.org
Subject: [yocto] Eclipse+Webos

Hi,

How to import OpenWebos project using Yoctos Eclipse plugin?

Thanks,
Sergei Krivonos
skype: sergio_krivonos
--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

