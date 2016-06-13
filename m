Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F75CE00E8E; Mon, 13 Jun 2016 09:02:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9138DE00E85
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 09:02:21 -0700 (PDT)
Received: by mail-pf0-f179.google.com with SMTP id c2so47529598pfa.2
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 09:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=dFVH1W+ZuakymR57m+nY5LRObiRmmaSwjnspnFqa4xs=;
	b=16tPr7AqESdFb1WB+V46WZW7/3QIfKbykkQ3AM4lJmRf3/KNdsYZfvWVCdirIQkhAx
	V5uKlOfj3Z3Qdgs/cUJ0YafVjYnZ1fv9PGkKaG8PnOge7Qt4lVvT1dhdDV++POCsdiQl
	TuEHhHa3pQJVLGYw/ta7hqGx1E0ARiZ8fkXVmiaKo7TnY9lLczp0Sr/ruq1WSOjxVdYy
	HCsgK21jXCZLu+s59jyr6daXZkxp7YjpFKSTod+PuHWyaseVO3WzrQcit878CIzfQcDJ
	b+jyIl0jyEmzvUI5gdVHq8GpKuwpdWn/YWB1LeCex/cE4UfS3x5WzzeaZxXymDpGhIOk
	92SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=dFVH1W+ZuakymR57m+nY5LRObiRmmaSwjnspnFqa4xs=;
	b=A+e2f3rGvcFXEg1m0eLQNGRGaMqw1MZbwvErA/3vnRkOzDTS4Gx+EpSkd2EuDSZog5
	5Tep1uqTU0lHHNKl8GdhuNUia8KrCqIv+sL4xzXeNAyY9CA44ndYFezshR2bnFJD1qx8
	lDMQ1vOfqGxclpEnsiMcWoPozwDkFz5NCvYI6COlvP1a1f4W8JmToPpccqAFIt/7T6t8
	kjuZWDSakU5F1kg26qrLzSZ0fBNiZApZ1m1Xaj8JEX92Euwv/o1ogT4plHdELij2x9yE
	66Hxy+R5z7baMIH0G+6QfWn9JBGG5IL/SFh7EGrSwcrM4jTSxN5DoqhqTdHcbIuKQV70
	fzNg==
X-Gm-Message-State: ALyK8tITSpRl2QNCUstDfM5yZFA7CnaRLn9idKOPePbHZrs+zC4oxobSY/bj7r6RFa4uWTQt
X-Received: by 10.98.102.25 with SMTP id a25mr14495341pfc.65.1465833740502;
	Mon, 13 Jun 2016 09:02:20 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:3123:fb4c:c37d:c171?
	([2601:202:4001:9ea0:3123:fb4c:c37d:c171])
	by smtp.googlemail.com with ESMTPSA id
	o193sm18953850pfo.12.2016.06.13.09.02.19 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 13 Jun 2016 09:02:19 -0700 (PDT)
To: yocto@yoctoproject.org
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E57185190@fmsmsx111.amr.corp.intel.com>
From: akuster <akuster@mvista.com>
Message-ID: <575ED90A.6020901@mvista.com>
Date: Mon, 13 Jun 2016 09:02:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <9ADD3FDE8B189B4AA2F8A3C711F8155E57185190@fmsmsx111.amr.corp.intel.com>
Subject: Re: Yocto Project Status WW24
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
X-List-Received-Date: Mon, 13 Jun 2016 16:02:24 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 06/10/2016 08:21 AM, Jolley, Stephen K wrote:
> Current Dev Position: YP 2.2 M1
> 
> Next Deadline: YP 2.2 cut off: June 13, 2016 [3 days - Monday!]
> 
> 
> SWAT team rotation: Jussi -> Maxim
> 
> https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team
> 
> 
> Key Status/Updates:
> 
> *        We continue to see various python v3 issues however these are on the most part comparatively minor.
> 
> *        The Centos 7 auobuilder issues look to have been caused by XFS, switching to ext4 seems to have resolved it.
> 
> *        We're expecting some large patchsets for toaster bootstrap v2 -> v3 and changes to move OE-Core/Sato to gtk3+, am hoping to get these into M1.
> 
> *        Richard is starting a discussion on multi-configuration builds on the openembedded-architecture list.
> 
> *        YP 2.0.2 was released last week
> 
> *        We're now working on 2.1.1 with trial builds in preparation for a release

Can I get a sense of when this might happen? when is a code freeze for
this. I am wondering if I have time for another pass through master and
submitted patches. As the Yocto Project follows a more formalized
process, I am hoping I can get a heads up on when a new release is going
to happen.

- armin
> 
> *        2.2 M1 is due next week
> 
> 
> Key YP 2.2 Dates:
> 
> *        YP 2.2 M1 cut off would be: 6/13/16
> 
> *        YP 2.2 M1 release would be: 6/24/16
> 
> *        YP 2.2 M2 cut off would be: 7/18/16
> 
> *        YP 2.2 M2 release would be: 7/29/16
> 
> *        YP 2.2 M3 cut off would be: 8/29/16
> 
> *        YP 2.2 M3 release would be: 9/9/16
> 
> *        YP 2.2 M4 cut off would be: 10/3/16
> 
> *        YP 2.2 M4 release would be: 10/28/16
> 
> 
> Tracking Metrics:
> 
>             WDD 2599 (last week 2622)
> 
> (https://wiki.yoctoproject.org/charts/combo.html)
> 
> 
> Key Status Links for YP:
> 
> https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.2_Status
> 
> https://wiki.yoctoproject.org/wiki/Yocto_2.2_Schedule
> 
> https://wiki.yoctoproject.org/wiki/Yocto_2.2_Features
> 
> [If anyone has suggestions for other information you'd like to see on this weekly status update, let us know!]
> 
> Thanks,
> 
> Stephen K. Jolley
> Yocto Project Program Manager
> INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124
> *   Work Telephone:        (503) 712-0534
> *    Cell:               (208) 244-4460
> * Email:                            stephen.k.jolley@intel.com
> 
> 
> 

