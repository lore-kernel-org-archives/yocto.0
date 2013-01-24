Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DB24E006D2
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 14:23:10 -0800 (PST)
Received: from mail-vb0-f70.google.com ([209.85.212.70])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 24 Jan 2013 14:23:09 -0800
Received: by mail-vb0-f70.google.com with SMTP id s24so12182901vbi.9
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 14:23:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=7MHdfGjUPQTzO2LKUuweUssS200EcTUjDa+7zRl9fUI=;
	b=JzGnswGeltbZKcHZR87QzrYy3zrLa3apa+IN84gMsMaNMGT24crcPmlKKuJMQRpHDH
	PfAcTw1DnwDi3uo7ufVWBjmgtkTZpmEoKXdf1LXwq36B95y6MJ8XKSX4Srltuw4+Itmj
	NUrWB7Ds1FLEuqVoiv0iik9hlU1uoR4QikpM50dc3xIwdY0fK7IDr2q8iPQpp7CR7j7Q
	ek1IVwE2sd+8jIAckXeL67NQ54Zwkx7785iaYtYtFIFfD+IvJHlXWQ0vCR9WYUHSLYRr
	tsrE3L74MUXmxCuIsolXMAgRVW7q7MvKWjWDv+zc/0NSW3sE088guzhdKXJqHW5bM9LK
	SstQ==
X-Received: by 10.220.209.74 with SMTP id gf10mr3812861vcb.10.1359066188945;
	Thu, 24 Jan 2013 14:23:08 -0800 (PST)
X-Received: by 10.220.209.74 with SMTP id gf10mr3812852vcb.10.1359066188754;
	Thu, 24 Jan 2013 14:23:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.151.207 with HTTP; Thu, 24 Jan 2013 14:22:47 -0800 (PST)
In-Reply-To: <CAK18fxFGEU0scchTNAA7i0MZTPdBvqQYSK8is9o1XTbkHNqD2g@mail.gmail.com>
References: <1358094195-23815-1-git-send-email-andrei@gherzan.ro>
	<1358094195-23815-2-git-send-email-andrei@gherzan.ro>
	<211E2BEE5356446CB425C4E2514B1285@intel.com>
	<CAK18fxEkr4fhymhMDx7CGYTX7PGe1C57pw0iGYQaYNO9a1UFhw@mail.gmail.com>
	<B2E17B5564364905A4A31F70FC62F9E0@intel.com>
	<CAK18fxHFBP7RLotsXD50ETttAEjJn4ttiOJw6QMwCcu23C5cAA@mail.gmail.com>
	<CAK18fxFGEU0scchTNAA7i0MZTPdBvqQYSK8is9o1XTbkHNqD2g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 24 Jan 2013 22:22:47 +0000
Message-ID: <CAJTo0LaYpjzj+dRGPXXda1txRNez=03b-xD+_BeSHB-bYZeoLw@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
X-Gm-Message-State: ALoCoQkplHu+HUBql3UE4d24z7xEg6/jxJvlyCgFj3srTPBIfnqMiBb29dXxrsJh/TIAvFdwV+pAopO9gjDsN5x/HW5L6/NdL7QpBtJndsahMK8yDQeOR5G5zpUs8YurlRmcig4SMs/U8DnD53BbJqR3+RLNg5w/iw==
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-intel][PATCH 2/2] fri2.conf: mesa-dri was updated to 9.0.1
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
X-List-Received-Date: Thu, 24 Jan 2013 22:23:10 -0000
Content-Type: text/plain; charset=UTF-8

On 24 January 2013 19:06, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Ping.

Your pings are misdirected - the meta-intel patches should now be
going to meta-intel@yoctoproject.org.

Ross

