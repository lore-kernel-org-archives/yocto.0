Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3124CE00C4B; Wed, 14 Nov 2018 03:25:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f172.google.com (mail-it1-f172.google.com
	[209.85.166.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDDA9E00BBF
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 03:25:38 -0800 (PST)
Received: by mail-it1-f172.google.com with SMTP id o19so14114876itg.5
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 03:25:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=cjkcpmgNUe+3/zdfsc7aFBu2A9b9j4paeNYy2wjjPmM=;
	b=nnUFVh4qWB8hY5+Z+dCyuYLNF358BzCqoIWhWbJ8/j9b5ld8ggTCm1qwQTZtV3C0Hx
	Narpz9DgmpoP/HnklDPxPPBVvM0mGwqri9dA83QlNGj+69k7E9Gvwjq68VUlE87fchFy
	6bVxUOxW9GMgBHHyizaCH+M4VMf+OE2JHgnxAirOXtg/fkJKJObaE+7gGn8v9wtFlk+v
	8rXVengD8iX0nA9c6O/VxMnU9IfH2xV4aeKOY9ONcGE8D4lvj9BrmojfpyqxO8Nh3tq+
	avWU5B9hQ/DPs1HfWLywmyE3HnM94GYjAYGG6+XG1BWskcPuJ8auYGaAXZcj1ulgEps+
	LcrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=cjkcpmgNUe+3/zdfsc7aFBu2A9b9j4paeNYy2wjjPmM=;
	b=BNVNoXQRqDBJbLXCGQ0PyuSvonJUsMjPUdCyqzlDB/6oLBi9orbA41mS8piOswny7W
	IyK5tN9/9FS2PYBiEAGB6QY6ELYGM3S6bl/COJ9XtzBMuWhLTwGkFZBRb31JdD8Dj3gK
	5DJ4WAkZbA20ZPYjiWsZaMG0P/+L0aKKpzdyzbJ7u23e+ArizHnpJj7yjzEYhb4LbXe5
	gCKY3isIfKHGhoWeKzXLKWMwnfkU2K6bdNt4haRVNec87/zHmTDDP6xsPAtyxH+i+0Wi
	rMctjht/rRMfeFIEX/N32ohT9Xf2oRxPY9ZZjACP9Z4fZWRSHWJ43FVinISbk1iy8DsJ
	EEdg==
X-Gm-Message-State: AGRZ1gIFxbnnPKsx3klbmiYu8oQv+MMtjKcQvee8YYj43ohP0qO2clAv
	qKPqmz9zBCk1Ai/jb0tlpvGdwWssDtfr5arb2bNHJA==
X-Google-Smtp-Source: AJdET5dqGqtpuCeiQySo3dalqGSU++cMHzfOXFWoZTae2iKWW2gsuDlyan9ycbRkkPA+NNGt74e2hg6LA0RXxsHPUwQ=
X-Received: by 2002:a24:ce45:: with SMTP id
	v66-v6mr1496411itg.26.1542194738045; 
	Wed, 14 Nov 2018 03:25:38 -0800 (PST)
MIME-Version: 1.0
References: <CAD9sEJu_CbZYAGCiytx1GuM+HEQ+ar8mRG+aWG55dRe_okpK8Q@mail.gmail.com>
In-Reply-To: <CAD9sEJu_CbZYAGCiytx1GuM+HEQ+ar8mRG+aWG55dRe_okpK8Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 14 Nov 2018 11:25:26 +0000
Message-ID: <CAJTo0LY4jYkwWH0LEjzoAmjPWpm3W7P0m45YSWC7CfTW11P_CQ@mail.gmail.com>
To: theknoppix@gmail.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] meta-gnome: what are dependencies for gnome-full-desktop (gnome interface)
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
X-List-Received-Date: Wed, 14 Nov 2018 11:25:39 -0000
Content-Type: multipart/alternative; boundary="000000000000898467057a9e3194"

--000000000000898467057a9e3194
Content-Type: text/plain; charset="UTF-8"

On Wed, 14 Nov 2018 at 08:42, Knoppix <theknoppix@gmail.com> wrote:

> (Excuse me for my english I am not native)
>
> One disappointment for me was learn that meta-gnome is not fully-supported
> for running desktop. So i want to write all remain recipes to use desktop
> environment. I want to start from scratch (except from meta-debian-recipes)
> because for learn gnome world.
>
> Dear friends, how can I learn what are the necessary binaries&libraries
> for gnome interface (i.e: desktop window&display-manager panel, topbar,
> settings and other UI full-desktop-environment) to use on yocto project?
> Which project is I should start to write its recipe?
>

If you just want to know what the GNOME dependencies are then you should be
asking GNOME.  GNOME has a build tool called jhbuild, the module sets in
tht list all of the dependencies required.

Note that there's a series to add the GNOME 3 desktop to meta-gnome under
review on the openembedded-devel list, so working on that would avoid
duplication of effort.

Ross

--000000000000898467057a9e3194
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Wed, 14 Nov 2018 at 08:42, Knoppix &lt;<a href=3D"mailt=
o:theknoppix@gmail.com">theknoppix@gmail.com</a>&gt; wrote:<br><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>(Excu=
se me for my english I am not native)<br></div><div><br></div><div>One disa=
ppointment for me was learn that meta-gnome is not fully-supported for runn=
ing desktop. So i want to write all remain recipes to use desktop environme=
nt. I want to start from scratch (except from meta-debian-recipes) because =
for learn gnome world.</div><div><br></div><div>Dear friends, how can I lea=
rn what are the necessary binaries&amp;libraries for gnome interface (i.e: =
desktop window&amp;display-manager panel, topbar, settings and other UI ful=
l-desktop-environment) to use on yocto project? Which project is I should s=
tart to write its recipe?</div></div></blockquote><div><br></div><div>If yo=
u just want to know what the GNOME dependencies are then you should be aski=
ng GNOME.=C2=A0 GNOME has a build tool called jhbuild, the module sets in t=
ht list all of the dependencies required.</div><div><br></div><div>Note tha=
t there&#39;s a series to add the GNOME 3 desktop to meta-gnome under revie=
w on the openembedded-devel list, so working on that would avoid duplicatio=
n of effort.</div><div><br></div><div>Ross</div></div></div>

--000000000000898467057a9e3194--
