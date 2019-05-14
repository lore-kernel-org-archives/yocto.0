Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B96B3E00DA9; Tue, 14 May 2019 04:32:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (yocto.user.mailinglist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71EEEE00D42;
	Tue, 14 May 2019 04:32:02 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id s17so2328487wru.3;
	Tue, 14 May 2019 04:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=0j7zUdGKzBEMga660Xh9pmm38bgGQJFQN79Kk8WKfyg=;
	b=e4g7ABCPadzQKveBHN6g5jcT7zx1uCf46xvPUhkzPE2w2JCDyKx/mwLbsT4TCu4SOP
	GC1OJY5knaqddfbXvpy+qa2MmdBmaBj6MBuiXRGDA5vCHKF8zFWsxsvjXNi2fcOUeX23
	Pb1b9mFAVbag/HF88Z3C7jvo2TJB5II0b8Rg3S0Hzs1Uqz17+JjnotWydBsbFY9muv2i
	L6qGTGdIZVJVUNTH72OKMPoRjAgOpZlvnMY7Mk7Hwv6XDxsjL17EYOrFTJV/UICw3rnI
	3Rxk72mX5fJQl4EY7JUeBCFdXXqf0trXHIXNWN1HP7MJlK+HMYaxeoRiu92lFsACCOD3
	He4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=0j7zUdGKzBEMga660Xh9pmm38bgGQJFQN79Kk8WKfyg=;
	b=UEHRTVj72Nh6q8GNhLLFfsoo942UcXrytfvRy6G1/QNvugqQTnC14uSwd6XNTqBqaJ
	aflLekLTl6J9WLvi/9Nh1sX8WV7H9zMJj1yEHCoU91DQH/islCqXolsj9QuIh7ZMI2hP
	kP5hVgkjFGUH4oiPiaArCmQ14sNl6YSKvO3gR1AjeBsuLKlRg35qCzAbt8iL9oosHQ3k
	f/WwWqZf4SjIwe20vQldTY2ppzkkWgNJws2H2nhjlhI6N9YzKjiUBUrKTXES8VLahonb
	J2yC/FsMUHUFH2FxaUCPxRdRLDHyTdmaBI4qJU48ckylTmbrmWqMs7e4RoEVHutHvNGg
	bgkw==
X-Gm-Message-State: APjAAAXTroVs4lZflIUZfWc55MqnuVf2A/ziZMcQYHktjRvBfgk/d5ky
	jA5OCH/3zqmPbYhtMXAaoz3RCKD4
X-Google-Smtp-Source: APXvYqwGYCpvFEJTJ890JfISFOhx55sGp5EH39vk+5qqiBHgEUWWXmo9WXGfeKj4fUTC1IXz7v3QbA==
X-Received: by 2002:a5d:4f87:: with SMTP id d7mr8855344wru.192.1557833521329; 
	Tue, 14 May 2019 04:32:01 -0700 (PDT)
Received: from [192.168.42.50] (ppp-2-86-136-195.home.otenet.gr.
	[2.86.136.195]) by smtp.gmail.com with ESMTPSA id
	x5sm16517490wrt.72.2019.05.14.04.31.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 May 2019 04:32:00 -0700 (PDT)
To: "Volosincu, Andreea S" <andreea.volosincu@windriver.com>,
	"yocto-advocacy@yoctoproject.org" <yocto-advocacy@yoctoproject.org>,
	Yocto list discussion <yocto@yoctoproject.org>
References: <A084970538D2234B96D99D06FA9D974FC378C228@ALA-MBD.corp.ad.wrs.com>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <52cca011-a10f-db33-3a7d-a3ed87d7894a@gmail.com>
Date: Tue, 14 May 2019 14:31:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <A084970538D2234B96D99D06FA9D974FC378C228@ALA-MBD.corp.ad.wrs.com>
Subject: Re: Yocto Project Upcoming Conferences and Developer Days
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
X-List-Received-Date: Tue, 14 May 2019 11:32:04 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi,

I think the discussion went a bit off track, which happens on mailing 
lists after x replies;)

Please see my comments in-line.

On 03.05.19 21:01, Volosincu, Andreea S wrote:
> 
> ELCE – Monday, October 28 -30, 2019, Lyon Convention Centre, Lyon, France
> 
>                Yocto Project is a sponsor. We’ll see you on the show floor
> 
> ELCE Yocto Project Summit – Dates & Times:
> 
> Thursday, October 31, 2019 - 8:00AM - 6:00PM
> 
>                 November 1, 2019 - 8:00 am - 6:00PM
> 

As you might know I am willing to help teaching at the EU event.

> Set-up:
> 
> Day 1: 1 Meeting Room - Theater Seating for 100 for Yocto Project talks
> 
> Day 2: 2 Meeting Rooms - Mixed Classroom/Theater seating for 60 & 
> Classroom seating for 40 (for maintainers and users)
> 
> Includes:
> 
> Morning Break for 2 days
> 
> Buffet Lunch for 2 days
> 
> Beer & Wine Reception with light appetizers for 1 day
> 
> The goal for the second day of the summit is to build and bring the 
> community together. We are interested to hear your opinions and ideas on 
> how that day and those rooms should be used for. Please send your ideas 
> to Andreea Volosincu and Philip Balister.

1)

I propose for the YP people to borrow some of their marketing people to 
OE ;) really I am serious about it.
(I already proposed that on the last OE Dev day, but no idea what happened).

There are quite a few cool things going on and they are not known to the 
public.

2) What kind of classes?

2.1) Basic classes
2.2) Intermediate classes
2.3) Advanced classes

It all depends on interest from trainees and from trainers and what we 
would like to present in general those 2 days.

Should it be just some veterans coming together (well the usual 
suspects) discussing things and drinking beer? (Josef will only get 
coffee and water)

... or do we want to bring in new people/beginners and give them some 
overview/initial help with the "monster" as well?

Don't get me wrong, I am delivering lots of YP/OE trainings and there is 
definitely a very high demand for this, but is that what we want to be 
covered in the 2 days as well?

3)

A different approach might be for people to "bring their own YP/OE 
problem" and we'll try to sort it out on the spot (if possible) or at 
least we'll try to propose some guidance how problems could be solved. 
That might be a quite interesting mix of simple and advanced problems. 
Having all the "brains" of the project(s) together in one place might 
help to see what problems people actually have.

Examples I came across:

3.1) People are told to use the YP in their project because the board 
manufacturer made a BSP with it, but they just need a headless system.
3.1.1) They start to remove stuff from the shiny Qt enabled demo of the 
board manufacturer - and fail.

3.2) People build some binaries with the SDK provided by the board 
manufacturer and manually copy them over to the rootfs - and can never 
reproduce again what goes in the field. - even the kernel and the boot 
loader are "maintained" outside of the YP/OE sometimes.

3.3) People build a complete image and upload it to the target with 
every little code change - instead of a different "developer" and 
"test/release" workflow.

3.4) License compliance - what this really exists?

3.5) Static libs (with autotools) (I made a speech about it last time at 
the YP dev day)

3.6) SW update vs. package management - sooner or later this is needed

3.7) Reproduce-able builds - are they?

3.8) Containers - deliver app(s) in containers

...

Now you know why I have so many gray/white hair and why I am traveling 
all the time delivering trainings ;)

> 
> We will call out an Advocacy meeting in a couple of weeks to go over 
> plans and vote on the ideas for the second day of the summit.
> 
> Thanks!
> 
> Andreea
> 
> Yocto Project Advocacy Lead
> 
> 

Regards,

Robert

