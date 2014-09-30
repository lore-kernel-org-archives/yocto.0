Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54607E0084E; Tue, 30 Sep 2014 02:39:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.45 listed in list.dnswl.org]
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B02CE006DB
	for <yocto@yoctoproject.org>; Tue, 30 Sep 2014 02:39:28 -0700 (PDT)
Received: by mail-qg0-f45.google.com with SMTP id e89so1533351qgf.18
	for <yocto@yoctoproject.org>; Tue, 30 Sep 2014 02:39:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=44oOfaPANipRLJhPEuXs+dU6P1b9hU0nUoHeCQNjqyg=;
	b=bdf9Jsed1DoBnXafeckjENGHgLhY/169E2zT57xguqq2fYu+9TmlFGxZDeiWhRVy42
	vfoHxmX3cH8hKwrGVEYcUseXEB9dAagIOqPOVQX4cNh+yrLnPG9JuulG09JOq2vlnFzi
	Tvr2uDCYpxrGGoekAOgF6uf6qIvHko3JJsCjQCGc+x047F8FqAALsQ9Q6LrNQsitwFQp
	1Yc0L+4tHLkE5gwg5yHeoieLQ7IeubQxdWmvQA2CagnY7zFarXXjmuw71UlBpLaSkjLZ
	dvKswk4vUubP5KUpBDyRBKGGyYXyjw1mMqhmCh22ToDeqCKiPFhqJa8ESdzfnHDNZg5h
	flmw==
X-Gm-Message-State: ALoCoQmSOKJaM331rIAb4l/7rhEeluEd1gDGxTrgWIDoUh00meymEhx6rPlUBJqnCooN5jAP1dj6
X-Received: by 10.140.97.247 with SMTP id m110mr19613078qge.80.1412069968221; 
	Tue, 30 Sep 2014 02:39:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Tue, 30 Sep 2014 02:39:07 -0700 (PDT)
In-Reply-To: <E882175C-A206-42C7-96CB-FA54E0AC8A9D@keylevel.com>
References: <221FE6F5-8350-467B-9744-402B89707FAF@keylevel.com>
	<CAJTo0LY=A-dj2VZU3iP_R=SVSHYsV+fXgrPUnfFz62FPEFgaOA@mail.gmail.com>
	<E882175C-A206-42C7-96CB-FA54E0AC8A9D@keylevel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 30 Sep 2014 10:39:07 +0100
Message-ID: <CAJTo0LZ3TkWTj-yAH6DY-V05236Om4DxCzfjtGbEKJcQAVWdzQ@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Fetcher question
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
X-List-Received-Date: Tue, 30 Sep 2014 09:39:39 -0000
Content-Type: text/plain; charset=UTF-8

On 30 September 2014 08:53, Chris Tapp <opensource@keylevel.com> wrote:
> I'm not sure this is quite the same - in this case the (downloaded) file and checksum would have matched but the remote file has changed.

When upstream change a file we normally hear about it fairly quickly,
and fix the checksum in the recipe.  Upstreams that deliberately do
this don't seem capable of understanding the pain it causes...

Ross

