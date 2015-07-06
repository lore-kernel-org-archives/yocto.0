Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FD8AE007A3; Mon,  6 Jul 2015 09:27:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CF6BE007A3
	for <yocto@yoctoproject.org>; Mon,  6 Jul 2015 09:27:14 -0700 (PDT)
Received: by qkeo142 with SMTP id o142so120861216qke.1
	for <yocto@yoctoproject.org>; Mon, 06 Jul 2015 09:27:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=QOwACWgDiswAVIjMVSufzEBjyqMC5Q2W3sCItLat6TI=;
	b=mnShXkk/PwSvfHJAqI3hTMaRgntRth3CF+zoISVqz834gm+Z2VQZ+tXfRtqttmrVFo
	j0qhk8vsfKc2Yk4hc2PCFG9SkHuDwbX6mL4nIUNSg8Erj07u5Qs1RnMQs4xMfjOLVzpY
	uBmxRDCqDllJR9XDxfRwRSbTqS3vpgPQUIJzmVw2qwF52d5TJU843tND6gI9caFBgJ5h
	OA0/YQ3oWUXMOHQTQWIMpdKt2I3PQEMNOW7HipkkhF/94cWxw77oIzet5RFwdBKWEgGN
	ylOeURZfU9xjb6udAXsuPboUfXQTBqv9PlWsvd4SOa94mZ9QVGSTtkVWfFiVfvb9GTZw
	sdVg==
X-Gm-Message-State: ALoCoQlEko/SJiTDla8UjRdOBcgOFyIQ4h8/VzU4WYAYJ1AiSCGvGxqTTBqZ2Z9/oVUKwc2k7wVk
X-Received: by 10.55.15.129 with SMTP id 1mr95490912qkp.29.1436200033917; Mon,
	06 Jul 2015 09:27:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Mon, 6 Jul 2015 09:26:54 -0700 (PDT)
In-Reply-To: <CAJTo0La_FqBveOEv90+ofCq2gAj4hiNfSA72dc40mEjrFv8aJg@mail.gmail.com>
References: <1435981717-29443-1-git-send-email-net147@gmail.com>
	<55976F44.5070106@mail.bg> <559A8572.6020203@gmail.com>
	<559AAA59.9090007@mail.bg>
	<CAJTo0La_FqBveOEv90+ofCq2gAj4hiNfSA72dc40mEjrFv8aJg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 6 Jul 2015 17:26:54 +0100
Message-ID: <CAJTo0LYoqTs3o7di3rvwcsX5Q4iruAqFZePAJRXdw8eHWqW7HA@mail.gmail.com>
To: Nikolay Dimitrov <picmaster@mail.bg>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: fetch from SVN instead of Git
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
X-List-Received-Date: Mon, 06 Jul 2015 16:27:38 -0000
Content-Type: multipart/alternative; boundary=001a1146f100d9539b051a3760a6

--001a1146f100d9539b051a3760a6
Content-Type: text/plain; charset=UTF-8

On 6 July 2015 at 17:23, Burton, Ross <ross.burton@intel.com> wrote:

> How latest, remembering that oe-core supports LTS distros which are likely
> to have old releases of git.
>

Assuming I'm driving it correctly:

[git init, git remote add origin ...]
$ git fetch  --depth=1 origin beeafee030a38380c65a9a664003ba50f87aefbf
error: no such remote ref beeafee030a38380c65a9a664003ba50f87aefbf
$ git --version
git version 2.1.4

That's with the latest Debian release.

Ross

--001a1146f100d9539b051a3760a6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 6 July 2015 at 17:23, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mail=
to:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-le=
ft-style:solid;padding-left:1ex"><div class=3D"gmail_extra">How latest, rem=
embering that oe-core supports LTS distros which are likely to have old rel=
eases of git.</div></blockquote><div><br></div><div>Assuming I&#39;m drivin=
g it correctly:</div><div><br></div><div>[git init, git remote add origin .=
..]</div><div>$ git fetch =C2=A0--depth=3D1 origin beeafee030a38380c65a9a66=
4003ba50f87aefbf</div><div>error: no such remote ref beeafee030a38380c65a9a=
664003ba50f87aefbf</div><div>$ git --version<br></div><div>git version 2.1.=
4</div><div><br></div><div>That&#39;s with the latest Debian release.</div>=
<div><br></div><div>Ross</div></div></div></div>

--001a1146f100d9539b051a3760a6--
