Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59E47E00BB7; Mon, 14 Aug 2017 20:02:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1B36E00349
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 20:02:20 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v7F32Ggj001417
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 14 Aug 2017 20:02:18 -0700 (PDT)
Received: from server.local (128.224.20.239) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 14 Aug 2017 20:02:15 -0700
To: Gunnar Andersson <gandersson@genivi.org>, <yocto@yoctoproject.org>
References: <1502739375.26251.126.camel@genivi.org>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <f75c19c6-e128-5932-fd29-1d3cb92b539d@windriver.com>
Date: Mon, 14 Aug 2017 23:02:14 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <1502739375.26251.126.camel@genivi.org>
Cc: "automotive-discussions@lists.linuxfoundation.org"
	<automotive-discussions@lists.linuxfoundation.org>
Subject: Re: Idea for bbappend / layer organization and naming convention
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
X-List-Received-Date: Tue, 15 Aug 2017 03:02:21 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2017-08-14 3:36 PM, Gunnar Andersson wrote:
> 
> Yocto community,
> 
> Triggered by the previous email request to yocto@ about best practices for
> layer organization I'm finally firing off this email for (hopefully) some
> feedback on an idea we first kicked around, discussed for rough consensus
> and then decided to implement in the Yocto based GDP project [1].  You can
> see it as a trial, anything can be changed, but so far so good...
> 
> We adopted a somewhat novel (but actually not really unique, see inside)
> naming convention [2] for all modifications to components that belong to
> other layers.
> 

I've been using a similar naming/sorting mechanism in layers that
I maintain for several years now. When you have a single layer that
is carrying bbappends to many other layers, I find that it really
helps keep everything separated and aids finding the original
recipe.

(that being said, recent work with layer index, etc, make it
easier to locate the original recipe and any bbappends .. but that
doesn't preclude keeping things organized in a layer).

Cheers,

Bruce

> This convention shows what layers are being modified by the .bbappends by
> actually naming the layer it is (intending to**) modify.  The initiative
> also aims to highlight and separate .bbappends (modifications) from uniquely
> added components in our project (new .bb files) in GDP.
> 
> **Note that we are well aware this does NOT control bitbake behavior (as
> neither does the recipe-xxx/ directory convention), and is therefore just a
> guide.  If the project is misconfigured, bitbake could do something
> different than the naming convention implies and it could even be
> misleading, but at least the *programmer intent* is shown clearly.
> 
> I think it also makes .bbappends more explicitly visible and might trigger
> the idea:   Do we really need this?  Are we really modifying *that* adopted
> layer, and if so, why?
> 
> To Russel who wrote the previous request for guidance - feel free to
> consider, but I won't recommend this directly since it's by no means an
> agreed best practice in all of the community.  I'm rather asking for other
> experienced OE developers to consider and comment on the idea.
> 
> For oldtimers it's probably easy to find this odd and just be negative
> against it since well, "standard practice", inertia, NIH and all that, but
> I'll stick my neck out anyway because it seems to solve some issues of
> organization and understanding at least for us (and I'm a sucker for some
> flamebait ;)
> 
> If the intro is too formal and long, just look at the final examples.  I
> think you'll get it.  Feel free to ask.
> 
> 
> - Gunnar
> 
> -- 
> Gunnar Andersson <gandersson@genivi.org>
> Development Lead
> GENIVI Alliance
> 
> [1] https://github.com/GENIVI/genivi-dev-platform
> [2] Naming strategy for bitbake extension layers:			
> https://at.projects.genivi.org/wiki/x/w4Xk
> 
> 
> 


