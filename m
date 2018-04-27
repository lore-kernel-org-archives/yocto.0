Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE8BDE008BF; Fri, 27 Apr 2018 12:14:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29DDBE0073D
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 12:14:14 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id n202-v6so2478383ita.1
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 12:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=MaMr3WBwRZZbc8Q9OJEaHovwZm+euRK6K+5BnWgnGmY=;
	b=lbfvwlkk6MSggrR+7+DORT0Npif8SAeT9llp5+kcjgLdj4EtAbePj/JBbM/f26VvXX
	iapwWRuUNFC5pwCDsZiS47R1OQhLT2yNbAfqjA2z8zM8n7e9eMxpdt1XMqEonD4oyrJC
	0nj2TlboyfCFOHavjgC4OF1sIJ6TS3lUVhGM/qsdIpa9g1CQgh7p3JxUE4vWKST6z7Hy
	D7Mq61W1693W7xWBYhxg7kMmDETxG2d4q8QQOxz3fivm/reJOd7ttIphv7W+/33nqoTQ
	mWO3nClXvbSCzhrXWmE8qOlDUxrbaKcof9WgsfzVDfLG3CIYKRNjqZXNloePuzzgul+A
	iv9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=MaMr3WBwRZZbc8Q9OJEaHovwZm+euRK6K+5BnWgnGmY=;
	b=d2Fyxc0ZfY2UTL0Sw7buiOMipyDD0bVKEOHtkaGRfBJvfMqh8s3rSLNqI7IyCU46OW
	G6x3aRTdWM6mUx+UYwNeFBqP8lXiY9zSp39BDcvVEUolDTOdSODLWYyk3w+T4XYs2Ncq
	PSIUmGLZ/nTm/OvzrmftULr/+tgW4Y4ElN4wApeqe4H2IWjo7T40FgHdW2tVXmKVSS4N
	1PKKuZjhmRjs70uLfCaMQ4uwFAb0A4tInvqEL/Os60DjEwcB70FWJ7AqBnGzeJZfzQkI
	yrzKViEbT/KInjrcbUjGYtbWt8U9x4nv8AzyWu0Q25xHcLUQfWSN4avvqy0ls5y8yfpT
	iqyQ==
X-Gm-Message-State: ALQs6tClnBl7P1DbMQOfV4s617ryXtSimXQrTiZt+N2O7u9UANAisOag
	e7x6oYRIF5KTlMcu7Wg73Q1MRGvecioWUz6ag7CnwQ==
X-Google-Smtp-Source: AB8JxZruO0A9z2ISOmP0wOsHb9HQ+lER+txSFChhN6jtorXJQaCtKb4Br+EmlGYSpxDjHQV1kaPGQg15puFL7pTi+KA=
X-Received: by 2002:a24:730e:: with SMTP id
	y14-v6mr3420184itb.45.1524856454229; 
	Fri, 27 Apr 2018 12:14:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Fri, 27 Apr 2018 12:13:53 -0700 (PDT)
In-Reply-To: <MWHPR15MB1760BB8DDF46322CF5BCD7EBF08F0@MWHPR15MB1760.namprd15.prod.outlook.com>
References: <MWHPR15MB1760BB8DDF46322CF5BCD7EBF08F0@MWHPR15MB1760.namprd15.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 27 Apr 2018 20:13:53 +0100
Message-ID: <CAJTo0LY6KzAzjeu3QDf90W2mX1bxrJ+vQ8SbZLg8OHAQmbo58g@mail.gmail.com>
To: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: pygtk package in yocto
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
X-List-Received-Date: Fri, 27 Apr 2018 19:14:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Do you actually need pygtk, or the gobject-introspection bindings for
Python?  The latter is what is supported upstream, traditional pygtk
was last released in 2011.  If you're lucky you actually just need
gtk+3 and python-pygobject.

If you *really* need PyGTK then you'll have to resurrect the recipe
and try and make it build with the latest sources.

Ross

On 25 April 2018 at 05:01, Mohammad, Jamal M
<MohammadJamal.Mohiuddin@ncr.com> wrote:
> Hi Guys,
>
>
>
> I am using the latest branch of poky and meta-oe . I need pygtk package f=
or
> one of my application as it=E2=80=99s one of the requirement for it to ru=
n.
>
>
>
> Pygtk is supported in Jethro branch. Do I need to switch to Jethro branch
> for my project or did anyone port pygtk recipe port for the latest versio=
n.
>
>
>
> Please help.
>
>
>
> Thanks for your help and time
>
>
>
> Regards,
>
> Jamal
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

