Return-Path: <jefro.net@gmail.com>
Received: from mail-la0-f51.google.com (mail-la0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C19A4E01658
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 17:31:58 -0700 (PDT)
Received: by mail-la0-f51.google.com with SMTP id es20so2824451lab.10
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 17:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=HpOT8GWJGe/iVGZCAayJNQt/2ZfiGOw1h/1Bg8/US9c=;
	b=KIYhln+HCKRN3K8o/UAsOrDoK9JfsToX5GbPPe9TVUFkNqO7OyhhlV+Up2+Nmy1tEy
	VHplMoRtNin8NnnFahurF1m42ofrt2HgHDMfw6cqWGzWQSrAQDSU4LF/xNlNzAwxuMYl
	T2N7KC6CDGk8zO/q4fayuyiG+jUzjFAdTGyWHJCsKWa+Qhk81sDIve5IAzdVTpWxmaJ7
	475a+g5UluDLyLGGmPZj/Gaq6BE1xqt8vpJ+itOlbFTqgJBxeKzls8279eprMNfSKQdq
	ug3U+yR34vaMdPuIo1az1i3FCrWDeCWsABOrZIShwEQLrzR2k5x6K1/qdeY8BVaDyh8C
	kcBA==
X-Received: by 10.152.29.201 with SMTP id m9mr13817849lah.6.1381451517027;
	Thu, 10 Oct 2013 17:31:57 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.57.105 with HTTP; Thu, 10 Oct 2013 17:31:36 -0700 (PDT)
In-Reply-To: <CAP9ODKoaV71QNHnqfwqnajhORu=1m82YaUiFo41HhcvUn6E-Rg@mail.gmail.com>
References: <CAPhnLPBDr_LhzOpjs7-sOsf7ujKGDcchxirH45kfHcyqnUaxoA@mail.gmail.com>
	<52571E27.70308@gna.org>
	<CA+YB3raEO5Ek5EdkAuezyW+D3tj5-Aod2k+BRg5UWF_UWUHmtg@mail.gmail.com>
	<52572994.4050006@gna.org>
	<CAP9ODKoaV71QNHnqfwqnajhORu=1m82YaUiFo41HhcvUn6E-Rg@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Thu, 10 Oct 2013 17:31:36 -0700
X-Google-Sender-Auth: T83p_iJ4fPf9IdfR0CAeMe5e_TA
Message-ID: <CA+YB3rZOFCTdJ0wtVa_qTt1QRZuT=nE2MZ2EXEqUs55Lyfiruw@mail.gmail.com>
To: Otavio Salvador <otavio@ossystems.com.br>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Project 1.5_M5.rc6
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
X-List-Received-Date: Fri, 11 Oct 2013 00:31:59 -0000
Content-Type: text/plain; charset=ISO-8859-1

Game, set, and match!  This is also why I don't play golf!

There are many layers I would love to see in the YP QA process and I
would count meta-qt5 in the top priority. However, we only have so
many resources, so we have to focus on the core right now. I'd be
happy to talk offline about finding ways to locate new resources.

On Thu, Oct 10, 2013 at 5:01 PM, Otavio Salvador
<otavio@ossystems.com.br> wrote:
> On Thu, Oct 10, 2013 at 7:26 PM, Christian Gagneraud <chgans@gna.org> wrote:
>> On 11/10/13 11:02, Jeff Osier-Mixon wrote:
>>>
>>> Hi Chris - well-intended sarcasm isn't usually a problem, but I want
>>> to make sure to address your concerns here. We would like to see a
>>> meta-qt5 as well but so far one has not been submitted. If you would
>>> like to submit one, I would be happy to put you in touch with the
>>> right maintainers who can guide you through the process.
>>
>>
>> Hi Jeff,
>>
>> Well-intended answer! ;) But i want to make sure to address your concerns
>> here. I would like to see the meta-qt5 [1] in Yocto's QA process. If you
>> would like to integrate it, I would be happy to put you in touch with the
>> right maintainers who can guide you through the process.
>>
>> Chris.
>>
>> [1] https://github.com/meta-qt5
>
> Hey, this was even easier.
>
> I am one of meta-qt5 maintainers and I am sure Martin will be more
> than happy to get it into the QA process. Jeff ... this was easy :-)
>
> --
> Otavio Salvador                             O.S. Systems
> http://www.ossystems.com.br        http://code.ossystems.com.br
> Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750



-- 
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

