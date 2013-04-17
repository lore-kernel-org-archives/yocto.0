Return-Path: <twoerner@gmail.com>
Received: from mail-wg0-f41.google.com (mail-wg0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B4EAE0140A
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 15:26:26 -0700 (PDT)
Received: by mail-wg0-f41.google.com with SMTP id e11so2791140wgh.2
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 15:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=lgpWJIj9EBlPv13M7KVF8J42GTyzhc655ks4nMEJIKI=;
	b=VP0XG4adumwcjh3jeFSu9b9H/fzgcqorNZ1tennZNMQONptSV3l7XMyzs1R0neO/i+
	smJ7MLtlu1PbOoP9ZbTFKjAIiZh0Y1EvzMiPOfFZdQQshtLvZgs8fSo1LmC/kM2n4AAj
	KGziZbiF57vTs1pGI+GcOOD32qOChy6zHpDQ8BiZAAw5CfLQpIoM9HF1FhrwulDuN4vj
	IN5nB7FXVlrsCWDLxShi3xRGi/NpGYKi31hCKyaou99wbdapaNCina/IWg6R7W9lv4Cw
	nzNLCREUX4eiwAo5dnz+aSl08wtZVMLWAsAkkL0koDd+omDKnUHkmQl2eQqJsm3KQuni
	cdmw==
MIME-Version: 1.0
X-Received: by 10.180.80.3 with SMTP id n3mr13912154wix.20.1366237585082; Wed,
	17 Apr 2013 15:26:25 -0700 (PDT)
Received: by 10.194.167.73 with HTTP; Wed, 17 Apr 2013 15:26:25 -0700 (PDT)
In-Reply-To: <516EBBE7.8060201@mlbassoc.com>
References: <alpine.DEB.2.02.1304171022430.10912@oneiric>
	<2155264.hXQStR7GGJ@helios> <516EBBE7.8060201@mlbassoc.com>
Date: Wed, 17 Apr 2013 18:26:25 -0400
Message-ID: <CAHUNapRQdV5hM8rMrChYD4joa1N0eN9iok6+C4UU07AaJv04Zg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: writeup on the mechanics of FILESEXTRAPATHS and bbappend files
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
X-List-Received-Date: Wed, 17 Apr 2013 22:26:26 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Apr 17, 2013 at 11:12 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> I also think it would be good to point out the use of := in the
> FILESEXTRAPATHS
> assignment and why it's important.

Knowing that the := operator will put your directories first is only
useful if you also know that the underlying mechanism will take the
first such files from the given directories it encounters :-) What's
to say bitbake doesn't look at all the directories/files and take the
last ones?

