Return-Path: <amarnath.valluri@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DB30E00DC4; Thu, 28 Apr 2016 05:28:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB455E00DC1
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 05:27:59 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP; 28 Apr 2016 05:27:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,546,1455004800"; d="scan'208";a="964593766"
Received: from avalluri-gigabyte.fi.intel.com (HELO [10.237.72.170])
	([10.237.72.170])
	by orsmga002.jf.intel.com with ESMTP; 28 Apr 2016 05:27:40 -0700
To: yocto@yoctoproject.org
References: <571DBD45.5070607@intel.com>
	<CAJTo0Laq1SN6GG4kG_vA3L3pMtAx8AOdY9-0B+e=LXN2AjOjMg@mail.gmail.com>
	<571E07C5.9020807@intel.com>
From: Amarnath Valluri <amarnath.valluri@intel.com>
Message-ID: <57220283.5080908@intel.com>
Date: Thu, 28 Apr 2016 15:30:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.7.2
MIME-Version: 1.0
In-Reply-To: <571E07C5.9020807@intel.com>
Subject: Re: Enable a recipe/package only when other dependent recipe/package is part of image.
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
X-List-Received-Date: Thu, 28 Apr 2016 12:28:01 -0000
Content-Type: text/plain; charset="windows-1252"; format="flowed"
Content-Transfer-Encoding: quoted-printable

Hi Ross,
>
>>
>> An alternative would be to have some naming pattern for conf packages =

>> (-conf is reasonable) and invent a new image-feature called =

>> conf-packages that uses a glob to find all complementary packages =

>> matching the *-conf pattern.  This is how dev-pkgs, dbg-pkgs, =

>> doc-pkgs etc work.  I believe this is just a matter of =

>> setting COMPLEMENTARY_GLOB[conf-pkgs] =3D '*-conf' in your configuration.
> I will try this, thanks.
I tried this solution:
   COMPLEMENTARY_GLOB[conf-pkgs] =3D '*-conf'
   IMAGE_FEATURES_append =3D " conf-pkgs"

But this did not work for me. The obvious reason(i guess) is no matching =

packages build for '*-conf', though all configuration recipes provides =

'<base_component>-conf' packages, but the dependency is missing to build =

those packages :(.

My layer provides configuration packages for core components, such as =

'connman', 'openssh', 'dropbear', etc., which needs to/can be configured =

with our configuration framework. I would like to find a way to pick the =

corresponding config packages based on the image configuration, for =

example 'openssh-conf' or 'dropbear-conf' whichever the image is =

configured to use.

Thanks,
Amarnath
---------------------------------------------------------------------
Intel Finland Oy
Registered Address: PL 281, 00181 Helsinki =

Business Identity Code: 0357606 - 4 =

Domiciled in Helsinki =


This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


