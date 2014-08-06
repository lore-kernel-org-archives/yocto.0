Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0663E00566; Wed,  6 Aug 2014 09:13:12 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 378AFE0054C
	for <yocto@yoctoproject.org>; Wed,  6 Aug 2014 09:13:03 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Aug 2014 09:12:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,812,1400050800"; d="scan'208";a="580921747"
Received: from cgwithan-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.123.26])
	by fmsmga002.fm.intel.com with ESMTP; 06 Aug 2014 09:11:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Wed, 06 Aug 2014 17:11:08 +0100
Message-ID: <2384884.X0kGjS6PL9@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.7-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FD3136@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1408030456480.14212@localhost>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FD3136@ORSMSX101.amr.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: question about installing multiple versions of a single library
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
X-List-Received-Date: Wed, 06 Aug 2014 16:13:12 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Monday 04 August 2014 05:29:45 Rifenbark, Scott M wrote:
> >-----Original Message-----
> >From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> >Sent: Sunday, August 03, 2014 2:05 AM
> >To: Rifenbark, Scott M
> >Subject: question about installing multiple versions of a single library
> >
> >  sorry for the interruption, i'm reading dev manual here:
> >http://www.yoctoproject.org/docs/latest/dev-manual/dev-> >manual.html#installing-multiple-versions-of-the-same-library
> >
> >and the example used (clutter) doesn't even exist in oe-core with those
> >version numbers, i was looking for another example that actually exists,
> >didn't immediately see one.
> >
> >  more to the point, the version numbers used in those clutter recipe files
> >  look>
> >weird:
> >     clutter-1.6_1.6.20.bb
> >     clutter-1.8_1.8.4.bb
> >
> >i'm not used to seeing recipe files that appear to combine a higher version
> >number *and* what looks like a minor version number upgrade as well. do you
> >know what's going on there? maybe that's not the best example for trying to
> >explain this topic.

The specific versions of clutter may no longer exist in the metadata, but we do 
still use this scheme for clutter recipes and others (gstreamer comes to 
mind). The point is you change PN to be version-specific - you have clutter-1.6 
and clutter-1.8, such that you can depend on the specific version where needed.

To be honest I think this section outlines the use case fairly well. 
Suggestions on how we could improve the explanation would be welcome though.

Cheers,
Paul




-- 

Paul Eggleton
Intel Open Source Technology Centre

