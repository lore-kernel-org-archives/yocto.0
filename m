Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 670BEE00C1F; Sun, 11 Nov 2018 02:21:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.66 listed in list.dnswl.org]
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
	[209.85.128.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27CCAE00C06
	for <yocto@yoctoproject.org>; Sun, 11 Nov 2018 02:21:55 -0800 (PST)
Received: by mail-wm1-f66.google.com with SMTP id p2-v6so5514403wmc.2
	for <yocto@yoctoproject.org>; Sun, 11 Nov 2018 02:21:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=w0ad2DeSYcdfnfDOx5oi3y3mT1M2bbkylmUMOqMmp1E=;
	b=MGy7yHxbVkL+/69/ukosY5C4eltX85nCTzjdBlrXXpmenEE+rPZRxtgbNY0MH/j62y
	dpTDsP76xds2wXXauB0+nXgxVHlRCyQyfCdmqEbYU1KX/s67i26G+HoNWlSPLrBn3FX5
	BYnvi9dnYaV0fK3PraAVt3Jd5M0nAOSl8lTzI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=w0ad2DeSYcdfnfDOx5oi3y3mT1M2bbkylmUMOqMmp1E=;
	b=LBRtwTZUyM/yuEl02QOrYw+HY8HeFRnlSQeFcGtOya+mIoaP1sS4E9AjWG3fmXHxVz
	zCTdG2n9YDGOu0xNSMsRP5ojrysSqQ/RJd9tvibaqXTKM6ZxwZNnYb24QnP2ZLydlpR8
	Xwcrkbk9yw6Fuww8yeP0PkebrIJ0VbGvP/+L1jK2u9RXQ99JexWsiDhADSinjsrG9XKL
	IsAOOKwe1J0nSCczxT//d9w5Onc6BD7khvEm0sOyHohXLK1Pk78HwfF8ftMxeLD8yBm6
	EV5SrpBQ3AJ6V5kIwP9Rk4c8lE2N+ZVm+oGh2oAMY96Ix6vsHf47p1+zugOBS2lq++Yv
	K0tg==
X-Gm-Message-State: AGRZ1gJPfbiw3L6WBKQL4yykRSmCiafYMjOYkEImQap+NtezJecc2VLT
	rQGeVkyLfsuUvQTiCmuKGMVojA==
X-Google-Smtp-Source: AJdET5d4h5ceoycRpmazz+hg5btwWuvD0K2Znf74JK+1+zkpzYNk9uGqi4SR0l+QcGQ5aCXPaaZo/g==
X-Received: by 2002:a1c:c016:: with SMTP id
	q22-v6mr4668029wmf.151.1541931714251; 
	Sun, 11 Nov 2018 02:21:54 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	g13-v6sm7287535wru.1.2018.11.11.02.21.52
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Sun, 11 Nov 2018 02:21:53 -0800 (PST)
Message-ID: <807aea9c7fd062e1fc6a0d77b2b51166b61b619d.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: akuster808 <akuster808@gmail.com>, "Jain, Sangeeta"
	<sangeeta.jain@intel.com>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>,
	"Graydon, Tracy" <tracy.graydon@intel.com>, "Erway, Tracey M"
	<tracey.m.erway@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Sun, 11 Nov 2018 10:21:52 +0000
In-Reply-To: <8446b502-4dfc-676b-fcf1-d1de1d8eb004@gmail.com>
References: <015AB11D45F2C442929CB2765DAE738634CE695E@PGSMSX110.gar.corp.intel.com>
	<124f711a167575c2d5ee6a98f465e3afd5d090f6.camel@linuxfoundation.org>
	<8446b502-4dfc-676b-fcf1-d1de1d8eb004@gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Cc: "Kirkiris, Nectar" <nectar.kirkiris@intel.com>
Subject: Re: QA cycle report for 2.6 M4 RC1
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
X-List-Received-Date: Sun, 11 Nov 2018 10:21:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2018-11-10 at 10:02 -0800, akuster808 wrote:
> 
> On 11/10/18 8:25 AM, richard.purdie@linuxfoundation.org wrote:
> > On Fri, 2018-11-09 at 09:24 +0000, Jain, Sangeeta wrote:
> > > This is the full report for 2.6 M4 RC1: 
> > > https://wiki.yoctoproject.org/wiki/WW44_-_2018-10-30_-_Full_Test_Cycle_2.6_M4_RC1
> > 
> > Thanks Sangeeta and team!
> > 
> > Now we have the QA report for YP 2.6 M4 rc1 (Final 2.6) we need to make
> > a release go or nogo decision. To do this we have the following:
> >  
> > QA Report: https://wiki.yoctoproject.org/wiki/WW44_-_2018-10-30_-_Full_Test_Cycle_2.6_M4_RC1
> > Release Criteria: https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.6_Status#Milestone_4.2FFinal_-_Target_Oct._26.2C_2018
> > 
> > We'd be happy to take representations from members and the community to
> > help reach that decision.
> 
> Regarding. 
> Bug 12991 - [2.6 M4 RC1][Build-Appliance] Bitbake build-appliance-
> image getting failed during building image due to webkitgtk package
> Does it mean the Build-Appliance is non functioning ?  It was broken
> at the Sumo release time as well. Should it be dropped as the release
> criteria?

Build-appliance is a tricky test as it tests multiple things, roughly:

* vmdk images under vmware
* the web browser
* toaster
* whether we can self host (build poky within poky)

The fact the webkit recipe failed to build may be due to several
reasons:

* random race type condition
* lack of memory in the VM
* phase of the moon
* other things

I'm not convinced its a release blocker, or that it invalidates the b-a 
test, or that it would even reproduce. If it does reproduce that would
be more interesting and easier to debug.

I do think we're going to have to split up the b-a test in 2.7 so that
even if its not manual QA'd, we can automatically test some pieces of
what it covers.

Cheers,

Richard



