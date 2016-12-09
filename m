Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B63A0E00D29; Fri,  9 Dec 2016 07:14:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48E78E00D12
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2016 07:14:08 -0800 (PST)
Received: by mail-io0-f178.google.com with SMTP id d9so60896425ioe.0
	for <yocto@yoctoproject.org>; Fri, 09 Dec 2016 07:14:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=gw2F9X4SAD4GR0GPJ3P/5MeMRGbDXFN0uxIecHfKh3E=;
	b=sr1UJeh3R6AZRdzPo/YzuD/7LdHerZVdenw7JkYc1mXxNiA2XKmZ+wvmMMb+RPkxth
	h5BTPr/b+wqOzxdZIuCmK3UcaEZPCfUo9jzydEL+q0Xbn2Ff5NyxTYmkeuVSUvtuyMn0
	P03hX/McxEdYd2CKfZhkP5PNhn0x8y3aVXB9aCn1je2i8gtHtvIUrbN92JRCRsilqUNq
	0BYLDmeDcsfghc1mqvrqF6zi+1B7jT/2WPtWVXeL7oUutY84hKrMD6ZB8/dUtzip+jlq
	R/RFrYtTCkrKvU8erMCpaxHg3zkRa78nRzAnv2fBEMl85bHgA8G6DktdaRwZpP7q7Rih
	gk6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=gw2F9X4SAD4GR0GPJ3P/5MeMRGbDXFN0uxIecHfKh3E=;
	b=jYRihdTSEG+vm37PSyWNgy6LqSx/R1+XRr/dVmQlr62Eyf3W3N4jMvoR9KcqYY2IqE
	G+CZaQVbhr6tZ8mtDu/T57sD/n1htMUz57S/PTWLOL8GMMnBbUIYjFSKb0RepTcGyE0a
	dY0wuA5LUvO35hdx07KoxJjVcHlmhXHLoeXA6B9pprbGtChLH2Rmjt4T19/zAlLMQRJ8
	hsW98ubQ/auWV8yZYbKX3H92jt+a3zqsAL1NmPw39ro2gK2deGFWp8voAnCFmokcUKXO
	ruWzusr+zm7Z4gFOhN2x2Udgs3UrMW0tzxIQh0k2e2Rm0q0jTrDw858E/P66PfdCVsJE
	6nVA==
X-Gm-Message-State: AKaTC00HdI/O0xT4OGak/mR540MTtRhWUlimy7sqf2PcAhOigzt898v+wHOqmlrWGvSzhjQt
X-Received: by 10.36.138.67 with SMTP id v64mr7079763itd.39.1481296437747;
	Fri, 09 Dec 2016 07:13:57 -0800 (PST)
Received: from pohly-mobl1 (p57A56203.dip0.t-ipconnect.de. [87.165.98.3])
	by smtp.gmail.com with ESMTPSA id l3sm7317482iti.3.2016.12.09.07.13.55
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 09 Dec 2016 07:13:56 -0800 (PST)
Message-ID: <1481296433.17535.170.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Stefano Babic <sbabic@denx.de>, Kristian Amlie <kristian.amlie@mender.io>
Date: Fri, 09 Dec 2016 16:13:53 +0100
In-Reply-To: <16ca1a50-f46a-196f-66b8-91f0d14f59c2@denx.de>
References: <20161121120355.18309-1-git@andred.net>
	<1480503859.6873.280.camel@intel.com>
	<1480516308.13682.1.camel@andred.net>
	<1480517999.6873.298.camel@intel.com>
	<30a3dd41-2e1c-8658-b83d-8632944d1709@denx.de>
	<1481017522.17535.38.camel@intel.com>
	<8e1fdcb8-d9fb-0e51-2e21-91e7e7c6f450@linux.intel.com>
	<c3ce9528-f2eb-dd3f-cc68-331435aeda35@balister.org>
	<16ca1a50-f46a-196f-66b8-91f0d14f59c2@denx.de>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: "Lopez, Mariano" <mariano.lopez@intel.com>, yocto@yoctoproject.org,
	=?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Subject: Re: update mechanisms
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
X-List-Received-Date: Fri, 09 Dec 2016 15:14:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hello everyone!

Thanks for contributing directly to the page. It's great to see this
done collaboratively.

On Tue, 2016-12-06 at 23:38 +0100, Stefano Babic wrote:
> Hi Philip,
> 
> On 06/12/2016 19:45, Philip Balister wrote:
> > On 12/06/2016 06:11 AM, Lopez, Mariano wrote:
> >> I agree with you, that we need to have a section per project, the table
> >> is too limiting.
> > 
> > I just skimmed the page and the table format isn't working well with the
> > length of the blocks of text.
> > 
> 
> Agree - I think it is better to have a section per project.

That always has been the goal, and I now updated the page accordingly. I
tried to summarize the key aspects of each mechanism in the table
itself. That's something that I haven't seen elsewhere and something
that the page can  I tried to be as fair and objective as possible,
please shout if I messed something up or you don't agree with my
summary.

In particular the "complexity" column is a bit subjective. Stefano, I
hope you don't mind that I did not quite buy the "easy to use"
characterization of swupdate ;-) For a system that is as flexible as
swupdate, I'd expect a more difficult learning curve and some need to
customize the system before using it, so I added a "(but requires
customization!?)" comment to that statement.

Kristian, I added a comment that Mender requires U-Boot. That is
correct, isn't it? I understand that this restriction allows you to
implement things like automatic rollback, but it's worth mentioning that
this comes with that limitation.


-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




