Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2A66E009D9; Fri, 22 May 2015 02:22:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05059E00974
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 02:22:07 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 22 May 2015 02:22:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,474,1427785200"; d="scan'208";a="733620856"
Received: from gfois-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.27.18])
	by orsmga002.jf.intel.com with ESMTP; 22 May 2015 02:22:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Spriggs, Jim" <J.Spriggs@raylase.de>
Date: Fri, 22 May 2015 10:22:05 +0100
Message-ID: <2039964.hlcGcaqj34@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/3.19.7-200.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <2238EDC6081C944E97E4EE915AE5CBEC52EBBABA@EXCHANGE-B.raylase.de>
References: <2238EDC6081C944E97E4EE915AE5CBEC52EBBABA@EXCHANGE-B.raylase.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to debug a custom image creation script?
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
X-List-Received-Date: Fri, 22 May 2015 09:22:08 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Jim,

On Friday 22 May 2015 08:47:23 Spriggs, Jim wrote:
> I'd like to have my custom layer generate an sdcard image, so I've
> implemented a classes/image_types_xxxxx.bbclass. This contains, among=
st
> other things, the (bash) function generate_xxxxx_sdcard(). Being a na=
=EFve
> n00b, I assumed that I could just scatter "bbnote"s, "echo"s, or even=
 "set
> -x" around inside the function to my heart's content, and would be ab=
le to
> see the output "somewhere".
> Trouble is, I can't find it anywhere!
>=20
> So what is the best/approved/obvious way to get debug traces out of a=

> bbclass function?
>=20
> If I am already doing the Right Thing, where should I be looking for =
the
> output?

You should see output printed here in log.do_rootfs for the image you a=
re=20
building. In case you're unaware, you can find this in the directory po=
inted to=20
by the T variable for the recipe, the following command will show this =
to you:

bitbake -e your-imagename | grep ^T=3D

As an aside, we do want to change the bbwarn/bbnote/bberror etc. shell=20=

functions to output to the UI just like the python equivalents do, it's=
 a=20
known issue that they do not. There's a bug open for that (assigned to =
me as=20
it happens):

  https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5275

I should really get that one sorted out for the next release.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

