Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77B1DE00B21; Sat, 10 Nov 2018 08:25:54 -0800 (PST)
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
	*      [209.85.221.49 listed in list.dnswl.org]
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6CE8E0090E
	for <yocto@yoctoproject.org>; Sat, 10 Nov 2018 08:25:53 -0800 (PST)
Received: by mail-wr1-f49.google.com with SMTP id y3-v6so4920233wrh.10
	for <yocto@yoctoproject.org>; Sat, 10 Nov 2018 08:25:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=eZZO/ttrIaEmeh6dEaSAT8AfUupD8qHGsEX7T+UIfho=;
	b=VjyzYBibxMLoMogAN8G3uC9H5Wj/AHE5bK6ON4LgxeT2UGpTvG6bQOVpGZ2WmGMAQ9
	x+VVjh7wJJM2JwgMFMe3kZeliAigAYlBOMv/d5k8UU7hNtaP/W+Ox6meLCRP5++zdk//
	w90EsyuvxnCOi8EqGEvt0fLjBokQKTcOcXptc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=eZZO/ttrIaEmeh6dEaSAT8AfUupD8qHGsEX7T+UIfho=;
	b=AMILW4TceYDVpueZ6rxKmn0LxKnHZklspz5Lmfw3A/4pbLU2TBLwEh1G5yengca4Pd
	SsZLFq/N+NicceH/x4HMTwlvbrQhS9hWIqznRE+4nd4msmffdlY+q05jySZn3lJEqG8E
	/o2cwjcV+oyXKTKHEUrRzoh4FpplEPz57vaHV+ddJDnjPgOuadSlsz0FWlxuE0Mr1DBD
	dDXrpHH90k1Etwad12coY28DWQfImnwL0zi8Nsw8ZGcDYjIBFr+nc1TYIVxY/VfNykt0
	1NszQdTjYDXdwvBTk41cvE5ZjamEXw6nUIr3BTbYnKU25uWRFcVodXtFw5c5Z8qr5KPX
	gfWg==
X-Gm-Message-State: AGRZ1gKWp/9/L21SdzHmJMLvlDPctfm63J94g/WVMF6E+6TfCj61nzgb
	SafHHfDdzKYhjAc5p6VglUGj0A==
X-Google-Smtp-Source: AJdET5ex55imOFn57Qts69q22CJ9JIaCnZ18gCTfYYXuYocSc4eBdgHOUPWlXcDH6SIrPxrzmcGf6w==
X-Received: by 2002:adf:c389:: with SMTP id
	p9-v6mr12330762wrf.68.1541867152635; 
	Sat, 10 Nov 2018 08:25:52 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	j203-v6sm7225884wmd.46.2018.11.10.08.25.51
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Sat, 10 Nov 2018 08:25:51 -0800 (PST)
Message-ID: <124f711a167575c2d5ee6a98f465e3afd5d090f6.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>,
	"Graydon, Tracy" <tracy.graydon@intel.com>, "Erway, Tracey M"
	<tracey.m.erway@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Sat, 10 Nov 2018 16:25:50 +0000
In-Reply-To: <015AB11D45F2C442929CB2765DAE738634CE695E@PGSMSX110.gar.corp.intel.com>
References: <015AB11D45F2C442929CB2765DAE738634CE695E@PGSMSX110.gar.corp.intel.com>
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
X-List-Received-Date: Sat, 10 Nov 2018 16:25:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2018-11-09 at 09:24 +0000, Jain, Sangeeta wrote:
> 
> This is the full report for 2.6 M4 RC1: 
> https://wiki.yoctoproject.org/wiki/WW44_-_2018-10-30_-_Full_Test_Cycle_2.6_M4_RC1

Thanks Sangeeta and team!

Now we have the QA report for YP 2.6 M4 rc1 (Final 2.6) we need to make
a release go or nogo decision. To do this we have the following:
 
QA Report: https://wiki.yoctoproject.org/wiki/WW44_-_2018-10-30_-_Full_Test_Cycle_2.6_M4_RC1
Release Criteria: https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.6_Status#Milestone_4.2FFinal_-_Target_Oct._26.2C_2018

We'd be happy to take representations from members and the community to
help reach that decision.

My personal view is that whilst there are a number of issues present in
rc1, we should release it, collect up fixes on the thud branch (aleady
happening) and plan on a 2.6.1 as soon as it looks like we have enough
critical mass behind those as opposed to an rc2 and further delays to
the release.

Cheers,

Richard






