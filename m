Return-Path: <bradleyb@fuzziesquirrel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84A5BE00D82; Tue, 12 Nov 2019 10:12:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,KHOP_HELO_FCRDNS
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.4 KHOP_HELO_FCRDNS Relay HELO differs from its IP's reverse DNS
X-Greylist: delayed 421 seconds by postgrey-1.32 at yocto-www;
	Tue, 12 Nov 2019 10:12:27 PST
Received: from bajor.fuzziesquirrel.com (mail.fuzziesquirrel.com
	[173.167.31.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69865E00D4F
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 10:12:27 -0800 (PST)
X-Virus-Scanned: amavisd-new at fuzziesquirrel.com
Received: from [192.168.253.30] (unknown [192.168.253.30])
	by bajor.fuzziesquirrel.com (Postfix) with ESMTPSA id C53ED6E223;
	Tue, 12 Nov 2019 13:05:24 -0500 (EST)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3601.0.10\))
From: Brad Bishop <bradleyb@fuzziesquirrel.com>
In-Reply-To: <CAGMNF6W8bWD_2Zpynz9vcVdGA9d8B+QfbA=oau2zQj+xpf9NEw@mail.gmail.com>
Date: Tue, 12 Nov 2019 13:05:24 -0500
Message-Id: <CEB2088C-C91F-46ED-9FC1-2480893767E0@fuzziesquirrel.com>
References: <CAGMNF6U81+d9wz4h_TiPBA0EoxC6bhiUZ67mozWWwwT4GTVMCg@mail.gmail.com>
	<9AC7EF7E-3FFF-4855-B9DE-80F3B68236E0@fuzziesquirrel.com>
	<CAGMNF6W8bWD_2Zpynz9vcVdGA9d8B+QfbA=oau2zQj+xpf9NEw@mail.gmail.com>
To: Kun Yi <kunyi@google.com>
X-Mailer: Apple Mail (2.3601.0.10)
Cc: yocto@yoctoproject.org, OpenBMC Maillist <openbmc@lists.ozlabs.org>
Subject: Re: Yocto/bitbake recipe 'diff test'?
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
X-List-Received-Date: Tue, 12 Nov 2019 18:12:28 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable



> On Nov 12, 2019, at 1:55 AM, Kun Yi <kunyi@google.com> wrote:
> =20
> Sure, it's partially due to how we set up the build downstream. Our =
downstream would put all the needed layers in one bblayers file, so we =
would have something like:
>=20
>   ##OEROOT##/meta \
>   ##OEROOT##/meta-poky \
>   ##OEROOT##/meta-openembedded/meta-oe \
>   ##OEROOT##/meta-openembedded/meta-networking \
>   ##OEROOT##/meta-openembedded/meta-python \
>   ##OEROOT##/meta-phosphor \
>   ##OEROOT##/meta-google \
>   ##OEROOT##/meta-google-gbmc \
>   ##OEROOT##/meta-aspeed \
>   ##OEROOT##/meta-nuvoton \
>   ##OEROOT##/meta-openpower \
>   ##OEROOT##/meta-ingrasys \
>   ##OEROOT##/meta-ingrasys/meta-zaius \
>   ##OEROOT##/meta-quanta \
>   ##OEROOT##/meta-quanta/meta-gsj \
> ...
>=20
> The distinct advantage of this approach is that we would be able to =
build images for different machine types using the same layer conf, so =
the build doesn't need to be reconfigured if you were to test on another =
platform.
>=20
> The challenge, as you can imagine, is that each meta layer now cannot =
'leak' any variable. e.g. if some recipe in meta-quanta sets a variable =
for quanta systems only, then it must specify "_quanta" or a similar =
suffix to prevent the variable expansion to apply to other systems. I =
think this rule is generally preferred upstream, but not sure whether it =
is an official guideline.
>=20
> With my proposal, it would be much easier for a multi-system layer =
setup like ours to work. Not only that, it would benefit the most common =
use cases: moving variable definitions in bitbake recipes, or even just =
adding a variable for a particular machine feature. Having a visible =
diff would make reviewing the changes so much easier.

Thanks for the background Kun.

I know yocto has a concept of Q&A checks that can be run - would it make =
sense to try something like this via that mechanism?  Emit warnings =
(which we can elevate to build failures in CI) if variables aren=E2=80=99t=
 properly overriden?  That is nice because it doesn=E2=80=99t require =
any changes to our CI system.

I=E2=80=99ve cross posted to the yocto mailing list in case there is any =
interest or ideas there.  Here is a link to the entire thread as I =
remove a little too much context I think=E2=80=A6

https://lists.ozlabs.org/pipermail/openbmc/2019-November/019409.html

-brad=

