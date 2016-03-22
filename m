Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E05D2E006CA; Mon, 21 Mar 2016 18:33:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93332E00443
	for <yocto@yoctoproject.org>; Mon, 21 Mar 2016 18:33:39 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP; 21 Mar 2016 18:33:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,374,1455004800"; d="scan'208";a="70767573"
Received: from ngocthuy-mobl.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.169.222])
	by fmsmga004.fm.intel.com with ESMTP; 21 Mar 2016 18:33:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?utf-8?B?7Jyk7JiB7ISd?= <earwigz@naver.com>
Date: Tue, 22 Mar 2016 14:33:34 +1300
Message-ID: <3451904.AKsDFlQmZa@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.5-300.fc23.x86_64; KDE/4.14.18; x86_64; ;
	)
In-Reply-To: <15af963349a492e32566a8f49141d89@cweb15.nm.nhnsystem.com>
References: <bbaea51dfd2a872c4252d933d6ac97cf@cweb02.nm.nhnsystem.com>
	<15af963349a492e32566a8f49141d89@cweb15.nm.nhnsystem.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: what is your way to flash for target using own image?
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
X-List-Received-Date: Tue, 22 Mar 2016 01:33:42 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Tue, 22 Mar 2016 10:25:35 =EC=9C=A4=EC=98=81=EC=84=9D wrote:
> I have always flash own compiled binary for to check some modificatio=
n.
> this way, it was spending too much time.
>=20
> So, i really want to know the effective way.
> Please help and shares your wisdom.

This is too broad a question to answer in its current form. We would at=
 least=20
need to know:

* What kind of target device are you using?
* What storage medium is being used for the image on the device?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

