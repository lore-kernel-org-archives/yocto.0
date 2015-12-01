Return-Path: <paul.eggleton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A777CE00AE4; Tue,  1 Dec 2015 11:12:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C3B3E00ADD
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 11:11:57 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 Dec 2015 11:11:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,370,1444719600"; d="scan'208";a="864407646"
Received: from hlim3-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.139.190])
	by fmsmga002.fm.intel.com with ESMTP; 01 Dec 2015 11:11:53 -0800
From: Paul Eggleton <paul.eggleton@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 02 Dec 2015 08:11:51 +1300
Message-ID: <2124896.i64Oee0N8V@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.2.6-301.fc23.x86_64; KDE/4.14.14; x86_64; ;
	)
In-Reply-To: <565DE64A.60805@linux.intel.com>
References: <1448920985-995-1-git-send-email-alejandro.franco@linux.intel.com>
	<565DDB89.1030005@intel.com> <565DE64A.60805@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [PATCHv2] [layerindex-web] recipe blacklisted information
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
X-List-Received-Date: Tue, 01 Dec 2015 19:12:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tue, 01 Dec 2015 12:26:18 Alex Franco wrote:
> @Martin, I think this information about blacklisting would indeed be
> very useful, thanks for your input as always.
> 
> @Belen, yes indeed I noticed the label also hovers even when no tooltip
> is present, this bugged me a little too to be honest! No worries though,
> I can fix the hover situation and also add in the link to the
> documentation.
> @All: I suppose the link should go to:
> 
> http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-> PNBLACKLIST

Yes, that's really the only place we could link to; unfortunately though I 
just noticed there is an obvious mistake in there about inheriting the class 
globally within the recipe (a contradiction); it also doesn't mention the 
class is inherited globally by default.

Cheers,
Paul

-- 
Paul Eggleton
Intel Open Source Technology Centre

