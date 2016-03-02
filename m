Return-Path: <h4nn35.work@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE158E00D4F; Wed,  2 Mar 2016 05:15:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (h4nn35.work[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54FF2E00D33
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 05:15:14 -0800 (PST)
Received: by mail-wm0-f49.google.com with SMTP id p65so79467966wmp.1
	for <yocto@yoctoproject.org>; Wed, 02 Mar 2016 05:15:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=R9gqGU3f5YZ0naz1Fi0K0hABWtt4X+mzk1C1xgFnleM=;
	b=P0VNABn1+3lEz8Khf2muJDhpjeVPyxfRqdBlb267tpAcykZ6V51yXAEWRBYox7wZLc
	dGbxZhOJuQTUOcJhm1YoSNEdps7Qe5KVmfWJUKwEWqPCIuYCZvPCYbJqkrbFI200ijjX
	S/vzh+fvxi8P/WawNc+haFWjmCzHvGMOa7CPK+yNkrZV+svbONLXy97M8P9t0eQZUpai
	TFRy/nSvKEwjIRs7LFBoDmMfftpSkFk18Ot8NsP+pdBtSpltigIQBFzOVA+AlgTt4QMM
	sCUF9fztEjRFzNvmyd+zTOxwu4Z+gYl04tICUsqm9se+nZ7C+udVY4gTJXPUv3w80CuH
	wv0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=R9gqGU3f5YZ0naz1Fi0K0hABWtt4X+mzk1C1xgFnleM=;
	b=CQQ49BDzxinlVa/YiJJfCneo7nhxQoMaI5+6I3Svmn5pMOf7mbx3gzHq3VXeM3p8gC
	Ng0tV2VlENQPsQY9cPuxqTJcOOyaeVsNc+o5y1Z4uYPjVy1EzKJNO6qz+PfdbcF1Hcsm
	/M7uZPCGLA/6IERUv/aGwmvOTkN7Wsvs+KMaMBmKpGE7SwCIAJo7Oank/pRbDzGLxpKx
	EWHh4o6LcdXcqjwbBpGmciqzG2aR/MW/Nx1ZGbWsEEbTfb/UyyZ9oVJ4X7V9UK3f4FxN
	qm7+5ueLX4RJpu/riqyV78SqqgM8PAXvdYF7FRr/rP/i7OoiEz9md81Lz/qTIlXiBW0O
	bMRw==
X-Gm-Message-State: AD7BkJLQJKyy8Y9hsOF5iD0zbp6qpo9PmlVTwA7kpOMpunNouhVZvowiswucOqcrvlOaNKbZm/B3d98NYgIEeg==
MIME-Version: 1.0
X-Received: by 10.194.187.240 with SMTP id fv16mr31374576wjc.53.1456924514138; 
	Wed, 02 Mar 2016 05:15:14 -0800 (PST)
Received: by 10.27.219.20 with HTTP; Wed, 2 Mar 2016 05:15:14 -0800 (PST)
In-Reply-To: <CAJTo0LYJsTjvjUOpUFKTupmg3g6ChdKHm1NuEAyKvyTNp5R+6g@mail.gmail.com>
References: <1456876322-11550-1-git-send-email-johannes.pointner@gmail.com>
	<CAJTo0LYtJC5ROMveR3ze8PwZjYVZrO98bJQ6MubmuPmPog2oaA@mail.gmail.com>
	<CAHvQdo1934XFM62FZfQXs8JrakeCyS-e0q+vUgE-Q+uUAVtOvA@mail.gmail.com>
	<CAJTo0LbfmyO6d3sX5VSi8hLJnWh+cE73UAY4h5Fg=+_7Pkwzog@mail.gmail.com>
	<CAJTo0LYJsTjvjUOpUFKTupmg3g6ChdKHm1NuEAyKvyTNp5R+6g@mail.gmail.com>
Date: Wed, 2 Mar 2016 14:15:14 +0100
Message-ID: <CAHvQdo3MY5j5ktqqtYyAuySGO_ffsWRLfXWy90JLnSQD=94o3w@mail.gmail.com>
From: Johannes Pointner <h4nn35.work@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [xcursor-transparent-theme][Patch] Add several cursors
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
X-List-Received-Date: Wed, 02 Mar 2016 13:15:17 -0000
Content-Type: text/plain; charset=UTF-8

Of course its a hack :)
I will test the changes and send the patches.

Thanks,
Hannes

2016-03-02 13:50 GMT+01:00 Burton, Ross <ross.burton@intel.com>:
>
> On 2 March 2016 at 12:48, Burton, Ross <ross.burton@intel.com> wrote:
>>
>> How do you handle users switching between applications in that case? Or
>> the application crashing and leaving you without a cursor?  If a particular
>> application should hide the cursor them it should just hide the cursor, if
>> the entire UI shouldn't have a cursor then use -nocursor.
>
>
> Or if you're using matchbox-window-manager, pass -use_cursor no, which will
> also hide it system-wide.
>
> Ross

