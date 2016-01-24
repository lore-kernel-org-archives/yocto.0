Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9315DE00BD2; Sun, 24 Jan 2016 15:11:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.46 listed in list.dnswl.org]
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53AB3E00B46
	for <yocto@yoctoproject.org>; Sun, 24 Jan 2016 15:11:44 -0800 (PST)
Received: by mail-pa0-f46.google.com with SMTP id ho8so70519228pac.2
	for <yocto@yoctoproject.org>; Sun, 24 Jan 2016 15:11:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=+2maHQKi4DLPIlCJ8bovqCvw/sgg3FMnHPUrg7lzSnE=;
	b=LvHrj0xlDjcc/D0rJJiRghmwyoJC12uwy4yepZoRsJ2W8zL2yN45kzGjkX7y3pZtop
	p+VrBh9uSeIw/gJXrkuB6TdjHq2EGLjvBjMbifhMtvqV8G0XDpE89OPHIhrNW5EZC0ie
	IN4QJQdRf/+1bfzAzyCowI6h8HWDs5PjLadcRMQLkCkr6CASZvoOa87e0GPQnh2eHhTF
	4j3na1s0ezcnL+g3PqnCSYUUjzTzFrtTtMQXipj9mbUvrGMcWZi09wj3TunqKu5orL7i
	rikUcOUdtxmPIb/Vq9SspprwYHNtDLpPiLynl1oaoWimzaeUQqFPlCcvnQ1cgpusU4GM
	7Ncg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-type
	:content-transfer-encoding;
	bh=+2maHQKi4DLPIlCJ8bovqCvw/sgg3FMnHPUrg7lzSnE=;
	b=PIK5vfNThwi8sU6Ncc7qkVMtEJco1NX/uAoo/AyDZkWkaSHsg+g3AhCpSd64ZBNwNW
	HaYoTHYx+vBQhWVLpg1+jgVgiDtqaNqV7nWqLuDA1mgwQ195nN7GmQJq9gM5+zCTA0SE
	GOkEoYEsObPmwyJC0YlHNmh1elmelWNflKg44ErY1I9I54YYXELGY4uIOEV8Pb8N1t4m
	+EBtNQoMEvL55GLubmvF2q193m68F4RAxm2B2wKCZqYlTenrHkW9UpLKIF0DHVr3ptM/
	jG94MLz1yA7ZGEOdZwWEV590IzVRkL2m4xTKp5RPBhKm7nCVfR89htnbFzpoQAGpGsk0
	BDLw==
X-Gm-Message-State: AG10YOS3EleGMpKWw3hLdVftQ+B7ALeblsndof7F3HItvbDK+Tl4o0uDPAfXJe5H/M/WLw==
X-Received: by 10.66.149.7 with SMTP id tw7mr21745982pab.72.1453677103725;
	Sun, 24 Jan 2016 15:11:43 -0800 (PST)
Received: from ?IPv6:2601:202:4000:1239:b584:3e69:b68e:9dba?
	([2601:202:4000:1239:b584:3e69:b68e:9dba])
	by smtp.googlemail.com with ESMTPSA id
	m87sm23743431pfi.47.2016.01.24.15.11.42
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 24 Jan 2016 15:11:42 -0800 (PST)
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E56FAE346@fmsmsx111.amr.corp.intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <56A55A21.50504@gmail.com>
Date: Sun, 24 Jan 2016 15:11:29 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <9ADD3FDE8B189B4AA2F8A3C711F8155E56FAE346@fmsmsx111.amr.corp.intel.com>
Subject: Re: [OE-core] Yocto Project Status WW04
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
X-List-Received-Date: Sun, 24 Jan 2016 23:11:48 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 01/22/2016 08:29 AM, Jolley, Stephen K wrote:
> Current Dev Position: YP 2.1 M2
> Next Deadline: YP 2.1 M2 Cutoff (Feature Freeze) date is January 25, 2016 noon GMT
> 
> SWAT team rotation: Randy -> Benjamin
> https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team
> 
> Key Status/Updates:
> 
>   *   Yocto Project 2.0.1 was successfully built and is due out of QA soon, likely to release next week.
>   *   Yocto Project 2.1 M2 cutoff is on Monday, please ensure any patches expected to be in M2 are sent to the mailing list for review before then.
>   *   We are looking pretty up to date with patch review/processing although there is a large queue in -next pending final checks but which should merge soon.
>   *   We are keeping an eye on CVEs and ensuring they get merged to various branches as we can find the bandwidth but we're low on manpower for this.

What CVEs need merging? New ones or ones submitted for stable branches?

- armin


>   *   I'd like to highlight that there are increasing numbers of stack overflow questions about the project and help in providing good answers on there would be appreciated.
>   *   WDD and bug trend continue to rise to new heights. We are simply receiving more bugs than we have resources to fix/close.
> 
> Key YP 2.1 Dates:
> YP 2.1 M2 Cutoff (Feature Freeze) date is January 25, 2016 noon GMT
> YP 2.1 M2 Target release date is February 12, 2016
> YP 2.1 M3 Cutoff (Feature Freeze) date is February 29, 2016 noon GMT
> YP 2.1 M3 Target release date is March 18, 2016
> YP 2.1 M4 / Final Cutoff: March 28, 2016 noon GMT - Stabilization only milestone.
> YP 2.1 Final Release Target: April 29, 2016
> 
> Key Status Links for YP:
> https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.1_Status
> https://wiki.yoctoproject.org/wiki/Yocto_2.1_Schedule
> https://wiki.yoctoproject.org/wiki/Yocto_2.1_Features
> 
> Tracking Metrics:
>             WDD 2581 (last week 2524 )
> (https://wiki.yoctoproject.org/charts/combo.html)
> 
> [If anyone has suggestions for other information you'd like to see on this weekly status update, let us know!]
> 
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

