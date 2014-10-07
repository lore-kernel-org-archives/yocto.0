Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E3C2E007EB; Tue,  7 Oct 2014 03:27:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
Received: from mail-qc0-f173.google.com (mail-qc0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 666F6E00786
	for <yocto@yoctoproject.org>; Tue,  7 Oct 2014 03:27:18 -0700 (PDT)
Received: by mail-qc0-f173.google.com with SMTP id x13so5340218qcv.32
	for <yocto@yoctoproject.org>; Tue, 07 Oct 2014 03:27:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=nF5+a7B429smfblrdRQkjOsfaIAY5/5dFZLCipI4ucY=;
	b=SfVR1ir5q+OvquOI+2xY87Z+LYTBzUtm7rrJlXI7shdc00wI4jD08Y86X/Id7wsetH
	WkVmuqurO2F+cVU2P78JB9cLPfLF9UhUfZeDplxx0lFdf25DLtW0OwKCmOexdfQlPvwy
	31tFecf0J6WaFbZWgmHl/JwXuW7dcrBJ98QqFIAa0KuwLJ9Sag/JxKgyRvuJAAfiayYA
	aPSXSQWi3WCRkS8YNT3NVPjXOWLO3/5+e02gbGjM/IlG7dHkueOhS7DucbLKMYMzRXh9
	byQGB7d8kTo/tyaKhVN4Xk8OJL47KmGVOYCpxD1vte/YqpjDXI2jJk9ZPcpN2EiAW3gd
	4Qew==
X-Gm-Message-State: ALoCoQn/b+e1qIo9hTp5Yb+t8c4L2bIdYd7r0JaGvmWdwH9ncaiCNqTV9EPhpDDR8J/QL4uPMSZh
X-Received: by 10.140.105.195 with SMTP id c61mr34861445qgf.15.1412677638265; 
	Tue, 07 Oct 2014 03:27:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.106.134 with HTTP; Tue, 7 Oct 2014 03:26:58 -0700 (PDT)
In-Reply-To: <5433BE53.8000108@ge.com>
References: <542945DD.2010800@ge.com>
	<CAJTo0LYNSGpdRhh7qfjDjE_rJca80XgGJDmzpgpTQqFteit-3A@mail.gmail.com>
	<5433BE53.8000108@ge.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 7 Oct 2014 11:26:58 +0100
Message-ID: <CAJTo0LYJz=9tB8cc_dTRAwusLny7UbvHsjkU0Z2fNUDDTsxQKw@mail.gmail.com>
To: "Carr, Chris (GE Intelligent Platforms)" <chris.carr@ge.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Issues removing RRECOMMENDS packages with BAD_RECOMMENDATIONS
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
X-List-Received-Date: Tue, 07 Oct 2014 10:27:23 -0000
Content-Type: text/plain; charset=UTF-8

On 7 October 2014 11:20, Carr, Chris (GE Intelligent Platforms)
<chris.carr@ge.com> wrote:
> I've switched over to the RPM package manager and rebuilt the deploy image.
>
> From the list that I had in BAD_RECOMMENDATIONS, none of the packages appear in the deploy image.

So we're found a difference in behaviour between the rpm and opkg
backends.  Can you file a bug for the opkg backend in bugzilla?
(oe-core->deployment).

Ross

