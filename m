Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 700EDE00B66; Mon, 12 Oct 2015 07:01:33 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 320EFE00814
	for <yocto@yoctoproject.org>; Mon, 12 Oct 2015 07:01:28 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 Oct 2015 07:01:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,673,1437462000"; d="scan'208";a="790490017"
Received: from irsmsx152.ger.corp.intel.com ([163.33.192.66])
	by orsmga001.jf.intel.com with ESMTP; 12 Oct 2015 07:01:10 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.151]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.38]) with mapi id
	14.03.0248.002; Mon, 12 Oct 2015 15:01:09 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Allen Curtis <allen.curtis@curtisembedded.com>, yocto
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] packagegroup not appearing in HOB
Thread-Index: AQHRBPZxajzRWPP480e3zHNURntE0Q==
Date: Mon, 12 Oct 2015 14:01:09 +0000
Message-ID: <D24179D4.677F2%belen.barros.pena@intel.com>
References: <591A7BB6-5C46-4D67-B8BC-9F6E57442A40@curtisembedded.com>
In-Reply-To: <591A7BB6-5C46-4D67-B8BC-9F6E57442A40@curtisembedded.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.5.6.150930
x-originating-ip: [10.237.224.32]
MIME-Version: 1.0
Subject: Re: packagegroup not appearing in HOB
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
X-List-Received-Date: Mon, 12 Oct 2015 14:01:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <E973A3C0E46CB14C86C9BC84495ABF62@intel.com>
Content-Transfer-Encoding: quoted-printable



On 07/10/2015 18:36, "yocto-bounces@yoctoproject.org on behalf of Allen
Curtis" <yocto-bounces@yoctoproject.org on behalf of
allen.curtis@curtisembedded.com> wrote:

>Hello,
>
>I created a packagegroup file as per the instructions called
>packagegroup-foo.bb
>
>Within that file I define 2 package groups as such.
>
>PACKAGES =3D "\
> packagegroup-foo-apps \
> packagegroup-foo-tools \
>"
>
>RDEPENDS_packagegroup-foo-apps =3D "=8A"
>
>RDEPENDS_packagegroup-foo-tools =3D "=8A"
>
>However, when I run HOB and inspect the list of packages it shows
>packagegroup-foo but it does not list packagegroup-foo-apps or
>packagegroup-foo-tools.
>
>Is this correct?
>
>How do I verify the groups are created correctly so I can complete
>implementation using the new group definitions?

Hi Allen,

Hob development has been on hold for quite a while, so I am not sure how
reliable the list of packages currently is.

If you would like to know if your package group is set up correctly, and
you want to do it with a graphical tool, you can use Toaster, which is the
replacement for Hob. There is a manual here

www.yoctoproject.org/docs/1.8/toaster-manual/toaster-manual.html

And a quick video tutorial here

https://www.youtube.com/watch?v=3Df3gDg75FwFo

Assuming you are building with 1.8 fido, you can set up Toaster
dependencies as explained here

http://www.yoctoproject.org/docs/1.8/toaster-manual/toaster-manual.html#toa
ster-manual-start

And then run Toaster locally as explained here

http://www.yoctoproject.org/docs/1.8/toaster-manual/toaster-manual.html#set
ting-up-locally-and-running-in-build-mode

You would then need to import your custom layer (the one providing your
package group) and build packagegroup-foo

Once the build finishes, you can select it, view the list of packages
built, search for packagegroup-foo, and look at its dependencies. If the
package group is working as intended, the dependencies should list
packagegroup-foo-apps and packagegroup-foo-tools, and in turn the
dependencies for each of those should list the RDEPENDS you specified.

I know this all sounds quite convoluted, but it's actually not too bad :)
This is how the RDEPENDS for a package group look like in Toaster

http://imgur.com/E7OCp08


If you have any questions, let me know.

Cheers

Bel=E9n


>
>TIA
>
>--=20
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


