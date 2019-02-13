Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11CE8E0091D; Tue, 12 Feb 2019 17:56:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (xerofoify[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f177.google.com (mail-it1-f177.google.com
	[209.85.166.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEA66E0049A
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2019 17:56:41 -0800 (PST)
Received: by mail-it1-f177.google.com with SMTP id z7so1982436iti.0
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2019 17:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=kBIbuVf07JUG0UyQWLAYJ+4KTVAAdoZbvfRDk+dtm0Y=;
	b=W1CdZ8W+TTSW9ReiyUsRtqPidx8QRcG3WvWuZP4CblEPGtEJ1ycEO97jOBrgWv3etj
	z57WavNvGcr0oaUy57MVpzx41kYG4Cxd7qJe5VHENsByaarGP8AxcEz2iPmv3HjOtmPH
	cCwpPJoNAaGGq1ehJfyfQWmRv+rLEtoqADJ9MLgXLGuPCB5j64/AQf5/Y7D4gdQnbjgy
	eJAoTjZk2J+e0JmwfxV5gaT9ZWB+ZMCNQKtKpf4QbibJOY2qntFlDtOXKkrhv3th41hD
	PlhCHXyRsmS+MgUXv+f0/ZVfkO1Gz0SfYu2/oXBnYSHLs9xfpjlv7+wjQIv75Na8mfUz
	wOhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=kBIbuVf07JUG0UyQWLAYJ+4KTVAAdoZbvfRDk+dtm0Y=;
	b=HxkgqLcIRFis5VF9sa0j2H9+HSaJuH2LGNLYgYe4M+mqM6Umzq7Yo6OV79wzMVkzd0
	jx9I0CF0hUTutbs0RIG/IPx6HtoD6+IPC0kVeWcS74D6BaWTRTDSgJB13/8jrvO5qXNN
	A9xrA2UPSZAs7Ga504eA6nhl8tPqp/ECzli/ElunrO58cyItLtJAl8bpT+sUEFX7MZSM
	v++WPiBQ0jSAHb8Hp3E6cjYRdKDl7qnUE6O1nJB5lKlHomr1WkOcTpS8q2VXA/WLNCJ0
	xmgL7dmTT25rqTLJOHEdxtWVtePas/h1SSHjQ+6+F2GubT5B5TdvQZDTI3pz9Y/knL26
	0wJw==
X-Gm-Message-State: AHQUAuauqdLdCYBf9XHonvWTkm/gX/njrR6VSXB4gf8Jixlp5oOgk3TN
	D5oz62gS1ryFebjjMcg7cuw=
X-Google-Smtp-Source: AHgI3IYpXvg03wn/1Aeu8Y/lMbSSjpQ8zq0eRVkkzfgWtfWBA8gBZb5gWV43KhFnzoTMaq1kGoFRuw==
X-Received: by 2002:a02:ac81:: with SMTP id x1mr3816548jan.31.1550023001256;
	Tue, 12 Feb 2019 17:56:41 -0800 (PST)
Received: from [192.168.1.101] (173-230-163-230.cable.teksavvy.com.
	[173.230.163.230]) by smtp.googlemail.com with ESMTPSA id
	13sm2775667itl.1.2019.02.12.17.56.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Feb 2019 17:56:40 -0800 (PST)
To: sjolley.yp.pm@gmail.com, yocto@yoctoproject.org,
	openembedded-core@lists.openembedded.org
References: <01d701d4c22d$f58d1dd0$e0a75970$@gmail.com>
From: nick <xerofoify@gmail.com>
Message-ID: <402129cf-9626-e658-12cb-cc6563fe00e0@gmail.com>
Date: Tue, 12 Feb 2019 20:56:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <01d701d4c22d$f58d1dd0$e0a75970$@gmail.com>
Subject: Re: Yocto Project Unassigned Bugs - Help Needed
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
X-List-Received-Date: Wed, 13 Feb 2019 01:56:43 -0000
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 2019-02-11 12:19 p.m., sjolley.yp.pm@gmail.com wrote:
> All,
> 
>  
> 
> The triage team meets weekly and does its best to handle the bugs reported
> into the Bugzilla. The number of people attending that meeting has fallen,
> as have the number of people available to help fix bugs. One of the things
> we hear users report is they don't know how to help. We (the triage team)
> are therefore going to start reporting out the currently 294 unassigned
> bugs.
> 
>  
> 
> We're hoping people may be able to spare some time now and again to help out
> with these.
> 
>  
> 
> Bugs are split into two types, "true bugs" where things don't work as they
> should and "enhancements" which are features we'd want to add to the system.
> 
>  
> 
> There are also roughly four different "priority" classes right now, "2.7",
> "2.8", "2.99" and "Future", the more pressing/urgent issues being in "2.7"
> and then "2.8".
> 
>  
> 
> Please review this link and if a bug is something you would be able to help
> with either take ownership of the bug, or send me
> (Stephen.k.jolley@intel.com <mailto:Stephen.k.jolley@intel.com> ) an e-mail
> with the bug number you would like and I will assign it to you (please make
> sure you have a Bugzilla account).
> 
>  
> 
> The list is at:
> https://wiki.yoctoproject.org/wiki/Bug_Triage#Unassigned_Bugs
> 
>  
> 
> Thanks,
> 
>  
> 
> Stephen K. Jolley
> 
> Yocto Project Program Manager
> 
> INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124 
> 
> *    Cell:                (208) 244-4460
> 
> * Email:                             stephen.k.jolley@intel.com
> 
>  
> 
> 
> 

Stephen,

I would be glad to help fix them. As I've newer to Yocto internals is there a 
list of trivial bugs or not just to help me get my feet wet?

Nick

