Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27A1EE00AE0; Mon,  6 Jul 2015 09:25:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01949E00A9A
	for <yocto@yoctoproject.org>; Mon,  6 Jul 2015 09:24:05 -0700 (PDT)
Received: by qkeo142 with SMTP id o142so120795058qke.1
	for <yocto@yoctoproject.org>; Mon, 06 Jul 2015 09:24:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=o5ulJ5gytMAIhgRctHBPNfA+L2mva9MqPC8v0ilHuMM=;
	b=JgSVx580v7160veDXZ1CiQnDhzVi5WoXaE7dEvJVnxkfb5dfmHtbhHmtcKUvxTLnqR
	0m9FCFRHt3MAviEuokMx7yrmWWwtzDVmX3+xilS0Je3sd59+T+uZ+Vqd+1+s//kj0Dxp
	e9Dkz3QW4/AwibxjH9nxqtjPtGb5zTxgyzip349ixUH55zqh5ShRBr6TqBVwaA/ofP2O
	b/mNWhJYuQwsHdq/Gw9mLTJ/ga4xnkxb8cUnaBuw9izgHgbdK4hJukUCfY45mS6Plt6b
	k2es/7226NNYDv3FOGxb1mlicHIrkDD9WT8pXX+DYRdXySaPV7i9bceWPMMt4bn5w4U7
	UXIA==
X-Gm-Message-State: ALoCoQkZYdNwUWFyW8uZOxxKb//FjIq/beGJ92fLKIk590rVQjUoHdpHvudVCgwl6F+MEnd+TbZX
X-Received: by 10.140.134.137 with SMTP id 131mr56464752qhg.64.1436199845068; 
	Mon, 06 Jul 2015 09:24:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Mon, 6 Jul 2015 09:23:45 -0700 (PDT)
In-Reply-To: <559AAA59.9090007@mail.bg>
References: <1435981717-29443-1-git-send-email-net147@gmail.com>
	<55976F44.5070106@mail.bg> <559A8572.6020203@gmail.com>
	<559AAA59.9090007@mail.bg>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 6 Jul 2015 17:23:45 +0100
Message-ID: <CAJTo0La_FqBveOEv90+ofCq2gAj4hiNfSA72dc40mEjrFv8aJg@mail.gmail.com>
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
X-List-Received-Date: Mon, 06 Jul 2015 16:25:36 -0000
Content-Type: multipart/alternative; boundary=001a1135b7ee979a96051a375539

--001a1135b7ee979a96051a375539
Content-Type: text/plain; charset=UTF-8

On 6 July 2015 at 17:18, Nikolay Dimitrov <picmaster@mail.bg> wrote:

> git fetch --depth=1 git://repo.git $SHA1
>
> Available in the latest git code.
>

How latest, remembering that oe-core supports LTS distros which are likely
to have old releases of git.

Ross

--001a1135b7ee979a96051a375539
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 6 July 2015 at 17:18, Nikolay Dimitrov <span dir=3D"ltr">&lt;<a href=3D"=
mailto:picmaster@mail.bg" target=3D"_blank">picmaster@mail.bg</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div id=3D":zk" class=3D"a3s" st=
yle=3D"overflow:hidden">git fetch --depth=3D1 git://repo.git $SHA1<br>
<br>
Available in the latest git code.<br></div></blockquote></div><br>How lates=
t, remembering that oe-core supports LTS distros which are likely to have o=
ld releases of git.</div><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra">Ross</div></div>

--001a1135b7ee979a96051a375539--
