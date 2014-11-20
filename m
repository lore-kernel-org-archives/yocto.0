Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C3B4E008C9; Thu, 20 Nov 2014 04:01:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C905DE0087D
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 04:01:37 -0800 (PST)
Received: by mail-wi0-f177.google.com with SMTP id l15so5079235wiw.16
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 04:01:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=5rIalwQAXp+nfmsi8JHgRygrL3A0oQvREWsWRegmIls=;
	b=c8KTS5+UX04VTpKkdBY9IFDRHHzhGmXqjYB7s0rZYtjVfRgDXyfz/lTA8TAmlMrRDK
	ps2y1dhYIR9OEFcbnukPWFdefv0OT67oSjfvK4OULP1jkyLWli4ahX8ML7W9wK60A2Z3
	OuYXr4KHh40CJGrliK/Bah9uG/aah+/eHbjOUS9HIlHlyK2VVc0jljsP6KEII35CSyc1
	AyQBroOQA2ey0Cox2mDMHMLt3b+CGJtH+fczGlJL+R02UAeJclffVuhIrUbWzSdEwl+f
	JAJc8xNoXIokpVQc7SZ3xriT3bwLd8OrXhCwfsS5NYX3KW/ygriEKetnd/JsYrP+xvff
	p5sQ==
X-Gm-Message-State: ALoCoQmHyf9WvP/CzwXiobyVsxg9FaI3uqoOByjL+E/rvKjxhIFxhMkPmXmEm92ucgOSBuoSPDDd
X-Received: by 10.180.72.137 with SMTP id d9mr22786276wiv.64.1416484896430;
	Thu, 20 Nov 2014 04:01:36 -0800 (PST)
Received: from gmail.com (dhcp-189-34.gjk.dk. [195.249.189.34])
	by mx.google.com with ESMTPSA id fv5sm3044842wjc.37.2014.11.20.04.01.35
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Nov 2014 04:01:35 -0800 (PST)
Date: Thu, 20 Nov 2014 13:01:32 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Mike Hogg <mikehogg@mountdrive.com>
Message-ID: <20141120120132.GB24610@gmail.com>
References: <BLU436-SMTP125444BFE2825F659D2B396929A0@phx.gbl>
	<6686EF67-F451-4B2B-87D3-F9AB644F8299@mountdrive.com>
	<CAK18fxEytL2hZeHfNR5gb+py0PTki2ni4Guy4mL7iH43MYWntQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK18fxEytL2hZeHfNR5gb+py0PTki2ni4Guy4mL7iH43MYWntQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Raspberry b+ support
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
X-List-Received-Date: Thu, 20 Nov 2014 12:01:52 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

On Wed, Nov 05, 2014 at 02:14:48PM +0100, Andrei Gherzan wrote:
>    I did nothing regarding RPI b+ as i don't own a device like that. If
>    you guys can make it work and patches are needed in order to accomplish
>    this, please send them over mailing list and/or review gerrit.
>    Thanks.
>
>    On Fri, Oct 31, 2014 at 4:06 PM, Mike Hogg <[1]mikehogg@mountdrive.com>
>    wrote:
>
>    Yes you can and I have. Search the pi forum for my posts there, last
>    time I tried a yocto build for the b+ it pulled in the old pi firmware
>    which doesn't work on the b+. Per my notes on the pi forum thats easily
>    fixed by copying firmware from another b+ image.
>    On 31 October 2014 12:13:53 GMT+00:00, Natural Groove
>    <[2]natural_groove@hotmail.fr> wrote:
>
> Hi,
> I am interested in using oe to crossbuild stuff for raspberry pi b+, and
> I wondered if someone already achieved to do this?
>  From what I read there are some specifics to deal with, can someone
> help me with setting this up for b+?

Any issues while trying meta-rpi with b+? Anyone succeeded? Ping me if any
help is needed.

--
Andrei Gherzan

