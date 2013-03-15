Return-Path: <insop.song@gmail.com>
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DE52E01366;
	Fri, 15 Mar 2013 03:51:27 -0700 (PDT)
Received: by mail-wi0-f175.google.com with SMTP id l13so360202wie.14
	for <multiple recipients>; Fri, 15 Mar 2013 03:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=cGx3n3W+noTncEtZp8Sq/dQDV8wcA09b3iLzsFVJMMY=;
	b=SYF0GZztxw4tUPQNuJz+Rday48JLt+aAn32HAba2aCIk55FPYohkchNqKNMguRYYMr
	d41wZ5Rj1aAyD4wdWHunYRIh8CvgrT1WvVnnspQNiCJhAwTb3rrxsCkPvUWlxoTAsfvQ
	GFLJel03fbx0pBOHMhzRra5gmk4835md1BMvnUTuHk8P3kowCpLm+b39znJgYP6octS+
	vt/h3H+k3z1zJlkw6V0DOKfvrDrA46DkqLK32kVhAQmBie/r4eRw2Yx+MOkKC8fPh6fH
	TQUTI7H+duhhCIbUI1NGvYJJhq8C1kYkWSOMmg/0VLi20YPXR7phVYusaC0kgqdKhtmi
	Yz6Q==
X-Received: by 10.194.76.37 with SMTP id h5mr10002993wjw.21.1363344686826;
	Fri, 15 Mar 2013 03:51:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Fri, 15 Mar 2013 03:51:06 -0700 (PDT)
In-Reply-To: <5142C353.8020209@windriver.com>
References: <CACzyEJ8DDZqhSDWvTN9vBtpZ910eGtAC9GGtvNEqHpM0x1hxVg@mail.gmail.com>
	<5142AE66.8010105@windriver.com>
	<CACzyEJ9VV89cDL3YB2ru-FAiAwjtOjs_An9gRjoUW5oHe93uaA@mail.gmail.com>
	<CADkTA4PJkFwNshUgcYTKKM+GDHTevMGPTj7t-M1eNeAL+XE_Zg@mail.gmail.com>
	<CACzyEJ_mjkVe-zo=uKug=m+NHjhr3YJeOY0F46L8pYzmhfXgzg@mail.gmail.com>
	<5142C353.8020209@windriver.com>
From: Insop Song <insop.song@gmail.com>
Date: Fri, 15 Mar 2013 03:51:06 -0700
Message-ID: <CACzyEJ-JvAJn1pm+nHedQjFG+2a90y-ZyS8A-HwrgSKCCTCLaw@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>,
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>
Subject: Re: [meta-realtime][PATCH] add sched_deadline reckpies-kernel for 3.8 kernel
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
X-List-Received-Date: Fri, 15 Mar 2013 10:51:28 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Mar 14, 2013 at 11:44 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
>
> Are you trying to send via git send-email ? The following is the
> way that I'd relay through gmail:
>
>   > git send-email --smtp-server smtp.gmail.com --smtp-user
> bruce.ashfield@gmail.com --smtp-pass <paswd> --smtp-ssl ~/rr/
>
> And to generate the patches and introductory email, look at
> the oe-core scripts/create-pull-request.
>
> That's the best and easiest way to send patches.
>

Thank you for the information.
I have to create a new application specific password from gmail (2
phase password).
Once I set that up, I am able to send patch/cover email.

Regards,

Insop

