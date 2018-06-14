Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB5B0E015DA; Thu, 14 Jun 2018 05:49:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	T_DKIM_INVALID autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
X-Greylist: delayed 1335 seconds by postgrey-1.32 at yocto-www;
	Thu, 14 Jun 2018 05:49:33 PDT
Received: from cpanel4.indieserve.net (cpanel4.indieserve.net [199.212.143.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD384E015D0
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 05:49:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=18LPYZCYTduDI0ubfwfshlVqaDqQg8n1FggkS9MyAtU=;
	b=aHYfvjDgBqYmGzS43k69X7xjN
	eFvgurBw33L2fNooe5eNnyB/6FBOf6YFmp6DzbFCpBFtOQislmWpZtiQb2faoWHqaRYKf2oB9Zcxg
	G+cY9QE6YMUPt/CQIyTuzk7tvUvioBgL0klDzS1pJYyNeAsMtm7CutSnPWRYP/KZxKk2a0JFB5FGR
	BMILfrET5lYTl0LJWjUxZ6KyxQprJ9qfTmHE6ceS3SlvRUbGXRwbET8PxpsAD3shHtYl/sRcClmU3
	msmngspNjVn+mRnjI9EFhL23leuIpyI7KaMjDyxIQ8L5yohvZGuW0oZDbdVm/AV40Im4Eq/g1nuZQ
	8bI5BYX7A==;
Received: from cpeac202e043973-cmac202e043970.cpe.net.cable.rogers.com
	([174.112.22.87]:35060 helo=localhost.localdomain)
	by cpanel4.indieserve.net with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1fTRLP-006BJm-Sa; Thu, 14 Jun 2018 08:27:17 -0400
Date: Thu, 14 Jun 2018 08:24:40 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Damien LEFEVRE <lefevre.da@gmail.com>
In-Reply-To: <CA+FhBv_HSm-DBfaJuQjNpAhhCYUFpv_mZHjUfzePRA20wgW=6w@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.1806140822540.15964@localhost.localdomain>
References: <CA+FhBv_HSm-DBfaJuQjNpAhhCYUFpv_mZHjUfzePRA20wgW=6w@mail.gmail.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-0.2
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel4.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel4.indieserve.net: authenticated_id:
	rpjday+crashcourse.ca/only user confirmed/virtual account not
	confirmed
X-Authenticated-Sender: cpanel4.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: bbappend extra SRC_URI ignored
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
X-List-Received-Date: Thu, 14 Jun 2018 12:49:34 -0000
Content-Type: multipart/mixed; boundary="8323328-1085041037-1528979083=:15964"

--8323328-1085041037-1528979083=:15964
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Thu, 14 Jun 2018, Damien LEFEVRE wrote:

> HI,
> I'm working on meta-tegra layer and I'd like to append a recipe. The original recipe looks like
> this:
> https://github.com/madisongh/meta-tegra/blob/rocko-l4t-r28.2/recipes-bsp/tegra-binaries/tegra-t
> ools_28.2.0.bb 
>
> I've made a tegra-tools_28.2.0.bbappend to change the default PM_CONFIG DEFAULT from 2 to 3 to
> get max performance in nvpmodel.conf configuration file.
>
> ```
> FILESEXTRAPATHS_prepend := "${THISDIR}/files/tegra186:"
> SRC_URI_prepend_tegra186 += "file://nvpmodel.conf "

  why are you using both a prepend and the "+=" operator on the same
line?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                  http://crashcourse.ca/dokuwiki

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-1085041037-1528979083=:15964--
