Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4C54E00C1E; Wed,  6 Feb 2019 14:24:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47BA1E00C46
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2019 14:24:28 -0800 (PST)
Received: by mail-pg1-f193.google.com with SMTP id c25so3567292pgb.4
	for <yocto@yoctoproject.org>; Wed, 06 Feb 2019 14:24:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=PLTfp55w8HGuRqpl7tJvPaARSp1SdSiVwZRbeOL05/g=;
	b=RcZVHLJ5aQSQfnO4I2D5FNcyYX8AZNTEv6C4iYQ8ywPgN7fzkGMcfsmEx8B9YBpLr4
	S/MzQbyYheKViIZr/OGYG3ZmCrUBClLiq60SFL5gzlhHOAiCZVnzjE/ot/46F8Ow4Az0
	b/fzpQTxnctIU5IZpKE7XelS4IFJp9hNWPNY7AhXNF4BnNj3Z2hsaoVSpD8sIgvn4Pbn
	HQK6C2zWzEhEFd48H111fUEkeRICTyLfNMk2cquK4WVJyXsu/okk9uZLudJVUMtLgjAP
	+pMuvRVqIK+PK2RvuidaI2luObjoFK6EHIl9XJkhyjwgu1utQWEuTAW/PxVkbwhpH36E
	QVOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=PLTfp55w8HGuRqpl7tJvPaARSp1SdSiVwZRbeOL05/g=;
	b=GPT5qLbiwuAFfQ7XlN7jUWs+JkvWxVAlksDuz6Apnau0Ybok4q8PSxhfjbyneWe1kS
	j0Gv7/H9OLEQLuan/5oNjFwFvs9Y0pMIIQuH/ZAt9NFLrR4SFIjad3QmK6Qg64rMMAB0
	ZMkSfOZ12f+8rJWaWhUXBmFaw9k0VOoXCbhEnT8Yng/mQfvNQrYGHBdx1M8++f8wjLJt
	K4B00z9lr3wLB2MlOqibUTUpYppP2FWndOdm5tKWB4+nkGnUfR2HWfk1AgxDaJjokDLd
	jVTCtHJDmDbdhjvcGGynkQV7MAtXl2xFkzA9zGfNT57lC/A8R8F+eb+7zI/dHJWKrz+S
	tsYA==
X-Gm-Message-State: AHQUAuaAx9+t9Ji8zd3Kh+Vo8xh5aqJa5KkG0FEl3HEXmr023qLH33cc
	1GiptkYkRqcMxKyYMynkVD3oo8BFg8Y=
X-Google-Smtp-Source: AHgI3IZ02h+/+RlYJr07yuLX3EaScPIvUNmIfXPFu1obJP7+QfXdhWZ0VJE7sB4XyQDrWDxN9VpY/A==
X-Received: by 2002:a63:7044:: with SMTP id a4mr11573961pgn.359.1549491867196; 
	Wed, 06 Feb 2019 14:24:27 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:2ca4:7cf9:45f0:d373?
	([2601:202:4180:c33:2ca4:7cf9:45f0:d373])
	by smtp.gmail.com with ESMTPSA id
	86sm11641001pfk.157.2019.02.06.14.24.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 06 Feb 2019 14:24:26 -0800 (PST)
To: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
References: <cover.1549490398.git.paul.eggleton@linux.intel.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <788e482f-5fd3-b3ce-4be4-943bbd47ae27@mvista.com>
Date: Wed, 6 Feb 2019 14:24:24 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <cover.1549490398.git.paul.eggleton@linux.intel.com>
Subject: Re: [PATCH 00/10] Misc fixes (cover letter only)
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
X-List-Received-Date: Wed, 06 Feb 2019 22:24:30 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


Hello Paul.

On 2/6/19 2:00 PM, Paul Eggleton wrote:
> The following changes since commit 61e9b048591adab88d1996646286e1d7df02=
4bea:
>
>   Fix drop-down alignment on duplicates page (2018-11-20 11:58:42 +1300=
)
>
> are available in the Git repository at:
>
>   git://git.yoctoproject.org/layerindex-web paule/fixes12
>   http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=3Dpaule/fi=
xes12
>
> Paul Eggleton (10):
>   Send people an email when another user adds them as a maintainer
>   Add links to other branch recipes in recipe detail
>   Fix errors due to races deleting bitbake temp files
>   local.conf: allow for upstream_tracking.inc to be missing
>   Use try...finally or with to ensure files get closed
>   Replace use of assert with exceptions
>   docker: add wget to dependencies
>   RRS: fix sorting arrow positioning
>   rrs_maintainer_history: check out layer branch before looking for
>     maintainers.inc
>   RRS: add tool to import/export upstream history data

Thanks for the updates and fixes. This is=C2=A0 a very useful tool to bot=
h YP
and OE.=C2=A0

I had to look at what was actual changes to figure out what this patch
set was against.=C2=A0 Should we change the "subject" to help clarify? ie=

[layer-index][PATCH ...?

The layer index is hosted on OE. Should one of the=C2=A0 OE mailing be CC=
'ed??

Yes I realize the sources are hosted on YP but the url for the tool is
http://layers.openembedded.org. can be confusing.

kind regards,
Armin
>
>  Dockerfile                                 |   1 +
>  conf/local.conf                            |   2 +-
>  layerindex/bulkchange.py                   |  18 +-
>  layerindex/update.py                       |   4 +-
>  layerindex/update_layer.py                 |  14 +-
>  layerindex/utils.py                        |  21 ++-
>  layerindex/views.py                        |  70 ++++++--
>  rrs/tools/historytool.py                   | 196 +++++++++++++++++++++=

>  rrs/tools/rrs_distros.py                   |  19 +-
>  rrs/tools/rrs_maintainer_history.py        |  45 ++---
>  rrs/tools/rrs_upgrade_history.py           |   4 +-
>  rrs/tools/rrs_upstream_history.py          |   3 +-
>  rrs/tools/upgrade_history_internal.py      |   3 +-
>  rrs/views.py                               |   2 +
>  templates/layerindex/maintemail.txt        |   9 +
>  templates/layerindex/maintemailsubject.txt |   1 +
>  templates/layerindex/recipedetail.html     |  27 +++
>  templates/rrs/maintainers.html             |   2 +-
>  templates/rrs/recipedetail.html            |  27 +++
>  templates/rrs/recipes.html                 |   2 +-
>  20 files changed, 392 insertions(+), 78 deletions(-)
>  create mode 100755 rrs/tools/historytool.py
>  create mode 100644 templates/layerindex/maintemail.txt
>  create mode 100644 templates/layerindex/maintemailsubject.txt
>



