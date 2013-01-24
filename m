Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f173.google.com (mail-we0-f173.google.com
	[74.125.82.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26733E014FD
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 09:12:23 -0800 (PST)
Received: by mail-we0-f173.google.com with SMTP id r5so899069wey.18
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 09:12:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=l5UM9JSAJcgFY4RwZJzApzPq8+x4oE4BcdvkugQ1jl8=;
	b=lYpdzn+u/8NaXMKgR4tjc13o+JT91Ix5epXBAFBEkmF9IWIQ+c8KZsk3dC/RwvEjNu
	N1u2iJ33DJPbX/KlzbQn9lbHB+pq9AY7Jy8T2GkIwh+5jiLmQlEAIVZzQCOruD4+Autc
	bCaaeUFbpbqZtgYM8ouu0/g1bhk1op7s4DH9VsY0Q6LK7jEWQ79vOhGMr2AKI7eeEdkc
	pwVgEr2RucYORrSj7N7zPaL+3vnXIuKjktYRi5kEyvbvTKwPFBsykKks0rjslaXNX+Lz
	VRvgDRh1oTRXaOQ+tfdyViodR+pyd7BSm/j+HKyKwn54r/i/iTdwCw8gHm1E4W2/If1h
	G29w==
MIME-Version: 1.0
X-Received: by 10.180.97.68 with SMTP id dy4mr4379741wib.7.1359047542269; Thu,
	24 Jan 2013 09:12:22 -0800 (PST)
Received: by 10.194.80.135 with HTTP; Thu, 24 Jan 2013 09:12:22 -0800 (PST)
In-Reply-To: <51013BCB.8080208@gmail.com>
References: <CAHUNapRAcCu=82B3JX0WQweEhz0-m+5sYhdR8gtX+U3UyiKnkg@mail.gmail.com>
	<CAJTo0LZGXAgvCMDD4B+12JTSb_tjNS3xn0mrabFb5DSob8AJnw@mail.gmail.com>
	<510092A1.6050009@windriver.com> <51013BCB.8080208@gmail.com>
Date: Thu, 24 Jan 2013 12:12:22 -0500
Message-ID: <CAHUNapRWoA5q_vpaZarV2keT6wfMWj8U1J7YAzbZ=zbRGfiSSg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Eddy Lai GMail <eddy.lai.tw@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: install and use "bitbake -c populate_sdk"
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
X-List-Received-Date: Thu, 24 Jan 2013 17:12:24 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Jan 24, 2013 at 8:48 AM, Eddy Lai GMail <eddy.lai.tw@gmail.com> wrote:
> how can I "extend" the
> target system to use the rest USB disk space? ( it's FAT file system)
>     or how to modify configuration to force build the .hddimg create ~"8GB"


By default a certain amount of overhead is applied to the final image.
So the scripts figure out the size of your image and add a certain
overhead.

In your conf/local.conf you can specify "IMAGE_ROOTFS_SIZE" which you
can set to the size, in kB, you want your image to have. But if you
image (plus overhead) would have been larger than this size, then
you'll get the larger + overhead size you would have received had you
not specified IMAGE_ROOTFS_SIZE.

You can adjust the overhead by playing with the IMAGE_OVERHEAD_FACTOR variable.

These calculations are performed by code from meta/classes/image_types.bbclass

