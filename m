Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12CBAE00F11; Fri, 22 Jul 2016 02:24:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD5E1E00D5F
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2016 02:24:39 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id q128so7379078wma.1
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2016 02:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=xENAb8t+1TcQKHnu4mIlBj0Xx3H40x+mchJC4x3uBc0=;
	b=iGOvcaZeIOVzAy3hGQaIhKGp0pIhOSuVbdoDgDyvuIPzOvO76b9Izysn/HgUep8Wym
	UPUvxV29G8eNplg2Xy8tBxk1inDDpRDBIU8H7Li1fcYzMvrDpo0ENqdNcB0hftE9Z1Rf
	IEPLH0WvI5LVrc40Cwh3V7fIrXeWoxAAGF/hU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=xENAb8t+1TcQKHnu4mIlBj0Xx3H40x+mchJC4x3uBc0=;
	b=mbWzrzJpOWqvOsuYQbQYnmDSjBDPH1dfYh+PFipEi9sOyFb7q86Ni6ZXst9oxsXXqd
	qc2FrqUUR5SZDG7wc8dqF4pTHvqj5ug0u+2wsLBwdat7efDgVKixYOj7h0GEY9LblYmP
	sp63Qk0ZoU0wF8P+B9+SozO2wLV++Eba3WfXGlhCt2+IT9lQYd8GNfJarZUGMiDfH/gk
	paE+rBNew/KvPzGwDaJLTpmStYAhi9vXoBJwrryKCOSmFcNBuh0mM+VPUyqHEGRse+Wb
	OB8rwjk+lzhR11jJDJ3oIUI+iOvkMYaWnAPBDnJUiP4wL7dfEcdffceHM0DiJLOk+nOL
	4Tgw==
X-Gm-Message-State: AEkoousjVRRcnJA0TmNEFrb8+EGZ8kldREZc1bxHZ4n6MER3bL5h+el9RYFTvvEtRQznRbLgTE1c4s5wCtHUIbmZ
X-Received: by 10.28.193.8 with SMTP id r8mr4003389wmf.13.1469179478446; Fri,
	22 Jul 2016 02:24:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.163.225 with HTTP; Fri, 22 Jul 2016 02:24:19 -0700 (PDT)
In-Reply-To: <CAP3RZoj5vuUqnWy5EAPtT2u2RLND-teYNT-q9RUOTa=uSFp2qQ@mail.gmail.com>
References: <CAP3RZoj5vuUqnWy5EAPtT2u2RLND-teYNT-q9RUOTa=uSFp2qQ@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 22 Jul 2016 13:24:19 +0400
Message-ID: <CAP71WjySt2KB1U1KgmWcs9Xg85W43GF0=hWHxLL++=FnXhz+_A@mail.gmail.com>
To: jags gediya <jags.gediya@gmail.com>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: regarding bbappend file
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
X-List-Received-Date: Fri, 22 Jul 2016 09:24:42 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jul 22, 2016 at 1:18 PM, jags gediya <jags.gediya@gmail.com> wrote:
> Can i have 2 bbappend file for single recipe?
> I want to add something to the recipe whom bbappend file is already
> available but i don't want to modify that file directly. I want to add new
> bbappend file for that recipe in my custom layer, Is it possible?

yes, you can have more than 1 .bbappend for a recipe. Note that the
files will be appended based on layer priority.

