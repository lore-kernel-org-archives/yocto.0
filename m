Return-Path: <brduffy@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AB0CE01254
	for <yocto@yoctoproject.org>; Wed,  7 Sep 2011 15:36:11 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwe3 with SMTP id 3so158811wwe.11
	for <yocto@yoctoproject.org>; Wed, 07 Sep 2011 15:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=dt//OXLDN58wtEvW5z1fUB3hVazVezNG7/ig0jnvqOU=;
	b=ROCCIuZgq9IjqjqHN1MsetiPTvuwZOG9kHudn647HrSQ8mKM7B21WBqLhQcLlzEpjT
	o9iFTsTTTx1OSXOjrWMTs3h5pByXsY8a5an3ZZhYQWrCmprKkglDmxA/NfPsOG5cmLvo
	R9nq0BKiltRvnzJKRjrNw+7GNsMpbkWKMkQEU=
MIME-Version: 1.0
Received: by 10.216.53.209 with SMTP id g59mr5281174wec.93.1315434970297; Wed,
	07 Sep 2011 15:36:10 -0700 (PDT)
Received: by 10.216.168.147 with HTTP; Wed, 7 Sep 2011 15:36:10 -0700 (PDT)
Date: Wed, 7 Sep 2011 18:36:10 -0400
Message-ID: <CAHrDPkodacEMJ8uK1+jxq0wtH_h_5wMftdACyPTUmHmsTYpqSw@mail.gmail.com>
From: Brian Duffy <brduffy@gmail.com>
To: yocto@yoctoproject.org
Subject: core-image-clutter
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 07 Sep 2011 22:36:12 -0000
Content-Type: multipart/alternative; boundary=001636d34de52136cd04ac6192f4

--001636d34de52136cd04ac6192f4
Content-Type: text/plain; charset=ISO-8859-1

Hello Yocto,

I'm getting my HOB on and I noticed core-image-clutter. My goal is to
develop for a set top box using clutter. I noticed a lot of important
packages included such as gstreamer and python. I did not notice pyclutter.
I'm actually leaning towards using C (gobject) since pyclutter does not stay
up to date with clutter releases these days (How I wish they would).
Developing a gui app with C is not exactly my idea of a good time.

I would like to get started creating a development environment for clutter
and I am assuming this is what I need. Is there anything else I should add
to get up and running with a basic clutter application development env? I'm
not ready to discuss Yocto SDK and eclipse plugin stuff just yet. I just
want to know if I can build core-image-clutter with the HOB and have an
image that is ready to support some beginners clutter programming. Maybe
with a little video playback for fun.

-- 
Duff

--001636d34de52136cd04ac6192f4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello Yocto,<div><br></div><div>I&#39;m getting my HOB on and I noticed cor=
e-image-clutter. My goal is to develop for a set top box using clutter. I n=
oticed a lot of important packages included such as gstreamer and python. I=
 did not notice pyclutter. I&#39;m actually leaning towards using C (gobjec=
t) since pyclutter does not stay up to date with clutter releases these day=
s (How I wish they would). Developing a gui app with C is not exactly my id=
ea of a good time.=A0</div>
<div><br></div><div>I would like to get started creating a development envi=
ronment for clutter and I am assuming this is what I need. Is there anythin=
g else I should add to get up and running with a basic clutter application =
development env? I&#39;m not ready to discuss Yocto SDK and eclipse plugin =
stuff just yet. I just want to know if I can build core-image-clutter with =
the HOB and have an image that is ready to support some beginners clutter p=
rogramming. Maybe with a little video playback for fun.=A0<br clear=3D"all"=
>
<div><br></div>-- <br>Duff<br>
</div>

--001636d34de52136cd04ac6192f4--
