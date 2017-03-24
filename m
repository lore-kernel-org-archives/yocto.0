Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C86DFE007AD; Fri, 24 Mar 2017 06:53:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp485.redcondor.net (smtp485.redcondor.net [208.80.204.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84256E003C1
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 06:53:28 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp485.redcondor.net ({3be039ea-4351-44b0-a8af-642c38b25916})
	via TCP (outbound) with ESMTPS id 20170324135326837_0485;
	Fri, 24 Mar 2017 13:53:26 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [174.118.92.171] (port=44430 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1crPea-0006H5-7z; Fri, 24 Mar 2017 09:53:20 -0400
Date: Fri, 24 Mar 2017 09:53:18 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Cody Piersall <cody@arrc.ou.edu>
In-Reply-To: <CAKEinFzZ-8poavqXnmDPXg47N6OQ7un4X1nLpwofUKRrY8gW1w@mail.gmail.com>
Message-ID: <alpine.LFD.2.20.1703240952060.21856@localhost.localdomain>
References: <CAKEinFzZ-8poavqXnmDPXg47N6OQ7un4X1nLpwofUKRrY8gW1w@mail.gmail.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: yocto@yoctoproject.org
Subject: Re: Remove a recipe's do_install_append() function in an append file
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
X-List-Received-Date: Fri, 24 Mar 2017 13:53:33 -0000
Content-Type: text/plain; charset=US-ASCII

On Fri, 24 Mar 2017, Cody Piersall wrote:

> Hello,
>
> I am building zsh from meta-oe layer, and it has a do_install_append()
> function defined like this:
>
> do_install_append () {
>     rm -fr ${D}/usr/share
> }
>
> which gets rid of lots lots of useful functionality, like
> context-aware autocompletion.  Can a bbappend file get rid of that
> function, or do I need to edit the actual recipe? I've attempted
> defining an empty do_install_append() { : } but it didn't work.

  it might be worth asking why zsh is doing that in the first place.
if one doesn't want all that stuff, *that* is where an append could be
used to remove it. i think zsh removing it by default is
inappropriate.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


