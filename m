Return-Path: <raphael.kubo.da.costa@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C12DE00CCB; Thu,  7 Sep 2017 07:28:18 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D077E00CC8
	for <yocto@yoctoproject.org>; Thu,  7 Sep 2017 07:28:17 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Sep 2017 07:28:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,358,1500966000"; d="scan'208";a="898045525"
Received: from cohagan-mobl.ger.corp.intel.com (HELO
	rkubodac-desk.ger.corp.intel.com) ([10.252.24.224])
	by FMSMGA003.fm.intel.com with ESMTP; 07 Sep 2017 07:28:15 -0700
From: Raphael Kubo da Costa <raphael.kubo.da.costa@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
In-Reply-To: <1504302275.2175.68.camel@linuxfoundation.org> (Richard Purdie's
	message of "Fri, 1 Sep 2017 22:44:35 +0100")
Organization: Intel International BV - KvK 34098535 - Capronilaan 37 1119NG
	Amsterdam
References: <871snzdd5s.fsf@rkubodac-desk.ger.corp.intel.com>
	<1503993808.32591.312.camel@linuxfoundation.org>
	<80c1ed48-344a-41e6-f8e8-274b88a08711@mvista.com>
	<1504302275.2175.68.camel@linuxfoundation.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.2 (gnu/linux)
Date: Thu, 07 Sep 2017 16:28:14 +0200
Message-ID: <877exalh1d.fsf@rkubodac-desk.ger.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Pyro's uninative and libstdc++ symbols
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
X-List-Received-Date: Thu, 07 Sep 2017 14:28:18 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Richard Purdie <richard.purdie@linuxfoundation.org> writes:

> On Fri, 2017-09-01 at 12:14 -0700, akuster wrote:
>> On 08/29/2017 01:03 AM, Richard Purdie wrote:
>> >
>> > On Fri, 2017-08-25 at 14:50 +0200, Raphael Kubo da Costa wrote:
>> > >
>> > > I've recently updated my host system to Fedora 26, which has GCC
>> > > 7.
>> > >
>> > > This seems to be causing some issues on Pyro, where I have a
>> > > -native
>> > > recipe that is built with my system's g++ and ends up generating
>> > > a
>> > > binary with the following symbol:
>> > >
>> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A00000000000000000=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0DF
>> > > *UND*=C2=A0=C2=A00000000000000000=C2=A0=C2=A0GLIBCXX_3.4.23
>> > > std::basic_string<char, std::char_traits<char>,
>> > > std::allocator<char>
>> > > >
>> > > > ::basic_string(std::string const&, unsigned long,
>> > > std::allocator<char> const&)
>> > >
>> > > GLIBCXX_3.4.23 is not part of Pyro's uninative's libstdc++, so
>> > > when
>> > > that
>> > > binary is invoked in another (non-native) recipe as part of
>> > > do_configure
>> > > it fails to run:
>> > >
>> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0gn: /data/src/yocto/poky/build/tmp/sys=
roots-
>> > > uninative/x86_64-
>> > > linux/usr/lib/libstdc++.so.6: version `GLIBCXX_3.4.23' not found
>> > > (required by gn)
>> > >
>> > > Is there anything I should be doing differently here?
>> > We need to update the uninative version in pyro to the more recent
>> is this action just a straight forward backport from Master?
>
> Yes, should be...

For the record, I think Richard fixed this with pyro commit
98dcaa9d2c95328eedd6d3608f41c808509348b4 ("uninative: Update to 1.7
uninative release"). I can confirm I can continue using all the
uninative bits on Fedora 26 now. Thanks!

