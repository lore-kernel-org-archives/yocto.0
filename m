Return-Path: <s.stirtzel@googlemail.com>
Received: from mail-oa0-f44.google.com (mail-oa0-f44.google.com
	[209.85.219.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32785E014F3
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:42:45 -0700 (PDT)
Received: by mail-oa0-f44.google.com with SMTP id h1so2770924oag.31
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=IudzQFdSBFTYnPvSiX3sq0lgoClfOovx0oxpC4soR2o=;
	b=fEg19FrLvau6De5Wv5MjgMwCFOW2r73An4V73Qa/OB3M0/T4mv4W7zIm4wzglgfE4t
	PgeGLDuhuAZG/GaphmYU+hAuSDeflUOHZ2ifFPxDin0mLJUhzImJnKD/SpR7rtM4i1mv
	gI0MKpxzL5g+JjKw27wYmnnFeg2NNkbdffmesHmqsN2bnSPRNq5qNnEVOaix8zz16Y8l
	ClzNqnlXbpeILbgfdvBiAiXEekcUg6pl1s3IKZRs42/nuDqFA+8QJwU9oBmJQUpNHJwb
	iYTf/cbvFZE2ZPtj9W7NP4PpRc9mBE9H3/BG93Bm5rxBy2SmSFy3WwaHj0ATIbp7038/
	/AYg==
MIME-Version: 1.0
X-Received: by 10.60.98.235 with SMTP id el11mr7698097oeb.57.1366893764548;
	Thu, 25 Apr 2013 05:42:44 -0700 (PDT)
Received: by 10.60.32.18 with HTTP; Thu, 25 Apr 2013 05:42:44 -0700 (PDT)
In-Reply-To: <CANyK_8fujLspj_VCZd5TY9x4A62m=WKhva3BavL91XzwY5Krgw@mail.gmail.com>
References: <51788031.7080701@gmail.com>
	<CANyK_8fujLspj_VCZd5TY9x4A62m=WKhva3BavL91XzwY5Krgw@mail.gmail.com>
Date: Thu, 25 Apr 2013 14:42:44 +0200
Message-ID: <CAGiJk9fsm9eA1+QrkFbkmXoemT3224byG1R1xZhMSfns9gwepw@mail.gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/2] sdcard_image-rpi.bbclass: Fix error in conditional test
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
X-List-Received-Date: Thu, 25 Apr 2013 12:42:45 -0000
Content-Type: text/plain; charset=UTF-8

2013/4/25 Paul Barker <paul@paulbarker.me.uk>:
> On 25 April 2013 02:00, seth bollinger <seth.boll@gmail.com> wrote:
>> When the shell tests for rootfs type I was seeing "[[: not found".  I
>> use echo and egrep to test for the xz rootfs type to work around this
>> error.
>>
>
> '[[' should be a bash builtin. What host OS are you using for the build?

It sounds like Ubuntu / dash to me:

samuel@s-stirtzel-linux:~$ dash
$ [[
dash: 1: [[: not found

Or at least dash will produce this error too.


--
Regards
Samuel

