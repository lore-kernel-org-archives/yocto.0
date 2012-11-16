Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6B7DE0032E
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2012 09:57:00 -0800 (PST)
Received: from mail-da0-f72.google.com ([209.85.210.72])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 16 Nov 2012 09:57:00 -0800
Received: by mail-da0-f72.google.com with SMTP id r28so3860065daj.11
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2012 09:56:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=Nk4QvCMgidJOdIgSGWDJVvwQagP7InLb8kQK4jI1Dd8=;
	b=lSKAOzQfsqeAqxvmMjAkOnmSnuX0DlNkprOl7A5aySL45sdBc9EQpx+sN2mbQrKyQb
	+v2R8DuUIT8iK9LwyNaGNlg42L1lOjYXv9f+xrvcC8SNg0IUlSNJubSo9iUNuS4lDdvA
	qYerF8i/70cYqcIs55v9cE95QtKdeXmCLj9KBxZPLBi6XwxUtndOaD6Bh7778aT61hJY
	iAdWQDRJwF+12X6/Tgzn7yJ9h6ROzcaAIEOSxscY8ELXTS3INQjg0FWSSxnKCN/6AL4i
	cvjPyAyiaAlDN48BZ61VHAjB1kdQH2cwP0MF7CtZzj3xlgIfAT1Fb5i92cJWQVvJ1epl
	utpg==
Received: by 10.68.223.230 with SMTP id qx6mr11621477pbc.159.1353088615364;
	Fri, 16 Nov 2012 09:56:55 -0800 (PST)
Received: by 10.68.223.230 with SMTP id qx6mr11621449pbc.159.1353088615177;
	Fri, 16 Nov 2012 09:56:55 -0800 (PST)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id is3sm1555729pbc.6.2012.11.16.09.56.53
	(version=SSLv3 cipher=OTHER); Fri, 16 Nov 2012 09:56:54 -0800 (PST)
Message-ID: <50A67E68.5070404@intel.com>
Date: Fri, 16 Nov 2012 09:56:56 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: William Mills <wmills@ti.com>
References: <50A4DA8C.6020507@axis.com>	<50A53378.6030602@intel.com>
	<CA+YB3rbLAE8Bt2-PU0iFxh2QwtVWwE=kb3ooFc5bOdX=Cj66qQ@mail.gmail.com>
	<50A53B1B.20600@ti.com>
In-Reply-To: <50A53B1B.20600@ti.com>
X-Gm-Message-State: ALoCoQkyBerxgQa5D16DvFXi9TiJFI9vNjFewbx0aszc8sUsFJH4Eoboi9ygXYPS8u9sualyOShxsO81iEwWdQCuMhFE2S+u+yANHk2+yT4asCv9k3feJjk5IEm9c+Fdq18DNswYYWQzaTHagNjezfr5hXaEa6w4qw==
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Virtual machine images from yocto developer day
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 16 Nov 2012 17:57:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/15/2012 10:57 AM, William Mills wrote:
>>>> Is it possible to get the vdi-files or appliances (which ever it was)
>>>> used for the labs? It would save some valuable time when doing labs
>>>> with
>>>> beginners here at work.
>>>>
>>>> Best regards
>>>> /Fredrik Hugosson
>>>
>>> Which labs? For the intro labs, the computers were running Linux
>>> natively. I
>>> took some notes on how I set up those machines I can send you
>>> off-list if
>>> you'd like - let me know.
>>>
>>> Things *should* just work if you're using a recent release of Ubuntu,
>>> Fedora, or OpenSUSE and follow the setup instructions in our Quick Start
>>> Guide:
>>>
>>> https://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.html
>>>
>> Just a side note that I should have materials available on the website
>> by the end of this week
>
> I would encourage the presenters to share the setup instructions also so
> that some one can follow the course ware.  Some of the steps in the labs
> assume setup has been done.

I'm all for sharing the info so that this training material can scale as 
much as possible. Looking over the notes I took, they were mostly about 
how to set up the desktop environment for the lab computers. I do intend 
to improve that to include further details about the actual build 
environment setup.

I'm taking my last bit of vacation time for the year starting today and 
will be back on Nov 26th, so I've added an item to my todo list and will 
get back to this eventually.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

