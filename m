Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18A1CE00756; Sun, 22 Apr 2018 14:24:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80E98E00756
	for <yocto@yoctoproject.org>; Sun, 22 Apr 2018 14:24:03 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 Apr 2018 14:24:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,314,1520924400"; d="scan'208";a="48201571"
Received: from xliu65-mobl.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.143.230])
	by fmsmga004.fm.intel.com with ESMTP; 22 Apr 2018 14:23:58 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Armin Kuster <akuster808@gmail.com>
Date: Mon, 23 Apr 2018 09:23:55 +1200
Message-ID: <3405232.zuJSZccTGG@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <0982eba7-9e14-7976-f9bd-cc42b9b8f33c@mvista.com>
References: <1523659141-17543-1-git-send-email-akuster@mvista.com>
	<1523659141-17543-2-git-send-email-akuster@mvista.com>
	<0982eba7-9e14-7976-f9bd-cc42b9b8f33c@mvista.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-qt4][v2][PATCH 2/2] layers: move LAYERSERIES_COMPAT to sumo
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
X-List-Received-Date: Sun, 22 Apr 2018 21:24:04 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Armin

On Sunday, 22 April 2018 3:16:18 AM NZST akuster wrote:
> On 04/13/2018 03:39 PM, Armin Kuster wrote:
> > [v2]
> > Fix cut&paste error
> >
> > Signed-off-by: Armin Kuster <akuster@mvista.com>
> > ---
> >  conf/layer.conf | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/conf/layer.conf b/conf/layer.conf
> > index 1ce54af..915d89c 100644
> > --- a/conf/layer.conf
> > +++ b/conf/layer.conf
> > @@ -8,4 +8,4 @@ BBFILE_COLLECTIONS += "qt4-layer"
> >  BBFILE_PATTERN_qt4-layer = "^${LAYERDIR}/"
> >  BBFILE_PRIORITY_qt4-layer = "6"
> >  
> > -LAYERSERIES_COMPAT_qt4-layer = "rocko"
> > +LAYERSERIES_COMPAT_qt4-layer = "sumo"
> Ping for the series

I have pushed this (and dropped the v2 text, that doesn't belong in the commit 
history - strictly speaking there should be some sort of message but I have 
let these pass).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



