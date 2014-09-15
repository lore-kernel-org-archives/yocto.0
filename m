Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9945E00848; Mon, 15 Sep 2014 03:12:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BC79E00746
	for <yocto@yoctoproject.org>; Mon, 15 Sep 2014 03:12:17 -0700 (PDT)
Received: by mail-qc0-f174.google.com with SMTP id m20so3696960qcx.5
	for <yocto@yoctoproject.org>; Mon, 15 Sep 2014 03:12:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Dog2wFBVEU5z40d5wxw3liJ5pkG0zR4F+jjdonWOhPs=;
	b=TZiYr7lVw11OM6sGu2GgndQXcaQEeM+RHcc0yyh1c+WXxHngfbphAtsWLQXuEMZePz
	XUab022qmoLjxwAwbn91M8uWXUynsMoEPAAXF/EAHinIbhkGenxIJAk4D4b8TiRbRlrh
	2631lOuydWzDUlVq6KnGN9nZmM/rDUDZ00UFJIED264OuUlALUhnDDiMMJInsPUoihu3
	HLflYVKAR+stZ8MFQCf6zH88Q8VWwWjh7AnX5gjDhYXwGM060ON4D9gv4Cgh5Z4Skcno
	e+yX7MBddJcsCaut1/sSjtT1uf/yjXT97EpclcCmn9ZuGOe2vVVzCx2RxMZxhFmk+fNz
	d9JQ==
X-Gm-Message-State: ALoCoQlQLwLlh3DrNdhGsA4lrkVRstWStAczVdlFN/LfKaxul/hqofDfYmnhKgt2CvJtIrbT6CEI
X-Received: by 10.224.64.201 with SMTP id f9mr35557990qai.64.1410775935820;
	Mon, 15 Sep 2014 03:12:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.29.183 with HTTP; Mon, 15 Sep 2014 03:11:55 -0700 (PDT)
In-Reply-To: <3204FE6663E1F14CAF4CA6928E60C85215B7EF55@USSTLZ-PMSG012.emrsn.org>
References: <3204FE6663E1F14CAF4CA6928E60C85215B7EF55@USSTLZ-PMSG012.emrsn.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 15 Sep 2014 11:11:55 +0100
Message-ID: <CAJTo0LZUpwsx7T_c6MBEc-CnhfAJq5oYRPVtYjNa+C46Rs-3RQ@mail.gmail.com>
To: Neil.Wu@emerson.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: create_image.tar fail
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
X-List-Received-Date: Mon, 15 Sep 2014 10:12:19 -0000
Content-Type: text/plain; charset=UTF-8

On 15 September 2014 09:48,  <Neil.Wu@emerson.com> wrote:
> BusyBox v1.21.1 (Ubuntu 1:1.21.0-1ubuntu1) multi-call binary.

Its using busybox's tar, don't do this.  Either uninstall busybox, or
change the alternatives so that /usr/bin/tar is GNU tar, not busybox
tar.

Ross

