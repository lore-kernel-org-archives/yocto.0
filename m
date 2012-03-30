Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AF01E0044D
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 10:28:07 -0700 (PDT)
Received: by lagu2 with SMTP id u2so1342949lag.35
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 10:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=u+37bN/Evge1D6OoWQXHc7VjdXNnCvOck+svtnGPPv4=;
	b=di9lcd0lD7ghZhvV02j9anGh2/Z4asU++JPNTWUtYs4wlD9XuW/FG9rMoj5gKcxx6x
	EATeLn+SMnd+BNfCw02jD+EjiJNM+Z4EMbl8o3P0KllrB8QHuvbYaCjvf4NiTygReR0+
	hddrXM73thxeNxreRDCGf5PT7sD1q4ZPz9UD8dQZ9CBtwRplmguecf01NL+5N/95OR6k
	QLU+fDonXzpwGYOw33+5KZT9WwOYmz3auPvZ9OYhz18C9hjkK/ZgGjtGJ2Rf5/HQzDBE
	38c0uAfXKtY1SgtGlh84a9wkL5NyulNvllPRhbCiPiWyWRHQ7B09BsbQ9H53aff7ZaBz
	xo8A==
Received: by 10.152.131.66 with SMTP id ok2mr3350061lab.10.1333128486853; Fri,
	30 Mar 2012 10:28:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.152.3.161 with HTTP; Fri, 30 Mar 2012 10:27:36 -0700 (PDT)
In-Reply-To: <1333125733.8318.79.camel@rchatre.jf.intel.com>
References: <1333041222.8318.46.camel@rchatre.jf.intel.com>
	<CAMKF1sqCu--JUWwj4ehApYSkfO5Farb6oQeYfJiOqcX9NzBUqg@mail.gmail.com>
	<1333125733.8318.79.camel@rchatre.jf.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 30 Mar 2012 10:27:36 -0700
Message-ID: <CAMKF1sp3LyDZrC0nHdxXYumiJbJVvr5pNKT8Ehhpk2qhWpnbrA@mail.gmail.com>
To: "Chatre, Reinette" <reinette.chatre@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: care when using remove_packaging_data_files
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
X-List-Received-Date: Fri, 30 Mar 2012 17:28:08 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 30, 2012 at 9:42 AM, Chatre, Reinette
<reinette.chatre@intel.com> wrote:
> Absolutely, an option is indeed to look if recipe can do everything when
> image is created. I was just surprised to learn that these minimal
> images by default prevent all first boot post install scripts from
> running.

remember the name has "minimal" in it.

