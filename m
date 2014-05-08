Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6905BE00B30; Thu,  8 May 2014 07:49:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.52 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qg0-f52.google.com (unknown [209.85.192.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DB1EE00478
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 07:49:01 -0700 (PDT)
Received: by mail-qg0-f52.google.com with SMTP id a108so2806764qge.25
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 07:49:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=Ay51WwAn38//YeMMCZjXlGoA7RJSrRmw85ORyupltCo=;
	b=Sq/CWmP0uoCbD0GB+2FTBuolt4lG6AUtmKk8XjbZ/Rz9iYQMXvRVrcMjTsN6HJnIUk
	fD5TeyYc1u/F3OfsuuLdCTXndAFya7cRqPf3XJB5mM8BscwZ7Ylo+2C99/pyvB0xz0/Y
	PLwy+7U5YB/6rbc54TskD+rihE9FENVVWT09fwHgBM/BJBHXzq7eIIM8OBcj9YwzPvav
	I4XAKW2yPH5OgeHeAe+5NaKYqJ5fiZdDXhElpAREY+izL8UEk2XK3EaWGjxLL4VeVmbI
	dtu8qznJIdzcgXE0uI801u/5qjvNvsy9ZDaNinqWGChSK15ZwSJwqZyvIO69rntngy/o
	YxoQ==
X-Gm-Message-State: ALoCoQk6QWF2Nimc0ZKE6eVoT89nzjBobfqk71b+GUqwkxd7hEwURzDAWrFjQ/1I5UcK6ZTEEgt8
X-Received: by 10.224.115.68 with SMTP id h4mr5443612qaq.35.1399560540785;
	Thu, 08 May 2014 07:49:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Thu, 8 May 2014 07:48:40 -0700 (PDT)
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 8 May 2014 15:48:40 +0100
Message-ID: <CAJTo0LZbPXzXyvKXGZZYDT1BDWg3XYrRO_NXsXmuHLMmmW_S3Q@mail.gmail.com>
To: OE-core <openembedded-core@lists.openembedded.org>, 
	OE-devel <openembedded-devel@lists.openembedded.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: GStreamer 0.10's future
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
X-List-Received-Date: Thu, 08 May 2014 14:49:07 -0000
Content-Type: text/plain; charset=UTF-8

Hi all,

Sorry for the cross-post but I want this to have a wide audience.

For the 1.7 release I want to move GStreamer 0.10 from oe-core into
meta-multimedia, and ensure everything in oe-core has ported to
GStreamer 1.x.  GStreamer 0.10 is considered dead upstream and is
unmaintained so we don't need to be shipping both versions anymore.

Everyone in agreement?  Should I expect any hate mail over this?

Ross

