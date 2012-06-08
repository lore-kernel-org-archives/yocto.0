Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30D82E01437
	for <yocto@yoctoproject.org>; Fri,  8 Jun 2012 13:24:30 -0700 (PDT)
Received: from mail-qc0-f180.google.com ([209.85.216.180])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 08 Jun 2012 13:24:28 -0700
Received: by qcmv28 with SMTP id v28so992594qcm.25
	for <yocto@yoctoproject.org>; Fri, 08 Jun 2012 13:24:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=0tyLK4E5m/7mPIczG4FiZp0f1lz26x1Apwtg5dWkZIs=;
	b=JN0CKNHJXQ0LeZFe4n9W2LeXZMR6uqcp3CMRW3m2lnO5v5CR1loYdEa1N5xp8qS9Nm
	k/3ngX+XzVGyMji7UFoe3PStnaTebo2wT8i9y+rOiEbGTd4b2eExPKLlc931ZvKU65KG
	UY+twdneo6iMMEYCkcj0TlHFgS/9BGX2pi1hj/07MK+f2SFBlZ1dPj75ZIUwCmeXGiVa
	Pwc3FzlH36BYEthcHN2BdtnWzsFqCr8zSVhvJ0LlJwgBvA81ghfbeua8GB/VJeDFKHlY
	yUxsqYNQvCQPGukr9mXyQPI2J7x7nfYO84hx222x32EE9nnSQQtXwJA/weCUuz9wWesF
	/LHQ==
Received: by 10.224.210.198 with SMTP id gl6mr3206930qab.7.1339187067499; Fri,
	08 Jun 2012 13:24:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.53.212 with HTTP; Fri, 8 Jun 2012 13:24:06 -0700 (PDT)
In-Reply-To: <4FD22B4B.3050206@linux.intel.com>
References: <CBF7C947.109A2%belen.barros.pena@intel.com>
	<4FD22B4B.3050206@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 8 Jun 2012 21:24:06 +0100
Message-ID: <CAJTo0LbNaNmKMuF2gw+mUUyCRzEC+P34b6aVGX_AjYNSjQxzag@mail.gmail.com>
To: Joshua Lock <josh@linux.intel.com>
X-Gm-Message-State: ALoCoQmPtcPL4i5USYrOrTTmEk9WX1b/x87VrPI4QFm1ptW+uvxKSsPEu7YdTE9fb7Xf9fiSheEp
Cc: "Lock, Joshua" <joshua.lock@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hob implementation: vanilla or branded?
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
X-List-Received-Date: Fri, 08 Jun 2012 20:24:30 -0000
Content-Type: text/plain; charset=UTF-8

On 8 June 2012 17:41, Joshua Lock <josh@linux.intel.com> wrote:
>> Joshua: if you have a rough idea of the things that
>> will need to be changed from the work you did before the 1.2 release,
>> please let us know.

I think it's fair that I take over from Joshua as "resident GTK+
knowledge base", having written several GNOME applications and more
importantly being on the Yocto team. :)

Ross

