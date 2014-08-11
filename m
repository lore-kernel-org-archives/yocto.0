Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21CF3E00576; Mon, 11 Aug 2014 02:40:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CACD8E004D1
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 02:40:27 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Aug 2014 02:40:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,840,1400050800"; d="scan'208";a="583097307"
Received: from glucy-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.202])
	by fmsmga002.fm.intel.com with ESMTP; 11 Aug 2014 02:40:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Joseph Andrew de la =?ISO-8859-1?Q?Pe=F1a?= <jdelapena@lexmark.com>
Date: Mon, 11 Aug 2014 10:39:59 +0100
Message-ID: <1832456.ZmMOoJekSa@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.8-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <CAJrRHk4aQdjQAPm5+cKE3m4XH0kxbcRfAk5Ge+xQ5pzbxkKHFQ@mail.gmail.com>
References: <CAJrRHk6A_S98KrnddvaacU7WmhAuuv2gkxwfduAvQTJftuWNgg@mail.gmail.com>
	<CAJTo0Lap-VyZ0Z=+mqc1hj=6mjhasSLYmzY3bwn3QgRBLXuOZg@mail.gmail.com>
	<CAJrRHk4aQdjQAPm5+cKE3m4XH0kxbcRfAk5Ge+xQ5pzbxkKHFQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: SDK not contianing archive libraries
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
X-List-Received-Date: Mon, 11 Aug 2014 09:40:34 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Joseph,

On Monday 11 August 2014 13:49:52 Joseph Andrew de la Pe=F1a wrote:
> Still can't find the solution to include archive libraries into SDK. =
I have
> already checked staticdev and my unit is already using it. The archiv=
e libs
> are installed successfully in the image's sysroot but apparently not =
in
> sdk. Hope you could shed some light here.

Have you tried SDKIMAGE_FEATURES =3D "dev-pkgs staticdev-pkgs dbg-pkgs"=
 ?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

