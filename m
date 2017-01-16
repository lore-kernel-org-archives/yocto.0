Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC5A9E00805; Sun, 15 Jan 2017 18:11:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B801EE0078F
	for <yocto@yoctoproject.org>; Sun, 15 Jan 2017 18:11:37 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Jan 2017 18:11:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,236,1477983600"; d="scan'208";a="1083398407"
Received: from bjha-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.130.145])
	by orsmga001.jf.intel.com with ESMTP; 15 Jan 2017 18:11:34 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: richard_allen@keysight.com
Date: Mon, 16 Jan 2017 15:11:32 +1300
Message-ID: <6940853.Pc74LDAqG5@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.13-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <BC774F321B0EF24DBF41FE7457B2B7862D17E58A@wcosexch01k.cos.is.keysight.com>
References: <BC774F321B0EF24DBF41FE7457B2B7862D17D5A2@wcosexch01k.cos.is.keysight.com>
	<CAJTo0LZj8OC-pUtvVGfXJLpHg3Ph5N5Lia25yMY4zsdgrZojQg@mail.gmail.com>
	<BC774F321B0EF24DBF41FE7457B2B7862D17E58A@wcosexch01k.cos.is.keysight.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: morty populate_sdk_ext fails for recipes inherit bin_package
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
X-List-Received-Date: Mon, 16 Jan 2017 02:11:44 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Richard,

On Tue, 10 Jan 2017 01:17:39 richard_allen@keysight.com wrote:
> Ross Burton wrote
> > _append doesn't insert whitespace, so you need to do it.  Use
> > TOOLCHAIN_TARGET_TASK_append =3D  " hals hals-doc" in your image re=
cipe
> > instead of changing it globally.
>
> Thanks Ross, my TOOLCHAIN_TARGET_TASK_append =3D  " hals hals-doc" do=
es have
> the =E2=80=98space=E2=80=99, so that is not the issue.
> ( when I forgot it, got errors which had the =E2=80=98hal=E2=80=99 on=
 the previous package,
> i.e gtesthal =E2=80=9C, so it was apparent about the missing space.=20=

> no real idea how to =E2=80=98debug=E2=80=99 the populate_sdk_ext   ( =
especially since the
> same recipes work/build fine with Krogoth, just morty is having issue=
s)

The second part of Ross's reply suggested setting TOOLCHAIN_TARGET_TASK=
 in the=20
image recipe as opposed to globally, which is what I alluded to in my e=
arlier=20
reply. If you do that, this error should go away.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

