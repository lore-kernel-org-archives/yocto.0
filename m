Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F913E0045D
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 02:34:11 -0700 (PDT)
Received: from mail-oa0-f48.google.com ([209.85.219.48])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 18 Oct 2012 02:33:46 -0700
Received: by mail-oa0-f48.google.com with SMTP id h2so10330205oag.35
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 02:34:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=vz5z2qALM7JOLl7CtBgk22mEoM//W4fC9byTV99hvuw=;
	b=AkfxPmbZSKGcrIO6BW9dpldthBNinoTSx4lVHqHY44crIjITUM4L4W/BIOwhyHpXPt
	KbtNvwUlGm8ktgWhhhdLgK5BYK+Fx9KSR7u2GWQeG8eIdjvGLMqguIKZ99IXzvwA/0pP
	zuaFh0QbpX+NtOfpadsgcnCJ8lWm+v+i2l7Vvg+m+ooAxfFw07Zo0/ed4q4jWWa1Deel
	OD0nXRmDeWfywbuXF3kn5eKu+FD9LzdwWXqc/jgXQGn2UeQHBTHl+6I1qlU4yvWJkdQt
	FP9wMdRAuZ1NWOD+MYsR6tAzZ25m8sfsd26W3+u3zxz9EhNiuRl2T3y8tTaPOkyGhIZ1
	FV7w==
Received: by 10.182.95.142 with SMTP id dk14mr16884477obb.2.1350552849470;
	Thu, 18 Oct 2012 02:34:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.46.70 with HTTP; Thu, 18 Oct 2012 02:33:48 -0700 (PDT)
In-Reply-To: <1444424.PbzRs5XmCV@helios>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A85CDB@ORSMSX101.amr.corp.intel.com>
	<CA+gsK-ovhd30EZ3R68R=o4=iWb5MJqZAAenwRo2yJg+_Tn1NTQ@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A86E2E@ORSMSX101.amr.corp.intel.com>
	<1444424.PbzRs5XmCV@helios>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 18 Oct 2012 10:33:48 +0100
Message-ID: <CAJTo0LbS8uewRzmai8WidO982YMw7-B0QH8aYKQeX-WCqyyctQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQmzO0RKx7w+F2qiBX2WRJy3uMgwf6ngFwpdpE2WDVU7SCTQXJvL1+5DC8pSeMNxI3refr1d
Cc: yocto@yoctoproject.org
Subject: Re: Requesting information on some variables
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
X-List-Received-Date: Thu, 18 Oct 2012 09:34:11 -0000
Content-Type: text/plain; charset=UTF-8

On 18 October 2012 10:20, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
>> I don't know the relationship between "features" and "packages"...  maybe it
>> is a one-to-one relationship.
>
> It's definitely not 1-1, and sometimes a feature doesn't just control the
> installation of a package or packages, but influences how certain recipes are
> built, e.g. it might determine whether a particular configure option is
> specified within do_configure for a particular recipe.

A concrete example might help.  For example there is a "bluetooth"
machine feature that means bluez (the bluetooth daemon) is built and
added to the image, ConnMan enabled bluetooth support, and so on.

Ross

