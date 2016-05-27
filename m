Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F11B7E00DE0; Fri, 27 May 2016 08:30:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4370FE00D04
	for <yocto@yoctoproject.org>; Fri, 27 May 2016 08:30:40 -0700 (PDT)
Received: by mail-pf0-f169.google.com with SMTP id y69so42758285pfb.1
	for <yocto@yoctoproject.org>; Fri, 27 May 2016 08:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=6iq1tR4Sabbga4V4qFWdbZ1s4QdjqAXcOQUyvOgD0Fo=;
	b=yi1j/Z60SyuKepCHEaGBRhhuKCB58A8/T6wkxfL9wlOzB5yjNMw4GXSli/i/RymuQO
	6vMd6Y5sdI00VHGQH6In4qOxD6ZqH4kDQjZm1fC9+c4UFIJMdzZXQW16bgQ9gDzbRvpc
	VAFFskQioECM2oC8c9wqxOy9bO3LNTMLnCpARj4PJi2NEpI/AkUvKU1Vqjl6pbkRXcgV
	X82nt5Qfcb3a8DZV4dT/ZoII7t/W/WmEOJIy4TQrcdJBj/KgItNfdpX4ag7khLBnxQLG
	jobMEvZyvGOtSmrC/V+Zzw9amXk4MX++QU3rkSuzCrAkkP+YnFtWc3/QUvG08jzD7du/
	feZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=6iq1tR4Sabbga4V4qFWdbZ1s4QdjqAXcOQUyvOgD0Fo=;
	b=mkmXLp/w+ntM1tr+EuDi9GGsX1Wkc8DtjclNMm4GhyiiRooU7jiRdf+np0y0xSE26b
	4wObGGPxQAaJoJuR28o/uAkahWlfyRIygjSDzQjFWomrO4lNX/FgxmSLUzv0hmDoHy0P
	RPrQPSxVTTt3uxXoA5vLYc1K6FuDe/fPCHL8MCDxvHr94PkgHJ8kC5qyABvA3LyoQHMB
	sSUiiqTpNXWdF45eI7J4QvG0xnq/bZKp1Z15sM2XkRdT0VA0wicbEjnqhKKxdfSVpuOF
	4KpxkZrviT10jJwFemTnmPBlYbwJA4nO24aGaGnRwlfQhqhj7s7eukj7YTZ1txr50a4z
	7CIA==
X-Gm-Message-State: ALyK8tKjk5n7/6ldsdlpDI5zzxf7++9vTbv+2CFofAxT/uN85LqluzfBV7CLw/DfxamYaWB7
X-Received: by 10.98.98.69 with SMTP id w66mr23526434pfb.20.1464363040448;
	Fri, 27 May 2016 08:30:40 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:6482:eae7:e298:1e72?
	([2601:202:4001:9ea0:6482:eae7:e298:1e72])
	by smtp.googlemail.com with ESMTPSA id
	u78sm9188125pfi.78.2016.05.27.08.30.36
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 27 May 2016 08:30:38 -0700 (PDT)
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E57164025@fmsmsx111.amr.corp.intel.com>
From: akuster <akuster@mvista.com>
Message-ID: <57486812.3050604@mvista.com>
Date: Fri, 27 May 2016 08:30:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <9ADD3FDE8B189B4AA2F8A3C711F8155E57164025@fmsmsx111.amr.corp.intel.com>
Subject: Re: Yocto Project Status WW22
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
X-List-Received-Date: Fri, 27 May 2016 15:30:43 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 05/27/2016 08:14 AM, Jolley, Stephen K wrote:
> Current Dev Position: YP 2.2 M1
> 
> Next Deadline: YP 2.2 cut off: June 13, 2016
> 
> 
> SWAT team rotation: Tracy -> Alejandro
> 
> https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team
> 
> 
> Key Status/Updates:
> 
> *        Python3 is nearly ready to merge, 4 oe-selftest issues remain and some toaster issues. There are likely others but the tests aren't showing them and I'm not getting bug reports so the code will merge once the known issues are addressed.
> 
> *        gcc6 is about ready to merge, just one issue, linux-yocto-4.1 on beaglebone to address
> 
> *        Patches are being held up as some large series (python3, gcc6) are needing testing and we're trying to get these done before moving to other patches. We're aware there is a backlog building again and will work through that as time and autobuilder resources allow.
> 
> *        RP is out of contact Fri-Mon due to vacation/national holidays so this may delay some final merges, mut is continuing development. RP typically does a lot of testing over weekends to make the most of the autobuilder but this won't happen and hence there will be a slow down.
> 

If the autobuilder is going to idle this weekend, can we build
krogoth-next from

git://git.yoctoproject.org/poky-contrib akuster/krogoth-next

- armin


> *        YP 1.8.2 passed QA and is due for release shortly.
> 
> *        YP 2.0.2 is in QA and will be out next week.
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
>             WDD 2574 (last week 2626)
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

