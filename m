Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04641E00815; Wed, 28 Jan 2015 01:25:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97FAAE00753
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 01:25:09 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 28 Jan 2015 01:18:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="446282277"
Received: from jkaplinx-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.3.113])
	by FMSMGA003.fm.intel.com with ESMTP; 28 Jan 2015 01:11:22 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: James Abernathy <jfabernathy@outlook.com>
Date: Wed, 28 Jan 2015 09:25:07 +0000
Message-ID: <1422441531.Lu0tPXzC8A@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <BLU436-SMTP194E8A8B18DB6A3ADDA00AFAE320@phx.gbl>
References: <BLU436-SMTP194E8A8B18DB6A3ADDA00AFAE320@phx.gbl>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: adding meta-oracle-java
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
X-List-Received-Date: Wed, 28 Jan 2015 09:25:12 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Jim,

On Tuesday 27 January 2015 15:24:09 James Abernathy wrote:
> In looking at the meta-oracle-java README, I see the notes about addi=
ng the
> License statement and switching to .deb packaging.  With that done, I=
 get a
> clean build, but my image boots and I can=E2=80=99t see any evidence =
that java was
> included.
>=20
> What am I missing.
>=20
> I have a web app server that in all inclusive and can be setup just b=
y
> running =E2=80=9Cjava -jar xxxx.jar=E2=80=9D.  But can=E2=80=99t run =
it without java installed.

I assume you've just added the layer to your bblayers.conf - if so you'=
ve=20
missed the next step of actually adding additional packages produced by=
=20
recipes in the layer to your image. I haven't tried it but I assume the=
=20
package to add would be "oracle-jse-jre".

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

