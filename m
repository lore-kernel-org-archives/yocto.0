Return-Path: <jc@vtkloud.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA8C0E01415
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 01:08:18 -0700 (PDT)
Received: by mail-bk0-f48.google.com with SMTP id my13so585852bkb.35
	for <yocto@yoctoproject.org>; Thu, 05 Sep 2013 01:08:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=05jT9Fnzc40TqnD2OJUHAdw+T/OMZRJNdh4OAV/rnVg=;
	b=H2DQf2WnFmyRHn0IoOgDoHEANkgWgoOhMID/oDhEtVKa2bbiZ0UdpGZT+RAYY1BvZ6
	XVdG4YPOUhjOsAUrrzcHSm5/XOZsn27U7U+3O5Lf+AwX+2N0phWJn0WD+9dcH1rvVgki
	rnJq/TcTFxjhqwumDPoyMFu+wfP697Iwl5h7yWW/SSjESoF8qg4m28kogAAWOTXtB2f1
	6VoGHzTuX2lhVnsJS9hkFShqaxwy3iiZn9rUZGhQTyzIf/EjdgD1OOzf6FeuTkWKd0w6
	QaGkAKpsvxhnIocJInUN58LX/d7fD+t9xfO67sSkLWTPRmWn4D1jLx/wKBIenDXN4ZPr
	YqVw==
X-Gm-Message-State: ALoCoQnfy8LJLpUL3Kl1DhY5x+XZOxbYaho6lTCdrH9yGS00P2qktJj4UL+hirNO4LndHL4EbQgB
X-Received: by 10.205.22.71 with SMTP id qv7mr5840687bkb.20.1378368497868;
	Thu, 05 Sep 2013 01:08:17 -0700 (PDT)
Received: from [172.24.63.121] ([94.103.137.126])
	by mx.google.com with ESMTPSA id zl3sm7427188bkb.4.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 05 Sep 2013 01:08:16 -0700 (PDT)
Message-ID: <52283BEE.9020504@vtkloud.com>
Date: Thu, 05 Sep 2013 10:08:14 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: Paul Barker <paul@paulbarker.me.uk>
References: <5227629A.5090505@vtkloud.com> <52276400.6070307@mlbassoc.com>
	<522830FF.6090100@vtkloud.com>
	<CANyK_8fN2_OYy6nRvud7udkS0Sp+gqWkaO7xHvJ9X5mZJ-ZC5Q@mail.gmail.com>
	<522838E7.1060007@vtkloud.com>
	<CANyK_8f0bwoB8sd6PdN4ZV=bZtw6E-6AqQAQnMB9j7QgAypmtA@mail.gmail.com>
In-Reply-To: <CANyK_8f0bwoB8sd6PdN4ZV=bZtw6E-6AqQAQnMB9j7QgAypmtA@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: raspberry layer
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
X-List-Received-Date: Thu, 05 Sep 2013 08:08:20 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/09/2013 10:04, Paul Barker wrote:
> On 5 September 2013 08:55, JC <jc@vtkloud.com> wrote:
>> As a reference, following this link
>> http://www.pimpmypi.com/blog/blogPost.php?blogPostID=7 I got successful
>> (well the image is not yet finished but I hadn't that specific parsing
>> error)
>>
>> I followed the exact README steps in a fresh directory for the checkout, so
>> I am on the trunk for poky & meta-raspberrypi...
>>
> The log you've attached shows paths for poky as well as
> openembedded-core. Poky is basically a combination of
> openembedded-core, meta-yocto and bitbake so you don't want to add
> openembedded-core again. Could you post your full bblayers.conf?
>

Yes that's strange. Do you think it could be an issue with trunk ?

Here's my bblayers:


# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
LCONF_VERSION = "6"

BBPATH = "${TOPDIR}"
BBFILES ?= ""

BBLAYERS ?= " \
   /media/yocto/yocto/poky/meta \
   /media/yocto/yocto/poky/meta-yocto \
   /media/yocto/yocto/poky/meta-yocto-bsp \
   /media/yocto/yocto/meta-openembedded/meta-oe \
   /media/yocto/yocto/meta-raspberrypi \
   "

BBLAYERS_NON_REMOVABLE ?= " \
   /media/yocto/yocto/poky/meta \
   /media/yocto/yocto/poky/meta-yocto \
   "


