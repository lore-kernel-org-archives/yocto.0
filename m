Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DCC3E00D5C; Thu, 28 Sep 2017 18:14:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25406E00D4D
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 18:14:20 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Sep 2017 18:14:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,451,1500966000"; d="scan'208";a="317500168"
Received: from akbhawan-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.137.176])
	by fmsmga004.fm.intel.com with ESMTP; 28 Sep 2017 18:14:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andre McCurdy <armccurdy@gmail.com>, Steve Pavao <stevep@korgrd.com>
Date: Fri, 29 Sep 2017 14:14:12 +1300
Message-ID: <9134137.eVDeBQYPmQ@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAJ86T=UU_xDTNwSqR2EhLDT4zHgY8hVhMjfj=1D_+dYRkD57kg@mail.gmail.com>
References: <7C20937E-B5A7-4824-89C2-B93B198E3EDB@korgrd.com>
	<CAJ86T=W262WSB0Mx+ban2OkXk6_reL3j+j7wHH1Kk_dnkcPcTg@mail.gmail.com>
	<CAJ86T=UU_xDTNwSqR2EhLDT4zHgY8hVhMjfj=1D_+dYRkD57kg@mail.gmail.com>
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 29 Sep 2017 01:14:22 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On Friday, 29 September 2017 1:44:13 PM NZDT Andre McCurdy wrote:
> On Thu, Sep 28, 2017 at 5:11 PM, Andre McCurdy <armccurdy@gmail.com> wrot=
e:
> > On Thu, Sep 28, 2017 at 3:30 PM, Paul Eggleton
> > <paul.eggleton@linux.intel.com> wrote:
> >> Hi Steve,
> >>
> >> On Friday, 29 September 2017 5:29:32 AM NZDT Steve Pavao wrote:
> >>> I was unable to successfully build that recipe here, though.  I=E2=80=
=99ll check
> >>> with the maintainers to ask why.
> >>>
> >>> All I did was clone the meta-intel-iot-middleware repo, add that laye=
r to
> >>> bblayers.conf, and add mdns to IMAGE_INSTALL_append to get this far.
> >>
> >> FYI the meta-intel-iot-middleware repository is no longer being active=
ly
> >> maintained, however coincidentally I am currently in the process of up=
dating
> >> and moving the useful pieces elsewhere. mdns wasn't on my list, howeve=
r I have
> >> just tried to fix it up, here is what I have so far:
> >>
> >> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-iot-middleware/co=
mmit/?h=3Dpaule/mdns-upgrade-1&id=3D7389dd6b1d3e69a05b8fa62673ba03b2a91073ff
> >>
> >> Unfortunately I hit a linking issue - the dns-sd binary gets linked to=
 the
> >> unversioned libdns_sd.so symlink,
> >
> > If the lib isn't versioned, what does the symlink point to?
>=20
> OK, so the lib is versioned (ie there is a libdns_sd.so.1 which the
> symlink points to) but the problem is that libdns_sd.so.1 doesn't set
> a soname. Fix would be to add:
>=20
>   -Wl,-soname,libdns_sd.so.1

That did the trick. I'm ashamed to say that despite years of working on
recipes I had yet to delve into this particular area, so thanks for filling=
 in
a gap in my knowledge.

I've pushed a new commit:

  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-iot-middleware/commi=
t/?h=3Dpaule/mdns-upgrade-1&id=3Dfab9ceda3d748e66d0273b08a4e6f7fa427763ea

Cheers,
Paul

=2D-=20

Paul Eggleton
Intel Open Source Technology Centre

