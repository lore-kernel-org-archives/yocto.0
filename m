Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E40D5E00D18; Tue, 26 Sep 2017 03:27:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.178 listed in dnsbl.sorbs.net]
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FCFAE00D10
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 03:27:29 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id v36so12362102ioi.1
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 03:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=on0MVx3TtRc0M1KhAv1/Y4XSK+UtDgvn7N83qGfVhX0=;
	b=oD6D3uQPVPcn3HjKejHQkc28pvOywxu0brXJpIbl2DINATLmKWMgmGZMvZIOXF8kTQ
	EIVPEEqeYfuZLIFuOaplgqsosY8NxjeMjZNLVcDN7hbpHE29jjLYjXIpM5wupfCCjD2g
	Lq6paJ4mIDN4UCuAZdCxcSQYRq3chdwdKqblypLJlGZwFmEzShzJzfIh+37SSRR8GAcv
	uFi3l3XvOdM0mAdUP3WFBc0CJR8w0rhuCLm65Ou0Q0BF+xVN01kOkSMCNU4NMtq/k7tq
	lrscGLGEov4dkOCq2e84tfnksmoEMDJ0c5BVxiEahfvDNkIM2guJEHu8ejnXC4NuP8AS
	dY8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=on0MVx3TtRc0M1KhAv1/Y4XSK+UtDgvn7N83qGfVhX0=;
	b=bsp250BlK0/VHoL1bi4f18jVCNLHNw8XTwsV32mggPIGxhMpFCi8O1RFx+YJmmPpgC
	G2LPsGXih54X7E9N0+Wp66tZIgpZf2yhn/l8OBevwaqIaV8FEJMnHicDimWRkdh9tvbN
	NglS1chNF7CMXu3RT/2ZyVkdSZ3TfcizWfKRlnYeMrB/tcps5q6Nv31tRPuMoAISXDQb
	0cdHLESUeXc+xZRsbDFMsPSd+uYP34GCzfbkL97WaRfR2FZ+Geq/45jlw87+Kfz3TP/U
	+FdKpGuhrLpZkpuGBfygb4g33vzjfKRogaH/asEOHIIBA97wL4e7FSNmI+rbNd2yiMNk
	98Lg==
X-Gm-Message-State: AHPjjUg8286ZAVWm1raM2bJkaZw0Yk97gspjIg7uYxrIucQ6HlNAWZuG
	K+QGDcxRRBOXkj+HldNxAQbYnbYBZldhqvb9kN9FtA==
X-Google-Smtp-Source: AOwi7QD/Lo5IFn0DjER9eq/HfD7LF5rdX0HPibgBWEvsd6JvMOxDOdM/PoQnMqQVxX1sNGt26MJqdM1BXwstgfPOTuI=
X-Received: by 10.107.41.135 with SMTP id p129mr13026084iop.142.1506421648659; 
	Tue, 26 Sep 2017 03:27:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.19.68 with HTTP; Tue, 26 Sep 2017 03:27:08 -0700 (PDT)
In-Reply-To: <b38b99b3-9090-a99c-06c1-396ce3baab26@linuxfoundation.org>
References: <b38b99b3-9090-a99c-06c1-396ce3baab26@linuxfoundation.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 26 Sep 2017 11:27:08 +0100
Message-ID: <CAJTo0LaTPnKT0mE3PXnb5Z5NN7GAF6-abyPR_VXyUp9umOaYZQ@mail.gmail.com>
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-infrastructure@yoctoproject.org
Subject: Re: [infra] git domain name updates
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
X-List-Received-Date: Tue, 26 Sep 2017 10:27:30 -0000
Content-Type: multipart/alternative; boundary="001a1141f22640380f055a151f30"

--001a1141f22640380f055a151f30
Content-Type: text/plain; charset="UTF-8"

On 26 September 2017 at 01:17, Michael Halstead <
mhalstead@linuxfoundation.org> wrote:

> This is all ready to go right now. Please update your remotes.
>

For people who don't know, you can configure convenience URL aliases in
git.  Here's a little config fragment for ~/.gitconfig to give an alias
which will use the git: server for pulls and ssh: for pushes:

[url "ssh://git@push.yoctoproject.org/"]
        pushInsteadOf = yocto:
[url "git://git.yoctoproject.org/"]
        insteadOf = yocto:

With this the URL you need to clone anything from the Yocto server is just
yocto:module.  For example:

$ git clone yocto:poky
$ cd poky
$ git remote add contrib yocto:poky-contrib

Ross

--001a1141f22640380f055a151f30
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 26 September 2017 at 01:17, Michael Halstead <span dir=
=3D"ltr">&lt;<a href=3D"mailto:mhalstead@linuxfoundation.org" target=3D"_bl=
ank">mhalstead@linuxfoundation.org</a>&gt;</span> wrote:<br><div class=3D"g=
mail_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:sol=
id;border-left-color:rgb(204,204,204);padding-left:1ex">This is all ready t=
o go right now. Please update your remotes.<br></blockquote><div><br></div>=
<div>For people who don&#39;t know, you can configure convenience URL alias=
es in git.=C2=A0 Here&#39;s a little config fragment for ~/.gitconfig to gi=
ve an alias which will use the git: server for pulls and ssh: for pushes:</=
div><div><br></div><div>[url &quot;ssh://<a href=3D"http://git@push.yoctopr=
oject.org/">git@push.yoctoproject.org/</a>&quot;]</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 pushInsteadOf =3D yocto:</div><div>[url &quot;git://<a href=
=3D"http://git.yoctoproject.org/">git.yoctoproject.org/</a>&quot;]</div><di=
v>=C2=A0 =C2=A0 =C2=A0 =C2=A0 insteadOf =3D yocto:</div><div><br></div><div=
>With this the URL you need to clone anything from the Yocto server is just=
 yocto:module.=C2=A0 For example:</div><div><br></div><div>$ git clone yoct=
o:poky</div><div>$ cd poky</div><div>$ git remote add contrib yocto:poky-co=
ntrib</div><div><br></div><div>Ross</div></div></div></div>

--001a1141f22640380f055a151f30--
