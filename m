Return-Path: <shane.wang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66FFFE01217
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 03:43:05 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 Feb 2012 03:43:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="106854052"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 06 Feb 2012 03:43:01 -0800
Received: from pgsmsx104.gar.corp.intel.com (10.221.44.91) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 6 Feb 2012 19:42:58 +0800
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	PGSMSX104.gar.corp.intel.com (10.221.44.91) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 6 Feb 2012 19:42:57 +0800
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.36]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.142]) with mapi id
	14.01.0355.002; Mon, 6 Feb 2012 19:42:56 +0800
From: "Wang, Shane" <shane.wang@intel.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>, Joshua Lock
	<josh@linux.intel.com>, "Xu, Dongxiao" <dongxiao.xu@intel.com>
Thread-Topic: [yocto] Hob 1.2 design - visuals
Thread-Index: AQHM5Lo3WDLvCq+gp023M78WkbVSc5YvvtJg
Date: Mon, 6 Feb 2012 11:42:56 +0000
Message-ID: <3AB6CE7F274E534CAFD089D127A8A1FC0FCEDE87@SHSMSX102.ccr.corp.intel.com>
References: <4F2C2837.8040606@linux.intel.com>
	<CB555A2C.72A3%belen.barros.pena@intel.com>
In-Reply-To: <CB555A2C.72A3%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Metthey,
	Mikael" <mikael.metthey@intel.com>
Subject: Re: Hob 1.2 design - visuals
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
X-List-Received-Date: Mon, 06 Feb 2012 11:43:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Barros Pena, Belen wrote on=A02012-02-06:

> Hi all,
>=20
> It looks like there are some design implementation principles laid out on
> the email below. Just to summarise:
>=20
> 1. Implement the Hob design with the toolkit provided widgets and OS them=
e
> and review which things we might want to enhance later. I understand this
> excludes icons: we will use the ones provided by the visual design.
>=20
> 2. Make sure that all action buttons in windows and dialogues follow up
> the spacing GNOME rules set by the Human Interface Guidelines at
> http://developer.gnome.org/hig-book/3.0/index.html.en
>=20
> 3. Inherit colour scheme from applied OS theme in host computer
>=20
Is it to say we use the default colors from OS, and don't specify any color=
?
For example, Jessica wants progress bars to be green but in Ubuntu it shoul=
d be orange.
If so, Belen, I agree with you.

> Shane, Dongxiao: if you have any comments about the above, please let us
> know.
>=20
> Cheers
>=20
> Belen

