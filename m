Return-Path: <insop.song@gmail.com>
Received: from mail-we0-f178.google.com (mail-we0-f178.google.com
	[74.125.82.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92611E004AB;
	Mon, 11 Mar 2013 09:08:12 -0700 (PDT)
Received: by mail-we0-f178.google.com with SMTP id o45so3904801wer.9
	for <multiple recipients>; Mon, 11 Mar 2013 09:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=u5vMlXuuwpkig/4TBM1TyVDF5AWDEZ4ZEbwP33OZDGo=;
	b=psnadn6AkhnycgODsRK4HUs2B2TZjFCo/up1kvW7CqZk9SLegLEwrnL9lN9FeW1GAb
	TsEJ7oEKYN75O/x4ySBLneWKGhqHWOOJZD5ZUxgtim7lRa+AwNqdUD5XOzzZRkudyRwa
	caRpX8h6uV5IUuLr3U+rdZL3tvj8utM63ordgK0wFAzwHw2skq+7U6a58bZCu2Ui+zBv
	MYQAg3okCYYIWmD0Z8u2zwOAmz49LfZbbthjm+BFQiD7cmEjfpYY5gRgW6vFlxfVwmRJ
	czRvGnfga3HAAu/v9GJhp+pPTgtDPUrGmZ2YfZvpubmIiiMBRur37tr8zWk62RNF4B38
	NwoA==
X-Received: by 10.180.80.35 with SMTP id o3mr13860230wix.9.1363018091147; Mon,
	11 Mar 2013 09:08:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Mon, 11 Mar 2013 09:07:50 -0700 (PDT)
In-Reply-To: <513DEB6C.7050903@windriver.com>
References: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
	<513A195A.5040505@linux.intel.com> <513A75CB.3050308@windriver.com>
	<CACzyEJ9MHVD8GyVEwXkdndmQy7DQ_Tt-M0n6-0dWG7LOHgVR5w@mail.gmail.com>
	<513D4F78.9010307@windriver.com>
	<CACzyEJ-YObwTGoOcLGXGiXeoLia+RdtcLmSt9gDLXJG5hBHeoA@mail.gmail.com>
	<513DEB6C.7050903@windriver.com>
From: Insop Song <insop.song@gmail.com>
Date: Mon, 11 Mar 2013 09:07:50 -0700
Message-ID: <CACzyEJ8cw3Ve8LdUVEqFse0yBuUC6_9-2brB4c4ZUYitqCVSeQ@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>,
	Development list for the linux-yocto repositories
	<linux-yocto@yoctoproject.org>
Subject: Re: A question on adding a new program to a new meta layer
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
X-List-Received-Date: Mon, 11 Mar 2013 16:08:13 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Mar 11, 2013 at 7:34 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
>
> As an example, I have a schedtool recipe that uses the
> git://gitorious.org/sched_deadline/schedtool-dl.git
> repository with a 4 patch series to enable full sched_deadline/EDF
> support versus the custom repository that you created on github.
> We'll work to unify the edf and other -rt support in the upstream
> projects, so we want to reference those trees whenever possible (unless
> we get so much development, that a tracking tree makes sense).
>

Agree, It's better to unify. I will look into and will update you more on this.


> Also, don't be concerned that I show up as the only maintainer in the
> meta-realtime layer, as I merge parts from your existing layer, credit
> will be given and if it is ok with you, I'll have you down as a maintainer
> or co-maintainer where it makes sense.
>
> Since I'm going to be out of the office for the next few days, I may
> push out my initial merges without much testing, so if you have a
> chance to test, and send patches .. that would be a great help.
>

Could you tell me how to get the access to the git.yoctoproject?
If you are busy due to OOO, don't worry on this. I should be able to
manage in local git until you come back.

Thank you.

Insop

