Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f181.google.com (mail-ve0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB613E014D3
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 10:23:15 -0700 (PDT)
Received: by mail-ve0-f181.google.com with SMTP id d10so845017vea.26
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 10:23:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=Imecf08llTJpcSjeG5k5tkMiRBxJ1YVcibDXRkyx96Y=;
	b=UHiY5hPYYYuLGJn8GhcbA2TNqx+qRlVP4xgokOhEkUkwqnLnwStnNDxhsLE1kdYGQe
	e62+9nMzDpOj0sRxnuoZd1xU8xHdkM0AkzqiYpst5vIJonB00kSbrPZVRjyF5F5R7kCL
	3ge5Tnn/Y8eE3Kf3rDoxKzQR0xdiogsQXcOGW8pDwOFsiDGUNHYLxbkR8NAbcdSb43FV
	HMLCPW8PwuxZmwIm4MliFiky3WtZHjo/4qEpp4K6QTnHTfkue+Alo/tjHgQyc5UzYRJ9
	d0C2pbl/TPqHWd0sMb0cblzgxdEXPyZ1/UoyjyukG0OvD0MP7lP/r6onlUt/Jfd44+TO
	t4yA==
MIME-Version: 1.0
X-Received: by 10.220.168.2 with SMTP id s2mr25496554vcy.6.1366824194918; Wed,
	24 Apr 2013 10:23:14 -0700 (PDT)
Received: by 10.52.163.79 with HTTP; Wed, 24 Apr 2013 10:23:14 -0700 (PDT)
In-Reply-To: <cover.1366742537.git.stefanx.stanacar@intel.com>
References: <cover.1366742537.git.stefanx.stanacar@intel.com>
Date: Wed, 24 Apr 2013 10:23:14 -0700
Message-ID: <CAPhnLPB3JYkUroscYvE38sdGjDpDhKY-zPQ6VOA01VjGPqPscA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Stefan Stanacar <stefanx.stanacar@intel.com>
X-Gm-Message-State: ALoCoQktzQjKJ8AwUj2EklMsyB3megB0A4915To05R4WVvZ0Yaop3PRmQb9hqsrPmoF/rMpWt1ur
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder][RFC 0/6] New buildsets and options for 1.5
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
X-List-Received-Date: Wed, 24 Apr 2013 17:23:16 -0000
Content-Type: text/plain; charset=ISO-8859-1

Yes to these with the one fixed I suggest and a rebase. Nice work.

-b

On Tue, Apr 23, 2013 at 11:52 AM, Stefan Stanacar
<stefanx.stanacar@intel.com> wrote:
> Hello Beth,
>
> Would you mind taking a look on these changes? Obviously they are meant post-dylan release,
> but I sent them earlier so you can have time to review and request changes.
> It would be great to have them in 1.5 and I plan on adding even more builds
> (especially for multilib images and ipk images which proved tricky with postinstalls and systemd).
>
> Thanks,
> Stefan
>
>
> The following changes since commit 0178163efc6670c9acb982dd579671396cb24290:
>
>   PublishLayerTarballs.py: bad redirect. (2013-04-22 22:56:58 -0700)
>
> are available in the git repository at:
>
>   git://git.yoctoproject.org/poky-contrib stefans/yab0
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=stefans/yab0
>
> Stefan Stanacar (6):
>   nightly-qa-extras.conf: add new buildset config
>   CreateAutoConf.py: add initmgr option
>   buildset-config/nightly-qa-systemd.conf: add a new target for systemd
>     images
>   nightly.conf, yoctoAB.conf: enable the new buildsets
>   buildsteps/RunSanityTests.py: add suport for custom steps
>   CreateAutoConf.py: add option for package types
>
>  buildset-config/nightly-qa-extras.conf               | 16 ++++++++++++++++
>  buildset-config/nightly-qa-systemd.conf              | 20 ++++++++++++++++++++
>  buildset-config/nightly.conf                         |  3 ++-
>  buildset-config/yoctoAB.conf                         |  3 ++-
>  .../autobuilder/buildsteps/CreateAutoConf.py         | 20 +++++++++++++++++++-
>  .../autobuilder/buildsteps/RunSanityTests.py         |  3 +++
>  6 files changed, 62 insertions(+), 3 deletions(-)
>  create mode 100644 buildset-config/nightly-qa-extras.conf
>  create mode 100644 buildset-config/nightly-qa-systemd.conf
>
> --
> 1.8.1.4
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

