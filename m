Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E3A9E00B66; Wed, 18 Jun 2014 02:29:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF00CE00AFD
	for <yocto@yoctoproject.org>; Wed, 18 Jun 2014 02:28:51 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 Jun 2014 02:28:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,499,1400050800"; d="scan'208";a="557296369"
Received: from tlankage-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.87])
	by fmsmga002.fm.intel.com with ESMTP; 18 Jun 2014 02:28:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Wed, 18 Jun 2014 10:28:46 +0100
Message-ID: <10245200.YepvDei6b2@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.7-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FA8BD6@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1406170800160.30459@localhost>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FA8BD6@ORSMSX101.amr.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: should yocto ref manual variable glossary include bitbake variables?
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
X-List-Received-Date: Wed, 18 Jun 2014 09:29:05 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 17 June 2014 13:52:52 Rifenbark, Scott M wrote:
> These two glossaries are not replicates of each other by design.  You might
> notice also that some definitions for the same variable differ as well. 
> The intent is to have the variables in ref-manual be specific (if possible)
> for YP and the ones in bitbake-user-manual to be specific for that context.

FYI there is an open task to bring some of the variable definitions added to 
the BitBake manual over to the Yocto Project Reference Manual and extend them 
if they have enhanced behaviour with the OE metadata; IIRC it was on my todo 
list to do give Scott the list of variables to bring over.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

