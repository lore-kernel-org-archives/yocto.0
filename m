Return-Path: <ron@ron-oakes.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63EA3E00A94; Thu, 19 Jan 2017 14:53:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
Received: from mail-ua0-f176.google.com (mail-ua0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1DB1E00A94
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 14:53:48 -0800 (PST)
Received: by mail-ua0-f176.google.com with SMTP id y9so48456241uae.2
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 14:53:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ron-oakes-us.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=3oCdPnOiKqRwR76YYQGTY2vuBZ9DQuK6Muerg2IAiWA=;
	b=xzkTduChCs+g+Le0sqmiYmMo2UJnIYcbOflx8McmN0t6Mb1s3D6CRiwIRWLeQ+3wpd
	JjPeSdlXeMhE8A6trmjjAet/mqdQv2svTHJIBExkUFsRY9nkszoJYho3ABBxqpy2HTY8
	JoNf/2ExgRFy/MZU8GoqGSTxGIXfuQbqBIAWGTTjpl6bdn372QvyeR5r9yK7Qu/q3Z3W
	D21Uf6jt0WhrytLWVky9vj4SeXeUMLZYlajTSgxsoOv5G4LA6OVjY6585InP+J9liVpu
	k4DygLmHFg7McCAFUmt8vaL3fjuDgb+K087PMIB3q1pDZAVasxoteND2PLnFHqcLw7AS
	C4xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=3oCdPnOiKqRwR76YYQGTY2vuBZ9DQuK6Muerg2IAiWA=;
	b=jneG1FERaOqPN6md0ZFrYY4Gnp1OVw7xj4wszOvpKOr8Casp1QgO2/MdMu4cxq+vCV
	N9fR+js0C7OrQS6HkQaUO3OQOLcPoghRRjiNOLCZE9slsHoZd1WOTp77fNbquPo/7thu
	rI2gEVG9ayVxyaOvFF2WEaPGf9BfVph1uQZ1ybDC92rOGBFIQJoHdGlne4aQsG1P4+wO
	IsY0Bye/NAbI3VdcaXjsME+mVWitP5hE7QQw9qnFH9jj4XBHK5opXrbevVZ4OvoEvX5j
	AcNUsyj2TezALv8pTBnzB3PiFUjz5x5DAM5VgzysHak7ghT2sR5kzW+efA0m0BD58MQN
	cKBA==
X-Gm-Message-State: AIkVDXKMO6br/SIoL4rDSlbcxw539JEzd3JwakFg8JXbUc7X9lXP8HYT65CQ31IRaOYqp4opAKooNvQI5yIbJQ==
X-Received: by 10.176.92.21 with SMTP id q21mr5018314uaf.130.1484866427757;
	Thu, 19 Jan 2017 14:53:47 -0800 (PST)
MIME-Version: 1.0
From: Ronald Oakes <ron@ron-oakes.us>
Date: Thu, 19 Jan 2017 22:53:36 +0000
Message-ID: <CADh9ykEXWXtxG42PML_y9ADA7m-p3pxQiSWD62pZ76=fVoHdLg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Labeling Release
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
X-List-Received-Date: Thu, 19 Jan 2017 22:53:50 -0000
Content-Type: multipart/alternative; boundary=f403043612f0f7370c05467a67c9

--f403043612f0f7370c05467a67c9
Content-Type: text/plain; charset=UTF-8

I need to label a release of my image, including all of the Open Source
components and the ones I've added in a way that I can both reproduce the
exact build at any point in the future, and I can give something relitively
compact to our general configuration manager (who is not used to doing CM
on complex software images, but full hardware systems) for storage.

Any suggestions?

My code freeze is tomorrow at noon MST, but I can work on the labeling and
any tools after that. I'll need to go offsite to download anything not
already on our system, so that may impact my decision on how to go forward.

Ron Oakes

--f403043612f0f7370c05467a67c9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I need to label a release of my image, including all of the Open Source com=
ponents and the ones I&#39;ve added in a way that I can both reproduce the =
exact build at any point in the future, and I can give something relitively=
 compact to our general configuration manager (who is not used to doing CM =
on complex software images, but full hardware systems) for storage.=C2=A0<d=
iv><br></div><div>Any suggestions?</div><div><br></div><div>My code freeze =
is tomorrow at noon MST, but I can work on the labeling and any tools after=
 that. I&#39;ll need to go offsite to download anything not already on our =
system, so that may impact my decision on how to go forward.=C2=A0</div><di=
v><br></div><div>Ron Oakes</div>

--f403043612f0f7370c05467a67c9--
