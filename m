Return-Path: <anoop.karollil@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17206E0080F; Fri, 24 Aug 2018 16:33:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (anoop.karollil[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86076E0074B
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2018 16:33:46 -0700 (PDT)
Received: by mail-pl1-f171.google.com with SMTP id s17-v6so1691290plp.7
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2018 16:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=yO5yp6niJvlAVcMz1PiU30Ve7GgRftBsC3i9ptM2OH0=;
	b=mvV5yNXGPfyS3+UbqmMRQnGRrwp9h/psROYVI3xLr/Hl6Fv3paCHwZQYSdx+0rMGcC
	lSmokc0a9QGyMsi481fban8afSsp6Z9nH+xFF23pzKqLK0hsdkKX2EaSxRgAUGax1krv
	oon25gJ232Z2sHjatHX6MzUfYWGBZR79nyn60sR+nilI5H2jt20T4UHevG5BBAghXM3G
	hDlEfHH2IpgFhkjE3Cn3nvAAxr6yV868Vb+Q7GLWkVBPSq5GziVN5Rsge641cfFHN4oE
	g6wxUPpwIVLAZhApk9DQeDcb9zEK4Ufjzhv5cvav4d9jXihNaMVS1697QGz6ioRZlhd7
	DuVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=yO5yp6niJvlAVcMz1PiU30Ve7GgRftBsC3i9ptM2OH0=;
	b=HOMdsoNqsoJOYEEoCf7uaAxSVyIT8cqwlsDXCDO5gCyQu5rwW3/5DI5gdvXlVz7fW+
	lDhWRXKFLKULt60AvI4YsYGiw+tQK7MyGR3A2bIo+e6hMW39W+NQPJnrW3ctMNUkF38i
	YtZdkCzm9Wa1v4ZkKfWNkWwM3RlQxfQBfsaATV6IOiLxeMmM97spCJHxZg9qgp3xwgWc
	qQm5PmDGfkGyJBPV0CU2JuS17XeU4CIMgPREEKi7PIOk46K5NXX7+her4/AJkakWljNV
	07rEp4ybEObtn9nOkzwvsdED0E5oNWw5Sqs4NZ/Sr6vXTbWg3SjzrDKzKmWUCW34fhs3
	Gvjg==
X-Gm-Message-State: APzg51AJwQ1seT5NXQpICa3vjKdihdDktDlgqwyljfbYKa/RWhFu38HJ
	5QZN+hZjxmPhXU03LKXfXv29BmYtHwD8HssLsGi5nOA=
X-Google-Smtp-Source: ANB0VdZlaxptwK2IjZYTV81dZFAUElVRkC0A2vtvsh/TEQhHyMEwh8gNa7Uzg2qpFBGhZBCfyrfqB5x6r/tKovCFCfI=
X-Received: by 2002:a17:902:3a5:: with SMTP id
	d34-v6mr3503831pld.98.1535153625557; 
	Fri, 24 Aug 2018 16:33:45 -0700 (PDT)
MIME-Version: 1.0
From: Anoop Karollil <anoop.karollil@gmail.com>
Date: Fri, 24 Aug 2018 19:33:33 -0400
Message-ID: <CAGayzYs_BO1JOrHmQBWdNk1+j3iQm7Gze67N7nROoxKKKsN=iQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: DEPENDS and -native for recipes
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
X-List-Received-Date: Fri, 24 Aug 2018 23:33:47 -0000
Content-Type: multipart/alternative; boundary="00000000000086f07e057436ce6b"

--00000000000086f07e057436ce6b
Content-Type: text/plain; charset="UTF-8"

I am trying to understand why you would use a *-native* version of a recipe.

My understanding is that you would use say openssl-native as a DEPENDS for
a recipe if the recipe is using openssl for a step that doesn't require
openssl to be built for the target machine. For example say signing an
artifact built by the recipe which is independent of the target machine
architecture, but needs to be able to run on the host machine natively. And
since its built for the host build machine, it won't get included in the
target machine image. If the recipe then invokes openssl, I am guessing
bitbake is smart enough to run the openssl that was compiled for the host
when building the package and not say the openssl actually present on the
host. I couldn't find anything in
https://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html
that describes *-native. *Is this documented somewhere?

I ran into trouble building a package that depended on glib-2.0. I had to
include both glib-2.0 as well as glib-2.0-native to get the package to
build successfully consistently - it succeeded sometimes but failed other
times. I see other people have had similar issues (
http://lists.openembedded.org/pipermail/openembedded-core/2017-January/132067.html)
where they have had to include both glib-2.0 and also glib-2.0-native even
though glib-2.0 depends on glib-2.0-native (
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-core/glib-2.0/glib.inc?h=pyro#n22).
I am guessing its a problem with the glib-2.0 recipe?

Thanks,
Anoop

--00000000000086f07e057436ce6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am trying to understand why you would use a <i>-nat=
ive</i> version of a recipe.</div><div><br></div><div>My understanding is t=
hat you would use say openssl-native as a DEPENDS for a recipe if the recip=
e is using openssl for a step that doesn&#39;t require openssl to be built =
for the target machine. For example say signing an artifact built by the re=
cipe which is independent of the target machine architecture, but needs to =
be able to run on the host machine natively. And since its built for the ho=
st build machine, it won&#39;t get included in the target machine image. If=
 the recipe then invokes openssl, I am guessing bitbake is smart enough to =
run the openssl that was compiled for the host when building the package an=
d not say the openssl actually present on the host. I couldn&#39;t find any=
thing in <a href=3D"https://www.yoctoproject.org/docs/1.6/bitbake-user-manu=
al/bitbake-user-manual.html">https://www.yoctoproject.org/docs/1.6/bitbake-=
user-manual/bitbake-user-manual.html</a> that describes <i>-native. </i>Is =
this documented somewhere?<br></div><div><br></div><div>I ran into trouble =
building a package that depended on glib-2.0. I had to include both glib-2.=
0 as well as glib-2.0-native to get the package to build successfully consi=
stently - it succeeded sometimes but failed other times. I see other people=
 have had similar issues (<a href=3D"http://lists.openembedded.org/pipermai=
l/openembedded-core/2017-January/132067.html">http://lists.openembedded.org=
/pipermail/openembedded-core/2017-January/132067.html</a>) where they have =
had to include both glib-2.0 and also glib-2.0-native even though glib-2.0 =
depends on glib-2.0-native (<a href=3D"https://git.yoctoproject.org/cgit/cg=
it.cgi/poky/tree/meta/recipes-core/glib-2.0/glib.inc?h=3Dpyro#n22">https://=
git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-core/glib-2.0/gli=
b.inc?h=3Dpyro#n22</a>). I am guessing its a problem with the glib-2.0 reci=
pe?</div><div><br></div><div>Thanks,</div><div>Anoop<br></div></div>

--00000000000086f07e057436ce6b--
