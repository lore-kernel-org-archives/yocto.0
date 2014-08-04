Return-Path: <kevin.thierry@open.eurogiciel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 727C8E007DC; Mon,  4 Aug 2014 00:29:42 -0700 (PDT)
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
	*      [74.125.82.178 listed in list.dnswl.org]
Received: from mail-we0-f178.google.com (mail-we0-f178.google.com
	[74.125.82.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C7E2E007D3
	for <yocto@yoctoproject.org>; Mon,  4 Aug 2014 00:29:32 -0700 (PDT)
Received: by mail-we0-f178.google.com with SMTP id w61so7279120wes.9
	for <yocto@yoctoproject.org>; Mon, 04 Aug 2014 00:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=open.eurogiciel.org; s=google;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=QC+fs/pxPgH9g3c6Sfu34IOoNCIRvNB6yWaN40ktQIw=;
	b=Wj6Su7XXNa50OnPpTs9KpMh7ZILxj20Z++Av7s/55yqmYPRfRYphFuj0KNN8rHk4TI
	XqUpxzjmMGzBJm2nociIU/pKBoNqrdtgnRSOF/b9ABgspLSG/fVa3XQdoRyAluYZCq0B
	MLjZXKbuJqA4lrdptN8vPPlk5VBbNPo7h8/Ms=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=QC+fs/pxPgH9g3c6Sfu34IOoNCIRvNB6yWaN40ktQIw=;
	b=E0XjSrrMLwy2nAhWny9dMSHW+TWdLw+iULWJ6wRFuwnhaROj+1zDvsdKVwSz6wuJND
	b4lY4odfeIzQGXIM9mHZl9s0Z+6GK3QTJrktrcdA0bEo09IqBAuNjXRLDWT4T3Cp5YYv
	UJACoaTjeaiY4QZ/H8RWpdhI+NzlVigBF3BR3soXGqXWRBLBD395ABjTcGYIMHmPmKCQ
	wJjvdEabh6iAq8hPXaaV4+3HrLVC/JoFUUAYYkHZ5R66rrFJrAIqfM6GZvsdrqA8xkmd
	D1eBCge8iwA0V2tiUdMrOAB+dL2Zu531D15lM2Wy2rWLaRkel2yQiJtaWn81ooOBt+uY
	31CQ==
X-Gm-Message-State: ALoCoQkNCP+LbMbQjSLaYbeKyd2e8XbTETAwG96wluiY2u3Ldx2yJdmkoZXNnXQo68idYBLdl8C1
X-Received: by 10.180.210.167 with SMTP id mv7mr27576440wic.72.1407137371436; 
	Mon, 04 Aug 2014 00:29:31 -0700 (PDT)
Received: from [10.19.3.25] ([46.18.96.46])
	by mx.google.com with ESMTPSA id h3sm41477113wjn.10.2014.08.04.00.29.30
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 04 Aug 2014 00:29:30 -0700 (PDT)
Message-ID: <53DF384D.8040300@open.eurogiciel.org>
Date: Mon, 04 Aug 2014 09:37:49 +0200
From: =?ISO-8859-1?Q?K=E9vin_THIERRY?=
 <kevin.thierry@open.eurogiciel.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
References: <53DA58C9.50705@open.eurogiciel.org>	
	<53DB6430.8090608@dynamicdevices.co.uk>	
	<53DB660B.6040700@open.eurogiciel.org>	
	<53DB66D8.3060500@dynamicdevices.co.uk>	
	<53DBA085.7010705@dynamicdevices.co.uk>
	<1406930148.6981.9.camel@ted>
	<53DCB0C6.6000405@dynamicdevices.co.uk>
In-Reply-To: <53DCB0C6.6000405@dynamicdevices.co.uk>
Cc: yocto@yoctoproject.org, general@lists.tizen.org
Subject: Re: [Tizen General] Build Tizen with yocto work-flow
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
X-List-Received-Date: Mon, 04 Aug 2014 07:29:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


On 02/08/2014 11:35, Alex J Lennon wrote:
> On 01/08/2014 22:55, Richard Purdie wrote:
>> On Fri, 2014-08-01 at 15:13 +0100, Alex J Lennon wrote:
>>> Getting some errors here having followed the "Using Scripts" section.
>>>
>>> I am guessing it might be as I'm using Ubuntu 14.04 LTS x64
>>>
>>> This is for MACHINE=genericx86
>>>
>>> e.g.
>>>
>>> | make[3]: Leaving directory
>>> '/home/ajlennon/yocto/poky/build/tmp/work/x86_64-linux/rpm-native/git-r0/git/plugins'
>>> | make[2]: Leaving directory
>>> '/home/ajlennon/yocto/poky/build/tmp/work/x86_64-linux/rpm-native/git-r0/git/plugins'
>>> | make[1]: Leaving directory
>>> '/home/ajlennon/yocto/poky/build/tmp/work/x86_64-linux/rpm-native/git-r0/git'
>>> | install: cannot stat 'scripts/find-supplements{,.ksyms}': No such file
>>> or directory
>>> | WARNING: exit code 1 from a shell command.
>>> | ERROR: Function failed: do_install (log file is located at
>>> /home/ajlennon/yocto/poky/build/tmp/work/x86_64-linux/rpm-native/git-r0/temp/log.do_install.2441)
>>> ERROR: Task 99
>>> (virtual:native:/home/ajlennon/yocto/meta-tizen/recipes-tizen/rpm/rpm_git.bb,
>>> do_install) failed with exit code '1'
>> Its because there are bashisms in that metadata and you have dash
>> as /bin/sh.
>>
>> I've already mentioned this at least once but have been ignored :(
>>
I reported the issue in our bug tracker 
(https://bugs.tizen.org/jira/browse/BTY-21) and made a correction for 
the issue in the rpm recipe. I will launch a full build using dash in 
order to catch the remaining "bashism" but if you find some more, please 
report them to me.
> Yes, thanks Richard, I'd cracked onto that. I wonder if it would be
> useful/possible to add a class of warning to bitbake "Bashism detected"
> or some such?
>
> Next problem is that grub on my x64 system doesn't seem to like being
> used to install x86 files ... :)
>
>
Kevin

