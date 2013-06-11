Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f169.google.com (mail-ve0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5234E014F1
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 15:10:43 -0700 (PDT)
Received: by mail-ve0-f169.google.com with SMTP id m1so6158236ves.14
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 15:10:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=ZK+fezwmjhxn/S1ZTwGuTqPC7BLvxYzV0NbCp5wH+QI=;
	b=nO+hMYstcuee0VkByQSQ261DVg0cFvMRj8mHtjU1ggjU10AYRCOUgvRNa+kjsBuyhd
	+P9PzKI8WJ1HKAYtT74yLwHgbZvV3w/pIQTHwzPHCtSxDNqYfVJEJMNF0scalgepVnZg
	n+uAdKE4SIm4GUXdh+xWnr4llkQhRaeNHhhrVX1o4rFQ7vJlXbOtkL5xyAzB7mCDHa/a
	Ldxlb9kbBq6n7DEuQ3xfdDmcBGy3j+OZkY4h+vzsIMnmuuFSGketiMxWIi5ft2jwh92T
	BIsjNKvyDIoqCDF8ySS7UnxyY2oX3j6Cg/jFNifnthPku87IX5N2naYZTEonrFkAQ8ee
	Bunw==
MIME-Version: 1.0
X-Received: by 10.58.34.69 with SMTP id x5mr7972466vei.11.1370988642389; Tue,
	11 Jun 2013 15:10:42 -0700 (PDT)
Received: by 10.52.114.170 with HTTP; Tue, 11 Jun 2013 15:10:42 -0700 (PDT)
In-Reply-To: <1810497.uZE9ivf2T0@localhost.localdomain>
References: <1810497.uZE9ivf2T0@localhost.localdomain>
Date: Tue, 11 Jun 2013 15:10:42 -0700
Message-ID: <CAPhnLPDjcbvejh+YnfrGXvwX2+qsHSfDowL8JuVSZc+M52YA7Q@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Diego <diego.ml@zoho.com>
X-Gm-Message-State: ALoCoQkM74pVqRUkIRgBe7ifC9niJoe2m1FP5q5RkR5LMtqVT1/8EupBG84T0gbsPGXZjXMnwQaZ
Cc: yocto@yoctoproject.org
Subject: Re: How to deal with non-standard license.
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
X-List-Received-Date: Tue, 11 Jun 2013 22:10:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jun 11, 2013 at 5:28 AM, Diego <diego.ml@zoho.com> wrote:
> Hi everybody,
>
> I have written a recipe which I'd like to contribute for glmark2:
> https://launchpad.net/glmark2
>
> The last thing that puzzles me before submitting it is that it's partly GPL3+,
> and partly under this license:
> https://github.com/rafalmiel/glmark2-wl/blob/master/COPYING.SGI
> which is not in this list:
> https://wiki.yoctoproject.org/wiki/License_Infrastructure_Interest_Group#Licenses
> Is there any way to deal with that license? What should I put in the LICENSE
> field in my recipe?

So, you will need to add a custom license or submit a patch OE-Core to
add that license. Where are you contributing this to?

If it's to a layer, you'll want to add the license to a custom license
path. You'll want that file to be unique and descriptive. Please make
sure the license filename has a version in the file name. eg SGI-1.
Within the layer you'll make a directory (in this example I use
custom-licenses), add the license text to a file named SGI-1, then add
this to your layer.conf:

LICENSE_PATH += "${LAYERDIR}/custom-licenses"
SPDXLICENSEMAP[SGIv1] = "SGI-1"

That should get you what you want.

-b

>
> Bests,
> Diego
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

