Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3D0BE00E6A; Tue,  6 Mar 2018 11:38:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 356B4E00A61
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 11:38:47 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Mar 2018 11:38:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,432,1515484800"; d="scan'208";a="22274828"
Received: from ngockhan-mobl.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.171.84])
	by fmsmga007.fm.intel.com with ESMTP; 06 Mar 2018 11:38:43 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Vincent Daanen <vincent.daanen@orthotaxy.com>
Date: Wed, 07 Mar 2018 08:38:40 +1300
Message-ID: <1583265.VxfrJxWJLM@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <VI1P192MB0143DF6985039FADA3B4A1048DD90@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
References: <VI1P192MB0143C3B885E5344B5BEB65308DDA0@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
	<CAJTo0Lbg0UcoBeKRTC-xoSQ+StVsnzt4FaZTBOqOB1+1mc7BCg@mail.gmail.com>
	<VI1P192MB0143DF6985039FADA3B4A1048DD90@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: bbappend file not used
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
X-List-Received-Date: Tue, 06 Mar 2018 19:38:48 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Hi Vincent,

On Wednesday, 7 March 2018 4:24:46 AM NZDT Vincent Daanen wrote:
> After having spent some time to find what was wrong, I decided to rewrite
> all the files and =E2=80=A6 the bbappend file is not processed=E2=80=A6
>=20
> May be there was a typo I did not see or some =E2=80=98code=E2=80=99 I co=
pied/pasted from
> internet included utf characters..
>=20
> Anyway, I can continue building my image..

Er, so is the problem fixed or not? The above is a little ambiguous.

=46YI there is a technical FAQ question on this:

  https://wiki.yoctoproject.org/wiki/Technical_FAQ#I.27ve_created_a_bbappen=
d_for_a_recipe_but_what_I.27m_setting_there_isn.27t_having_any_effect.2C_ho=
w_do_I_fix_this.3F

Cheers,
Paul

=2D-=20

Paul Eggleton
Intel Open Source Technology Centre



