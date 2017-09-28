Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88CEBE00D5C; Thu, 28 Sep 2017 15:31:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E82FEE00D4D
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 15:31:03 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Sep 2017 15:31:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,451,1500966000"; d="scan'208";a="154582289"
Received: from akbhawan-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.137.176])
	by orsmga005.jf.intel.com with ESMTP; 28 Sep 2017 15:30:58 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Steve Pavao <stevep@korgrd.com>
Date: Fri, 29 Sep 2017 11:30:54 +1300
Message-ID: <13953290.7vapLMCcyK@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <1A69A446-50D3-4FE2-AC3E-4B26099B9EB5@korgrd.com>
References: <7C20937E-B5A7-4824-89C2-B93B198E3EDB@korgrd.com>
	<CAJ86T=V6sbzpz4_3dYrjhkxkavWJbs1vAU6x95GjRTdVT5cX+w@mail.gmail.com>
	<1A69A446-50D3-4FE2-AC3E-4B26099B9EB5@korgrd.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: advice on recipe for shared lib mDNSResponder
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
X-List-Received-Date: Thu, 28 Sep 2017 22:31:04 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Hi Steve,

On Friday, 29 September 2017 5:29:32 AM NZDT Steve Pavao wrote:
> I was unable to successfully build that recipe here, though.  I=E2=80=99l=
l check
> with the maintainers to ask why.
>=20
> All I did was clone the meta-intel-iot-middleware repo, add that layer to
> bblayers.conf, and add mdns to IMAGE_INSTALL_append to get this far.

=46YI the meta-intel-iot-middleware repository is no longer being actively
maintained, however coincidentally I am currently in the process of updating
and moving the useful pieces elsewhere. mdns wasn't on my list, however I h=
ave
just tried to fix it up, here is what I have so far:

http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-iot-middleware/commit/=
?h=3Dpaule/mdns-upgrade-1&id=3D7389dd6b1d3e69a05b8fa62673ba03b2a91073ff

Unfortunately I hit a linking issue - the dns-sd binary gets linked to the
unversioned libdns_sd.so symlink, which (correctly) is packaged in the -dev
package, but as a result you get a do_package_qa failure (and probably
runtime issues). Moving the .so symlink into the main package wouldn't be
the right thing to do, so the fix should be made elsewhere. I don't have
any more time to poke at it but I'm guessing it's not that hard to fix if
you're familiar with this kind of problem. (The issues we've been dealing w=
ith
here are unfortunately par for the course when building makefile-only
software.)

I'd probably recommend going the avahi route as suggested by Ross in his
reply, but if you absolutely need mDNSResponder then maybe this will get you
some way towards that.

Cheers,
Paul

=2D-=20

Paul Eggleton
Intel Open Source Technology Centre

