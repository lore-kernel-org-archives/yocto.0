Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5277DE00444
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2014 10:04:04 -0800 (PST)
Received: by mail-ie0-f171.google.com with SMTP id as1so6578273iec.30
	for <yocto@yoctoproject.org>; Mon, 03 Feb 2014 10:04:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=YzHzJmijTqnjwpZhOvV4Eu2DZfsefzjCPXzS5byu7kg=;
	b=buP8+WcCgxwuGmtA+LgJPuwlDisWgc6JFZnUOaSi/jtADXby/4mhkKW/stF63p/W4l
	Hjp8I+EETOI3g0f+o7OAddVDxrac260k3ZByoo6Fg8+nmjdRIYxVnHEt1FGK91446FYz
	2Ss3jtmcUYAFOk58EyYKwmmjxzmPBTo0s3YpyegS7kyWXqQQRdjyXJrG9xs879nA9Ixg
	w/pM2DsqE8/DVqOOVmNfHLw2hzYwYcFzg7GmIL1P8xZKngsIKw6LSCyNg6oBEievjbdF
	BYPOXqdGcMKeYroxtwBcHXpg7TlibRZJNYvM8XaoXn//jDs65CWV21/uVH/D0Zu2xnR0
	BMMg==
X-Gm-Message-State: ALoCoQnybfLYPlRKyztj9AkKNpbLgo5ALHf+uNX3MgI4N4MqqzcboFMizS1KW0FN3k0Xcs3CjF0F
X-Received: by 10.50.147.72 with SMTP id ti8mr13376672igb.20.1391450643905;
	Mon, 03 Feb 2014 10:04:03 -0800 (PST)
Received: from [192.168.141.83] (69-165-220-158.dsl.teksavvy.com.
	[69.165.220.158])
	by mx.google.com with ESMTPSA id y9sm32870492igl.0.2014.02.03.10.04.02
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 03 Feb 2014 10:04:03 -0800 (PST)
Message-ID: <52EFDA12.4080905@linaro.org>
Date: Mon, 03 Feb 2014 13:04:02 -0500
From: Trevor Woerner <trevor.woerner@linaro.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <F7680723A1CA6840825A59020FA770640102E7D7@sdexmbx1srv.skidata.net>
	<5228382.mhMAFlqhoF@peggleto-mobl5.ger.corp.intel.com>
	<F7680723A1CA6840825A59020FA7706401032F77@sdexmbx1srv.skidata.net>
	<CAALGJZb_jfkTvfN9XT5Q=+jUB8j3b=d5HkigN9+cHWWSwi3C8g@mail.gmail.com>
	<52EFB87A.4070303@linaro.org>
	<CAMKF1srV-dLNNmSMMvd3ufyZBdBL-mr14Eu56W0JRtGEqqmgNA@mail.gmail.com>
In-Reply-To: <CAMKF1srV-dLNNmSMMvd3ufyZBdBL-mr14Eu56W0JRtGEqqmgNA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SRCREV for BBLAYERS
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
X-List-Received-Date: Mon, 03 Feb 2014 18:04:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 02/03/14 12:41, Khem Raj wrote:
> There already is a tool called combo-layer to create unified view by
> combining layers in OE-Core but its not one of above I think

Awesome! I hadn't noticed that before, thanks for pointing it out.

