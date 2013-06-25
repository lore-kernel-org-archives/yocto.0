Return-Path: <marc.ferland@gmail.com>
Received: from mail-we0-f174.google.com (mail-we0-f174.google.com
	[74.125.82.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0540CE0155D
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 14:27:56 -0700 (PDT)
Received: by mail-we0-f174.google.com with SMTP id q58so9652622wes.19
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 14:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type;
	bh=rFn5LMjDrERXBlEIb7s/EdUi1rt9ZRAjgT0jRt4Q7Tg=;
	b=b8HB2uyhtGgjCmmKD9YRzaQV0Ip+FqGPgFuqxCkf62c1jInut+elePYhQNEfG9ri50
	M4L02cJzURZAgnjcnk6z/y/5icAhELsqoi+TThEp8bUJYUKXaLxDJiJ7rdptPwtvKVai
	LINinn457cdg4glBpZhwzW2sYsZTfVZA1PMhLb9JIrmadEDzLuCXYwtEbdiVFtlZShKj
	mkNPUAVV2iozUNS2P+2Qbrcdj7PHllWYDuvahbD+mQmC3RgkPApGdJtJe7uqEEb2+uZd
	3mWQRt4aKGqCjdkXIUslFEz93u+2wDCAafIwiNOxy3+lntEtSBeAFOE1AGeQYVmyPWnf
	qs0A==
X-Received: by 10.194.21.231 with SMTP id y7mr532640wje.94.1372195675068;
	Tue, 25 Jun 2013 14:27:55 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPSA id f8sm6992780wiv.0.2013.06.25.14.27.52
	for <multiple recipients>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Tue, 25 Jun 2013 14:27:54 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Tue, 25 Jun 2013 17:28:04 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <87fvw6arm3.fsf@sonatest.com> <51C9F9EC.6070305@windriver.com>
Date: Tue, 25 Jun 2013 17:28:04 -0400
In-Reply-To: <51C9F9EC.6070305@windriver.com> (Bruce Ashfield's message of
	"Tue, 25 Jun 2013 16:13:32 -0400")
Message-ID: <874nclc23f.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.2 (gnu/linux)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: variable override question
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
X-List-Received-Date: Tue, 25 Jun 2013 21:27:57 -0000
Content-Type: text/plain

Bruce Ashfield <bruce.ashfield@windriver.com> writes:

> On 13-06-25 03:59 PM, Marc Ferland wrote:
>> Hi,
>>
>> I have a linux-yocto_3.4.bbappend file in which I try to override the
>> KERNEL_FEATURES variable. I want it to be empty (I don't want the
>> netfilter stuff that's there by default).
>>
>> So I've tried (in my bbappend):
>>
>> KERNEL_FEATURES = ""
>>
>> but somehow the netfilter.scc file still gets merged in.
>>
>> What am I doing wrong?
>
> Nothing. It's an artifact of the _appends that are present
> in the linux-yocto recipe bbappends. You can clear it, but they'll
> still append.
>
> Those config fragments weren't optional when the recipes were
> created, we've since evolved to the point where they are.
>
> I squeezed in a change to linux-yocto_3.8 before the yocto 1.4
> cutoff, and have changed linux-yocto_3.4 to match, and strangely,
> was about to send a consolidated pull request that contains the
> change.
>
> You can either locally make the same change, and clear:
>
>  KERNEL_EXTRA_FEATURES
>
> or wait for my latest update.
>
Nice, exactly what I was looking for!

Thanks,

Marc

