Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96A41E00519; Tue, 28 Aug 2018 06:46:57 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10440E003D9
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 06:46:56 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id l202-v6so2892631oig.7
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 06:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=jJ2X9KRVxu3ceTzV5X8PE0MjIwtB6Q1W9jxz/2+jW6Q=;
	b=NdtU0h9qh5vFntY9DTRr7+vgyd+zn91RSZ/dIyI+/YiaF8c0wbN9VXClQXYXf5XFrz
	AXlTSD439jRLLaquWyK1PqxdEv5ujDnlay/ILgr3SucyRs2Ym4YQoZyy3odu09lLmT3g
	kPFQEsZLRTrApKEm/11lT1YOx5/AO3yVKAfBcoqJu4M7/AS/1s/axIy/PA9QlAYbEW7u
	7KiI3LjWZ6RiS73WvKEQNrBIXjUr+Hid6gFcwMBy2fLy2lIfr2OcgqlZsRzOGtJ292pY
	KZa5JCuFdyNhQxofRP958VuJIfhBgUr427D3JVIcoC5biYxJuK97lTyBaGxKjJ3RHqB7
	FP6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=jJ2X9KRVxu3ceTzV5X8PE0MjIwtB6Q1W9jxz/2+jW6Q=;
	b=fsvr7j762K840gNC7qFp1qwfjg6B54OS1JkaolQX2bEqsIoTtWb7iGSkOrx+rREsij
	qVdJbmcit1dYHN7GKdmfg3DmyGwDoPOY9+YHnvJCH6IeOw9Jd7DHpgJjrhMOzL5MrVP9
	2fUKzppkrpLgemkliU/N+ycr2kRyq5YIespkoNZP2tIZaDnXvZIDnUdmxtRY/OXervCB
	Am2NE0wNr6lHbwXv84Kw1DHDKmEktmF6mw8a8pmvTUIQpjIo2zmZ1CXeMKqL8g3vj+Zr
	/N5PS/bL6Y2LZgLN2DbUiv2tmLA4eaU5JlryP2EuqPnPUAeTdpa2vc5ii7l3MrGCpnjt
	g74w==
X-Gm-Message-State: APzg51DW1fN87DwTaR6KH4HsQKOjDrIsyqWR3qkkwPSBbkL8isN9XkJ0
	uh2GGb1E7IVAV5emRDRnWUa+4iWFUuRgYF5P6fv8Kw==
X-Google-Smtp-Source: ANB0VdbKqvJZvOs6P6L9uStuGB9rRCV05N56qZM5XzpNUnq5GDQ6ib9S8n/MwAQ3WPLL5UMzSytkCudo6yDRaQ3Aoeg=
X-Received: by 2002:aca:c74d:: with SMTP id
	x74-v6mr1261385oif.97.1535464016369; 
	Tue, 28 Aug 2018 06:46:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6195:0:0:0:0:0 with HTTP; Tue, 28 Aug 2018 06:46:35
	-0700 (PDT)
In-Reply-To: <CAO7XzZYdvAqSLAezh=GrbLfH2n2EsQzgoUc7S8tWjpAQrhoBhw@mail.gmail.com>
References: <CAO7XzZZTV26E-Ek+YbTG-MuNpFU9KWOKMATyk_4iCnX7236j9g@mail.gmail.com>
	<CAJTo0LZjBZE7JoMnxPPmA9ZtgKZqF=3tHchMz29XGt5CA2n12Q@mail.gmail.com>
	<CAO7XzZYdvAqSLAezh=GrbLfH2n2EsQzgoUc7S8tWjpAQrhoBhw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 28 Aug 2018 14:46:35 +0100
Message-ID: <CAJTo0LZN7AUsE7itrxVfqEM_e0czjg1g0-ZURW9jnmK2rZ_T6Q@mail.gmail.com>
To: bernardo araujo rodrigues <bernardoaraujor@gmail.com>,
	Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: PyBuild based OpenEmbedded/BitBake recipe
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
X-List-Received-Date: Tue, 28 Aug 2018 13:46:57 -0000
Content-Type: text/plain; charset="UTF-8"

Please remember to CC the list.

On 28 August 2018 at 14:40, bernardo araujo rodrigues
<bernardoaraujor@gmail.com> wrote:
> Indeed I thought about calling "python3 build.py" inside the do_compile
> task.
>
> However my doubt is whether this will actually cross compile and integrate
> properly with the sysroot, or Python will build natively (which would be
> kinda useless).

Exactly.  Good luck, you might need it.  If you're lucky it will just
work, if it respects ${CC} and so on.

Ross

