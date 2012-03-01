Return-Path: <kergoth@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96D9BE013EE
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 16:27:55 -0800 (PST)
Received: by qam2 with SMTP id 2so82354qam.14
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 16:27:54 -0800 (PST)
Received-SPF: pass (google.com: domain of kergoth@gmail.com designates
	10.229.78.203 as permitted sender) client-ip=10.229.78.203; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of kergoth@gmail.com
	designates 10.229.78.203 as permitted sender)
	smtp.mail=kergoth@gmail.com;
	dkim=pass header.i=kergoth@gmail.com
Received: from mr.google.com ([10.229.78.203])
	by 10.229.78.203 with SMTP id m11mr669151qck.86.1330561674959 (num_hops
	= 1); Wed, 29 Feb 2012 16:27:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=2RHlh7JU1f4j+kt32MKKR9J9a7HrdI7vEf7jYuIXgXU=;
	b=weZyb68SelJofs7puAR8zjXG3fgMGqJLCFnjngi22rAERuy5gwsxPfhADjCoTTdYJC
	2jkyv4VB69exqoyr2FzXxRTF3ExMs7QiCDxuHfGsyaVFOa6OzP0sWJT1MXZRnrXWAHvT
	K7f11IPIAp7n6YhVGdRrbPsESvr0UAzQJtlrw=
Received: by 10.229.78.203 with SMTP id m11mr563982qck.86.1330561674844; Wed,
	29 Feb 2012 16:27:54 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.224.145 with HTTP; Wed, 29 Feb 2012 16:27:34 -0800 (PST)
In-Reply-To: <4F4EBEC8.7060705@linux.intel.com>
References: <4F4EBEC8.7060705@linux.intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 29 Feb 2012 17:27:34 -0700
X-Google-Sender-Auth: Kg_SOJHr161-044DfT5ZLbkHIXA
Message-ID: <CABcZAN=xxYE+fxC_VhhsH+53eOMR4EPX4apWOG6Ut7zmOnSqyg@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>, "Perez-Gonzalez,
	Inaky" <inaky.perez-gonzalez@intel.com>
Subject: Re: Documentation: Default FILESDIR
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
X-List-Received-Date: Thu, 01 Mar 2012 00:27:55 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 29, 2012 at 5:11 PM, Darren Hart <dvhart@linux.intel.com> wrote:
> When a new user goes to write a recipe and add a patch or other file,
> they need to understand FILESDIR and where to put these additional
> files. I scanned the reference manual and the dev manual and came up
> mostly empty handed. The one glipse of it is in section 5.1.4 of the
> Reference Manual:
>
> "
> It is useful when making changes directly to the work directory files to
> do so using the Quilt tool as detailed in the Modifying Package Source
> Code with Quilt section. Using Quilt, you can copy patches into the
> recipe directory and use the patches directly through use of the SRC_URI
> variable.
> "
>
> Unfortunately, this doesn't say where the recipe directory is and what
> it should be named.
>
> Is this documented somewhere that I missed? If not, Scott can you add
> this task to your list of doc gaps?

FILESDIR hasn't actually been used (or, shouldn't have been) for
years. FILESPATH replaced it.
-- 
Christopher Larson

