Return-Path: <marc.ferland@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73DD6E00293
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 13:52:17 -0700 (PDT)
Received: by mail-qc0-f176.google.com with SMTP id n41so5193491qco.35
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 13:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=sender:from:to:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type;
	bh=nUJwQ5RQ/n6KARAnBd2PdsiEZYmUUpeZEXeJopd2Wxo=;
	b=oj0+MQ2UJrwz52D2bKjXOcDjXRl8DWLElyXBVnLZQBzr2ISVzaaaPD81JbWi3yKBqM
	meLnvgIoKsJ9HwvukaQv9SjAJEsmSh7P1DfiKG0PAal4pZx73uWcK/JxB1zOhUy8SRdx
	XHovPQ17LulLc0omKig56OUT09E2hK0SNwpwoad8MRgcTppctXmiq1NK6XuIMErUjtVJ
	9HCyHNLtKMZX7FKDDY0ghamivxH/a/QnPghPrJ1yYxB9W7LbD2ajur1n4hGHLfVTHqTZ
	sBkYnz51AJK6V/9px5qOL2zBQvZuJOIzNeCjHf+C3Or8tW6siKq6YYU/nf6YGMN/DDAI
	DDsw==
Received: by 10.49.85.202 with SMTP id j10mr30949201qez.59.1350334336917;
	Mon, 15 Oct 2012 13:52:16 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id hk10sm8157840qab.22.2012.10.15.13.52.13
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 15 Oct 2012 13:52:15 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Mon, 15 Oct 2012 16:52:13 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: yocto@yoctoproject.org
References: <5076E14D.4010301@gmail.com> <507C73B1.5040509@gmail.com>
Date: Mon, 15 Oct 2012 16:52:12 -0400
In-Reply-To: <507C73B1.5040509@gmail.com> (Jim Abernathy's message of "Mon, 15
	Oct 2012 16:36:01 -0400")
Message-ID: <87d30jmpab.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Subject: Re: Build failure using Master branch for Crownbay
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
X-List-Received-Date: Mon, 15 Oct 2012 20:52:17 -0000
Content-Type: text/plain

Jim Abernathy <jfabernathy@gmail.com> writes:

> On 10/11/2012 11:10 AM, Jim Abernathy wrote:
>> I just did a pull today and tried to rebuild Crownbay BSP which I
>> successfully built yesterday.  I'm looking for a case where the
>> rebuild fails on a previously successful build with just running
>> bitbake core-image-sato without deleting any files or cleaning
>> anything, as I've been instructed previously.
>>
>> I got such a failure today and the console log is below.  I'll hold
>> off deleting the build directory and rebuilding as I usually do when
>> this happens, until I hear from the experts on how to proceed.
>>
>> JIm A
>>
> Since I didn't get any response, I went ahead and did "bitbake -c 
> cleansstate emgd-driver-bin" and then did a "bitbake core-image-sato".
> The image built fine and booted fine.
>
Had the same problem today. I'm using the denzil branch.

This is probably worth opening a bug report.

Marc

