Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63197E00DA3; Thu,  1 Aug 2019 03:00:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5651BE00CD7
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 03:00:41 -0700 (PDT)
Received: by mail-wr1-f42.google.com with SMTP id f9so72873150wre.12
	for <yocto@yoctoproject.org>; Thu, 01 Aug 2019 03:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=2XPigjX3+Hb0M3VLjXL9htt1vRThzFMqTYV5KvvvG9I=;
	b=eZvNQHFYQbiY8xIQilIGqSUMTjcpGlM3p4jVZb/MFrubTPGS55fnUPFXRG/P0HG73n
	J1vOwwJuCgzTTcowPpOh2WJdfmN6y+cV7JYW3q55PhiqQagxKTy1WFBeGAe9qAsI2XM4
	vMqdlQt5E7fGYqK2uaJMsvNmpF54VzV/jUbUI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=2XPigjX3+Hb0M3VLjXL9htt1vRThzFMqTYV5KvvvG9I=;
	b=KTrf2ny9vAh2g4xBNVXJuahl+3yblhs0JX7jskL3gqFeLrOq35yiQ3jVQ0wd7ZyXNd
	+VEF3w+PYF3qJ84/m+g/hbZIyioVn2B+ngKCfLin7ZvF+Y9bk/4NvLKI4LMzwbeTJDHY
	Y3ILEBDzvz0Uy65Ty7ZinjIa3fe0TjPp7Nfi4pZDNYa3JTAbfOknJrNzZEnG0s+CTwRT
	HT6KhA2npqXVQXLRbckWixuaVSWKG9d26MNrfzHpArLRL6vLyl7chkprGY71/sbsWWFD
	cDbyaacgNte00r9MbA+GYX+4CJgJXQaxX6m3+apv1zBPs9wtQ8mzpr2mHe0ROGQEQ85W
	sk2Q==
X-Gm-Message-State: APjAAAWSIiecr2Yfvidnv9Fx0miK5yCmR6u0Zqb3zmZpMr/6iIMyaUll
	F79OaFzjQDro4Ez2qLGQvds3LQ==
X-Google-Smtp-Source: APXvYqxyZUzlmMoBU63ZAOvnhgbhNjbcPCkwGM3QC8LXK59YN8KlLufvc9GFNc4fNmITHNXkinjK5w==
X-Received: by 2002:adf:db46:: with SMTP id f6mr1756561wrj.212.1564653640379; 
	Thu, 01 Aug 2019 03:00:40 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	o6sm148658247wra.27.2019.08.01.03.00.38
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 01 Aug 2019 03:00:39 -0700 (PDT)
Message-ID: <5cb64dc7da80fdc8b2229b35ca7fe4ed55188622.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 01 Aug 2019 11:00:37 +0100
In-Reply-To: <9DDD2658D1FE414E99172D2DB1E4D04348210BA7@PGSMSX109.gar.corp.intel.com>
References: <9DDD2658D1FE414E99172D2DB1E4D04348210BA7@PGSMSX109.gar.corp.intel.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: QA cycle report for 2.8 M2 RC1
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
X-List-Received-Date: Thu, 01 Aug 2019 10:00:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-08-01 at 07:30 +0000, Yeoh, Ee Peng wrote:
> This is the full report for 2.8 M2 RC1:  
> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=zeus&id=d550d40646e1ca78a4b5d106e1b20831208b4c37
> 
> ======= Summary ========
> No high milestone defects.  
> Two new defects are found in this cycle, both beaglebone and
> genericx86-64 facing shutdown hanging (BUG id:13461) and ptest failed
> (BUG id:13465). 
> One timeout issues observed in ptests was mdadm (BUG id: 13368).
> 
> ======= Bugs ========
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13461
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13465
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13368

Thanks Ee Peng, Yi and everyone else in QA!

I think we do need to fix these regressions but they're not serious
enough to block release of M2, or require a rebuild. As such I think we
should release this.

Any other feedback from anyone?

Cheers,

Richard


