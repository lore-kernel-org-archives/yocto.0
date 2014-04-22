Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f181.google.com (mail-ve0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07A2FE00AE2
	for <yocto@yoctoproject.org>; Mon, 21 Apr 2014 18:09:13 -0700 (PDT)
Received: by mail-ve0-f181.google.com with SMTP id oy12so8550853veb.40
	for <yocto@yoctoproject.org>; Mon, 21 Apr 2014 18:09:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=OS0avQ2vqHeJRysXcRh5BqBXMjJ1tzcr7PJQNgfTXsw=;
	b=jD6YAMRx1m8m18i7fB5JLZXAdcfSKhdWjBF884o/SGRnl3Aj6xIZOm5XIBP0x6Ds9m
	xfDSFbfuclxSN9L1/aGsCvZggPCrBqSbbvsoywhGlcMesziInHkBlyfT85B/iQNvopep
	nq0FCrE6vKyKSw+xVmfByO0oZ6MJChh/hKYM750fDtFAjoeGGudHg4y69ZPdSfGblx07
	R/+d8PEUxxDLIz9JmLvOZD69N/hthBuUmDvjqE9lqMqeekwGJRTOtmaf+Aw9sXsXNkcQ
	Bq3gV+ZtRqnNegYZgOA++5Knp3Dq5m9DVr/SEVkeyjjpJklZ2sDrTZeI8iLKXxavVGc4
	2jZg==
X-Gm-Message-State: ALoCoQlf+IYY+PCrHut5HqIoFK+RvNHbfMJqBYmjKzKSfs9ZU8fNDO9UgEGkPZEZXrcnCZZh6GTD
MIME-Version: 1.0
X-Received: by 10.58.211.69 with SMTP id na5mr3205241vec.30.1398128952510;
	Mon, 21 Apr 2014 18:09:12 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Mon, 21 Apr 2014 18:09:12 -0700 (PDT)
Date: Mon, 21 Apr 2014 18:09:12 -0700
Message-ID: <CAPhnLPBMZdWboqMPKNveSoq6TiW=vVkrAWb68+ccqa_iqdpsfQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>
Subject: 1.6 retest of Beaglebone and Build appliance.
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
X-List-Received-Date: Tue, 22 Apr 2014 01:09:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

With the changes to Beaglebone and Build appliance we're going to need
a quick retest of those components. They are located:

http://autobuilder.yoctoproject.org/pub/nightly/20140420-2

I'll pull these into the release tomorrow as I pack things up.

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

