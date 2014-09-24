Return-Path: <lschwab@xeralux.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27CCEE00857; Wed, 24 Sep 2014 15:04:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.160.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-yk0-f179.google.com (mail-yk0-f179.google.com
	[209.85.160.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAB02E00849
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 15:04:47 -0700 (PDT)
Received: by mail-yk0-f179.google.com with SMTP id 142so2795592ykq.24
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 15:04:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=MZyD6f9BK1tpMkwFZBmgNjWLRiCP58WMP+W7EjEHdBY=;
	b=eUweCrI2sUVs28osz9GQgPjfGbGeWSATLxtO3EJ+f8APc58FUCtTsdIaLp2reE1Gc+
	/3Cg/E8EZbsKRvK0pOTYW5EfmsegGsh3zDt43Og9vmRwjWe0EUIAiEV2en7Faoal4yZ+
	WjYOhO7mj04a+AA7SJ0kRNmWvGtNg7NCaCYILPD0VaQKPkcsFy4IRf3kJ4Re7VmrZnHd
	OVqPJDtiFAQn06Xk52iVzHk410OYjxtQ5Da2TIOZ2pM2y3IAxWwtaXX8SrzZQrcwkOE5
	b8K8WqLWAPOMNk48o6kDtJMx+YAycpOd2pO3vM9PQ0edN2bxWmYlDw+Mxgs+TRt6ANjg
	2leQ==
X-Gm-Message-State: ALoCoQl+Dy2uvHZ37bOC2aMf4F9faf01+dIXScA0/IYsmJNZn2SAflPIQn+ggh1m2NrqFofRpPd+
MIME-Version: 1.0
X-Received: by 10.236.11.6 with SMTP id 6mr3606999yhw.90.1411596287049; Wed,
	24 Sep 2014 15:04:47 -0700 (PDT)
Received: by 10.170.162.135 with HTTP; Wed, 24 Sep 2014 15:04:46 -0700 (PDT)
Date: Wed, 24 Sep 2014 15:04:46 -0700
Message-ID: <CALb2249ipWUiPNwyRiDUpJeqaq0DELAz20ZRZeroJuf2CxQhPQ@mail.gmail.com>
From: Leo Schwab <lschwab@sensity.com>
To: yocto <yocto@yoctoproject.org>
Subject: Herp-a-Derp Alert: Changes to SRCREV Unpack Wrong Version
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
X-List-Received-Date: Wed, 24 Sep 2014 22:04:57 -0000
Content-Type: multipart/alternative; boundary=001a113674784194310503d6dfb2

--001a113674784194310503d6dfb2
Content-Type: text/plain; charset=UTF-8

I suspect this is a common issue, but my Google-fu has gotten me no closer
to understanding what I might be doing wrong, so here goes:

We have written recipes for various goodies -- both .bb and .bbappend forms
-- where SRC_URI points to a Git repository, and SRCREV names a commit ID
(not a tag or a branch name).  When we update the SRCREV to something
newer, 'bitbake' goes through the motions of rebuilding the recipe but,
when we look at the result, the thing it built is still the old revision.
This is confirmed when we look at the file 'log.do_unpack' in the build
directory, where it is clearly checking out the wrong commit ID.

I've tried fiddling around various ways with SRC_URI and SRCREV, but the
problem persists.  All our SRC_URIs have a 'branch=' parameter, and the
SRCREV points to a commit ID on that branch.  I've tried adding a
'name=blah' parameter to the SRC_URI, and then declaring SRCREV_blah, but
that doesn't seem to help, either.  We do not do anything with ${PV} or
${PR} in our recipes.

In short, from where is the do_unpack step getting the SRCREV it's passing
to 'git checkout'?  How can I trigger a rebuild using the value named in
the recipe when SRCREV is updated?  We are using Yocto 1.6.1 (Dora).

Thanks,
Schwab

--001a113674784194310503d6dfb2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I suspect this is a common issue, but my Google-fu has got=
ten me no closer to understanding what I might be doing wrong, so here goes=
:<div><br></div><div>We have written recipes for various goodies -- both .b=
b and .bbappend forms -- where SRC_URI points to a Git repository, and SRCR=
EV names a commit ID (not a tag or a branch name).=C2=A0 When we update the=
 SRCREV to something newer, &#39;bitbake&#39; goes through the motions of r=
ebuilding the recipe but, when we look at the result, the thing it built is=
 still the old revision.=C2=A0 This is confirmed when we look at the file &=
#39;log.do_unpack&#39; in the build directory, where it is clearly checking=
 out the wrong commit ID.</div><div><br></div><div>I&#39;ve tried fiddling =
around various ways with SRC_URI and SRCREV, but the problem persists.=C2=
=A0 All our SRC_URIs have a &#39;branch=3D&#39; parameter, and the SRCREV p=
oints to a commit ID on that branch.=C2=A0 I&#39;ve tried adding a &#39;nam=
e=3Dblah&#39; parameter to the SRC_URI, and then declaring SRCREV_blah, but=
 that doesn&#39;t seem to help, either.=C2=A0 We do not do anything with ${=
PV} or ${PR} in our recipes.</div><div><br></div><div>In short, from where =
is the do_unpack step getting the SRCREV it&#39;s passing to &#39;git check=
out&#39;?=C2=A0 How can I trigger a rebuild using the value named in the re=
cipe when SRCREV is updated?=C2=A0 We are using Yocto 1.6.1 (Dora).</div><d=
iv><br></div><div>Thanks,</div><div>Schwab</div><div><br></div></div>

--001a113674784194310503d6dfb2--
