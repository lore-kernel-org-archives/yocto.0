Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA81EE00292
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2012 03:28:51 -0700 (PDT)
Received: from mail-oa0-f48.google.com ([209.85.219.48])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 11 Oct 2012 03:28:48 -0700
Received: by mail-oa0-f48.google.com with SMTP id h2so1853303oag.35
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2012 03:28:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=Znnoeju++A/83EYHEsv0imQVRw1/YMB6txrFKt/U118=;
	b=W/47ubx+W5nY8L/SO/TiZezXFDT4+JGeKYq7qJqN63+110cANnAzsv2kfYkQbdiKXJ
	euVvfMaYZ7OI+LzqsnqJNQq0q4ODQmvJjyHhvj6ho3afgoeX69sQkXHmn1xBDed4F4ka
	GWPg4ePlzsgsaZLydYzUWeF/CbB30Ocz5SDINH3gHp1KQt69uQv6DVIaSiYuZ83/XbJE
	FW4eRJeL4CEY7iUHDlazcSbmr6ut/ODPBSf9RWorPSsIWO+rtRfj6XZEekijz3liIHg1
	uYHn6dj5I4d9xKrAQEExau2S/FZKZY8sgsoxX67DvuI3Nkil/4pMudhWNvyOSCbr5Pku
	Dykw==
Received: by 10.182.154.103 with SMTP id vn7mr248893obb.95.1349951328126; Thu,
	11 Oct 2012 03:28:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.70.6 with HTTP; Thu, 11 Oct 2012 03:28:27 -0700 (PDT)
In-Reply-To: <ADD6A3980E8C39419A432FF422031B4C1573165F@ORSMSX106.amr.corp.intel.com>
References: <cover.1349831664.git.nitin.a.kamble@intel.com>
	<5e3291d077a714c7fc69d8bcc308974d75baffd4.1349831664.git.nitin.a.kamble@intel.com>
	<CAJTo0La-n0y4jzvm5x2gFPMzV1eMm3oedvr7eaeN+WC0220seg@mail.gmail.com>
	<ADD6A3980E8C39419A432FF422031B4C1573165F@ORSMSX106.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 11 Oct 2012 11:28:27 +0100
Message-ID: <CAJTo0LZ+0uYdFyuQDiqi46=sO06iOVETG9ktoKfP9Us7p1ysFw@mail.gmail.com>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
X-Gm-Message-State: ALoCoQkMrJ2tHss294Y4v0NRjSCXhi56cz2rUsblZ3s/WmV4ym+SqcKstDc3TftJSZiZxBGlxtkG
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: [PATCHv2 2/5] crownbay.conf: specify the 8.0.4 version as preferred version of mesa-dri
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
X-List-Received-Date: Thu, 11 Oct 2012 10:28:51 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 11 October 2012 00:14, Kamble, Nitin A <nitin.a.kamble@intel.com> wrote:
>   The reason is we want to know if the version of mesa in oecore has chan=
ged or not. EMGD has specific needs of mesa, and in the testing we are not =
finding any issues with v8.0.4 of mesa. But that may not hold true for futu=
re versions of mesa, so we would like to pin the version here so we know th=
at this version works as expected.

That's an excellent reason.

Ross

