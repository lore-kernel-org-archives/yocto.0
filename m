Return-Path: <bewithsathish@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53AADE00595
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 04:22:19 -0800 (PST)
Received: by dadp13 with SMTP id p13so1037520dad.35
	for <yocto@yoctoproject.org>; Wed, 01 Feb 2012 04:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=/g9E6hPZMowcskBe0Dos242+mRe986rguv0WyXopVZc=;
	b=siobEVC5rdNSof59T5MY7/fXsTC3sfR3waSEZzTp2orQpgNU+ednsjwXOD9jjGlZcP
	0CQjjaAGvLrFScfppLzZ3lzH2niiyjfSXFtXHU0oiL2VDlCU4fzpguXtkVfxucr39rYh
	fXFCx1qNvox71o+RSWa28C9aw3imBQqPGZ09Y=
MIME-Version: 1.0
Received: by 10.68.195.73 with SMTP id ic9mr59800544pbc.72.1328098939101; Wed,
	01 Feb 2012 04:22:19 -0800 (PST)
Received: by 10.68.232.5 with HTTP; Wed, 1 Feb 2012 04:22:19 -0800 (PST)
In-Reply-To: <1328096562.2628.16.camel@babel.joshhome>
References: <1327993829.2696.18.camel@babel.joshhome>
	<CANJvwR_Zk8YwH6EyyoM8siMPxYgZFbyiFa04tVh4ubGXSETQnA@mail.gmail.com>
	<1328096562.2628.16.camel@babel.joshhome>
Date: Wed, 1 Feb 2012 17:52:19 +0530
Message-ID: <CANJvwR9dwJ-U90mtQPZwBT0vHoo7ur2CkYR9Zmc=wajVwBrkmA@mail.gmail.com>
From: Sathishkumar Duraisamy <bewithsathish@gmail.com>
To: Joshua Immanuel <josh@hipro.co.in>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: forcing a task to run while building an image
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
X-List-Received-Date: Wed, 01 Feb 2012 12:22:19 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Feb 1, 2012 at 5:12 PM, Joshua Immanuel <josh@hipro.co.in> wrote:
> Hello Sathishkumar,
hello
> On Wed, 2012-02-01 at 16:34 +0530, Sathishkumar Duraisamy wrote:
>> I think, image are build from the packages that are build from the
>> recipe. And there is no way for the bitbake to detect that source is
>> changed like the makefile.
>
> My use-case is such that I need to run a particular task irrespective
> of the changes in that recipe. By adding the task to do_bootimg[depends]
> I was able to accomplish that. (I am not sure whether it is the
> preferred way of doing it)
>
> However, the variables defined in the custom image recipe were not
> getting exposed to the task added to the do_bootimg[depends]. Thats the
> part that I've to figure out (need help).

I understood what you trying to mean. Can you please clarify what
image means, whether final image of rfs like jffs2 or package from a
recipe.

-- 
Regards,
Sathishkumar D
http://flowersopenlab.weebly.com/

