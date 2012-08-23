Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17420E002AB
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 14:53:49 -0700 (PDT)
Received: from mail-ob0-f180.google.com ([209.85.214.180])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 23 Aug 2012 14:53:46 -0700
Received: by obceq6 with SMTP id eq6so2542501obc.25
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 14:53:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=JI93I6fNFuH3CcmWEFSJPjvAahJ01dXd4UGArjyLCRQ=;
	b=fn903RAeMqJnDvMcSuEXd3wBVk+Qh2b8Oxh7IOqFxgOXFlrWtboVzNmCXP3LbO0Q5Q
	9cUSVu3HQmuTI25VRaLQFOl1JEtpT2a18771exo1j2U/6qDei9f/ZuSAol9KY8AraVvz
	36dDdmGJd5m3eXEpTnLGFD3n/D7YVv2xYzHNbV4Nx74+ccRrpJ2H5hWf0SO88l5PAwHK
	cpAdKhJQ8WUm8edM/ZvcgVoWBOhCDb3YE05dzbGbVLqPSL1NDZ+fPgRgtab69FgmL0ZQ
	skWth6OF9yO9sVmQyAP46fMAK2lIdwFOs/cFBkft4OwN3K47GceN2wwvWaRhZqMe9E3Z
	cIrg==
Received: by 10.182.124.102 with SMTP id mh6mr2303753obb.48.1345758825857;
	Thu, 23 Aug 2012 14:53:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.158.3 with HTTP; Thu, 23 Aug 2012 14:53:24 -0700 (PDT)
In-Reply-To: <1345731602-47313-1-git-send-email-bjst@enea.com>
References: <1345731602-47313-1-git-send-email-bjst@enea.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 23 Aug 2012 22:53:24 +0100
Message-ID: <CAJTo0La3t2wyiSYWJ=CXskYuL93LkW7wbMYH7-f5Ufei=qD2Dg@mail.gmail.com>
To: =?UTF-8?Q?Bj=C3=B6rn_Stenberg?= <bjst@enea.com>
X-Gm-Message-State: ALoCoQnKbBAI6Rln65Dvp04vB4B0F68EcBJzNepr9IpKjndFHs5YjV6DNK0w1rSM/3u9V0aXEdXE
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/3] RFC: Package testing
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 23 Aug 2012 21:53:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 23 August 2012 15:19, Bj=C3=B6rn Stenberg <bjst@enea.com> wrote:
> And it sometimes
> requires patching and/or translation of the test output to produce a
> generic output format that can be automatically parsed. I have included
> an example patch for bash that does just that.

What is this generic output format?  From your patch to bash I suspect
it's at least inspired by the automake "make check" output.

FWIW, this is what "make check" on librest (the first package I had to
hand) gives:

...
make  check-TESTS
make[2]: Entering directory `/home/ross/Programming/cvs/librest/tests'
PASS: proxy
PASS: proxy-continuous
PASS: threaded
PASS: oauth
PASS: oauth-async
PASS: oauth2
PASS: flickr
PASS: lastfm

** (process:1267): ERROR **: Generated output for parsed XML does not match=
:
in:  <node0 a00=3D'v00' a01=3D'v01'><node1 a10=3D'v10'></node1><node1
a10=3D'v10'></node1>Cont0</node0>
out: <node0 a01=3D'v01' a00=3D'v00'><node1 a10=3D'v10'></node1><node1
a10=3D'v10'></node1>Cont0</node0>

/bin/sh: line 5:  1267 Trace/breakpoint trap   (core dumped) ${dir}$tst
XFAIL: xml
PASS: custom-serialize
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
All 10 tests behaved as expected (1 expected failure)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
make[2]: Leaving directory `/home/ross/Programming/cvs/librest/tests'
...

Would this test suite just work if packaged as ptests?

Ross

