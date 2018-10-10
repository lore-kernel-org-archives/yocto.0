Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9ACF8E006AF; Wed, 10 Oct 2018 06:29:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E98FAE006AF
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 06:29:18 -0700 (PDT)
Received: by mail-qk1-f172.google.com with SMTP id m8-v6so3107639qka.12
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 06:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=2Aqw2+xEUVvhgMnMivZiXmpOVCsXODo7XQz4D/w6htM=;
	b=HTIUUJya2MuhdoGtLqAV4suEFsyvGqHQcYNZHokCHvfg5YdJwCo87Wrz427HOg/coV
	7RT8fF0Zo6k3Ssc7WDBzFUnLQi/cqM+mc91bk7EQk8wMVRXEfN2CeMvXeXOBcWefbk1M
	vjUlHgKwcY+UIpdQRsQlxicMN/UIfXGZNPW6lfsH1omBY4AMifb0+vBJCWf5am6aTN6F
	H3MH24lyB3SmYh9u+0YFypLZs7RLz+QNC2GGhGmVSFJTlwBEU61hIFIki/ugaBiY3Hu/
	WCsROLyPvyTHkFV8QoBviZZ8+cYR5/bUPWt6fC4XbGdM8/klJoClsyKWW5A1VqKZAXBT
	tDbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=2Aqw2+xEUVvhgMnMivZiXmpOVCsXODo7XQz4D/w6htM=;
	b=Gw6My6QSW5KrJwgRFX90O39guanN1MqycDtUk1B0meZ/sYG3MuSOR+h/BBzdFX9I7n
	HYxB1FsEdgFEucf0YT+fm9vdW/bufRk8NSf45Fj6vo7uf59nQ3IdTUyjKGYbzIP7qKqT
	5XstU5Tqy46gsHVy3z5LcvyY4jqWMF5Cb7Aq+AQjg9tS9Y+Q5zpai8HGlHvmtQrEsFyQ
	13wkZVf1lO2G68segItQKkQNX3jMfbliQGNz8c/tN3zRZ+rokXXlzoE0d4ErHx+Anuyo
	FS7w/yCGbjQXx/Ibb3ZQjC+/iqA2kmqNQoc87yWUcz34fX1RemHyme/H+XjkhOLD7+J/
	6Uxw==
X-Gm-Message-State: ABuFfoie/IVmRu3sy40RnM1FK1BUmQC5mdygneiH1YK7YEXNiLcWqn7U
	3VpzBZI1SVTdMt6qZkLIk/QHwhvACq1wM/OQS88vfhxyOkw=
X-Google-Smtp-Source: ACcGV60li5ZvF3/Szwfd1QuU4I1eta77eGd99oHnroQcUAiujHYW3VLNCyDOKY9q5R9LVMmWwADRcMwagYYKScO1tA4=
X-Received: by 2002:a37:d784:: with SMTP id
	t4-v6mr19011306qkt.212.1539178157702; 
	Wed, 10 Oct 2018 06:29:17 -0700 (PDT)
MIME-Version: 1.0
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 10 Oct 2018 15:29:05 +0200
Message-ID: <CAGAf8Ly_txg3AQNqOM+Rg0Oy-RdS_96y328GwXw7Qu=iDx1yfg@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Sumo distro problem with dhcp packet?
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
X-List-Received-Date: Wed, 10 Oct 2018 13:29:19 -0000
Content-Type: multipart/alternative; boundary="0000000000005605030577dfd70b"

--0000000000005605030577dfd70b
Content-Type: text/plain; charset="UTF-8"

Hello.

I need on my test initramfs YOCTO image to add dhcp package (both dhcp
server and client).

For the beginning, I traced it, where it is:
.../poky/meta/recipes-connectivity/dchp

and decided to test it adding it to ...poky/build/conf/local.conf for the
starters:
CORE_IMAGE_EXTRA_INSTALL_append = "openssh dhcp cmake... "

But it produced the following error:
[user@fedora28-ssd conf]$ bitbake -k core-image-base

   [snap]

ERROR: Nothing RPROVIDES 'dhcp' (but
/home/user/projects2/beaglebone-black/sumo/poky/meta/recipes-core/images/
core-image-base.bb RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'dhcp' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['dhcp']
ERROR: Nothing RPROVIDES 'core-image-base'
No eligible RPROVIDERs exist for 'core-image-base'
NOTE: Runtime target 'core-image-base' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['core-image-base']

I added another package, dhcpcd, which is located in the another layer:
CORE_IMAGE_EXTRA_INSTALL_append = "openssh dhcpcd cmake... "

so this one worked/was integrated seamlessly.

What is the catch 22 here?

Thank you,
Zoran

--0000000000005605030577dfd70b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>He=
llo.<br></div><div><br></div><div>I need on my test initramfs YOCTO image t=
o add dhcp package (both dhcp server and client).</div><div><br></div><div>=
For the beginning, I traced it, where it is:</div><div>.../poky/meta/recipe=
s-connectivity/dchp<br></div><div><br></div><div>and decided to test it add=
ing it to ...poky/build/conf/local.conf for the starters:</div><div>CORE_IM=
AGE_EXTRA_INSTALL_append =3D &quot;openssh dhcp cmake... &quot;<br></div><d=
iv><br></div><div>But it produced the following error:</div><div>[user@fedo=
ra28-ssd conf]$ bitbake -k core-image-base</div><div><br></div><div>=C2=A0=
=C2=A0 [snap]<br></div><div><br>ERROR: Nothing RPROVIDES &#39;dhcp&#39; (bu=
t /home/user/projects2/beaglebone-black/sumo/poky/meta/recipes-core/images/=
<a href=3D"http://core-image-base.bb">core-image-base.bb</a> RDEPENDS on or=
 otherwise requires it)<br>NOTE: Runtime target &#39;dhcp&#39; is unbuildab=
le, removing...<br>Missing or unbuildable dependency chain was: [&#39;dhcp&=
#39;]<br>ERROR: Nothing RPROVIDES &#39;core-image-base&#39;<br>No eligible =
RPROVIDERs exist for &#39;core-image-base&#39;<br>NOTE: Runtime target &#39=
;core-image-base&#39; is unbuildable, removing...<br>Missing or unbuildable=
 dependency chain was: [&#39;core-image-base&#39;]<br></div><div><br></div>=
<div>I added another package, dhcpcd, which is located in the another layer=
:</div><div>CORE_IMAGE_EXTRA_INSTALL_append =3D &quot;openssh dhcpcd cmake.=
.. &quot;</div><div><br></div><div> so this one worked/was integrated seaml=
essly.</div><div><br></div><div>What is the catch 22 here? <br></div><div><=
br></div><div>Thank you,</div><div>Zoran</div><div><br></div></div></div></=
div></div>

--0000000000005605030577dfd70b--
