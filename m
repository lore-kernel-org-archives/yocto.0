Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7514EE00AAA; Thu, 30 Jul 2015 02:51:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 443F4E00A5B
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 02:51:44 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 30 Jul 2015 02:51:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,576,1432623600"; d="scan'208";a="774376987"
Received: from irsmsx107.ger.corp.intel.com ([163.33.3.99])
	by orsmga002.jf.intel.com with ESMTP; 30 Jul 2015 02:51:43 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.29]) by
	IRSMSX107.ger.corp.intel.com ([169.254.10.245]) with mapi id
	14.03.0224.002; Thu, 30 Jul 2015 10:51:42 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Robin Gilks <robin@deltastrike.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Build with 'Hob' results in blank target column in
	'Toaster'
Thread-Index: AQHQyq1W7Zb1T2fgcEu602wvuQuZZA==
Date: Thu, 30 Jul 2015 09:51:41 +0000
Message-ID: <D1DFB110.610A1%belen.barros.pena@intel.com>
References: <CAHG6DmfYuJF1RZnch2VFnF=XTtHYh6kjuGmRU1EN2jh2ztm5BQ@mail.gmail.com>
In-Reply-To: <CAHG6DmfYuJF1RZnch2VFnF=XTtHYh6kjuGmRU1EN2jh2ztm5BQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.5.3.150624
x-originating-ip: [10.237.224.31]
MIME-Version: 1.0
Subject: Re: Build with 'Hob' results in blank target column in 'Toaster'
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
X-List-Received-Date: Thu, 30 Jul 2015 09:51:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <D80A4D592937F94EB68545A059219987@intel.com>
Content-Transfer-Encoding: quoted-printable

Hi Robin,

To be honest, we never put much effort into getting Toaster and Hob to
work together, so I am not surprised you are having issues. Toaster is
meant to replace Hob at some point.

On 30/07/2015 04:59, "yocto-bounces@yoctoproject.org on behalf of Robin
Gilks" <yocto-bounces@yoctoproject.org on behalf of robin@deltastrike.com>
wrote:

>Having just discovered hob and toaster, in 1.7 Dizzy. I've been trying
>them out - but I'm missing something!!

If you want to build for dizzy, as I mentioned in my previous email, I
might try checking out the fido branch and just select the dizzy release
for your project. This means you will be able to build from Toaster
itself, instead of having to use Hob. This video

https://www.youtube.com/watch?v=3Df3gDg75FwFo


explains the Toaster build functionality in fido and what it can do.

If you have any questions, let us know.

Cheers

Bel=E9n


>
>
>Set environment, start toaster, run hob and select a machine. After all
>the parsing has completed I select my target and 'build image'.
>
>
>When the build has completed successfully, I use toaster to check it out
>and the machine column is correctly filled in but the 'target' column is
>blank. This means that I have nothing to select to look at the recipes or
>packages (they are both 0).
>
>
>Help!!
>
>
>--=20
>Robin Gilks
>Development
>
>
>Delta Strike
>Success through Delta
> Strike
>
>phone:    +64 3 982 9892
>skype:     robindeltastrike
>web:       www.deltastrike.com <http://www.deltastrike.com/>
>
>
>
>
>
>


