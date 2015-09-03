Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8D45E00D6A; Thu,  3 Sep 2015 07:15:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qk0-f182.google.com (mail-qk0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9656FE0049B
	for <yocto@yoctoproject.org>; Thu,  3 Sep 2015 07:15:28 -0700 (PDT)
Received: by qkfq186 with SMTP id q186so21062139qkf.1
	for <yocto@yoctoproject.org>; Thu, 03 Sep 2015 07:15:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=MPVpq0v5T0ton1CxbuEN6t6+0ZC0s0dafSKXdcHL3kE=;
	b=Q77pQnSO+Vb1ofTT0k7be2xhJaqmB8/Mfpreea3xPFBGNP2JPyXHyYqkb4DYnygQdB
	gHF2oem2IvLLmZpHnFPlK73SydyOtMzW4NRLPdet5dj29v9IxLU2VbhxBzKzYwBuUnPe
	Mjmda6zbNx3X0lyQU8iUndCb0oITL+vMD5zIIiF87Q8MD6WF7KbiclUFDKEioB4Hpd0f
	O9tsKzD62y2EXag8ADk/gj+CRpWVI7sawYUdF1ymB73/QH0Brf4ZGjdaliIpw1OnwNfi
	yR3ZtrHuMFu0DA7TrjNadBMWK0sktD8OQqRiQt54ejotVURnRQLpduU8L9yYqtXbXlD5
	4GDA==
X-Gm-Message-State: ALoCoQkvMOvE8NGBBMS6MpPzXR/9Cdjr6K0RToMxpjybxVBOVxfQeQa0X4li6Nedib+UJP8bGNKV
X-Received: by 10.55.209.210 with SMTP id o79mr39528093qkl.43.1441289728156;
	Thu, 03 Sep 2015 07:15:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.98.9 with HTTP; Thu, 3 Sep 2015 07:15:08 -0700 (PDT)
In-Reply-To: <3535088.es0MYKo6Wx@peggleto-mobl.ger.corp.intel.com>
References: <10D57FBA9FD7C14FB49EE17590E1AF9453C91CA3@svr-exc-03.intern.wipotec.de>
	<55E84BA1.2000609@linux.intel.com>
	<3535088.es0MYKo6Wx@peggleto-mobl.ger.corp.intel.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 3 Sep 2015 16:15:08 +0200
Message-ID: <CAP71WjxT4cAZ37ECK0Y--oSJrMOZ3HhonW7p_Pyjs7gSPAdB6Q@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Autologin after bootup on the genericx86 machine
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
X-List-Received-Date: Thu, 03 Sep 2015 14:15:32 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 3, 2015 at 4:04 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Thursday 03 September 2015 08:31:13 Leonardo Sandoval wrote:
>> On 09/03/2015 04:36 AM, Gorny Krystian wrote:
>> > I'm using the fido branch and building a genericx86 machine for the
>> > core-image-rt image. After my image boot up I always need to login as
>> > root first, is there a way to login and start my application
>> > automatically? I can't find an easy way to do this.
>> On your local.conf, add the following
>>
>> EXTRA_IMAGE_FEATURES = "debug-tweaks"
>
> I don't think that's going to help, that just ensures the root password is
> blank.
>
> If your application is a background service (or a console/framebuffer
> application) then you probably will want to start it as a service i.e. you'll
> need to create a initscript (if you're using sysvinit) or a systemd service
> file (if using systemd). We have some classes to help install and set these up
> (update-rc.d and systemd respectively - these are covered in the reference
> manual or you can e.g. "git grep 'inherit.*update-rc.d'" to find examples.
>
> On the other hand if your application runs under X then you should probably
> look at meta/recipes-graphics/mini-x-session; you should be able to use it as
> a template for creating a session script to start your app.

this is what we use for our images:

https://git.linaro.org/openembedded/meta-linaro.git/tree/HEAD:/meta-linaro/recipes-linaro/auto-serial-console

