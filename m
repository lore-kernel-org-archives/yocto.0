Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE823E00283
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 06:34:51 -0700 (PDT)
Received: by lboj14 with SMTP id j14so697877lbo.35
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 06:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=TEb+SZEn120uqXeQH3pCTmcQDErzH6OEAtH1eo3PCjY=;
	b=XM/bwhcEG/XD6EP/oWf9Q2/0N7rwtMJfwaKJk9Gpjx0Ki81Pk9WAh9/E8+AZaYPwAp
	f82kwXXoNNqlTDQryOEq4DCUBp8YVV+cVZxZH4kRlwZB6f4TQB1twR9yF5BQq/CO3WaS
	Lj0pETE5znVvV+Bh/QmzsLIj33xdOK5sLTH5qTY3F2dPmjrP1sFmvNn2NMMgLmaqw/YV
	G+lDVC7S5+b0B6he2S9DBy3rhZ35jtsFFf2EmCpyVMZ1D5Im+hYMEsu8QA2ZdZ5D6Uyf
	76eRjoTwXvMWDJED6CtjocNBt+b5mkX0Td0hZOla/NxM+CmCMOWGK8dZjJyy7SW6kCyI
	Rfbw==
Received: by 10.152.46.6 with SMTP id r6mr26113815lam.7.1343223289814; Wed, 25
	Jul 2012 06:34:49 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.64.180 with HTTP; Wed, 25 Jul 2012 06:34:29 -0700 (PDT)
In-Reply-To: <loom.20120725T121305-737@post.gmane.org>
References: <CAPhrxTpxKd=UutkKUuU1hcE=JN3nObzh0aot9x=B4EBJPr3oYw@mail.gmail.com>
	<CABcZANm125goVF54Lg4Exy4yaOs8Bevq-sTYcZ1bHy7HViykxA@mail.gmail.com>
	<loom.20120725T121305-737@post.gmane.org>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 25 Jul 2012 06:34:29 -0700
X-Google-Sender-Auth: 0zPCBl2CXtZFW-J8rXjBKQsQOIM
Message-ID: <CABcZANnBFUYq+rO3T-ovrnQS-_6v0pVnXYEj2FiwBnqMOjBOOg@mail.gmail.com>
To: Sree <sreekanth.nandakumar@csr.com>
Cc: yocto@yoctoproject.org
Subject: Re: Help with configuring Yocto with an external toolchain
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
X-List-Received-Date: Wed, 25 Jul 2012 13:34:52 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 25, 2012 at 3:20 AM, Sree <sreekanth.nandakumar@csr.com> wrote:
> Chris Larson <clarson@...> writes:
>
>>
>> On Tue, May 8, 2012 at 2:39 AM, Radha Krishna Srimanthula
>> <srimanthula.radhakrishna@...> wrote:
>> > I have an armv5tej platform for which I need put in place, a toolchain and
> a
>> > build system. It is in this regard that I need some help:
>> >
>> > Can Yocto use an external toolchain (we use CodeSourcery)? If so, how do I
>> > configure Yocto to use the external toolchain? I went through the
> developers
>> > and user manuals of Yocto - am not too sure how to go about doing this. Can
>> > you please help me with this?
>>
>> TCMODE = "external-csl"
>> EXTERNAL_TOOLCHAIN = "/path/to/sourcery/toolchain"
>
>
> Hi
>
> I have added TCMODE?= "external-csl" in local.conf &  EXTERNAL_TOOLCHAIN
> = "/path/to/sourcery/toolchain"(pre-built tool chain) in tcmode-external-
> csl.inc i get an error when i try to build.
>
> ERROR: Execution of event handler 'csl_version_handler' failed
> Traceback (most recent call last):
>   File "csl_version_handler(e)", line 12, in csl_version_handler
> (e=<bb.event.ConfigParsed object at 0x87807cc>)
>   File "csl-versions.inc", line 4, in csl_get_gdb_version
> (d=<bb.data_smart.DataSmart object at 0x8af1e2c>)
> NameError: global name 'CmdError' is not defined

You're using old metadata which had a bug. Go to line 4 of
csl-versions.inc and change CmdError to bb.process.CmdError. I assume
this is a release branch?
-- 
Christopher Larson

