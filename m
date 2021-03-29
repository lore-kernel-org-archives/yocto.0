Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web12.21593.1617023651228471186
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Mar 2021 06:14:11 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4F8Chc6tXMz5tlB;
	Mon, 29 Mar 2021 15:14:08 +0200 (CEST)
Date: Mon, 29 Mar 2021 15:14:07 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Damien LEFEVRE <lefevre.da@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Naming images
Message-ID: <20210329131407.wwa55qzdj77tckd7@qschulz>
References: <CA+FhBv8odAVKKe5YvVGjzUqQP_69yaQpfh8zuLQ3MB2ZnF+tBw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+FhBv8odAVKKe5YvVGjzUqQP_69yaQpfh8zuLQ3MB2ZnF+tBw@mail.gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Damien,

On Mon, Mar 29, 2021 at 03:33:09PM +0300, Damien LEFEVRE wrote:
> Hi,
> 
> In my build system the generated images are in this format:
> 
> imagename-machine-timestamp.img
> 
> For release builds, I'd like to replace the time stamp with the image
> version. I could rename the image after the build but is there a better way?
> 

IMAGE_NAME variable is the one specifying the name which should be used
for the final image. c.f. https://docs.yoctoproject.org/ref-manual/variables.html#term-IMAGE_NAME

By default, its value is "${IMAGE_BASENAME}-${MACHINE}${IMAGE_VERSION_SUFFIX}"

IMAGE_VERSION_SUFFIX is by default set to "-${DATETIME}" as documented
here: https://docs.yoctoproject.org/ref-manual/variables.html#term-IMAGE_VERSION_SUFFIX

Therefore to put the image version, you just need to change
IMAGE_VERSION_SUFFIX to what you want it to contain.

Cheers,
Quentin
