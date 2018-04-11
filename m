Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EB26E007AD; Wed, 11 Apr 2018 07:26:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27596E00529
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2018 07:26:31 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id x9-v6so1877288oig.7
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2018 07:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ynzNcri7LFdRUUzS9my+iHZp6+sTkJTlGUA0XAkDZTo=;
	b=W+AfjWbpK1Yzlhp8DLrtnpOR19UkjHukxlwgjNZKyyrbnzQUZ512MI59ufE0sEXFip
	7Vw7cMr12689duny5fcKLZHV3qwSpbmKUpavihKa/S/Y6h/qS2TMNgmmWw5yhN9IgvKl
	KW9S8eoZVFsIYoN8jcshYIx1qHgS+yeFdrZMidWqU+FhOOX8y5bKXxKHa2xi8Q4TfAbb
	3gFF92uOa7hCkduNaTLrt2vc3lZ6eMJdx/TE8ZfUfRtLVqaTz9gyEe57FJDzIWKOScde
	VaaN5wLQM5pP9ekTD3Uy1Aous51cfJ/zWWtiZ5NCBi50hKwlIhM+zlHUvQi7+mn15fry
	pldw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ynzNcri7LFdRUUzS9my+iHZp6+sTkJTlGUA0XAkDZTo=;
	b=qlDmsCGRf0xmiM78EDjeP/8frWLfmg0JE8BZpdzAa5gqexhAFzNU8AUnV7sMTXGjqm
	5dayvhMq7TbvwcHJn8h8OR0jZmgZT55b46mVW4HJrVmiFDGY41QHHkOXSpGIBJarVTbP
	LVuiBpmKCUlb+MjsGRoQ2M3JW/9YiMVD8WP16Ov+2f90KWGUsFScZa136WRiz6rWLewv
	fz8VPR7xllAL33L6QCyYvJh4wgrYXCKjPCFzXpX3u/HpnO/es4GtnPl2bn7uu0caF5Bv
	tnLKfdn9nWCAyScCmmd+wW5STmTIOgPCVYV/phIjskB4aIWT38xDQNszhrZXER/zvL9x
	T8tQ==
X-Gm-Message-State: ALQs6tCe3U/QhBfZr4oqgxK+lSFqKmimI/nHfPihVaQ8Avq3h89plHXf
	3oZj8a5+A7IrbRf++xZsbBFS8Ri0Uyd56VZuHAShUw==
X-Google-Smtp-Source: AIpwx4/dTpspe9MVnXDdCKjydj8jhdknzuWD9ntCfi+P36zEOYesLol0xCqmN0pHYBd6psz882WgHkNhaZQAzqIXqzE=
X-Received: by 2002:aca:d09:: with SMTP id 9-v6mr3225810oin.170.1523456791405; 
	Wed, 11 Apr 2018 07:26:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.138.17.198 with HTTP; Wed, 11 Apr 2018 07:26:10 -0700 (PDT)
In-Reply-To: <8df9f30c-449f-1a0a-089b-5c260e5403b5@tu-dortmund.de>
References: <8df9f30c-449f-1a0a-089b-5c260e5403b5@tu-dortmund.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 11 Apr 2018 15:26:10 +0100
Message-ID: <CAJTo0LZ13wKAgW6ncrsHkOezkX7_XPifSjAQyNR0iD3FD+od4w@mail.gmail.com>
To: Sebastian Rohde <sebastian.rohde@tu-dortmund.de>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Offline use of opkg
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
X-List-Received-Date: Wed, 11 Apr 2018 14:26:33 -0000
Content-Type: text/plain; charset="UTF-8"

(1) is basically exactly what images do: they depend on do_deploy of
all the packages that goes into them.  The pkgdata tree in tmp/ will
tell you (2), (3) is just shell operations, and (4) is trivial.

Ross

On 9 April 2018 at 16:31, Sebastian Rohde
<sebastian.rohde@tu-dortmund.de> wrote:
> Hello everybody,
>
> in my setup opkg is used as the package manager and I use it to install /
> uninstall several software alternatives. I want this to work on deployed
> devices in an offline fashion, i.e. I want to do "opkg install <sompackage>"
> without internet access. <somepackage> might or might not be installed in
> the actual rootfs in the original image.
>
> I could really use some hints how this could be achieved without running
> into a dead end. My current idea is to deploy the ipks somehow into the
> rootfs und point opkg to the "local repository":
>
> 1. Make some kind of meta-recipe with a dependency of the do_install task on
> <somepackage>'s do_write_ipk task
> 2. Find somehow the filenames of all ipks generated by a selection of
> recipes (the ones creating <somepackage>)
> 3. Install them to the rootfs, generate Packages.gz
> 4. Point opkg to this local repository
>
> For steps 1 and 2, I am not sure whether that is possible with a reasonable
> effort and I would be very thankful for any guidance.
>
> Regards
>
> Sebastian
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

