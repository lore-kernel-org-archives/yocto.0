Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22C16E013EF
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2012 07:34:31 -0700 (PDT)
Received: by lagu2 with SMTP id u2so80496lag.35
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2012 07:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=0lQQRD26LHUpqI7EbSLuEMNjuEOmcgvBboujuPqLixQ=;
	b=vPomm2vOWbwW7Pxqnz7sbL93rB4ktfCM4XBNqUoCmrUl2drJO3WqkY6kaGbAawMEJm
	ilA1LXY/PAPfjpigZYdRflWKFkNof9Ht19WNrPKbquS9W259LmdnB/BSXW/8KsQfRlNr
	DjHWj6Alpq5AKqLu/cmMWkqvKskRifP+Yjhkpa4RMrHYEqOsYna00hZivdrFU59XhWA4
	saKtGjDXoO3ane7iALmzlYYgjth0YnE3ZGAc/aapvj244ef9l03mntXBdzkkox6j85TH
	HdaJ4HIx3RisV81ayb9mbtYRCASvZAlyMK+5Wo5lHRsym4rbk7Mha6u1tJR/EzfIP8hw
	HnRg==
Received: by 10.152.147.130 with SMTP id tk2mr739816lab.4.1348670068607; Wed,
	26 Sep 2012 07:34:28 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.19.2 with HTTP; Wed, 26 Sep 2012 07:34:08 -0700 (PDT)
In-Reply-To: <20120926142045.901EB2031A9@gemini.denx.de>
References: <CAPhnLPCYC9_xvdinu9=prhUOz8FfquYK5TVrBKiHLZ4FyK267g@mail.gmail.com>
	<1767865.bvfduhkKG5@helios> <20120926132851.C81472031A9@gemini.denx.de>
	<2428256.OTjtN2nWn5@helios> <20120926142045.901EB2031A9@gemini.denx.de>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 26 Sep 2012 07:34:08 -0700
X-Google-Sender-Auth: rN10Us0sDkhxrwwxdUVj9cMf4mU
Message-ID: <CABcZAN=mJWPApXfPVJ=zx_Yfe90fUa+xN=FwRL=2Gsvhvjrj0A@mail.gmail.com>
To: Wolfgang Denk <wd@denx.de>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: 1.3_M5.rc2 status.
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
X-List-Received-Date: Wed, 26 Sep 2012 14:34:32 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 26, 2012 at 7:20 AM, Wolfgang Denk <wd@denx.de> wrote:
> In message <2428256.OTjtN2nWn5@helios> you wrote:
>>
>> > Ah, OK.  Well, I decided to update meta/conf/sanity.conf to have a
>> > matching value of LAYER_CONF_VERSION, so this is solved.
>>
>> That will work, but normally you would edit conf/bblayers.conf, since
>> meta/conf/sanity.conf is part of the metadata.
>
> Well, what is the rationale for setting LAYER_CONF_VERSION=6 in
> meta-yocto/conf/distro/poky.conf, then?
>
> If meta layer specific values of LAYER_CONF_VERSION are allowed, the
> sanity checker needs a better way to deal with these; alternatively,
> above setting in meta-yocto/conf/distro/poky.conf is wrong.  So either
> of these should be fixed.

They're both set exactly the way they should be. You're only affected
by the bblayers compatibility change if you use poky, as far as I'm
aware.
-- 
Christopher Larson

