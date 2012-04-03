Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83CA5E0044A
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 10:08:10 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Apr 2012 10:08:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="124932298"
Received: from unknown (HELO envy.home) ([10.255.12.143])
	by orsmga001.jf.intel.com with ESMTP; 03 Apr 2012 10:08:05 -0700
Message-ID: <4F7B2E4C.5030408@linux.intel.com>
Date: Tue, 03 Apr 2012 10:07:24 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Tom Rini <tom.rini@gmail.com>
References: <1EF3F9CE-3074-4925-8C57-B6382C0DAD83@dominion.thruhere.net>
	<4F764FB7.2080508@linux.intel.com>
	<95AC7E09-D28F-46CE-A49B-30719BB50B1B@dominion.thruhere.net>
	<4F765C0D.4000902@linux.intel.com>
	<8986DA27-376D-447E-A9CF-5BEF1B309961@dominion.thruhere.net>
	<4F766B84.9080505@linux.intel.com>
	<20120402171356.GE4829@bill-the-cat>
	<4F7B1EBD.1030500@linux.intel.com>
	<20120403162541.GB3943@jama.jama.net>
	<4F7B261B.1090101@linux.intel.com>
	<20120403164043.GE4816@bill-the-cat>
In-Reply-To: <20120403164043.GE4816@bill-the-cat>
X-Enigmail-Version: 1.4
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Tue, 03 Apr 2012 17:08:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1



On 04/03/2012 09:40 AM, Tom Rini wrote:
> On Tue, Apr 03, 2012 at 09:32:27AM -0700, Darren Hart wrote:
>> -----BEGIN PGP SIGNED MESSAGE----- Hash: SHA1
>> 
>> On 04/03/2012 09:25 AM, Martin Jansa wrote:
>>> On Tue, Apr 03, 2012 at 09:01:01AM -0700, Darren Hart wrote:
>>>> -----BEGIN PGP SIGNED MESSAGE----- Clear reproducible
>>>> testing results. Whether or not a pair of git clones and some
>>>> tinkering can result in the same thing as a poky repository
>>>> or not isn't relevant in my opinion. I believe that we need a
>>>> consistent mode of validating support for a Yocto Project X.Y
>>>> release. Now if that is accomplished by building with the
>>>> poky repository of the same vintage or by running some script
>>>> that pulls the right bits together independently.... I
>>>> honestly don't care, but I do think it should be consistent.
>>> 
>>> so teach setup script something like: poky.sh checkout X.Y
>>> (which checkouts whatever parts are needed for X.Y) poky.sh
>>> update X.Y (dtto)
>>> 
>>> Which creates the same structure like poky repository has, but
>>> by checkouting upstream repositories or using submodules or
>>> whatever.
>>> 
>>> That's what oebb.sh and SHR makefile does for master/shr HEADs,
>>> but can be extended do it for particular version too.
>> 
>> 
>> This is certainly doable, but it doesn't address the
>> stabilization buffer poky provides that I mentioned.
> 
> While I want to reply to your whole email, I want to ask now, is
> there really a stabilization buffer being provided?  I could see
> that being the case if we were talking about depending on something
> independent of this effort (gcc, eglibc, make) but we're talking
> about oe-core and bitbake.  The folks in charge of poky the repo
> are in charge of oe-core and bitbake.  There might be an
> unintentional lag between when Richard can push changes to poky the
> repo, but I don't think it's great (and hey, freeing up Richard's
> time for other stuff is probably a good thing :)).
> 

I believe there is. It's a small temporal buffer though. I'd be
interested in RP's thoughts here.

- -- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iQEcBAEBAgAGBQJPey5MAAoJEKbMaAwKp364g7oH/RJxQqfOJpCdIz4qaC81hQWt
u0SUBpqS4FEUMT5JCgxRztaKsq8+irFTYUODvEDzVTDY8hJJ7rd+QKKnYlgSFT1o
vB9qerea1fQZMEAw0J1CmXRCD9tuBN7nMec6Z36KIcJXp0KrAZrSMzgF20byeGTf
YjusfkiNOIdVt3q1AtESlQbbAzmiFlvlGxSn4v8hLtXzL36XGyQ//1Lg1mr1ZXvm
rqEgN3bA4CdI/tgg6AMjOAI0KnXKj2tWn7o4Gule9pcRycg18XdE+iGZGmSxDdGM
+4gE54rwQlrM/2cMM3n0qhzqAyB4o8vnsvPBQyt+DXCy6ErAaqnP25Y31rW7EvY=
=MpXf
-----END PGP SIGNATURE-----

