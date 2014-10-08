Return-Path: <denis@denix.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A070AE00848; Wed,  8 Oct 2014 14:56:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,HDRS_LCASE,
	RCVD_IN_DNSWL_NONE,T_MANY_HDRS_LCASE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [206.46.173.25 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 HDRS_LCASE Odd capitalization of message header
	* 0.0 T_MANY_HDRS_LCASE Odd capitalization of multiple message headers
X-Greylist: delayed 3607 seconds by postgrey-1.32 at yocto-www;
	Wed, 08 Oct 2014 14:56:38 PDT
Received: from vms173025pub.verizon.net (vms173025pub.verizon.net
	[206.46.173.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87A2FE0077F
	for <yocto@yoctoproject.org>; Wed,  8 Oct 2014 14:56:38 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [108.18.33.160])
	by vms173025.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0ND50052T8U6UUH0@vms173025.mailsrvcs.net> for
	yocto@yoctoproject.org; Wed, 08 Oct 2014 15:56:31 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 712C92016D; Wed,
	08 Oct 2014 16:56:30 -0400 (EDT)
Date: Wed, 08 Oct 2014 16:56:30 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Trevor Woerner <trevor.woerner@linaro.org>
Message-id: <20141008205630.GN25997@denix.org>
References: <CA+YB3rZasuoA8fysS3ZkbcRm9xidC7NA=Y1YAY=FYw278frkCQ@mail.gmail.com>
	<CAME0jBRVVXpK7pJBuRiONC2Uqsasz3TFnPgnp0h92H2n+_Wiqg@mail.gmail.com>
	<542EBBF2.3090607@linaro.org>
MIME-version: 1.0
In-reply-to: <542EBBF2.3090607@linaro.org>
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
X-List-Received-Date: Wed, 08 Oct 2014 21:56:43 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

For me, it fails with:

fop: command not found

Trying to install fop shows me about 100 (!) Java dependencies... Is this 
expected?

-- 
Denys


On Fri, Oct 03, 2014 at 11:08:34AM -0400, Trevor Woerner wrote:
> 
> On 09/30/14 14:22, Chris Hallinan wrote:
> > My only comment: make it easier to build the latest docs from git.  I
> > seem to always hit errors, and I've seen other posts about that, too.
> > I just did a quick make DOC=mega-manual on Daisy, and it failed with:
> > "tar: mega-manual.html: Cannot stat: No such file or directory"  
> >
> > make DOC=dev-manual failed due to missing dependencies, and in the 30
> > seconds I spent while writing this e-mail, I couldn't figure out what
> > to install on my U14.04 host to satisfy it.
> >
> > I don't have much use/fondness for html docs.  Give me a searchable
> > PDF any day.
> >
> 
> Attached is the little shell script I run right after I run my other
> shell script that updates all the layer repositories I follow :-)
> 
> I only build the PDFs and I've never been successful building the mega
> manual either (pdf, html, or otherwise).
> 
> Getting the docs to build on my openSUSE system was also a challenge
> since there are two packages which provide "docbook2x-texi" and I need
> the _other_ one :-)


> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


