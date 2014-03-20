Return-Path: <ross.burton@intel.com>
Received: from mail-qc0-f171.google.com (mail-qc0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAE33E0098F
	for <yocto@yoctoproject.org>; Thu, 20 Mar 2014 07:26:12 -0700 (PDT)
Received: by mail-qc0-f171.google.com with SMTP id c9so1043787qcz.30
	for <yocto@yoctoproject.org>; Thu, 20 Mar 2014 07:26:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=WbCBaF6g4V0aTuH/RyJUuw96hmPEA8YwiFHIhBLM1QU=;
	b=FW48UsbcOfUz4kX0RR57wzfUinCO7NpTnPQt0JuFwYk2IBH1XT5iq+cCe4aBWhbkh2
	eFDiiIokJ/t1FfItfinRBVYVQerCAN+cMkzrtVjNGiyk0IjlR9YzmMew0tFtplZrW8oC
	sP8CPGewD/NETgBLescozUMV2aROECiKt532fvvAuV7vecDHydhd2uDuaShm9WxJmWiA
	RsGiaQKcOqDLSlGBIZUF9rtAszgDvavf+zyFJAgtEKYfhCs2R1rM0OB8KkVRIp7ufbZk
	/xwM85QAIT8cUg1SQU3NYTfFbR9sO3SgmYzvEX0jUfIaJ8NM8gIVPlEzChbOBJ102pHi
	kfug==
X-Gm-Message-State: ALoCoQkn8c5ug4EOL8R7S8E9VMqVuOgdffYjd4Bs28UqztjUj6JVlpHDPCyayXqp7QlkLo0aOONm
X-Received: by 10.140.81.112 with SMTP id e103mr2697778qgd.99.1395325571755;
	Thu, 20 Mar 2014 07:26:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.167 with HTTP; Thu, 20 Mar 2014 07:25:51 -0700 (PDT)
In-Reply-To: <7b59ae0d5e3a239066c8c7eac719d4d8d2ea6213.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
	<7b59ae0d5e3a239066c8c7eac719d4d8d2ea6213.1395261635.git.elizabeth.flanagan@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 20 Mar 2014 14:25:51 +0000
Message-ID: <CAJTo0LbSDzeyoi6m4TPZrfro7s5K1RP=DtQxzMNmxD8V2qFzKA@mail.gmail.com>
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [AB PATCH 05/22] yoctogit.py: movecopy needs an incremental callback
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
X-List-Received-Date: Thu, 20 Mar 2014 14:26:13 -0000
Content-Type: text/plain; charset=UTF-8

On 19 March 2014 20:51, Elizabeth Flanagan <elizabeth.flanagan@intel.com> wrote:
> We need to do an incremental before we copy or else, we're
> essentially copying nothing.
>
> Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
> ---
>  .../buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py           | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
> index 25e5308..080f5b2 100644
> --- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
> +++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
> @@ -322,6 +322,7 @@ class YoctoGit(Source):
>          else:
>              todir = "build/" + self.layername
>              self.workdir = 'source/'+self.repourl
> +        d.addCallback(lambda _: self.incremental())
>
>          def copy(_):
>              cmd = buildstep.RemoteCommand('cpdir',
> --
> 1.8.1.2

This is fixing a bug in 2/22 so should be squashed into that commit.

Ross

