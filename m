Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC15FE00BFE; Fri,  4 Mar 2016 16:18:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1E33E00BA0
	for <yocto@yoctoproject.org>; Fri,  4 Mar 2016 16:18:13 -0800 (PST)
Received: by mail-io0-f169.google.com with SMTP id g203so79299594iof.2
	for <yocto@yoctoproject.org>; Fri, 04 Mar 2016 16:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=A/sh2wfCQY8+dMgweKFRlS8daGchCl4yA7Nr7yRnmdQ=;
	b=FYfgQeDEKu2qwc9/alTRxzumBquA2tJZ/yKKsVYejK8Fx2s/Uo/krGdXOrMEcqOndM
	/6lc4u1LThLmJrLfO772Cuib4KzVye9GtLJAEIQ4myddpqwPUcnI0mrY8KQiHIbqbjwG
	/MFZOH+D131lrbcMrBf/5RumSbOsDq/VETc60Y8JtpdIQuoE5ThXgPGV3Jk3HX7QXxSP
	7ipPOvn0J20qrFEPeGsm4SkPn2fq/LYbKIjENKuXl8umCnazQ6kBFZoW6vl2rJVs0KwE
	46zXkCbMuHhco8uy4HFd+Y0JrgD4BewB++/dljmhvOFWV4dfH3DuGZW0MqT2bcNV1W2s
	m4EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=A/sh2wfCQY8+dMgweKFRlS8daGchCl4yA7Nr7yRnmdQ=;
	b=Sa8IenEEIlwPYVynNjY/NdI9+HdWqLsoQ0+pXcFCfqGQHqUHgYEnQnpFd/laRpCoRl
	8Vy0qIBLrpthNFMHSbzb/QFxoBex1j5HFhHi35BSktXOzuJC9fxDdZ6OjLKjOJJgIKji
	NEYrglUOcT8FKceAg7s0yiew+gUS6rfFk9lDmynWk9ZO5D1t9JWKoxLvMvOc30e7InnQ
	8qnCK0KemBZAVsGvx37d7man1Byl166idXNW0OfqrVJNBmqC55PISr6QJ8WbKWK2odmY
	fLbz3uw+c1NOJ9bnXrckkOD6UETQISc8tm0XyLiI6AV3iABoEG6PlVpTiB6gwSDV1uWD
	Jz9A==
X-Gm-Message-State: AD7BkJJPvPTkNPk9NfwIG8yGp51/eAfM6JR5BfmmnYE1IyolC18UnPIsC9qpIZh0cJzGgfwSyFEYZJD7+l99m3cX
X-Received: by 10.107.137.92 with SMTP id l89mr12239794iod.133.1457137092939; 
	Fri, 04 Mar 2016 16:18:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 4 Mar 2016 16:17:53 -0800 (PST)
In-Reply-To: <OFFA897E48.32A2821D-ON88257F6C.00833AFA-88257F6D.00012E40@selinc.com>
References: <OF21316994.A2EBE251-ON88257F6C.007FC931-88257F6C.007FFBBB@selinc.com>
	<CAMKF1sqwf11WhEAtCtRf+VrqR=BVCegRCVsnc2MeaUK7ReoH3A@mail.gmail.com>
	<OFFA897E48.32A2821D-ON88257F6C.00833AFA-88257F6D.00012E40@selinc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 5 Mar 2016 00:17:53 +0000
Message-ID: <CAJTo0Lb1zkB4QhLMDQJFpwVkok04aOtVzxd1LqTTKqXhNxoG9w@mail.gmail.com>
To: robert_joslyn@selinc.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: btrfs-tools Requires libgcc_s.so.1
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
X-List-Received-Date: Sat, 05 Mar 2016 00:18:14 -0000
Content-Type: multipart/alternative; boundary=001a113ebdb4d06b71052d422a83

--001a113ebdb4d06b71052d422a83
Content-Type: text/plain; charset=UTF-8

On 5 March 2016 at 00:12, <robert_joslyn@selinc.com> wrote:

> What is the process for getting this fixed upstream? Trivial patch is
> below, if that is sufficient.
>

Would you be able to send that to the oe-core list (
openembedded-core@lists.openembedded.org) using git-send-email (ideally,
attaching the output of git format-patch will do) to get your authorship
transferred correctly?  That's the formal process.

Thanks,
Ross

--001a113ebdb4d06b71052d422a83
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 March 2016 at 00:12,  <span dir=3D"ltr">&lt;<a href=3D"mailto:robert_j=
oslyn@selinc.com" target=3D"_blank">robert_joslyn@selinc.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-st=
yle:solid;padding-left:1ex"><div id=3D":1kd" class=3D"" style=3D"overflow:h=
idden">What is the process for getting this fixed upstream? Trivial patch i=
s<br>
below, if that is sufficient.<br></div></blockquote></div><br>Would you be =
able to send that to the oe-core list (<a href=3D"mailto:openembedded-core@=
lists.openembedded.org">openembedded-core@lists.openembedded.org</a>) using=
 git-send-email (ideally, attaching the output of git format-patch will do)=
 to get your authorship transferred correctly?=C2=A0 That&#39;s the formal =
process.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extr=
a">Thanks,</div><div class=3D"gmail_extra">Ross</div></div>

--001a113ebdb4d06b71052d422a83--
