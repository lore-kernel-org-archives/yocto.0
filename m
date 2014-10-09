Return-Path: <denis@denix.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8595E00790; Thu,  9 Oct 2014 07:56:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,HDRS_LCASE,
	RCVD_IN_DNSWL_NONE,T_MANY_HDRS_LCASE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [206.46.173.17 listed in list.dnswl.org]
	*  0.1 HDRS_LCASE Odd capitalization of message header
	* 0.0 T_MANY_HDRS_LCASE Odd capitalization of multiple message headers
X-Greylist: delayed 3605 seconds by postgrey-1.32 at yocto-www;
	Thu, 09 Oct 2014 07:56:08 PDT
Received: from vms173017pub.verizon.net (vms173017pub.verizon.net
	[206.46.173.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71C53E00749
	for <yocto@yoctoproject.org>; Thu,  9 Oct 2014 07:56:08 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [108.18.33.160])
	by vms173017.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0ND600CFYK0Z9R70@vms173017.mailsrvcs.net> for
	yocto@yoctoproject.org; Thu, 09 Oct 2014 08:56:03 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 889432032C; Thu,
	09 Oct 2014 09:55:47 -0400 (EDT)
Date: Thu, 09 Oct 2014 09:55:47 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: "Burton, Ross" <ross.burton@intel.com>
Message-id: <20141009135547.GP25997@denix.org>
References: <CA+YB3rZasuoA8fysS3ZkbcRm9xidC7NA=Y1YAY=FYw278frkCQ@mail.gmail.com>
	<CAME0jBRVVXpK7pJBuRiONC2Uqsasz3TFnPgnp0h92H2n+_Wiqg@mail.gmail.com>
	<542EBBF2.3090607@linaro.org> <20141008205630.GN25997@denix.org>
	<CAJTo0LbJzCdeKmsFJiWdKPjwv1sHZnOSxy2fMbz93R4nQUEq3g@mail.gmail.com>
MIME-version: 1.0
In-reply-to: <CAJTo0LbJzCdeKmsFJiWdKPjwv1sHZnOSxy2fMbz93R4nQUEq3g@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: YP documentation survey
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
X-List-Received-Date: Thu, 09 Oct 2014 14:56:10 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Thu, Oct 09, 2014 at 11:19:15AM +0100, Burton, Ross wrote:
> On 8 October 2014 21:56, Denys Dmytriyenko <denis@denix.org> wrote:
> > fop: command not found
> >
> > Trying to install fop shows me about 100 (!) Java dependencies... Is this
> > expected?
> 
> Yes, FOP is implemented in Java and Java libraries are quite granular.
> 
> It's just XSLT so you can likely use a different XSLT processor if
> this bothers you sufficiently (but you may need to buy a license for a
> commercial processor).

Ok, I see. It's unfortunate, but understood. I ended up installing it on my 
other machine which has Java, so it wasn't as painful. Thanks.

-- 
Denys

