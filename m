Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48D62E00CB0; Wed,  2 Aug 2017 01:28:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E3C5E00C19
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 01:28:46 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Aug 2017 01:28:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,310,1498546800"; d="scan'208";a="134327564"
Received: from tmrank-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.52.92])
	by fmsmga005.fm.intel.com with ESMTP; 02 Aug 2017 01:28:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Katu Txakur <katutxakurra@gmail.com>
Date: Wed, 02 Aug 2017 10:28:43 +0200
Message-ID: <1593300.26TW5Pyds6@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAM1ZcoUYPs_TRwcCT=_9o6pWO1XDpmaRUuTZn=X1O5qkPkY3Eg@mail.gmail.com>
References: <CAM1ZcoVg_NuFbLkAHCRJmXAhX7g9EA04h+9NYmWb9QAJWCcnKA@mail.gmail.com>
	<CAM1ZcoUYPs_TRwcCT=_9o6pWO1XDpmaRUuTZn=X1O5qkPkY3Eg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Andrew Bradford <andrew.bradford@kodakalaris.com>
Subject: Re: Perforce fetcher ignores module and label
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
X-List-Received-Date: Wed, 02 Aug 2017 08:28:48 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Katu,

Andrew Bradford (on CC) was the last person to make significant changes to 
that module. I believe it's not very widely used - none of the recipes we 
commonly deal with make use of it and thus few of us have enough experience 
with it to give good advice. If Andrew doesn't have any ideas, the code 
shouldn't be too hard to follow and we will accept patches (particularly if 
they are accompanied with a good explanation of why the change is needed in 
the commit message).

Cheers,
Paul

On Wednesday, 2 August 2017 9:40:10 AM CEST Katu Txakur wrote:
> Hi,
> 
> I'm still having problems fetching from Perforce. Is there any
> documentation based on the latest implementation of the
> poky/bitbake/lib/bb/fetch2/perforce.py file?
> The copyright 2016 points to Kodak Alaris, Inc. Should I contact them?
> 
> I would appreciate if someone could point me in the right direction.
> 
> Regards,
> Katu
> 
> 2017-07-25 10:05 GMT+01:00 Katu Txakur <katutxakurra@gmail.com>:
> 
> > Hi,
> >
> > I'm upgrading a recipe that fetches the source code from Perforce.
> >
> > The old recipe was:
> >
> > SRC_URI = " \
> >   p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot/path/pe
> > rforce/...;module=local/path/relativeto/p4;label=${P4CHANGELIST} \
> >   "
> >
> > With the new version of /lib/bb/fetch2/perforce.py, I had to set P4PORT
> > outside SRC_URI, leaving the recipe with:
> >
> > SRC_URI = " \
> >   p4://${P4USER}:${P4PASSWD}@Depot/path/perforce/...;module=
> > local/path/relativeto/p4;label=${P4CHANGELIST} \
> >   "
> >
> > The Perforce fetcher kind of works, but it seems to be ignoring the
> > "module" and the "label" attributes. After reading the Python script I can
> > see that after the "@", only the substring before the first ";" is used.
> >
> > Is there a way to set module and label/changelist? I have several folders
> > per recipe that I need to map to different subfolders and with the current
> > script some of the folders don't get fetched.
> >
> > Thanks for your time.
> >
> > Regards,
> > Katu
> >
> 


-- 

Paul Eggleton
Intel Open Source Technology Centre

