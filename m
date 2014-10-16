Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A301E00790; Thu, 16 Oct 2014 09:46:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.44 listed in list.dnswl.org]
Received: from mail-qa0-f44.google.com (mail-qa0-f44.google.com
	[209.85.216.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 301F8E00744
	for <yocto@yoctoproject.org>; Thu, 16 Oct 2014 09:46:18 -0700 (PDT)
Received: by mail-qa0-f44.google.com with SMTP id x12so2608138qac.17
	for <yocto@yoctoproject.org>; Thu, 16 Oct 2014 09:46:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=120MKlenll4cuLCOgE0r15xkdlXvVZxnNss+ASGUnzs=;
	b=YOrBPreoDMhd8Uz+E1Ss++D8VxAsbaILf6IsXm7CcdYC2udI4lJsMNyWtQZwzBDQJb
	6QQ+aGabT4cYOZEL4+kr//fj9mWtDlUsofv2T5n6ogsaVtv1V1zFtKM/RmXW6JPpHyFf
	kE2D9/TONEpMKc3CPGcokowKYJJ06/sqo0pYwS+xt4YbLJxkUIH/jAit0Tbh8vO4EO5Q
	e6mvuEYiCUx9QlV3M0xeNW1MbTfZg6KiVHFJUnw1MjSi85k09C2TJJmWt7RbjOrr1aLh
	BBm58z8M8ixcxt0IK3h8JYj+vrNIXTKL51T9WWadYg8TrcxXGGMEPrjtjKYuf7yV4mDF
	ZrIg==
X-Gm-Message-State: ALoCoQkOuVYrU0QlHKFPH8bTy08Xpjpyd5T/fxplsgV3gBo5bUbyNJ0Waf3fQG0qGd/tBNkzn9ZC
X-Received: by 10.229.72.73 with SMTP id l9mr4007311qcj.12.1413477977700; Thu,
	16 Oct 2014 09:46:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.93.65 with HTTP; Thu, 16 Oct 2014 09:45:57 -0700 (PDT)
In-Reply-To: <CAJTo0La9iMQ4ZiSuTFo35271c2McpzkSvugOEqL6dBNoncdkZQ@mail.gmail.com>
References: <3230301C09DEF9499B442BBE162C5E482576880D@SESTOEX04.enea.se>
	<CAJTo0La=7QNS53qZDgShj+9yr6Ge0hyk9HFAdS+Ue0bZAkck4A@mail.gmail.com>
	<CAJTo0La9iMQ4ZiSuTFo35271c2McpzkSvugOEqL6dBNoncdkZQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 16 Oct 2014 17:45:57 +0100
Message-ID: <CAJTo0LYNjC6knwruug3cNP6DTwYGvBzDAxgseUnaVWRx0d+Y0g@mail.gmail.com>
To: Sona Sarmadi <sona.sarmadi@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: Truly scary SSL 3.0 vuln to be revealed soon:
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
X-List-Received-Date: Thu, 16 Oct 2014 16:46:24 -0000
Content-Type: text/plain; charset=UTF-8

On 15 October 2014 16:31, Burton, Ross <ross.burton@intel.com> wrote:
> There's a openssl 1.0.1j out now (fixing FOUR (!) CVEs, including
> "disabling SSLv3 didn't work"...).  I think considering the situation
> we'd take the upgrade for dizzy, even though we've frozen.  Anyone
> volunteering to take lead of upgrading dizzy to 1.0.1j and backporting
> the relevant patches to the previous releases? (eg daisy is on
> 1.0.1g).

For anyone else interested, I've currently got 1.0.1j patches for
dizzy in testing.  There's been debate over whether we backport the
fixes to daisy's 1.0.1g, or upgrade as the number of fixes is
growing...

Ross

