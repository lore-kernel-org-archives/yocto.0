Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EB42E00C2D; Fri,  2 Oct 2015 09:10:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 081C1E00927
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 09:10:04 -0700 (PDT)
Received: by pacfv12 with SMTP id fv12so112426058pac.2
	for <yocto@yoctoproject.org>; Fri, 02 Oct 2015 09:10:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=WVbRbv/AUudSecUUBUhPMxSAMc4CVJWkflhwj2AmnsM=;
	b=jvJ5SjlHctI8ocjoCmJ0q+YF2zw/Hl+QqB7TM3hAMDZ/PYOZ5dZ41qq5a+BsG92vVn
	HVkFByJetJkX0FBuX7/2SJ/Mdu/Otxpwf0BZulJ80D976lMx+XbEpIGOTIv8PR5XrsHI
	yx9KyQZTcYMbI5eyY+vancD+2oV9oi65hwr2iF+1O2PPib/3dFj41CDBDbrPqByNze5u
	3YUh9T9uou614WOL2cv4rMq4cV1MnGuEzdcUI3MrfuGj1/LhniKq60bVmdQSCwSaeX97
	24v5em4WfsMg870FGQDinBsBjorJ+5e2W+Jb10yxxNnASKX62r75PNMQp/vMuikyXGHn
	h8mg==
X-Gm-Message-State: ALoCoQnQfjoFr8zSVERg31E64FcH4TOEGYoAeS7ZSdaDwlzpHWf/rVSXrAez7wzEB+qHCjsaycE9
X-Received: by 10.66.165.106 with SMTP id yx10mr21259349pab.102.1443802204054; 
	Fri, 02 Oct 2015 09:10:04 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1239:a426:81af:5432:4ceb?
	([2601:202:4000:1239:a426:81af:5432:4ceb])
	by smtp.googlemail.com with ESMTPSA id
	ql5sm12755072pac.46.2015.10.02.09.10.02
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 02 Oct 2015 09:10:03 -0700 (PDT)
Message-ID: <560EAC5A.4020204@mvista.com>
Date: Fri, 02 Oct 2015 09:10:02 -0700
From: akuster <akuster@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E5569E669@fmsmsx111.amr.corp.intel.com>
In-Reply-To: <9ADD3FDE8B189B4AA2F8A3C711F8155E5569E669@fmsmsx111.amr.corp.intel.com>
Subject: Re: Yocto Project Status WW40
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
X-List-Received-Date: Fri, 02 Oct 2015 16:10:08 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Stephen,

Isn't the next meeting next Tuesday? Will there be a meeting since ELCE
is in full swing next week?

- armin

On 10/02/2015 08:26 AM, Jolley, Stephen K wrote:
> Current Dev Position: YP 2.0 Final (rc1 build in QA)
> Next Deadline: YP 2.0 Final Release Target: Before Oct. 30, 2015
> 
> SWAT team rotation: Ross -> Cristian
> https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team
> 
> Key Status/Updates:
> 
>   *   Two failures were encountered during the rc1 build. There is fix queued for the wic selftest issue, the other -lsb kernel module test sanity failures are still being investigated.
>   *   Many fixes for issues were merged into master including some of the 'random' failures, thanks to all who've worked on them!
>   *   The rc1 build is being put through tests by QA
>   *   Prelink looks like it may be broken in release for non FHS/LSB library setups
>   *   A successful fido 1.8.1 point release build was queued for QA, 2.0 is taking priority
>   *   Now the sstate issue is fixed, a 1.7.3 build will also be made soon as autobuilder time is available.
>   *   Reminder:
>      *   We have renamed YP 1.9 to YP 2.0.
>      *   The current version that is in development will launch as YP 2.0 in October, 2015.
>      *   The release name for YP 2.0 is 'jethro'.
> 
> Key YP 1.9/2.0 Dates:
> YP 2.0 Final - 2.0 Cut off: Sept. 28, 2015 noon GMT (rc1 build in QA)
> YP 2.0 final Release Target: Before Oct. 30, 2015
> 
> Key Status Links for YP:
> https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.9_Status
> https://wiki.yoctoproject.org/wiki/Yocto_1.9_Schedule
> https://wiki.yoctoproject.org/wiki/Yocto_1.9_Features
> 
> Tracking Metrics:
>             WDD 2170 (last week 2165 )
> (https://wiki.yoctoproject.org/charts/combo.html)
> 
> [If anyone has suggestions for other information you'd like to see on this weekly status update, let us know!]
> Thanks,
> 
> Stephen K. Jolley
> Yocto Project Program Manager
> INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124
> *   Work Telephone:          (503) 712-0534
> *    Cell:                                (208) 244-4460
> * Email:                             stephen.k.jolley@intel.com
> 
> 
> 
> 

