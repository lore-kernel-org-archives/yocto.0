Return-Path: <ross.burton@intel.com>
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D8AEE00AF3
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 09:41:27 -0700 (PDT)
Received: by mail-qg0-f50.google.com with SMTP id q108so8028416qgd.9
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 09:41:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=/UllrLJx0QvqQ6fMKy3E8mIwWB+7mqkERPNEk52DbXI=;
	b=JSe3oNqVl+ppvJx/aautdGk5ySiYvD47NnPEXwcOXl2xUvQL00aETpXiBn3vucIYBo
	fnC038Hco5vm0JXk/xxWUHufArxQaNgGG9sXBLJZlsjb9k1NnmtYRbHOdWBV4sxVpYF5
	kcH8bD7YCT+nhUqLKkDXfdH6xgBEmwfEBAVYQ8kDCBGDl4vqM5TZj1Gt93lI7AWrtXrt
	kRV+wuydkiex37FcyetsxQ1WLKPGxLZTDXa0gkAjCAKkcqvh1P4Vz9nhx370z87jwpB8
	Z9B70eVcdieCb00AmTL/45Q7UoMwn96LHcBRoxdiwJCV9CureMaBEXuTalp/J88pFdyN
	ruGA==
X-Gm-Message-State: ALoCoQm0PyouvAoY3KuV5Tfs0Ze5u+voUZiikVKJMfeHvWFMRcBXYBGlnB49SRspeVxrqfOVYeOM
X-Received: by 10.224.22.147 with SMTP id n19mr3763405qab.93.1394815286770;
	Fri, 14 Mar 2014 09:41:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.79 with HTTP; Fri, 14 Mar 2014 09:41:06 -0700 (PDT)
In-Reply-To: <CACP9YJcdsdfdTGO6AmA+nPYzrR6St0-4n8QVFL3ujoGeVp6+cw@mail.gmail.com>
References: <CACP9YJcdsdfdTGO6AmA+nPYzrR6St0-4n8QVFL3ujoGeVp6+cw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 14 Mar 2014 16:41:06 +0000
Message-ID: <CAJTo0La3rLcyruUZtTQ75Rbd6Xieix+Tegvyi_4dU5p7kQiC9w@mail.gmail.com>
To: David Welch <djwelch666@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building a metapackage
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
X-List-Received-Date: Fri, 14 Mar 2014 16:41:30 -0000
Content-Type: text/plain; charset=UTF-8

On 14 March 2014 16:34, David Welch <djwelch666@gmail.com> wrote:
> Is it possible to build a meta packages whose sole purpose is to bring in
> dependencies?

You've just described a package group - have a look at anything called
packagegroup-*.bb in oe-core, and packagegroup.bbclass.

Ross

