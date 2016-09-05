Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 054B5E00F1C; Mon,  5 Sep 2016 13:50:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	*  2.4 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.48 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CDF6E00F18
	for <yocto@yoctoproject.org>; Mon,  5 Sep 2016 13:50:24 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id c198so162566089ith.1
	for <yocto@yoctoproject.org>; Mon, 05 Sep 2016 13:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=Zx4cnCivA7cHKxD45QoXgfGl8vmz14Rb8xeUW8AJQJI=;
	b=bnliKIRfuI67wcbW9/BltX/DigIWrAV+XTzD5f1PogTM2E2XtM8qakQeLyUADDkjeC
	udw3IGw1ufpkxpAL4Zh/YUOjaRiG9o8l77lwOiwK0nTp6VHUrqpPRSm6bsfKc2ztEtEy
	CQ0sjjeAHN8Iwl0RzRctGKNPURFERis5u1pJuyg0ogfE2eDUhNTUPfpWa1VQr+aq5eU0
	sLrSETdRlN5P2DonMoGpbTT4sQNp4jp65i5Z+jAQdyASMGx8U1TagjWjj9gjLeFPELZj
	YWVVk1UMQPx30tHmoEfAvbcD+xipHENLOftWTZo7WPyivkm18C8IB2xOgzlxyH9MYULq
	K/Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=Zx4cnCivA7cHKxD45QoXgfGl8vmz14Rb8xeUW8AJQJI=;
	b=azuN+c7S+0g8SLMt4lPTtyxqc8mJc5CfR79uREJmb06C37pFlEpvE0J5CUpnyeLibW
	AKV8WiWIOol+5LbQSJ+2rVYYQU1UrDcmzxxqvrAnzoraHn85jxSOU4l5umI3yP2bu9r5
	osG/2V+l4P3y07huRVLM6+6rwDh3aIG5n7TSLkoGGgADjuCwai887FZFPdFJLYcQe5fq
	KOIm65SxhJ3opZXXHmex23gd2qJvDvtD5uJ/thfeT4FGjqaUXJe6QAVcAQ9uepJZ04uK
	LvUEysJzrcAYf4cNlQBsIXGeR8i/1Op3yyP38rnsbiJy5gJZHb4j38TNTHdT0zjuLW7o
	UDrw==
X-Gm-Message-State: AE9vXwNNSQPc8/A0dIPVk00R0jyasyIe9kRqm/v2NQf0M4n5BpXoGWu0FMQxqjdFXg3N7w==
X-Received: by 10.107.201.81 with SMTP id z78mr1311023iof.143.1473108623912;
	Mon, 05 Sep 2016 13:50:23 -0700 (PDT)
Received: from [192.168.0.10]
	(CPEbc4dfb2691f3-CMbc4dfb2691f0.cpe.net.cable.rogers.com.
	[99.250.193.223]) by smtp.googlemail.com with ESMTPSA id
	z125sm9251512itc.0.2016.09.05.13.50.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Sep 2016 13:50:23 -0700 (PDT)
To: "Daniel." <danielhilst@gmail.com>
References: <52148e60-3e1c-5c7e-96c3-56b124c2fd64@gmail.com>
	<CAF3SDA4dyTKjjNaNZqFUCRrb=_Nc8uZCnRLM+TBdMTu4E6y1Cg@mail.gmail.com>
From: nick <xerofoify@gmail.com>
Message-ID: <330cb3c9-8548-d0a0-4317-4a31a55c67ca@gmail.com>
Date: Mon, 5 Sep 2016 16:50:22 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CAF3SDA4dyTKjjNaNZqFUCRrb=_Nc8uZCnRLM+TBdMTu4E6y1Cg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Interested in Helping Out
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
X-List-Received-Date: Mon, 05 Sep 2016 20:50:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 2016-09-05 08:49 AM, Daniel. wrote:
> https://bugzilla.yoctoproject.org/buglist.cgi?query_format=specific&order=relevance+desc&bug_status=__open__&product=&content=
> :)
>
Thanks Daniel, 
I had some ideas for the naming issues currently being discussed as related to open embedded and the
Yocto projects. If people are interested in my input I would be glad to share it.
Nick
 
> 2016-09-02 18:00 GMT-03:00 nick <xerofoify@gmail.com>:
>> Greetings All,
>> I am interested in helping out here. In addition I do have some experience with the project
>> so just giving me a heads up on where to start or what is the current focus would be great.
>> Nick
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 
> 
> 

