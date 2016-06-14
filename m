Return-Path: <michael.g.wood@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8C30E00A7F; Tue, 14 Jun 2016 06:30:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4515E009CD
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 06:30:08 -0700 (PDT)
Received: by mail-pa0-f47.google.com with SMTP id hl6so56612182pac.2
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 06:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=194/adng2RJi2YS5uvtVCFOCmQW6ZFWdMaphZzKIzfk=;
	b=LahYrS5lUQ6iKIayjxusOuAQDasy3F2WYxaFgtqrRfp02BasZ2S+neJRR7NC0LMx5U
	iI1mw1LconsqW0urSxLv1bmk9XsDkWm0DycGTlZFnqh5Q7b/rImxBYAujV7TSg3DlWqC
	GetoNknpg/b36JDX2h7yGP/BvgBjv6N6WiWXUnxHsp4u18hY3SkwRxHcLJCzlW5b2re5
	gZCZfPUJZq4LW28DQIX1eElD0QJ0qWyZUFYBYi3O9oI9uMFrJ4iThw+2+n+0Oh7OjTRe
	dbqF1MRap74cdxnPIHyWUJ2LPPqEJHvB7vHmx87VwccjU1oGJT50nrztBCtUjgTiiDjO
	BKig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=194/adng2RJi2YS5uvtVCFOCmQW6ZFWdMaphZzKIzfk=;
	b=MvAO+AxuLp5ptY8wY3YRntrrGodfzesOB66Joy/K5t66X/7QqQFWg9pOC46N4mHh7V
	dTls4XpZ7EGRnamFWrT+adMYgik3jgGzZxdP7Hso9FbgyqDjwgx31R109Yp8uRETgtSF
	/+VfjYEQz18Kk0qv42o4tW6UwPfDqwxn/u0mGnMq2xPwOXeuRvr5Qss+NLoHpdVo0FlM
	Y/oQ8FsfOz9lb7gOOP60J0Y8V55NuHqZQa36tTVVKV9h6CAHrMq2Xwc3ZWMz3v1vhzr9
	YPqK/rFnPnnRLRpqFUBnX+nU4UNtZtGEc6r7RG+UwYlFVTgVXBtC8dwxaR5RYqO6Pp/C
	UHuA==
X-Gm-Message-State: ALyK8tKYTTDButJF3XqE+VMAaRaZjt2mb972b9gwtp36UUuINS4ubZlhCbSyhsS1HycuTtgT
X-Received: by 10.66.73.138 with SMTP id l10mr28054984pav.92.1465911007677;
	Tue, 14 Jun 2016 06:30:07 -0700 (PDT)
Received: from [192.168.2.143] ([83.217.123.106])
	by smtp.googlemail.com with ESMTPSA id
	c15sm45594148pfj.65.2016.06.14.06.30.05
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 14 Jun 2016 06:30:06 -0700 (PDT)
To: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>,
	yocto@yoctoproject.org
References: <1465860736-26581-1-git-send-email-anibal.limon@linux.intel.com>
	<1465860736-26581-6-git-send-email-anibal.limon@linux.intel.com>
From: Michael Wood <michael.g.wood@intel.com>
Message-ID: <576006DB.6050708@intel.com>
Date: Tue, 14 Jun 2016 14:30:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <1465860736-26581-6-git-send-email-anibal.limon@linux.intel.com>
Cc: belen.barros.pena@linux.intel.com
Subject: Re: [[PATCH][error-report-web] 5/8] Post/models.py: Build model add support for Error type.
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
X-List-Received-Date: Tue, 14 Jun 2016 13:30:12 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 14/06/16 00:32, Aníbal Limón wrote:
> In order to support other errors not only Recipe ones adds
> a ERROR_TYPE field to the Build model defaults to "Recipe".
>
> Add a class for store BuildErrorType currently supported
> Recipe, Core, Bitbake selftest and OE selftest.
>
> [YOCTO #7583]
>
> Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
> ---
>   Post/migrations/0005_build_error_type.py | 19 +++++++++++++++++++
>   Post/models.py                           |  7 +++++++
>   2 files changed, 26 insertions(+)
>   create mode 100644 Post/migrations/0005_build_error_type.py
>
> diff --git a/Post/migrations/0005_build_error_type.py b/Post/migrations/0005_build_error_type.py
> new file mode 100644
> index 0000000..96cdf8c
> --- /dev/null
> +++ b/Post/migrations/0005_build_error_type.py
> @@ -0,0 +1,19 @@
> +# -*- coding: utf-8 -*-
> +from __future__ import unicode_literals
> +
> +from django.db import migrations, models
> +
> +
> +class Migration(migrations.Migration):
> +
> +    dependencies = [
> +        ('Post', '0004_auto_20160530_1126'),
> +    ]
> +
> +    operations = [
> +        migrations.AddField(
> +            model_name='build',
> +            name='ERROR_TYPE',
> +            field=models.CharField(default=b'Recipe', max_length=64),
> +        ),
> +    ]
> diff --git a/Post/models.py b/Post/models.py
> index 84f8abf..f8d9916 100644
> --- a/Post/models.py
> +++ b/Post/models.py
> @@ -11,6 +11,12 @@ from datetime import datetime
>   
>   import Levenshtein
>   
> +class BuildErrorType(object):
> +    RECIPE = "Recipe"
> +    BITBAKE_CORE = "Core"
> +    BITBAKE_SELFTEST = "Bitbake selftest"
> +    OE_SELFTEST = "OE selftest"
> +
>   # Create your models here.
>   class Build(models.Model):
>       DATE = models.DateTimeField('Submit date', blank=True, null=True)
> @@ -25,6 +31,7 @@ class Build(models.Model):
>       NAME = models.CharField(max_length=50)
>       EMAIL = models.CharField(max_length=50)
>       LINK_BACK = models.TextField(max_length=300, blank=True, null=True)
> +    ERROR_TYPE = models.CharField(max_length=64, default=BuildErrorType.RECIPE)
>   
>   class BuildFailure(models.Model):
>       TASK = models.CharField(max_length=1024)

Thanks for the patches.

Ideally we wouldn't use a char field here as if the type string ever 
changed the database could end up with multiple versions of the type 
strings depending on when the type was saved, it would be possible to 
handle that with migrations but it would be pretty messy. It also allows 
any arbitrary chars which we probably don't want if it's something we're 
going to be filtering on.  Here is an example from Toaster on how it can 
be done with the choices option and an enum style.

|OUTCOME_NA = -1 OUTCOME_SUCCESS = 0 OUTCOME_COVERED = 1 OUTCOME_CACHED = 
2 OUTCOME_PREBUILT = 3 OUTCOME_FAILED = 4 OUTCOME_EMPTY = 5 TASK_OUTCOME 
= ( (OUTCOME_NA, 'Not Available'), (OUTCOME_SUCCESS, 'Succeeded'), 
(OUTCOME_COVERED, 'Covered'), (OUTCOME_CACHED, 'Cached'), 
(OUTCOME_PREBUILT, 'Prebuilt'), (OUTCOME_FAILED, 'Failed'), 
(OUTCOME_EMPTY, 'Empty'), ) ||outcome = models.IntegerField(choices=TASK_OUTCOME, default=OUTCOME_NA)|



Michael


