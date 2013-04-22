Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A223E014F3
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 04:21:00 -0700 (PDT)
Received: by mail-vc0-f180.google.com with SMTP id m16so5919623vca.39
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 04:20:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=B5VBHMI1AIxv1rlv2LtMT82xSSPki2hzYeKjzknCCso=;
	b=TsG+lRGq7S+l2mucHLW5BgRb5I8Xaq0GpygWPmwO6Y361a4DRQdVCNW7uEVDyEiRE7
	faw+knqaDO8ch/Kpo5RYdDtZHDBCn2l6y26v/OJnyRZJH0xjlPkhRCb+IJVIhp6dMpFW
	+jscWfr6JQrb6VuHdyrn4Frx+O50lteA97ZQbPaInkp7T/mWO0eqNVNxQyZCBb0anPjt
	zdCmJy9yEp28ZwanTobAJkS1dBDKzVT6BSUe1Fi+k5T/7+r39tpIC0zJvfzYcxkKyLQq
	mEAbD423TuS3vOQTs2ysc//+vvpEDOVm2KJJWdYbUTNH6N8mqF+AkmPmYchcg+N3UfH1
	iynA==
X-Received: by 10.52.158.163 with SMTP id wv3mr15953545vdb.82.1366629659646;
	Mon, 22 Apr 2013 04:20:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Mon, 22 Apr 2013 04:20:39 -0700 (PDT)
In-Reply-To: <CAFMfyz+YH1zaMF4j_d1MMHbiEFCngj_+z_rryshjzyurC=6qJQ@mail.gmail.com>
References: <CAFMfyz+=HMqt6Jgrsq3_GgdZL9K-obRYuYsVVrxqonzfP-t2gQ@mail.gmail.com>
	<CAJTo0LYnBG_7vyVhW2o3HK=XNHRctJ3-zE+yq2=LxrKz-WdGOQ@mail.gmail.com>
	<CAFMfyz+YH1zaMF4j_d1MMHbiEFCngj_+z_rryshjzyurC=6qJQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 22 Apr 2013 12:20:39 +0100
Message-ID: <CAJTo0LaXsbr614c9am63C=+v9AW6a-oXYgEzFkW7OdQnsozpMQ@mail.gmail.com>
To: Satya Swaroop Damarla <satyaswaroop.damarla@gmail.com>
X-Gm-Message-State: ALoCoQk/+YYlwGxanemxcpJJNAOdy/Hz6zqilEstHx/lcVbcBrrC//ckmYb1aq9uUNMnw/hDyHrB
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package which sets Background Image
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
X-List-Received-Date: Mon, 22 Apr 2013 11:21:00 -0000
Content-Type: text/plain; charset=UTF-8

On 22 April 2013 12:04, Satya Swaroop Damarla
<satyaswaroop.damarla@gmail.com> wrote:
> Thank you Ross... Is there already a recipe for  xsetroot or should we
> create one...

You'll need to create one, following the examples in
recipes-graphics/xorg-apps/.

Ross

