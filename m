Return-Path: <ronan.lemartret@open.eurogiciel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 838B8E005BB; Fri,  1 Aug 2014 03:04:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17770E0056A
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 03:04:01 -0700 (PDT)
Received: by mail-wi0-f178.google.com with SMTP id hi2so1056512wib.11
	for <yocto@yoctoproject.org>; Fri, 01 Aug 2014 03:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=open.eurogiciel.org; s=google;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=p1P8ZQVHJ0khdTi6826dIUTJHfae83R0IRUzk5ucxEY=;
	b=ckM5Ls6pk86yyolnu9I5TFKiBvY79ilZ8k6wrjb0Ho5AY+9+qoagEBjcewI1piASkz
	tWoAIEiUeGsgS3hHSgoP5McDzLPRHysiKUaaowDlS27KowDu8ksE1auUgZPJB8x2uFZX
	zuFl1YHxxzDo/vR9QjPDoxwWHw8EP3Tk7SvzA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=p1P8ZQVHJ0khdTi6826dIUTJHfae83R0IRUzk5ucxEY=;
	b=GqKfU7bPPREtNv9KdbTdiRGARwNoEruRRCN+tyXvg9ky8Lr0UTSJTpzVzr8MNBmE97
	yTFSkwpOOJWdpYB7a1H3ayLRXB3PQpOoeWiApJQQniBaO4/KlV7HAaWFVYGanjVDXC9o
	CNpZDCvLbe1vZajdA4kU0iDQKBgkVJtpaXnpr9WC2J/lCqgITXTOQY0gtzJqLmjKVr6+
	32mFp9LEN+hj5Sz8vp8igATosCqEgB/7dNsQaKNHGZXjPeWzOXUyIy9iVqPpWg/KAFfV
	hSLjErVetlG9jkV3Gvc29sB1bdaZrYg3efhZogeR1gZCUli2InESjWSMGBKx36FMToJy
	yIYw==
X-Gm-Message-State: ALoCoQktZjoJJ7X+oCNmhAhOp4nFKcVKpsBNERnh2Zgx689HIClLRNqIF/iavdWw7WJ6ML+XvBSV
X-Received: by 10.194.104.72 with SMTP id gc8mr6136431wjb.105.1406887439844;
	Fri, 01 Aug 2014 03:03:59 -0700 (PDT)
Received: from [10.19.3.35] ([46.18.96.46])
	by mx.google.com with ESMTPSA id ft6sm3342737wic.0.2014.08.01.03.03.58
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 01 Aug 2014 03:03:59 -0700 (PDT)
Message-ID: <53DB660B.6040700@open.eurogiciel.org>
Date: Fri, 01 Aug 2014 12:03:55 +0200
From: ronan <ronan.lemartret@open.eurogiciel.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
References: <53DA58C9.50705@open.eurogiciel.org>
	<53DB6430.8090608@dynamicdevices.co.uk>
In-Reply-To: <53DB6430.8090608@dynamicdevices.co.uk>
Cc: yocto@yoctoproject.org, general@lists.tizen.org
Subject: Re: Build Tizen with yocto work-flow
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
X-List-Received-Date: Fri, 01 Aug 2014 10:04:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Alex

>
> I'm interested in trying this out. Presumably it should be trivial to
> add Mono support by pulling in meta-mono?
>
> Have you looked at this on ARM target platforms at all? e.g. i.MX6 ?

No, we did not test it for ARM yet, but it's in the pipe.

If try a ARM build, we would be interested in your feed back.

Regarding Mono, it shouldn't be an issue.

Regards,
Ronan

