Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEDA1E0084E; Tue, 30 Sep 2014 01:40:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CBC4E006DB
	for <yocto@yoctoproject.org>; Tue, 30 Sep 2014 01:40:01 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by orsmga103.jf.intel.com with ESMTP; 30 Sep 2014 01:37:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,625,1406617200"; d="scan'208";a="480941477"
Received: from cnwegoda-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.56])
	by azsmga001.ch.intel.com with ESMTP; 30 Sep 2014 01:39:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Chris Tapp <opensource@keylevel.com>, "Burton,
	Ross" <ross.burton@intel.com>
Date: Tue, 30 Sep 2014 09:39:43 +0100
Message-ID: <1479978.v8lsHV5uZT@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.1 (Linux/3.16.3-200.fc20.x86_64; KDE/4.14.1; x86_64; ; )
In-Reply-To: <E882175C-A206-42C7-96CB-FA54E0AC8A9D@keylevel.com>
References: <221FE6F5-8350-467B-9744-402B89707FAF@keylevel.com>
	<CAJTo0LY=A-dj2VZU3iP_R=SVSHYsV+fXgrPUnfFz62FPEFgaOA@mail.gmail.com>
	<E882175C-A206-42C7-96CB-FA54E0AC8A9D@keylevel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Fetcher question
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
X-List-Received-Date: Tue, 30 Sep 2014 08:40:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 30 September 2014 08:53:08 Chris Tapp wrote:
> On 29 Sep 2014, at 22:59, Burton, Ross <ross.burton@intel.com> wrote:
> > On 29 September 2014 22:36, Chris Tapp <opensource@keylevel.com> wrote:
> >> How would the fetcher handle the file changing after it had already been
> >> downloaded and passed a checksum test? Would the change have been
> >> detected?> 
> > The checksum comparison is only done at fetch.
> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=5571 talks about
> > extending that to verify the checksums at do_unpack() to catch
> > situations like this.
> 
> I'm not sure this is quite the same - in this case the (downloaded) file and
> checksum would have matched but the remote file has changed.
> 
> I don't think there's a lot that can be done about this other than try and
> persuade people not to change published files ;-)

Every time an upstream does this we should tell them how much pain it causes 
us. Maybe then they might think twice about doing it.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

