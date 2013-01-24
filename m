Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D0A7E0147C
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 04:13:09 -0800 (PST)
Received: from mail-pa0-f69.google.com ([209.85.220.69])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 24 Jan 2013 04:13:08 -0800
Received: by mail-pa0-f69.google.com with SMTP id rl6so10885720pac.8
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 04:13:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=rYR4wqvBWYdzjIrvKiImY1STZVvfhZNhwIabRwkxABw=;
	b=WauorUeNPIsYuVuLDqUeit0tr14ZKXj8spJpNV2a4rZMQ66yCWOaipCsLgbjNbY2wc
	JVPGQDxTQItctsRf+a0l9u3lKQYFnYUhvjO9H7Gj9x8iGCjS7LDHM5kSq0HU/kYvg45+
	8zICzkSQEasCI65hecdQw65iNeOV7iOwZhdubNn8mCm6mq3G8PPubmlWing4QsQd5KNH
	uSkd4zbGT9JN2+73sdIp06quLa0Jw0ONdu4SqNVsEA0Fum6e5QrUPXrBYsNvk5zu3Gf4
	1kHZcF3yoyWq0u2aywvnUPU6ZXRncOBTxtLZe5boJofToAOcryHdMKb4y/44NEDOTdhI
	UCFA==
X-Received: by 10.66.81.68 with SMTP id y4mr3998758pax.66.1359029588164;
	Thu, 24 Jan 2013 04:13:08 -0800 (PST)
X-Received: by 10.66.81.68 with SMTP id y4mr3998750pax.66.1359029588095; Thu,
	24 Jan 2013 04:13:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.66.253.233 with HTTP; Thu, 24 Jan 2013 04:12:48 -0800 (PST)
In-Reply-To: <985E5BBDA0968D48ABDF343456A521B3F1300F@IRSMSX102.ger.corp.intel.com>
References: <985E5BBDA0968D48ABDF343456A521B3F1300F@IRSMSX102.ger.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 24 Jan 2013 12:12:48 +0000
Message-ID: <CAJTo0Lbjvedo-1YPQmM2uEv_44aUh9eoo45BCpXg6U=rH+f0mw@mail.gmail.com>
To: "Ciobanu, Emilia Maria Silvia" <emilia.maria.silvia.ciobanu@intel.com>
X-Gm-Message-State: ALoCoQnDaUtJOS+XNeiDIijrXwVpGRSkjPsWsh1GLBbQB81nO3H87zIjPO4sbnwS6j8LzgK2XanZ6CziELMpL2HQsvT/WibwzWTTUYV5QRISHNX8iMUkhMY3TpbxiO2+c0tmDPf2qgeKGbkT6MjfxtNaRX0cOULYWw==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Meta-web-kiosk Layer
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 24 Jan 2013 12:13:09 -0000
Content-Type: text/plain; charset=UTF-8

On 24 January 2013 12:03, Ciobanu, Emilia Maria Silvia
<emilia.maria.silvia.ciobanu@intel.com> wrote:
> I've created a new layer that can be used for kiosk devices.
> You can check it out at:
>     http://git.yoctoproject.org/cgit/cgit.cgi/meta-web-kiosk/

Excellent, good to see it not hidden away!

Ross

