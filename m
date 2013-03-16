Return-Path: <insop.song@gmail.com>
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CA7DE011AF
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 22:56:13 -0700 (PDT)
Received: by mail-wi0-f174.google.com with SMTP id hi8so1128250wib.7
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 22:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=YPuH6FiM40139Kc2lEWgz+MN0DrvjUKwP4rnrx/nSUk=;
	b=MWcC/wLyyujkhCJyGKSiQCDG7hBRD3Ci7XoLiBqmwr4UWp7bkWxNnARQplbJC/u3hT
	7XLwGnjZLQbx7yQEzfpfoiXMYb7bqq/iskccXn6OUG9nsYBV+z+I9T8WRHzi1v2Tq/H6
	WMDGDX9fM/cgnC5duBpgoTsdXoE7dM6yTroXxUar0AbpCs492vlkNNziE3x5Zukyl7C9
	dgMueyyg1T+lroMfnMo34exmy2hmHuXu0V2SPgGZuoOQ4F7MLbNPFqDXji8zN4+X10fM
	jYv7z43liPm0rLDjdNMANnq9OvbM+J3krfAiI12mkJ5cTg6a3Ds0hro2+N0+jechBW1L
	BzdA==
X-Received: by 10.180.76.84 with SMTP id i20mr6929911wiw.9.1363413372049; Fri,
	15 Mar 2013 22:56:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Fri, 15 Mar 2013 22:55:51 -0700 (PDT)
In-Reply-To: <CAJTo0LY52qE3QMO_FffY3GOkt2VDd+bNbYkX130y3wv34zu5iA@mail.gmail.com>
References: <CACzyEJ_Xuu8P+sFsahsFECHe1bo2NGn=1HdJjASnE4GOdRES4w@mail.gmail.com>
	<CAJTo0LY52qE3QMO_FffY3GOkt2VDd+bNbYkX130y3wv34zu5iA@mail.gmail.com>
From: Insop Song <insop.song@gmail.com>
Date: Fri, 15 Mar 2013 22:55:51 -0700
Message-ID: <CACzyEJ_rkzc1udoPsb2Nh34n8DPefGpp5Xvh=8E-w5d5TumBSg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [question] "icecc: improve interaction with sstate"
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
X-List-Received-Date: Sat, 16 Mar 2013 05:56:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Mar 15, 2013 at 10:45 PM, Burton, Ross <ross.burton@intel.com> wrote:
> On 15 March 2013 22:37, Insop Song <insop.song@gmail.com> wrote:
>> I am using HEAD of master, and I have this error after I use commit
>>
>> "
>> commit 1ceb13dda11645229053fc4840954333f8910ba4
>> Author: Martin Jansa <martin.jansa@gmail.com>
>> Date:   Wed Mar 13 20:04:51 2013 +0100
>> "
>>
>> Could anyone know about this?
>
> Are you sure you're using head?  This should have been fixed with this commit:
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=4022
>
> Ross

Thank you for the information.
Yes, I am on master, see this from my log in previous email.
I have the fix for the bug (4022) in my master, but that don't fix it,
until I my my head to "e609afe4d747059480b406602cab90b7c36a0572"

> meta
> meta-yocto        = "master:1ceb13dda11645229053fc4840954333f8910ba4"
> meta-realtime     = "schedtool:a766d16a1cf4da3c2dd13b8c7e53f89775733187"
> meta-yocto-bsp    = "master:1ceb13dda11645229053fc4840954333f8910ba4"

Thank you,

Insop

