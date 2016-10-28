Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B56CE00BFF; Fri, 28 Oct 2016 10:08:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.53 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62539E00B04
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2016 10:08:49 -0700 (PDT)
Received: by mail-oi0-f53.google.com with SMTP id i127so132349700oia.2
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2016 10:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=PZoxM0YeIUDTiM1qp7h8wwGtjDZLksU44L8aIe2B7Cc=;
	b=qFOFaCuF5k73NyhJVi/9Kr0b7QbLS1TtQsWcSRq/XdbnQqKxcQSlw+uXuf0Ik3y/pU
	TGMMoxzvkQo6WwNDRsftD3QCSuI8Jn54V5fldvTt42fox/rQ+fqPWd6afZqqodb8tf4D
	TbnL2a1iuFiDGPC8DsVfXen/3GMGPa7mxsFXuPXKk9wb218caRyU548XoB5mYF5oLxvK
	kt9jh4tk2KsJFS5Rlrqa4ox69zC5GHAz+vhAjmLrF/6WoThwqcZlq5tKTFx4wu6O52Ax
	nOm2bxkliED7cTpDFSWFzH/8zs68FQKaNB4+NGNbf6mb1VqH5eqnM7VRmVQSNMD/0z50
	Ejfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=PZoxM0YeIUDTiM1qp7h8wwGtjDZLksU44L8aIe2B7Cc=;
	b=EcGdDwqHzuXERktqw2+pqm1WhuFVtmuUlAQRSOKlBn6yrPwnHZX1/vhof+C/QWHAnF
	GgJIRGcsixDoXMq1yy/xSMjbT8FA3IiST5Jvo72zYEvg3tm9FIN0snZYrCa+kT1xGMJX
	du66pDEv07++eORnD1+6rJIr6e9qyf6CHm2JeYFPrUad2uFue2Gyk5a8XdNk7xYnN23D
	UL2t0UyPl8Vh98HIkMZsFx/5fHrlpb2017C5gW+TRgjTq/bkA9+s8wATOeUc3V+vtriv
	+OOC7mP+AkM5bo3shhVC6PjhHeCCCkanBAtxM2afSsFdgIjv5eGQPh4AxGVGFKOaSLxJ
	mpOg==
X-Gm-Message-State: ABUngvd2k/FAaoHIQXsV4pRCX3mcFxde40709q9H4/k0r+Hxyzi2VEPJ3bXQ8vp27Z3OpRjF
X-Received: by 10.107.190.195 with SMTP id o186mr11748047iof.95.1477674528920; 
	Fri, 28 Oct 2016 10:08:48 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8F6C0.dip0.t-ipconnect.de. [93.232.246.192])
	by smtp.gmail.com with ESMTPSA id q6sm5244519ioe.12.2016.10.28.10.08.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 28 Oct 2016 10:08:48 -0700 (PDT)
Message-ID: <1477674524.13356.28.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Mariano Lopez <mariano.lopez@linux.intel.com>
Date: Fri, 28 Oct 2016 19:08:44 +0200
In-Reply-To: <0cfba38f-d090-68d0-5c09-a20a5f5e1973@linux.intel.com>
References: <3230301C09DEF9499B442BBE162C5E48ABEA948F@SESTOEX04.enea.se>
	<0cfba38f-d090-68d0-5c09-a20a5f5e1973@linux.intel.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: Scott Rifenbark <srifenbark@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"mariano.lopez@intel.com" <mariano.lopez@intel.com>
Subject: Re: cve-checker tool
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
X-List-Received-Date: Fri, 28 Oct 2016 17:08:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2016-10-28 at 09:28 -0500, Mariano Lopez wrote:
> 
> On 10/27/2016 06:03 AM, Sona Sarmadi wrote:
> >> Can this tool be used together with "meta-security-isafw" and get a fancy
> >> report?
> 
> When I was working on this it was the transition to python3 so, 
> meta-security-isafw didn't behave as expected.

It does now.

>  To be honest I haven't 
> checked again but it will be a good test. I'll try to do this during the 
> weekend.

meta-security-isafw has its own support for generating CVE reports, for
example in the XMLunit format. Here's an example how Jenkins displays
that:
https://ostroproject.org/jenkins/view/Code-Analysis/job/code_isafw_reports/checker=cve,label=coordinator,machine=beaglebone/lastCompletedBuild/testReport/

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




