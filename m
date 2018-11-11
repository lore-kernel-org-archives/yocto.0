Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A0D2E00BBD; Sun, 11 Nov 2018 13:24:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7933E00872
	for <yocto@yoctoproject.org>; Sun, 11 Nov 2018 13:24:50 -0800 (PST)
Received: by mail-wr1-f51.google.com with SMTP id w14-v6so1755463wrt.7
	for <yocto@yoctoproject.org>; Sun, 11 Nov 2018 13:24:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=TWrlhbLYIsyrVtcdGaCWoNArpXq0PhuGhimGRL/LaMY=;
	b=biKqqPgollk1M5In92j/h3xfDZCWbSoiRrfyCqDkGI6/VaMxdXIppU7hHWZ0u5EIR9
	Of+ri24BUid+jwP4nD7vfXWkZGR3HmAF8Y1NBqtCCwFGkkX20JmCPjLqLqNxMP5iPBXl
	xbuXFOP9EovJY9Upy2ZtzeMITwrz80vrBr2VE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=TWrlhbLYIsyrVtcdGaCWoNArpXq0PhuGhimGRL/LaMY=;
	b=I3c11B7jpA2S3NQTeWj4oWw8MsgkK/8ECITv2aZI+lsg20bvRBgZKQ76GSBtUynGJ2
	eFRQgf4IUM5/TcBGpX4kJijg7A1AtJci7DcmKcBRt4JXmYdfOCaw7Y5tH1tr3ASUnon2
	OPceLCI58FwMHde0gd67Oi+hJVFoH1rG0piiV7qWcmoeztEUd/VKlBp4cmv3rpD+UcTx
	Ujcwzs2H5d7Z+xKDgfLBobnvEDfOj1gdKW2HbvfBlq3HKEHPiz3KAJhY77GEF1a8C2vu
	Ibh3ppBv0qpWSCG4npAuJxI3L6GlI5qEh4aVTH/sk4Pap76EU788ItLAUk5JsPqXlcdQ
	wNVA==
X-Gm-Message-State: AGRZ1gKBD7Q9iIKnYkYiKqtZZ347iY8FMt13wM/a+DsZjBnjYIOWdnkv
	dhpf1YogMHq9Co4yaVI2tW9pkw==
X-Google-Smtp-Source: AJdET5fJ8tDG4R/e1fhuuGmngrRDmpitkuzpuZnbjwmjiAHtqoGr+tQCIyF8O7AKFn5NMMVEWpVZiQ==
X-Received: by 2002:adf:f542:: with SMTP id
	j2-v6mr14383657wrp.70.1541971489772; 
	Sun, 11 Nov 2018 13:24:49 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	m69-v6sm9562582wmb.8.2018.11.11.13.24.45
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Sun, 11 Nov 2018 13:24:48 -0800 (PST)
Message-ID: <ba5960cbb59be48e8c9207abce6c8451c2d20182.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: akuster808 <akuster808@gmail.com>, "Jain, Sangeeta"
	<sangeeta.jain@intel.com>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>,
	"Graydon, Tracy" <tracy.graydon@intel.com>, "Erway, Tracey M"
	<tracey.m.erway@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Sun, 11 Nov 2018 21:24:40 +0000
In-Reply-To: <c69ffc7a-dd3e-0282-493f-b0d6994e3f28@gmail.com>
References: <015AB11D45F2C442929CB2765DAE738634CE695E@PGSMSX110.gar.corp.intel.com>
	<124f711a167575c2d5ee6a98f465e3afd5d090f6.camel@linuxfoundation.org>
	<8446b502-4dfc-676b-fcf1-d1de1d8eb004@gmail.com>
	<807aea9c7fd062e1fc6a0d77b2b51166b61b619d.camel@linuxfoundation.org>
	<c69ffc7a-dd3e-0282-493f-b0d6994e3f28@gmail.com>
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
X-List-Received-Date: Sun, 11 Nov 2018 21:24:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2018-11-11 at 13:18 -0800, akuster808 wrote:
> On 11/11/18 2:21 AM, richard.purdie@linuxfoundation.org wrote:
> > On Sat, 2018-11-10 at 10:02 -0800, akuster808 wrote:
> > > On 11/10/18 8:25 AM, richard.purdie@linuxfoundation.org wrote:
> > > > On Fri, 2018-11-09 at 09:24 +0000, Jain, Sangeeta wrote:
> > > > > This is the full report for 2.6 M4 RC1: 
> > > > > 
https://wiki.yoctoproject.org/wiki/WW44_-_2018-10-30_-_Full_Test_Cycle_2.6_M4_RC1
> > > > 
> > > > Thanks Sangeeta and team!
> > > > 
> > > > Now we have the QA report for YP 2.6 M4 rc1 (Final 2.6) we need
> > > > to make
> > > > a release go or nogo decision. To do this we have the
> > > > following:
> > > >  
> > > > QA Report: 
> > > > https://wiki.yoctoproject.org/wiki/WW44_-_2018-10-30_-_Full_Test_Cycle_2.6_M4_RC1
> > > > Release Criteria: 
> > > > https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.6_Status#Milestone_4.2FFinal_-_Target_Oct._26.2C_2018
> > > > 
> > > > We'd be happy to take representations from members and the
> > > > community to
> > > > help reach that decision.
> > > 
> > > Regarding. 
> > > Bug 12991 - [2.6 M4 RC1][Build-Appliance] Bitbake build-
> > > appliance-
> > > image getting failed during building image due to webkitgtk
> > > package
> > > Does it mean the Build-Appliance is non functioning ?  It was
> > > broken
> > > at the Sumo release time as well. Should it be dropped as the
> > > release
> > > criteria?
> > 
> > Build-appliance is a tricky test as it tests multiple things,
> > roughly:
> > 
> > * vmdk images under vmware
> > * the web browser
> > * toaster
> > * whether we can self host (build poky within poky)
> > 
> > The fact the webkit recipe failed to build may be due to several
> > reasons:
> > 
> > * random race type condition
> > * lack of memory in the VM
> > * phase of the moon
> > * other things
> > 
> > I'm not convinced its a release blocker, or that it invalidates the
> > b-a 
> > test, or that it would even reproduce. If it does reproduce that
> > would
> > be more interesting and easier to debug.
> 
> ok, but is the b-a functional  in 2.6?

It booted under VMWare, I believe the web browser was functional and it
managed a build to a point somewhere in webkitgtk which was the only
failure in the build.

I suspect but have little evidence that the failure was a race or
system resource issue rather than a functionality problem with b-a.
Does that make b-a functional? In my view, yes, your view may vary.

Cheers,

Richard



