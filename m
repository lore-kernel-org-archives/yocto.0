Return-Path: <matthew_stanger@trimble.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF872E00971; Mon, 12 Sep 2016 11:22:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9493E00971
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 11:22:41 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id a6so68001234wmc.0
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 11:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=trimble.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=5tY0oIajkfxQUb35cnJfpdo8/Q5f0pQ/RsUsGZb6Wzk=;
	b=rAl9NDt4VfaEB1wrkVeOCTY5oMtCdWby4Dx6Z4WuRTT5mGptMHfv4IP0C8azwRWBlv
	s/Xx1SakI0y6mML6vXgXlSjhvRJvDYRJH85zjhIPRkBrAP3MW/tnC5seZqRfcDDc0jRd
	kvfySwMJK0YTrf1JqSsYglRsT2ZuFzA5GHyZ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=5tY0oIajkfxQUb35cnJfpdo8/Q5f0pQ/RsUsGZb6Wzk=;
	b=bK4ZaDJx7jyLd/oke/LAaArCOvqCEobIQMg9A1xlBKb1WiuZBz/EsXd3KU2kHPyOI0
	kU0FQlRGgEmTvJyi0lNzSo+giKH4Vw2zQxXnrDRw5G3XpwOvOvdZ9J5T3hS1FTbl9Vrn
	xb5oxdFyoUMaLdkhkNtwdN+QUf7MBPFDNbPl/6QXukQlDpbJ6ecZFIX03nxbz8FmfQK5
	/ocHMGTBk/RQk2uxG/sTeU04O+MlD3oLM07MLI3swQ3l/aTaVh6YGkLFKhBI4dpVRZN3
	DLkQJFQQ0i+knVD1w2/BcM35azqG649w4wqX+29dhyDmzNmDD4ME3qUdlyHdZElMeyOp
	AGYg==
X-Gm-Message-State: AE9vXwNrGldfvu1W3R7BBKAahr1G7P11SJLjkbshRBbYEXe8hjk/22DLxXauK6VMgIOZTdzPgm9W8lnnCAJ/oBoU
X-Received: by 10.28.125.209 with SMTP id y200mr12567580wmc.25.1473704560232; 
	Mon, 12 Sep 2016 11:22:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.154.67 with HTTP; Mon, 12 Sep 2016 11:22:39 -0700 (PDT)
From: Matthew Stanger <matthew_stanger@trimble.com>
Date: Mon, 12 Sep 2016 12:22:39 -0600
Message-ID: <CANr77M1Oj+M6k3QqHKTNSS8YFtsgVm5N7qCh4oxSCGWbSNKLNg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Striping cross-compiled paths
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
X-List-Received-Date: Mon, 12 Sep 2016 18:22:44 -0000
Content-Type: multipart/alternative; boundary=001a1141e660d1a638053c539431

--001a1141e660d1a638053c539431
Content-Type: text/plain; charset=UTF-8

I'm using Yocto 1.7.1 I'd like built programs to have the build path
striped down. The goal is if I'm looking at some programs log after cross
compiling I want this:

src/program.c:388

where I currently get this:

/usr/local/jenkins/workspace/project-build-manual/Project/build-project/tmp/work/arm926ejste-poky-linux-gnuebi/program/2.5.992+gitAUTOINC+1c6d246619-r0/git/src/program.c:388

Is it possible to configure Yocto to do this for me? If so where can I find
info on how I would do this?

Thanks,
Matt

--001a1141e660d1a638053c539431
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m using Yocto 1.7.1 I&#39;d like built programs=
 to have the build path striped down. The goal is if I&#39;m looking at som=
e programs log after cross compiling I want this:</div><div><br></div><div>=
src/program.c:388</div><div><br></div><div>where I currently get this:</div=
><div><br></div><div>/usr/local/jenkins/workspace/project-build-manual/Proj=
ect/build-project/tmp/work/arm926ejste-poky-linux-gnuebi/program/2.5.992+gi=
tAUTOINC+1c6d246619-r0/git/src/program.c:388</div><div><br></div><div>Is it=
 possible to configure Yocto to do this for me? If so where can I find info=
 on how I would do this?<br></div><div><br></div><div>Thanks,</div><div>Mat=
t</div></div>

--001a1141e660d1a638053c539431--
