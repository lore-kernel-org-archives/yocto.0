Return-Path: <insop.song@gmail.com>
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C2EFE01474;
	Fri, 15 Mar 2013 04:55:37 -0700 (PDT)
Received: by mail-wi0-f169.google.com with SMTP id l13so479372wie.0
	for <multiple recipients>; Fri, 15 Mar 2013 04:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=kJu8odyCsXYF7NUWWPF1Uuwal1QUYYyLu7lrm/UWUhg=;
	b=0b9QaE2Oev7D79ITUskifpkG2TEh2VEc9FSXLiJwdebl2x1WvZDJMsRy+r+WvO2Mad
	ncnwtQrD09CsTuD+lQDQG08Jddg9uTsd0wqqp+BijYOekhnnoM32keqdfVaKqh1CfQRI
	8DiBIolJ3IpCg1B1h1soACKIq59YNYzgPoHKzRmsHEDZcreSj3rS40rFTSFPLw0XNpy7
	NxtQDqsavEhsHCzM10xTSTO1ADN/+BkR/mzsbHoUJSlz8K1+MljAcalx5X9pi1KKn00U
	Fs1CRd+Hgnmb7acWPkZ4G50kg3WtdltIkLgQvBvjsJc7qwsrpjL6qJxuhiFWz9GeaUM5
	ayQQ==
X-Received: by 10.194.76.37 with SMTP id h5mr10400392wjw.21.1363348536097;
	Fri, 15 Mar 2013 04:55:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Fri, 15 Mar 2013 04:55:16 -0700 (PDT)
In-Reply-To: <CADkTA4M=wxdo1_iBB-RJQWLcJHUvemn+6ng1GbTZzhBJfwaZnw@mail.gmail.com>
References: <CACzyEJ8DDZqhSDWvTN9vBtpZ910eGtAC9GGtvNEqHpM0x1hxVg@mail.gmail.com>
	<CADkTA4M=wxdo1_iBB-RJQWLcJHUvemn+6ng1GbTZzhBJfwaZnw@mail.gmail.com>
From: Insop Song <insop.song@gmail.com>
Date: Fri, 15 Mar 2013 04:55:16 -0700
Message-ID: <CACzyEJ9w_dj7j5htzp1shV-y6GEP3rdn2KMPFBV6RSEjF2eugw@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
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
X-List-Received-Date: Fri, 15 Mar 2013 11:55:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Mar 14, 2013 at 11:27 PM, Bruce Ashfield
<bruce.ashfield@gmail.com> wrote:
>
> I was just merging your changes, and realized that gmail may have dropped
> your schedtool-dl recipe.
>
> Can you resend it with your updated series ? I have another schedtool
> recipe here, but it's against an older sched_dl release, so I'd like to
> compare it to yours and merge the two of them together.

I've sent out a new patch that has schedtool_dl.
I used Juri's github as a main repo, which he has been updating recently.

So now, I will look more on scripts for testing using these applications.
Also will look to see the test and data collection using ftrace. I've
done this before, but I will make it more easier to reproducible using
meta-realtime layer.

Let me know if you have any suggestion.

Regards,

Insop

