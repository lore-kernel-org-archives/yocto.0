Return-Path: <marc.ferland@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A4E5E0127A
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 08:30:09 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id gb22so11336103vcb.35
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 08:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type;
	bh=WXO4Q0Ma21Rzjnb4glVb0XNXnK0rlGl5F+goJBxntkI=;
	b=xgCDRrR9xJXbjk0MQ3dhq1Xku1tPXDeAZQG2w4d1TkPlEXQEjrN6cRd/GJiOj706eG
	0BTo2OdPBN73y5FGbCPtkdJg3WkCLX38Sso45DV5QXWjKcBawEnYGX5Jt1qBvwkccQ/w
	8iPVtB7Q9NS/rLX32lWHhI1u0o+ABSIbUqRi6q63fH/RwW+YqS6iF6Di3IvNSnV1ABUe
	zYP/VqstXGoHt/8d2jKy3ifBTWJkfo/S1kjpOKYeXMLMp3q2OXaK/55aLJopKtPtjPW1
	4/idFKakfQre+lJaZ13sFoZJZ4CDpqQWMCBIJLE5Il5rr8OYzfQR497e/bDSXSw4anN5
	JNgw==
Received: by 10.58.152.101 with SMTP id ux5mr758126veb.16.1350574202826;
	Thu, 18 Oct 2012 08:30:02 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id z20sm5227804vds.20.2012.10.18.08.29.53
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 18 Oct 2012 08:29:59 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Thu, 18 Oct 2012 11:29:58 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: Martin Jansa <martin.jansa@gmail.com>
References: <87mwzj3jau.fsf@sonatest.com> <20121018152150.GA3087@jama.jama.net>
Date: Thu, 18 Oct 2012 11:29:58 -0400
In-Reply-To: <20121018152150.GA3087@jama.jama.net> (Martin Jansa's message of
	"Thu, 18 Oct 2012 17:21:50 +0200")
Message-ID: <87a9vj3iix.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Problem genrerating module autoloading commands
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
X-List-Received-Date: Thu, 18 Oct 2012 15:30:09 -0000
Content-Type: text/plain

Martin Jansa <martin.jansa@gmail.com> writes:

> On Thu, Oct 18, 2012 at 11:13:13AM -0400, Marc Ferland wrote:
>> Hi,
>> 
>> I'm having trouble generating the module auto-loading instructions in
>> /etc for one of my modules. I have already many modules that all work
>> fine, but for some reason this one does not get listed in /etc/modules
>> nor /etc/modules-load.d.
>> 
>> The only thing that distinguishes this module from the other ones is that
>> it has the same name has the MACHINE and layer. So basically I have
>> something like:
>> 
>> build/conf/local.conf:
>> MACHINE = foo
>> 
>> poky/meta-foo/conf/machine/foo.conf:
>> module_autoload_foo = "foo"
>> 
>> The module gets built correctly and is included in the images. Running
>> 'modprobe foo' works as intended on the target hardware.
>> 
>> Did I fall in some edge case?
>
> Does foo have any '-' or '_'?
>
No. Just lower case letters.
Marc

