Return-Path: <insop.song@gmail.com>
Received: from mail-we0-f182.google.com (mail-we0-f182.google.com
	[74.125.82.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CF75E01472;
	Fri, 15 Mar 2013 03:52:20 -0700 (PDT)
Received: by mail-we0-f182.google.com with SMTP id t57so3103553wey.27
	for <multiple recipients>; Fri, 15 Mar 2013 03:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=TVS3u8nAOI1SYFAiNeyK7fQx8BBODNY1sWBfiYaAe/8=;
	b=j+06G6QjO0L+NcC9yJE1xvteBPCze0dZnFyetMTFi83wnkOtcLC1j/NjqiTEdROFbk
	snG1beDySwLtC44h/8v7gwLPy4zjTa9EZWPpkI8oWMAl0zFYT71+6F6hijXHPm4IMTWF
	qeFIdCrIGAk1B8kUQQO/R00KxDYgDcReKIYfve2hKoi2gqgfR+lIrX7wkgq3t1+HToKu
	tAdCD6wun800McCV5K0nHnR4mnt5Zs95gSzQuDbBmRAQCsAu48PZbHsOqEerUbShveGa
	72grIysBFomB4BtehgkQaUo54KieF610kDom/o6dn7bM77jUAlhuBfHiWK2xpWmHpVRb
	4uRQ==
X-Received: by 10.194.11.70 with SMTP id o6mr9597521wjb.29.1363344739593; Fri,
	15 Mar 2013 03:52:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Fri, 15 Mar 2013 03:51:59 -0700 (PDT)
In-Reply-To: <5142C3C5.7030302@windriver.com>
References: <CACzyEJ8DDZqhSDWvTN9vBtpZ910eGtAC9GGtvNEqHpM0x1hxVg@mail.gmail.com>
	<5142AE66.8010105@windriver.com>
	<CACzyEJ9VV89cDL3YB2ru-FAiAwjtOjs_An9gRjoUW5oHe93uaA@mail.gmail.com>
	<CADkTA4PJkFwNshUgcYTKKM+GDHTevMGPTj7t-M1eNeAL+XE_Zg@mail.gmail.com>
	<CACzyEJ_mjkVe-zo=uKug=m+NHjhr3YJeOY0F46L8pYzmhfXgzg@mail.gmail.com>
	<5142C353.8020209@windriver.com> <5142C3C5.7030302@windriver.com>
From: Insop Song <insop.song@gmail.com>
Date: Fri, 15 Mar 2013 03:51:59 -0700
Message-ID: <CACzyEJ9saPeY4tB7FrXAYyqBo4mG9N6Lsd+pYVt5hE+FPEn5qA@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>
Subject: Re: [linux-yocto] [meta-realtime][PATCH] add sched_deadline reckpies-kernel for 3.8 kernel
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
X-List-Received-Date: Fri, 15 Mar 2013 10:52:20 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Mar 14, 2013 at 11:46 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:

>
> I hit send too soon, I meant to point out that in a situation such
> as this, you can ammend your original commit with your second set
> of change and re-submit just the single patch. I can squash the
> commits here, but it's easier to do on your end.
>
> Just summarize the v2 in your new patch email when you ammend/squash
> changes, so we won't forget what was changed :)
>

Yup, sent out a squashed patch just now.

Regards,

Insop

