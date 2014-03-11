Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CC53E0077C
	for <yocto@yoctoproject.org>; Tue, 11 Mar 2014 15:06:12 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 Mar 2014 15:06:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,633,1389772800"; d="scan'208";a="496521679"
Received: from mmckenna-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.185])
	by fmsmga002.fm.intel.com with ESMTP; 11 Mar 2014 15:06:01 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andy Ng <andreas2025@gmail.com>
Date: Tue, 11 Mar 2014 22:05:53 +0000
Message-ID: <1862955.r4ZPgX2shq@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.3 (Linux/3.13.6-200.fc20.x86_64; KDE/4.12.3; x86_64; ; )
In-Reply-To: <531F85C0.6050402@windriver.com>
References: <CAAVaN8x28LCRC7Oz+vdovFk9EifMd2eGdkaUsymi1GRaGhOEsg@mail.gmail.com>
	<CAAVaN8zeR1wS4qKqz9L6bti9RP=5isvKz24gbnXHkaT2JU5qaQ@mail.gmail.com>
	<531F85C0.6050402@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Working with a git'ed kernel on the server
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
X-List-Received-Date: Tue, 11 Mar 2014 22:06:15 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 11 March 2014 17:53:04 Bruce Ashfield wrote:
> On 2014-03-11, 3:22 PM, Andy Ng wrote:
> > Thank you,
> > 
> > I've just noticed my bb file has:
> > 
> > SRCREV_pn-${PN} = "${AUTOREV}"
> > 
> > So it should be ok?
> 
> That should be all you need.

If this line is in a recipe you can remove the _pn-${PN} as well as that won't 
be achieving anything.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

