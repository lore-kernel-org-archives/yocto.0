Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C4A7E00C58; Sat, 12 Jan 2019 11:41:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.44 listed in list.dnswl.org]
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5CA8E009EB
	for <yocto@yoctoproject.org>; Sat, 12 Jan 2019 11:41:08 -0800 (PST)
Received: by mail-wm1-f44.google.com with SMTP id y139so5288613wmc.5
	for <yocto@yoctoproject.org>; Sat, 12 Jan 2019 11:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ys6HcegIfjCmhOUhUO29X+2Ugcpnki0CwunCiQ9Bw+0=;
	b=tUziC9OQngsuiq/FzL1pHK4psvOr28NUl2C3JMdPmOKjZKYWJwlu9AZ0NXAZXU5t2Y
	3Vjv3J1AvAy/Hv+AsidjYXxsQMbvHlQKM+fSgulzQnAndYziKFUelVSFXFn5xk9blPPt
	+az3n1uzsZgm2/ICM7zesvuRt3CrlkN2KCg+phH9XYgoSQ6JvltdcI/C+8MAh088ybDz
	pH8S45/2+48QGOe2O86NP4W4T8Gmg0mWkkgqLMPp6CetnU6pMFYuP55Y6feyH4mvjk7O
	Vt+BJk8u4XM49ByWF34XK7B2/Slxqtcg2ROE82SlrXIJIc8RVId8Bh32zmgmDFRknWyO
	Ajhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ys6HcegIfjCmhOUhUO29X+2Ugcpnki0CwunCiQ9Bw+0=;
	b=eb2LFi1xgP0z2gBkcwQxc5W3kJJoveFxQfcQnr2HXwWhG1Pr51TsaaffVEy2JzsaDy
	FSS0jS/5f8uvkdfi0IB+14/+OYq3YjCsIff+lnqFUUgLXLLTUCHlRsaljwhvLSmVXE8h
	DtR4gzuP7DYGSI1y/J3pcWeDEq/Xuy3qScDmwPZ2vn4ssngHuS4VtJrGY3Zm0VmHnply
	fOjOceR4IlIWslGGcS/Ks4ZYoWc646LY3gJLrm0KAVio/5s8Ouy+HpJKvvqr8JntLTu2
	3kt3EotkX3t1recTd7kgH7dMRSgrRgegNCukmfa8iz276RqdjeTamMnMNPnnEw8Yk28q
	xCKQ==
X-Gm-Message-State: AJcUukf00SSn4WmDjl/q97aC2hHTYb+vGcGmJKYCEaiofyppJngYKMgv
	KK8AUfwxDMrSHFIURzhAFL++v6cRkzydoKWRidc=
X-Google-Smtp-Source: ALg8bN6HLIwNHybUAmrRdid9+LVxsChcDvF/pjobbChwusjbiDNpmyBf9R2EHXKyDoFpOSuKRbxO//4fno5++ZdhdSM=
X-Received: by 2002:a1c:3d44:: with SMTP id k65mr6420344wma.76.1547322067494; 
	Sat, 12 Jan 2019 11:41:07 -0800 (PST)
MIME-Version: 1.0
References: <CAK9iUCPKMYD-qCwmycGi8swuy_xLyGdL7eiHTbKBT0DSfRaRTQ@mail.gmail.com>
In-Reply-To: <CAK9iUCPKMYD-qCwmycGi8swuy_xLyGdL7eiHTbKBT0DSfRaRTQ@mail.gmail.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Sat, 12 Jan 2019 13:40:55 -0600
Message-ID: <CAJdd5GY+CS5vF0_i_Q62TQTFXd_qixsKVq1W4FTMgLEUfDGq1Q@mail.gmail.com>
To: Sinan Kaya <Okaya@kernel.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: meta-mingw and cmake
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
X-List-Received-Date: Sat, 12 Jan 2019 19:41:09 -0000
Content-Type: text/plain; charset="UTF-8"

CC'ing yocto@yoctoproject.org

On Sat, Jan 12, 2019 at 1:02 PM Sinan Kaya <Okaya@kernel.org> wrote:
>
> Hi Joshua,
>
> I have this instruction to build cmake as part of the SDK.
>
> +# Add the CMake binary to the SDK
> +TOOLCHAIN_HOST_TASK += "nativesdk-cmake"
> +
>
>  When I add this, windows SDK build is failing to compile.
>
> I'm using the sumo branch. Do you have any ideas?

I believe that compiling cmake for mingw works on master, can you give
that a try? Also, be aware that while it compiles, it may not actually
work in the SDK depending on your use case. See
https://lists.yoctoproject.org/pipermail/yocto/2018-November/043344.html
for more details.

>
> Sinan

