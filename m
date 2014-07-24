Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B90DE0078E; Thu, 24 Jul 2014 02:35:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1552E006B7
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 02:34:50 -0700 (PDT)
Received: by mail-qg0-f47.google.com with SMTP id i50so2912415qgf.6
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 02:34:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=IeBnNKoPG1NLKUKhhXD1BlUJzgZRUZLnZDrSjK7K8/g=;
	b=XBdQn0uLikKyahEipHN2aE7x+px6FYUX3bS9YXAYvT7H9TDRTAF6ydLBXHmEMVYIWL
	JLzLC0xfK8yDYePz7Xa1qo4MZjT0KVQ2UTPngj9u75g0xgwkIjDpzb5qjCX2DcIlI/0R
	O05lXNd8lD2QdqWOlh1OOolEmm3DG4eXIxLWaMgIeOKVWnIgneOY/6ZMQgVKFCnR1Uzh
	W3hGsV2Ns4/g7SfHX26bcViudXDNPs9JsVZWUp6f/D4pu0uISOX+ZcxCAHHmrF5LZuAX
	wV9uDtQaVM1UR3u+4nuyhvbzpn310Fx8flxZNRfPsbrUIM1t1IPbOMbjziVchM8GRdnx
	4O9g==
X-Gm-Message-State: ALoCoQn/UrYEZIbEvLpdtLZqgOwpI2cr99UDmFUHwclvjxidnxqcPTNAwgxzeOeBK+1Z79QUPe5j
X-Received: by 10.140.91.66 with SMTP id y60mr12115098qgd.58.1406194489852;
	Thu, 24 Jul 2014 02:34:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.99 with HTTP; Thu, 24 Jul 2014 02:34:29 -0700 (PDT)
In-Reply-To: <loom.20140724T110713-636@post.gmane.org>
References: <loom.20140724T085712-749@post.gmane.org>
	<CAJTo0La0Gt-WarVLGDrbE67KD23AK-U9eR4pG1vAGpjNc5CxQQ@mail.gmail.com>
	<loom.20140724T110713-636@post.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 24 Jul 2014 10:34:29 +0100
Message-ID: <CAJTo0LaN1kpoqG2bviZLnDnoBf+KMK4_y-uFJT5zU7F7EqKu4Q@mail.gmail.com>
To: Anoop <babu.anoop@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bitbake error for elfutils-native
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
X-List-Received-Date: Thu, 24 Jul 2014 09:35:00 -0000
Content-Type: text/plain; charset=UTF-8

On 24 July 2014 10:25, Anoop <babu.anoop@gmail.com> wrote:
> Ross
> many thanks for the valuable input.
> I had been building tizen with yocto based on the following link.
>
> https://wiki.tizen.org/wiki/Build_Tizen_with_Yocto
>
> For poky it is mentioned to use
> git clone https://github.com/eurogiciel-oss/poky.git
>
> I think the redhat-portability.diff file in the path
> /home/sfm/yocto_temp/poky/meta/recipes-devtools/elfutils/elfutils-0.158
> as well as
> /home/sfm/yocto_temp/poky/meta/recipes-devtools/elfutils/elfutils
> might not have been updated based on the poky commit
> 52a6d20519870103134166d91e22d21fd736195d.

https://github.com/eurogiciel-oss/poky/commit/52a6d20519870103134166d91e22d21fd736195d

It's there - you need to pull the latest commits.

Ross

