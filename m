Return-Path: <song.liu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8517CE0071A
	for <yocto@yoctoproject.org>; Mon, 15 Aug 2011 09:12:11 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 15 Aug 2011 09:12:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,375,1309762800"; d="scan'208";a="38615524"
Received: from azsmsx603.amr.corp.intel.com ([10.2.161.23])
	by azsmga001.ch.intel.com with ESMTP; 15 Aug 2011 09:12:21 -0700
Received: from fmsmsx105.amr.corp.intel.com (10.19.9.36) by
	azsmsx603.amr.corp.intel.com (10.2.161.23) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 15 Aug 2011 09:11:06 -0700
Received: from fmsmsx151.amr.corp.intel.com ([169.254.6.155]) by
	FMSMSX105.amr.corp.intel.com ([169.254.5.97]) with mapi id
	14.01.0323.003; Mon, 15 Aug 2011 09:11:04 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 1.1 M3 go/no-go meeting
Thread-Index: AcxWuR9xOVlI1IqMRv+iAJNVCKgJ+gEqp2BQ
Date: Mon, 15 Aug 2011 16:11:03 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A16EB8E5A@FMSMSX151.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A137693BC@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A137693BC@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: Yocto 1.1 M3 go/no-go meeting
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
X-List-Received-Date: Mon, 15 Aug 2011 16:12:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,=20

We have completed full pass QA testing for M3 RC3 build. There is no blocki=
ng issues. The bug trend is going to the right direction, and WDD is down. =
We know there are some problems in HOB and multi-lib but we have fixes in m=
aster already. At this point, the team feels that there is no need to do an=
other spin for M3 since master builds are coming for Alpha program. So the =
decision has been made to:

1. Go ahead with M3 release today, addressing issues in the release note.
2. Prepare to use the first successful build off master for Yocto 1.1 Alpha=
 program. And we will announce that to the community.

Thanks!
Song


