Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50327E0090E; Fri, 11 Mar 2016 05:40:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C610BE008C6
	for <yocto@yoctoproject.org>; Fri, 11 Mar 2016 05:40:42 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP; 11 Mar 2016 05:40:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,320,1455004800"; d="scan'208";a="931757645"
Received: from jlock-mobl1.gar.corp.intel.com ([10.252.4.28])
	by orsmga002.jf.intel.com with ESMTP; 11 Mar 2016 05:40:41 -0800
Message-ID: <1457703639.7305.4.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 11 Mar 2016 13:40:39 +0000
In-Reply-To: <56E298F0.50200@konsulko.com>
References: <56E293BD.1080009@konsulko.com>
	<CAJTo0LZDKBYHmKHH56MJESEcpj1KZuDpDOcEBYNRT0JQNnGwEw@mail.gmail.com>
	<56E298F0.50200@konsulko.com>
X-Mailer: Evolution 3.18.5.1 (3.18.5.1-1.fc23) 
Mime-Version: 1.0
Subject: Re: Nettle from release Fido fails to build
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
X-List-Received-Date: Fri, 11 Mar 2016 13:40:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2016-03-11 at 12:07 +0200, Leon Anavi wrote:
> On 11.03.2016 11:50, Burton, Ross wrote:
> > On 11 March 2016 at 09:45, Leon Anavi <leon.anavi@konsulko.com>
> > wrote:
> > > 
> > > Yesterday I noticed that the build of recipe nettle 2.7.1 from
> > > release Fido fails:
> > > https://gist.github.com/leon-anavi/dfd3afab567a9dc9fa2f
> > > 
> > Theres a patch from a few days ago on this list to fix the issue: h
> > ttp://patchwork.openembedded.org/patch/117355/.
> > 
>  OK, thank you for the feedback. I will wait for the fix in the Poky
> repository.

This fix has now been merged to the fido branch of the poky repository.

Regards,

Joshua

