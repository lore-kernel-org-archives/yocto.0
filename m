Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C999DE00DB1; Thu, 12 Jul 2018 15:08:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 636ABE004F6
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 15:08:04 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id k81-v6so58668306oib.4
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 15:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vuvHv3UmxFBnilimenj8VotMG+1Xq7Fbj08JNMQJUhI=;
	b=f/mI25SLRHC0hdSyVxZUbL7TWDn1J3jpwMoA756UYkXP8AeWSlxQa0aftVgRssf20/
	X1Q6tiiRTprBqZHgBnV0YxNuqGWUfvniJVtZB3QazBmm0NAJJZeVu8UI36fH3I3ehvf7
	I/WDPC74iY/Lw6bpqo8Ccct4m/KR1WwCl652Kv8NjX+yk9oJBmqPcvWoR+FWjVVMgLaF
	uf+T3MpXusIb2AzoFnWSac2FUJKXlQTc+de6dVlj0bgRp4MB0TnWMz1LjzX3jv50SAbb
	ZXqwohRCyJ7d/mYst3NdanqUGbltnzPCqaoPgl0od8FP6GuWY8t02OnlEhZNEbxUSr+5
	IiAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vuvHv3UmxFBnilimenj8VotMG+1Xq7Fbj08JNMQJUhI=;
	b=rJMphNod0mBuJspjEYTQ/sZyqnihBRCEOeuhZHzLLeRVzCK6SbHtTpDcakym0+xf9C
	g5sMfGlHwkNYpeEGl3/CZVhocS+QGDtT9+XfYJ0MgDAmr3/4S15VOW15iXrV7o1EFQ7t
	j6AWhYWz1KWBNW13l6Q6x38diiGItgndtBF9dTDHbpZPt1KJExbk7p8FZiRIoShrVVnJ
	QweYk49IaaTbHvZWS46gD7r9ozSL0Sj5vmhdzMk5Wr9hjoU9CjPgaBeBQiJ6pvIq1EdA
	F987+e7jDEphX35MnBgcw+P1j+46Dig06DZ3QZJeYmsUkOI1i/2nBGTDubQmrokohZN4
	Ae5g==
X-Gm-Message-State: AOUpUlGaN2lyr8DzKaJbj0G8qqb8vjBWtxWagMoDPuQJbTKWBIzqO3ry
	ExRs5xPvw8MLJxymzzQH8JJWmiCYE9e22+/C0x1gjw==
X-Google-Smtp-Source: AAOMgpf9iTNfGBmLoXTh4yR99FX7WR7eqyzspfZ/mjEtwVCXkqOqrQAwIiQTKAknxR1BQ7FC6ycD5TuJH+lRVHO8aZo=
X-Received: by 2002:aca:f409:: with SMTP id
	s9-v6mr4615086oih.102.1531433283808; 
	Thu, 12 Jul 2018 15:08:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Thu, 12 Jul 2018 15:07:43
	-0700 (PDT)
In-Reply-To: <CAFzUWG=7Aam-5PAE_1cpw24Zd+PCj+0KyOziyWrbWYeFLk0EdQ@mail.gmail.com>
References: <CAFzUWG=7Aam-5PAE_1cpw24Zd+PCj+0KyOziyWrbWYeFLk0EdQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 12 Jul 2018 23:07:43 +0100
Message-ID: <CAJTo0Lauvt-utgGQ8B++ytRt_UcRaUrRitv39WZ+mHCT14q6Mw@mail.gmail.com>
To: Giordon Stark <kratsg@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Writing a recipe that allows for extra depends, depending on the extra_oemake configurations
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
X-List-Received-Date: Thu, 12 Jul 2018 22:08:04 -0000
Content-Type: text/plain; charset="UTF-8"

> I'm wondering how I can make it so that I can have a user allow for
> additional configuration to enable crypto/krb5 which requires extra depends
> and changing the oemake flags. Is this something Yocto can do, or is it
> better to have users provide a bbappend file to update this recipe?

Yes, PACKAGECONFIG is exactly what you want.

https://www.yoctoproject.org/docs/2.4.2/ref-manual/ref-manual.html#var-PACKAGECONFIG

Ross

