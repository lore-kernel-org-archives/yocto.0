Return-Path: <marc.ferland@gmail.com>
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BE19E01505
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 06:15:02 -0700 (PDT)
Received: by mail-ie0-f174.google.com with SMTP id 10so947789ied.33
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 06:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:sender:from:to:cc:subject:references:date:in-reply-to
	:message-id:user-agent:mime-version:content-type;
	bh=Hd9arPhfOpziTKtnIZzibv2hDW3208sGEGDKYrHVMwE=;
	b=UyRqcZAZAxGx7/xXb9HDArS3+De7AmWZzPYcrYvGX508aIPqKUrAAkpFqhnLpKW2Kn
	q0VNNCtRx0eYRchhOMroPHDFMLITh7ZP0imfQy+MjfYyYCVVmIrM4MAtBHcU+6E3mLIB
	m79n2kZeZXzPW0NE7zbQQyLLFi98HBKR/9v+gYhLENLQW2T8kp0/9tVIZPNiH62BUr9I
	ErdAaO51OvzCoMdxIb4avP6yMrYNgpEtcMtkXw3tSuIV+nJlsze0GxpjpfJuDZdpfTko
	zvaDQG4wz8B1mNLteBzqRJeuzeHmbAzaqdaZypya3HZya7g1zDYa+h0426fhHYKopmf5
	b6Vw==
X-Received: by 10.50.41.4 with SMTP id b4mr2026715igl.82.1368537301830;
	Tue, 14 May 2013 06:15:01 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPSA id ua6sm23624817igb.0.2013.05.14.06.14.59
	for <multiple recipients>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Tue, 14 May 2013 06:15:01 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Tue, 14 May 2013 09:16:44 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <CAFMfyzKYd7JWyzrKLBigCuZLtQeioyjhs2DAM8GvnXq9xGBanA@mail.gmail.com>
	<7913150.opP2ggRnDV@helios>
Date: Tue, 14 May 2013 09:16:44 -0400
In-Reply-To: <7913150.opP2ggRnDV@helios> (Paul Eggleton's message of "Tue, 14
	May 2013 11:44:00 +0100")
Message-ID: <87txm5og5f.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: lmsensors
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
X-List-Received-Date: Tue, 14 May 2013 13:15:02 -0000
Content-Type: text/plain

Paul Eggleton <paul.eggleton@linux.intel.com> writes:

> On Tuesday 14 May 2013 11:21:49 Satya Swaroop Damarla wrote:
>> It has been a month I have been fighting with installing the package
>> "lmsensors" and had no success till today.... I would really appreciate
>> much help....
>> 
>> The background goes like this..
>> 
>> *bitbake lmsensors * works perfectly but when I add the package into the
>> rootfs I get the following error
>> 
>> * Package lmsensors-config is not available, but is referred to by another
>> package.*
>
> Looking at the output of building the current lmsensors recipe in meta-oe 
> master, the main "lmsensors" package is actually empty and thus is not 
> produced; this is a bit annoying and should probably be fixed. However what I 
> think you're supposed to do is instead install the components of lmsensors 
> that you actually need. If you look at packages-split in the lmsensors work 
> directory (or the lmsensors* packages in tmp/deploy/ipk) you'll see it 
> produces the following, ignoring dbg/dev/doc/staticdev packages:
>
Hi Paul,

When I first wrote the lmsensors recipe I noticed that lmsensors is
actually a collection of tools which serve very different purposes. For
example, the sensorsdetect and pwmconfig tools are only needed to
produce configuration files for libsensors and fancontrol (resp.). Once
the system is configured, they can be removed.

I followed the idea from the original lmsensors recipe from oe.

What should the recipe actually install when bitbaking only the "main"
package? The main lmsensors library? Everything? 

Regards,

Marc

