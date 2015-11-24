Return-Path: <ayoub.zaki@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CA55E00B2E; Tue, 24 Nov 2015 01:13:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ayoub.zaki[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DA27E00AF9
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 01:13:17 -0800 (PST)
Received: by wmww144 with SMTP id w144so129327622wmw.1
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 01:13:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=PdXxsW8Zmr9GngDx2wyiDkz7zhwKweS5wtIrfg8+jRc=;
	b=r7YtHRxT5+wPfAT1ncDNRqJn62R9LoMF5lNzOzWJ5sHFdm/MS/4gh3FZJESzFifvgg
	PPZiMTEtcl8AYJjFoyrWQBHOqm+/OOXKw8YtCbPJ8f5s5XZacjVAVuy93PBMqJxN3DFm
	Avyw5Da2a9vAzJovJZFd6lPye3T0jp0HNd/yPQCxBmbrXv2W01DOx58pNQcBS62RiUMR
	6xw5h2pNLlpK1LlU0pGlZUPQWJ1wps6zUp9Oety+hNBeAOw3bPSOHnMHLg1CPgqDH01r
	0ULgXPO4vN636kj0TBjLN8iGLNB/o/iFDgPco7nTv6TpjvcmaElxOk++M9+6C4OEwV5i
	uGtg==
MIME-Version: 1.0
X-Received: by 10.195.18.6 with SMTP id gi6mr39086620wjd.83.1448356396601;
	Tue, 24 Nov 2015 01:13:16 -0800 (PST)
Received: by 10.28.142.20 with HTTP; Tue, 24 Nov 2015 01:13:16 -0800 (PST)
Date: Tue, 24 Nov 2015 10:13:16 +0100
Message-ID: <CA+-BmJZL5W8va8EjuEy7Votvb6n5B3p58NkGykY_rduskA=WRA@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
To: yocto@yoctoproject.org
Subject: external layer Git workflow
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
X-List-Received-Date: Tue, 24 Nov 2015 09:13:19 -0000
Content-Type: multipart/alternative; boundary=001a11c28b6e871502052545c08b

--001a11c28b6e871502052545c08b
Content-Type: text/plain; charset=UTF-8

Hello,

I have a distro meta-layer on the top of poky and using few other layers
such as meta-openembedded.
Is there any recommended Git Workflow to keep it aligned with
yocto/openembedded branching/release cycles ?
Cheers
Ayoub Zaki

--001a11c28b6e871502052545c08b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hello, <br><br></div>I have a distro m=
eta-layer on the top of poky and using few other layers such as meta-openem=
bedded.<br></div>Is there any recommended Git Workflow to keep it aligned w=
ith yocto/openembedded branching/release cycles ?<br></div>Cheers<br></div>=
Ayoub Zaki<br></div>

--001a11c28b6e871502052545c08b--
