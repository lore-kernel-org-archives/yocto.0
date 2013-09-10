Return-Path: <jc@vtkloud.com>
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5C8EE01549
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 00:40:27 -0700 (PDT)
Received: by mail-we0-f171.google.com with SMTP id t61so5291378wes.30
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 00:40:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=9w/xN9KRk/eQH4moOkLg4HsqLpCBYdsDWDzEhOAd16k=;
	b=T10NG7uaJJkoeVX9ASi6NBFpFuvhjrj0aVhwxpjLhVZH+fuwNoNoExoNAxZrruilmT
	ZHO+rb73OxWsAwRfNm6QJOJOy7SzmI9H/o6IOpYM3k2WKcBRQYDEnLvXX8PhGUmwyI9S
	RQarbJ2VqEHghpYJ67vc7wWQ3OIqiOV75x+Qapn0mjdQxcSqEqNd5t29hw5qmTR2ZUYb
	03MazX2CcZuzH12cva9VCCFm7NXKPAe+CuBk/opolHCWQNZNlVt/sJBEuG6Bd2yP8hul
	PyMjyQqUBrAP1UQHKxDya/yCJjhjNtkInEfpiUXjjBOYyed924NX3IfwAhuYtTePN2gg
	7QAQ==
X-Gm-Message-State: ALoCoQlFsE3pvUkaqOE+OU7pCyCkgsr1ZHuMPXAb0+Q5rJocxV8gnZaLNuRuhMRJGAfveIvj8g4p
X-Received: by 10.194.21.131 with SMTP id v3mr661487wje.44.1378798826251;
	Tue, 10 Sep 2013 00:40:26 -0700 (PDT)
Received: from [172.24.63.121] ([94.103.137.126])
	by mx.google.com with ESMTPSA id jf2sm1522436wic.2.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 10 Sep 2013 00:40:25 -0700 (PDT)
Message-ID: <522ECCE7.3010606@vtkloud.com>
Date: Tue, 10 Sep 2013 09:40:23 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: Yi Zhao <yi.zhao@windriver.com>
References: <522EBE6C.5060108@vtkloud.com> <522ECC78.7030700@windriver.com>
In-Reply-To: <522ECC78.7030700@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: misleading dependencies between packages
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
X-List-Received-Date: Tue, 10 Sep 2013 07:40:28 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear Yi,

> 1. If your remote repo has updated, you need to recreate the repodata 
> by using createrepo
> 2. You need to run "smart update" to update the information before run 
> "smart install package". If you want to install package from remote 
> repo, "smart update" is required because "smart install package" 
> doesn't update the information automatically.
>

Yep. I did both of course. But even without it: an update would go from 
r3 to r5, probably not the reverse :(

But yes, I ran both commands prior to this failure

Best regards,
Jay

>
> Thanks,
> Yi
>
>>
>>
>> And indeed, I do not have r3 of libuuid1 but r5. This is not the 
>> first time I run in this issue, it's unfortunately quite common. And 
>> I can't even figure who is generating libuuid1 :(
>>
>> Any idea?
>>
>> Regards
>> Jay
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>


