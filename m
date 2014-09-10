Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 380F7E00566; Tue,  9 Sep 2014 20:53:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ob0-f175.google.com (mail-ob0-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0969EE0054C
	for <yocto@yoctoproject.org>; Tue,  9 Sep 2014 20:53:10 -0700 (PDT)
Received: by mail-ob0-f175.google.com with SMTP id wm4so3585585obc.6
	for <yocto@yoctoproject.org>; Tue, 09 Sep 2014 20:53:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=oaGQocoz4O4antQz7gs0hIEDORn0+CkJoDCcU7yC6XY=;
	b=ieS0/Vr3G2oUuNQrPE0J0S33r5Q3tR5TxhfQGoo+k6v3OzMvpgPftAfKvnydetx2a+
	WnzUvRm/PysEPvh2KwF+FHiHQtjO0xz5X9yhj0UrL5Iisvl/DXY2qU5t1oEbJERVumU2
	Hneaatq2FsbVcdP5m9bkqEMfHxuHfDtBgh4wPv/LHNER/UsOVlzPP8hMusJQv2Lw/W+t
	MogmpPz37Iov/QlQqMpe4VDAh6AP0SBPXWTS+7rIkWTbL3bpiOSIa1NXbIK50Z3UnQOK
	IdybWseCDDkv3KoZk4d1g1K+mhCwZjToYegkgLGymA/0CPLV12jVDfeBxhSlUHqPGOjA
	zMlA==
X-Gm-Message-State: ALoCoQn9QRpSNFAt0TUUCN4WSFRFC0PTs+hJPQ3BKKX9IZ32Lizxogy1PvRIJNicqNEYtZAS65lD
X-Received: by 10.182.133.104 with SMTP id pb8mr42241196obb.37.1410321189141; 
	Tue, 09 Sep 2014 20:53:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.187.8 with HTTP; Tue, 9 Sep 2014 20:52:47 -0700 (PDT)
In-Reply-To: <CAMSG=xW13=_vydq4ytYT_G2FTz+RH9EoTYpQqf667QO1mb_=pg@mail.gmail.com>
References: <CAMSG=xW13=_vydq4ytYT_G2FTz+RH9EoTYpQqf667QO1mb_=pg@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 10 Sep 2014 05:52:47 +0200
Message-ID: <CAP71WjzYhpLsxEYHb+4OvfHYAMx7X+1oUMzX=3ySeH_M91==RA@mail.gmail.com>
To: Nemicolopterus Crypticus <ncrypticus@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: EXTERNALSRC
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
X-List-Received-Date: Wed, 10 Sep 2014 03:53:16 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Sep 9, 2014 at 11:51 PM, Nemicolopterus Crypticus
<ncrypticus@gmail.com> wrote:
> What else do I need to do in order to correctly set the source directory?
> The dev manual recommends this:
>
> EXTERNALSRC_pn-myrecipe = "/some/path/to/your/source/tree"
>
>
> How literal is "pn-myrecipe"? If I have a recipe called "banana.bb", should
> I have "EXTERNALSRC_banana-banana.bb" in my local.conf?


it needs to be EXTERNALSRC_pn-banana and EXTERNALSRC_BUILD_pn-banana

