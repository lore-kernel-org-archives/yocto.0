Return-Path: <raj.khem@gmail.com>
Received: from mail-ia0-f177.google.com (mail-ia0-f177.google.com
	[209.85.210.177]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id D88E6E0048C
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2013 18:59:20 -0800 (PST)
Received: by mail-ia0-f177.google.com with SMTP id y25so1630005iay.8
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2013 18:59:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=E9SQ3zXTt/vKuiaXBauzqBU9sC0sKgz26psg81X95aM=;
	b=0Wz4jNrokJ7Hd0t2ZAMwIU714pfFmAUqWk8nw1934QTWJf6hNTFrzJPAHuNLwPoX7P
	rVfHwFPIW+X5orgVZC52ULXt0/w0Jd20Yk9E+rOKXCZGGIeUhB/ltZoToF4F4G5i359W
	/K9kWod9x4h2qPt4Wfjv1A00214YyiTDubsSYs2uklkAJvZZApqbsd7Bn1epQDaHTGYU
	YPTOLodAkzCNoqmCrIUgD+l9IEPtJc55x0hf40uFjvu9G7dv0LQkC02iZeOpEecfb7d7
	U+6lWXLhJuntLh4tCjRyDa4eoN5YSfhRs7HQIWsXo0QW7sVDPHsptP7JZy+Wb3IXEvf8
	iEhA==
X-Received: by 10.42.18.138 with SMTP id x10mr29566790ica.22.1362538760253;
	Tue, 05 Mar 2013 18:59:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.74.163 with HTTP; Tue, 5 Mar 2013 18:58:50 -0800 (PST)
In-Reply-To: <B4F9B2A0-7231-4DC8-90D1-D7F291818791@gmail.com>
References: <B4F9B2A0-7231-4DC8-90D1-D7F291818791@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 5 Mar 2013 18:58:50 -0800
Message-ID: <CAMKF1sr+xH7Nb0-cG-Wky-A6842wwSPT8wWm2CDh583_BgdjOg@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Patching gcc-4.7.2 to add support for Xilinx MicroBlaze
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
X-List-Received-Date: Wed, 06 Mar 2013 02:59:21 -0000
Content-Type: text/plain; charset=UTF-8

Hi Elvis

I dont have a public repo for gcc its too big to host. You can just do
a normal patch
process on gcc in work-shared using quilt That should work

Thanks
-Khem

On Tue, Mar 5, 2013 at 6:45 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> Hi Khem,
>                  I hope you're doing fine!
>
> Could you give me the url to your gcc-4.7.2 git repo, so that I can develop patches against it to add support for the Xilinx MicroBlaze soft-processor?
>
> I've hit the following bug
>
> http://gcc.gnu.org/bugzilla/show_bug.cgi?id=54663
>
> and the patches are available with this revision
>
> http://gcc.gnu.org/viewcvs?view=revision&revision=195488
>
> So, I'd like to back port it against the current gcc-4.7.2 recipe revision.
>
> Or else, I will have to do a git svn import of the source, and manually patch it using the current list of patches in the yocto recipe, which would take a couple of hours. So if I can have access to your repo, it will save me sometime!
>
> Thanks!
>
> Best regards,
>
> Elvis Dowson

