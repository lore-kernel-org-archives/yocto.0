Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 294F4E00A1E; Mon,  8 Jun 2015 02:20:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4E50E0097D
	for <yocto@yoctoproject.org>; Mon,  8 Jun 2015 02:20:43 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 08 Jun 2015 02:20:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,573,1427785200"; d="scan'208";a="504684288"
Received: from ewishar1-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.30.184])
	by FMSMGA003.fm.intel.com with ESMTP; 08 Jun 2015 02:20:43 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?Ren=E9?= Fichter <rene@fichter.se>
Date: Mon, 08 Jun 2015 10:20:41 +0100
Message-ID: <3805339.47lL03vnAG@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/4.0.4-202.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <CA+QjDd+LY_42+9UO+zxE_x_bEa5gO9cATRjy_Ztd3t=aNXgMhw@mail.gmail.com>
References: <CA+QjDd+LY_42+9UO+zxE_x_bEa5gO9cATRjy_Ztd3t=aNXgMhw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Error in reference manual - nativesdk.bbclass
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
X-List-Received-Date: Mon, 08 Jun 2015 09:20:49 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Ren=E9,

On Monday 08 June 2015 08:16:16 Ren=E9 Fichter wrote:
> I think I've found some non-updated writings in the reference manual
> regarding the change from postfix "nativesdk" to prefix (see
> section 5.2.2.3).
>=20
> In section 7.78 it says:
> "Create a myrecipe-nativesdk.bb recipe that inherits the nativesdk cl=
ass."

Right, yes, this should be nativesdk-myrecipe.bb.
=20
> And in section 9.2 Errors and Warnings (very minor though):
> "non -dev/-dbg/-nativesdk package contains symlink .so: <packagename>=
 path
> '<path>' [dev-so]"

This one is in the actual warning text, so we will need to fix it in th=
e source=20
as well. We'd be changing it to "non -dev/-dbg/nativesdk- package conta=
ins=20
symlink..."

Scott could you please make these changes in the manual?

Thanks,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

