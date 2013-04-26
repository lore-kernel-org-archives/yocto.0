Return-Path: <twoerner@gmail.com>
Received: from mail-oa0-f47.google.com (mail-oa0-f47.google.com
	[209.85.219.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1FC8E01496
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 18:30:27 -0700 (PDT)
Received: by mail-oa0-f47.google.com with SMTP id n9so3453460oag.20
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 18:30:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=TBbvAkj6BcTTfUtxfr/Pqa629a66l6uHw74j7lIo/nk=;
	b=wYfDlTNK5tbWN/zBJWZ6J8M0wxR99jCJkUPd/v/G2/JIe3Dq5L+UPjeMcoVCDY2OI3
	YE3Huvq4O2zPTKET4OkcBCrr886FtN+tNHSYp9sUWgmhUxaCfj9403FDCym4RbbVIm1S
	If9i3RjRKRkNSrBb5+s0nycbH98IkPADJFYIUA0VLqgVuxYxepw2ZR5f3/0mqeuWQHHx
	nqSTL4HHE86DYhxqz+k/qBvPdSD0z9Naa5DjJwxa3RKkthKFZk3E50rlAs8t8NMrvHq5
	36OjdUQ3zLYg50V09tCnU7MbbODF6+YvY5CJ6eJwCYZ/MkWO9v92qkK1HirFKa1xHVFQ
	m+Iw==
MIME-Version: 1.0
X-Received: by 10.60.16.74 with SMTP id e10mr5124840oed.68.1366939827283; Thu,
	25 Apr 2013 18:30:27 -0700 (PDT)
Received: by 10.76.169.194 with HTTP; Thu, 25 Apr 2013 18:30:27 -0700 (PDT)
In-Reply-To: <1365545491.1526.5.camel@empanada>
References: <alpine.DEB.2.02.1304081135020.23038@oneiric>
	<1365469127.17697.70.camel@empanada>
	<alpine.DEB.2.02.1304090729220.4184@oneiric>
	<CAHUNapRQTMvCE=8RLNhae+sm6=VN7pP4TfbBBM0nvcCR5aTmkQ@mail.gmail.com>
	<alpine.DEB.2.02.1304091746080.4929@oneiric>
	<CAHUNapTHjYk6fWdRsk0-xLBEP5kUgnCR7Ss3TrvTuE9svgnKjQ@mail.gmail.com>
	<1365545491.1526.5.camel@empanada>
Date: Thu, 25 Apr 2013 21:30:27 -0400
Message-ID: <CAHUNapSPM68REknz=+bdK6fyAP+17QmUn36r1xjrjTuFP=UPuA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: working my way through the kernel hands-on labs finally
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
X-List-Received-Date: Fri, 26 Apr 2013 01:30:28 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Apr 9, 2013 at 6:11 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> On Tue, 2013-04-09 at 18:06 -0400, Trevor Woerner wrote:
>> On Tue, Apr 9, 2013 at 5:46 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>> >   ok, so what am i looking for?
>>
>> I couldn't get lab3 to work fully unless I switched from package_ipk
>> to package_rpm. The module would get built and included in the image,
>> but it wasn't being loaded automatically during boot. At the time I
>> tried against the master HEAD and everything worked fine, so whatever
>> it is I think I've found, it has been fixed (this is only a
>> danny-8.0.1 problem).
>>
>> https://lists.yoctoproject.org/pipermail/yocto/2013-February/014424.html
>>
>> When I mentioned it, it didn't seem to make sense that the choice of
>> packaging should affect something like this. But I tried it a couple
>> times on my machine and could reproduce it. I don't think anyone else
>> tried reproducing it.
>
> I believe I tried and couldn't reproduce it.  But if someone does
> reproduce it, please file a bug detailing the *exact* steps needed to
> reproduce.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=4423

This is still reproducible. This time I also gave it a try using a
Fedora 18 (64) VM. Lab 3 does not work if you set PACKAGE_CLASSES to
"package_ipk".

