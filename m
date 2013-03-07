Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD18EE0148E
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 10:14:11 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 07 Mar 2013 10:14:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,803,1355126400"; d="scan'208";a="301094082"
Received: from unknown (HELO helios.localnet) ([10.255.12.181])
	by fmsmga002.fm.intel.com with ESMTP; 07 Mar 2013 10:14:10 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Hans =?ISO-8859-1?Q?Beck=E9rus?= <hans.beckerus@gmail.com>
Date: Thu, 07 Mar 2013 18:14:09 +0000
Message-ID: <20650317.rvG9p3kjoJ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10 (Linux/3.5.0-24-generic; KDE/4.10.0; i686; ; )
In-Reply-To: <CAFyqS9q2BimC1TeDGj5r5WZQCcG1z+MA1tdbrB5X8yLqxCheTA@mail.gmail.com>
References: <CAFyqS9q2BimC1TeDGj5r5WZQCcG1z+MA1tdbrB5X8yLqxCheTA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Problem with applying a patch using default -pnum
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
X-List-Received-Date: Thu, 07 Mar 2013 18:14:11 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Thursday 07 March 2013 13:12:57 Hans Beck=E9rus wrote:
> I have a patch file that needs to be applied to a source tree and the=

> patch file is copied properly to the ${WORKDIR} directory.
> So far so good. But, the problem with this source tree is that it is
> not built from the traditional root folder of the repo.
> This means I need to change ${S} to point somewhere else. This also
> causes the patch system to fail!
> I did an override of do_patch() in my .bb and that seems to work, but=

> I do not like to use overrides unless I really have to.
> So basically, is there some way to tell the built-in patch system to
> use a different -pnum value?

Yes there is - use the striplevel parameter e.g (from make_3.82.bb):

file://make-savannah-bug30612-handling_of_archives.patch;striplevel=3D0=


Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

