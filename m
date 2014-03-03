Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42250E009E3
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 08:43:56 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Mar 2014 08:39:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,578,1389772800"; d="scan'208";a="465591705"
Received: from dmilliga-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.25])
	by orsmga001.jf.intel.com with ESMTP; 03 Mar 2014 08:43:54 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rick Bianchi <bianchirickkutta@gmail.com>
Date: Mon, 03 Mar 2014 16:43:53 +0000
Message-ID: <1461290.cFV4RBsgra@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.2 (Linux/3.13.5-200.fc20.x86_64; KDE/4.12.2; x86_64; ; )
In-Reply-To: <CAA7h+Eob=M1uvSVHM+vr6s-rNKHuHpRdMG06pttGs19Ak9Oe9g@mail.gmail.com>
References: <CAA7h+EqtOE2spfgtXi2CiogUFsytGxyb4EgqSAoanwTximA-+w@mail.gmail.com>
	<2231928.eQF8dO1LsD@peggleto-mobl5.ger.corp.intel.com>
	<CAA7h+Eob=M1uvSVHM+vr6s-rNKHuHpRdMG06pttGs19Ak9Oe9g@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: WARNING: Failed to fetch URL http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz, attempting MIRRORS if available
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
X-List-Received-Date: Mon, 03 Mar 2014 16:43:57 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 03 March 2014 09:40:16 Rick Bianchi wrote:
> On Mon, Mar 3, 2014 at 9:27 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > Before doing this, Rick could you run the following and post the output:
> > 
> > bitbake -e docbook-utils-native | grep ^SRC_URI=
>
> Here is the ouput:
> 
> SRC_URI="
> ftp://sources.redhat.com/pub/docbook-tools/new-trials/SOURCES/docbook-utils-> 0.6.14.tar.gzfile://re.patch"

OK, nothing odd there.

Have you changed any settings in your local.conf?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

