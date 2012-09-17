Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABE93E0049F
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 06:51:32 -0700 (PDT)
Received: from mail-oa0-f48.google.com ([209.85.219.48])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 17 Sep 2012 06:51:30 -0700
Received: by oagn16 with SMTP id n16so6284681oag.35
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 06:51:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=ia5V/8G9gny41O+3XbdxGHecsk/QiQLcLPvLAT+tUUo=;
	b=gPJUgFaz4OMj55NZ/kP0HFabjq//nRGoCVQboSgR9HPOMa21Pw+bSgsw4AErQtpjJp
	+AXuvXdNiUiG17kWeLmmz17NqF8BSsJu9Ed37/6oHhELDsnmViWomZkg8UrQYE19NqsL
	8tVQHvrAAUfSJqL/usEXi1vZij/8mlcwH6DjntkI5BQuU+kc1JWg56XO+bThCUfbtseo
	b5ywyHG6og+PKKDnjUHOg3AC9HRQRGQczIIWHcsgxoaEscQFUpDJKfV/kBJ4pKsvp3p2
	ABCNI8qX9OGcfsKO3t90dox+GA5CD3sfGj8O/doZIxIrviMEcWrLKnbd6kkwH6xdZ7He
	H/vw==
Received: by 10.60.19.132 with SMTP id f4mr11769908oee.17.1347889889070; Mon,
	17 Sep 2012 06:51:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Mon, 17 Sep 2012 06:51:06 -0700 (PDT)
In-Reply-To: <CANmVirg-f6MBzXjFrN+aquFLs+aqm050AcB7URcZH54JrLtx5w@mail.gmail.com>
References: <CANmVirh4JJnAyuJxnxMQbBuOB79dGsi6p_SRnn_HD8AZShsxKg@mail.gmail.com>
	<CADzUK1J_aTDBpAwDiDAXXYom5OnfaK=N6VVevCrOEP-vmfG+Zg@mail.gmail.com>
	<CANmVirg-f6MBzXjFrN+aquFLs+aqm050AcB7URcZH54JrLtx5w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 17 Sep 2012 14:51:06 +0100
Message-ID: <CAJTo0LbPddTir6e8msORdZ8mGAy8LAJ1R=g_c4+sFo-7g944Gw@mail.gmail.com>
To: Raul Rosetto Munoz <munoz0raul@gmail.com>
X-Gm-Message-State: ALoCoQl3QRDPgX6sCDsx+XP7rvoIjbFuKChhUy0r2T90A62eqHVRYDnQWunAjX0H0IqtxAp9ffqk
Cc: yocto@yoctoproject.org
Subject: Re: Create a .bb for my aplication
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
X-List-Received-Date: Mon, 17 Sep 2012 13:51:32 -0000
Content-Type: text/plain; charset=UTF-8

On 17 September 2012 14:48, Raul Rosetto Munoz <munoz0raul@gmail.com> wrote:
> I'm just want to mkdir in the /home/ path.
>
> Im try some thing like this but don't work!
> do_install() {
>     mkdir -p /home/prjs/
> }

You're creating a directory in the home directory on your build
machine.  *Not* in the working area for the package.  You'll want to
mkdir ${D}/home/prjs

Ross

