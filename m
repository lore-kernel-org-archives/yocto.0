Return-Path: <langabe@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3841EE00294
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 08:47:59 -0800 (PST)
Received: by mail-oa0-f48.google.com with SMTP id h2so6219697oag.35
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 08:47:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=sbb1XrQCmnznVxZi7R3yLYsVwTr3yaaJ54hoI8c2y9g=;
	b=ZKuz3lWvJL7YDzg09gsqJ1r8CfM4JoAIZsZ2v8RKkIRWolKyBIUZ3IERN0koaMiOzq
	zA2LsSHkoZFgKMEa2NxEiaxtRPbpk7J6W3vSE09ubI45BMB//im1R/K97BEdciD+tgrn
	jhwzwQc+y/mOp+be+4RKi2KRgGowVs938gqKhw/EnuGoNtHmsMUdEfr6AmjaMQYaTaAu
	IVhuVArFkMfO9NG3zgNnaDObPYEq29S3uasOvej2ZhyZZhCofniuW3UGGKTDWw5AFKLf
	QsowQQExo+pNBGy4PPU+TtF5QiXug+RVtaqa6hwS5YoxLORFmhkjoIxwxqhiBPUEe9Ax
	gSfw==
Received: by 10.182.207.3 with SMTP id ls3mr11459525obc.60.1355762878805; Mon,
	17 Dec 2012 08:47:58 -0800 (PST)
MIME-Version: 1.0
Sender: langabe@gmail.com
Received: by 10.182.153.4 with HTTP; Mon, 17 Dec 2012 08:47:37 -0800 (PST)
In-Reply-To: <CABcZANkkB3z_hXB8wLM4Ds5zzVLn6yhHzkoTdJqDFH9j1RiHug@mail.gmail.com>
References: <CANsDNf39kE=R4EhFpVsGQWP1AD1VSFgNWNxw4h1A2_nSuRUkUA@mail.gmail.com>
	<CABcZANkkB3z_hXB8wLM4Ds5zzVLn6yhHzkoTdJqDFH9j1RiHug@mail.gmail.com>
From: Alex Gonzalez <alex@lindusembedded.com>
Date: Mon, 17 Dec 2012 17:47:37 +0100
X-Google-Sender-Auth: pOMTQKCKFT25gNYJTLIQryICb8k
Message-ID: <CANsDNf2+VRWcY-PqrVV=OubNnwGS8BqLKd=qZoE3eccbYUPTvg@mail.gmail.com>
To: Chris Larson <clarson@kergoth.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Specifying different make flags for different tasks.
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
X-List-Received-Date: Mon, 17 Dec 2012 16:47:59 -0000
Content-Type: text/plain; charset=UTF-8

Hi Chris,

Yes, that would be exactly what I want, except that it' not working for me.

Probably something obvious, but just in case, any reason why this
should not work in denzil?

Thanks,
Alex

On Mon, Dec 17, 2012 at 4:24 PM, Chris Larson <clarson@kergoth.com> wrote:
>
>
> On Mon, Dec 17, 2012 at 1:36 AM, Alex Gonzalez <alex@lindusembedded.com>
> wrote:
>>
>> I am using EXTRA_OEMAKE to pass extra flags to make.
>>
>> How can I pass different flags for different tasks?
>>
>> In this case I am compiling an external kernel module and I need
>> different make flags for the do_make_scripts and do_compile tasks. If
>> I set EXTRA_OEMAKE in the recipe, all tasks use the same make flags.
>
>
> You could use the task-<taskname> override. E.g.:
>
> EXTRA_OEMAKE_append_task-do_compile = " FOO=bar"
> --
> Christopher Larson

