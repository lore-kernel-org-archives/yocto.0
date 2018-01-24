Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5044E00D75; Tue, 23 Jan 2018 17:16:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5785E006D3
	for <yocto@yoctoproject.org>; Tue, 23 Jan 2018 17:16:38 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Jan 2018 17:16:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,404,1511856000"; d="scan'208";a="24920361"
Received: from ttorling-mac01.jf.intel.com ([10.24.14.190])
	by fmsmga001.fm.intel.com with ESMTP; 23 Jan 2018 17:16:38 -0800
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Tim Orling <timothy.t.orling@linux.intel.com>
In-Reply-To: <CAM0bAiVaoaTHmF7C6hVKF=TneeQQwxmZf7UvPBJFBr+r8_xpaw@mail.gmail.com>
Date: Tue, 23 Jan 2018 17:16:37 -0800
Message-Id: <65727F92-DE39-444C-BF00-09852F6FE847@linux.intel.com>
References: <CAM0bAiUQ05Z0R=MN-nLCFjCE5eu29bs6rTORJSKeia9Vj19wTw@mail.gmail.com>
	<CAM0bAiVaoaTHmF7C6hVKF=TneeQQwxmZf7UvPBJFBr+r8_xpaw@mail.gmail.com>
To: philippe gislard <philippe.gislard@gmail.com>
X-Mailer: Apple Mail (2.3273)
Cc: yocto@yoctoproject.org
Subject: Re: [Eclipse Yocto Plugin] Standalone pre-built toolchain
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
X-List-Received-Date: Wed, 24 Jan 2018 01:16:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Jan 23, 2018, at 10:31 AM, philippe gislard =
<philippe.gislard@gmail.com> wrote:
>=20
> 2018-01-19 20:54 GMT+01:00 philippe gislard =
<philippe.gislard@gmail.com>:
>> Hello,
>>=20
>> I tried to follow this wiki:
>> =
https://wiki.yoctoproject.org/wiki/TipsAndTricks/RunningEclipseAgainstBuil=
tImage
>> But with Eclipse Oxygen and the corresponding Yocto plugin.
>>=20
>> The Plugin won't let me save the Standalone pre-built toolchain.
>> Clicking on "save as ..." or "Rename" has no effect when the radio
>> button is set to "Standalone pre-built toolchain"
>> When I close and reopen the seting window, my settings are lost.
>> Clicking on "save as ..." or "Rename" works well when the radio =
button
>> is set to "Build system derived toolchain" and my settings are saved.
>>=20
>> Am I missing something ?
>>=20
>> Also, when I try to setup the "Standalone pre-built toolchain" it
>> seems I have to rename the sysroot/host_folder in the sdk =
installation
>> directory.
>> By default it is named with: ${SDK_ARCH}${SDK_VENDOR}-${SDK_OS}
>> It seems that if SDK_VENDOR contains the word "sdk" the plugin won't
>> accept the directory (ex: "i686-mysdk-linux").
>> It displays a "Toolchain and host arch mismatch." error.
>>=20
>> Should I downgrade to a previous eclipse version ? Neon, Mars ?
>>=20
>> --
>> Philippe GISLARD
>=20
> I'm ashamed... My SDKMACHINE was not set properly.
>=20
> Sorry for the bother.
>=20

Glad you figured it out. Thank you for letting us know.

By the way, we have just created a new mailing list specifically for =
eclipse-poky:

https://lists.yoctoproject.org/listinfo/eclipse-poky

The development team will be using this list for development =
discussions, but users are also welcome to make inquiries and =
participate in the discussion on the list.

> --=20
> Philippe GISLARD
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


