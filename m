Return-Path: <lists@webconect.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A292E00C29; Tue, 14 Jun 2016 10:51:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [217.26.49.174 listed in list.dnswl.org]
Received: from mxout014.mail.hostpoint.ch (mxout014.mail.hostpoint.ch
	[217.26.49.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56269E00C1D
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 10:51:25 -0700 (PDT)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
	by mxout014.mail.hostpoint.ch with esmtp (Exim 4.84 (FreeBSD))
	(envelope-from <lists@webconect.ch>)
	id 1bCsUm-000NWh-6L; Tue, 14 Jun 2016 19:51:24 +0200
Received: from 77-58-230-166.dclient.hispeed.ch ([77.58.230.166]
	helo=webconect.local) by asmtp013.mail.hostpoint.ch with esmtpsa
	(TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.84 (FreeBSD))
	(envelope-from <lists@webconect.ch>)
	id 1bCsUm-000A5H-3T; Tue, 14 Jun 2016 19:51:24 +0200
X-Authenticated-Sender-Id: lists@webconect.ch
Date: Tue, 14 Jun 2016 19:51:23 +0200
From: Elias Diem <lists@webconect.ch>
To: yocto@yoctoproject.org
Message-ID: <20160614175123.GA20223@webconect.local>
Mail-Followup-To: yocto@yoctoproject.org,
	Urs =?utf-8?Q?F=C3=A4ssler?= <urs@bitzgi.ch>
References: <20160614071518.GA14846@webconect.local> <575FDF49.20902@elfin.de>
MIME-Version: 1.0
In-Reply-To: <575FDF49.20902@elfin.de>
Cc: Urs =?utf-8?Q?F=C3=A4ssler?= <urs@bitzgi.ch>
Subject: Re: Customization for nginx
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
X-List-Received-Date: Tue, 14 Jun 2016 17:51:29 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline

Hi Piotr

On 2016-06-14, piotr.lewicki wrote:

>This is not an answer to your question but it can be helpful:
>You can use a wildcard for version in your bbappend file.
>If you rename it to:
>
>nginx_1.9.%.bbappend
>
>this will work for both 1.9.5 and 1.9.14.

Thanks for this hint.

I realized that krogoth delivers two recipes for nginx:

1.9.14 and 1.8.1

And it picks 1.8.1. That's why it does not work.

Now I tried to set

PREFERRED_PROVIDER_nginx = "nginx-1.9.14"

But this does not seem to work.

How do you prefer a provider out of two different versions 
of a package?


-- 
Greetings
Elias



