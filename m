Return-Path: <ross.burton@intel.com>
Received: from mail-qa0-f47.google.com (mail-qa0-f47.google.com
	[209.85.216.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5668E0079B
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 03:00:10 -0800 (PST)
Received: by mail-qa0-f47.google.com with SMTP id j5so3203871qaq.6
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 03:00:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=2bvBL5qK6/rdDT8a+iYJ5Quwe/dCSK0em8RtlbcnXiA=;
	b=K7eYkxV1HkDGSbMNV95RZH3YpNmT5ACaez0fqYBsi5+gggWssuQIK/fL6U3uIy0t/L
	xh5P8YwIrVoakAEclthJEUPd2ebenhiDh5I7QKWrVXYBJfOQ/UBoz/R+Fvq8H+35qEml
	yYl19Ee5Q55t/upqMhl3+3UNhxLY9vTJhpJYAIYdaJCnfNhkMLS2jk21uwrolsa0XOhe
	CeBnzKLErLzaGpOFr/Dnp6c/UFYsBndTkj+fSTeRnIMIb7w27eCdKr4lDFOfUlGXR6DH
	OOUJHN2Doqb8ntaaMkrhMkCi4/npYX3iO2yog/FQM2GcaCRh/U1DDA7ljql4ntSKHvBt
	rUvg==
X-Gm-Message-State: ALoCoQkgpA+3a9uxZSrcQ4KJe5rraqZxGChhMFPdcXsz8jU3dCDF8pmftaUK20BOSJDSZmgiwJ+L
X-Received: by 10.49.98.35 with SMTP id ef3mr1652614qeb.30.1389697209423; Tue,
	14 Jan 2014 03:00:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.96.179.105 with HTTP; Tue, 14 Jan 2014 02:59:49 -0800 (PST)
In-Reply-To: <20140114105608.GA4192@gmail.com>
References: <20140114105608.GA4192@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 14 Jan 2014 10:59:49 +0000
Message-ID: <CAJTo0LZbAa-DW4PQm751bGM_t22os2cNyN9=XmRteOb4tijkWQ@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Audio/Video etc sample files
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
X-List-Received-Date: Tue, 14 Jan 2014 11:00:12 -0000
Content-Type: text/plain; charset=UTF-8

On 14 January 2014 10:56, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Is there any support in including sample files in yocto? For example for
> testing different players you need samples. Maybe we can have a samples meta
> layer with upstream sources or local ones if there is nothing already done.

https://github.com/openembedded/meta-oe/tree/master/meta-multimedia/recipes-multimedia/sample-content

Ross

