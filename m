Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65EDCE00B3F; Tue,  3 Nov 2015 03:18:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp486.redcondor.net (smtp486.redcondor.net [208.80.204.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B321BE00957
	for <yocto@yoctoproject.org>; Tue,  3 Nov 2015 03:18:52 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20151103111850707_0486;
	Tue, 03 Nov 2015 11:18:50 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [99.240.204.5] (port=49778 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1ZtZZh-0005U5-UQ; Tue, 03 Nov 2015 06:16:26 -0500
Date: Tue, 3 Nov 2015 06:15:33 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAMKF1spGWN8dDzQ5wcE7f_U2JJuk=7VE_onpDORN-SMNqHgf-g@mail.gmail.com>
Message-ID: <alpine.LFD.2.20.1511030615020.12109@localhost>
References: <alpine.LFD.2.20.1511021251410.10363@localhost>
	<CAMKF1spGWN8dDzQ5wcE7f_U2JJuk=7VE_onpDORN-SMNqHgf-g@mail.gmail.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: should layers define BB_DANGLINGAPPENDS_WARNONLY ?= "1"?
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
X-List-Received-Date: Tue, 03 Nov 2015 11:18:55 -0000
Content-Type: text/plain; charset=US-ASCII

On Mon, 2 Nov 2015, Khem Raj wrote:

> On Mon, Nov 2, 2015 at 9:54 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >
> >   perusing the meta-musl layer, and noticed in layer.conf the line:
> >
> > BB_DANGLINGAPPENDS_WARNONLY ?= "1"
>
> should be avoided although meta-musl is a bit core in nature.
> this is so that it can interface with several different compilers
> coming from different layers and also different oe-core releases can
> work with same branch of meta-musl.
>  one may not have same layers attached to it. Ideally, those patches
> should now become part
> of the original layers as they have been accepted in gcc upstream and
> so on. Hopefully as I will take
> this into oe-core in coming months this should disappear.

  ok, that's fair ... i didn't consider this a major issue, i just
thought it was a bit odd.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


