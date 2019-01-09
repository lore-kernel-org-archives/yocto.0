Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD320E00C5F; Wed,  9 Jan 2019 13:34:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.48 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com
	[209.85.222.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D367DE009B1
	for <yocto@yoctoproject.org>; Wed,  9 Jan 2019 13:34:17 -0800 (PST)
Received: by mail-ua1-f48.google.com with SMTP id v24so2911319uap.13
	for <yocto@yoctoproject.org>; Wed, 09 Jan 2019 13:34:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=8rFUkTl/t/PLGfS0NHkOjXvuua/JM+CvK53jl37YEGo=;
	b=HrY9jTTBc/zhepRmoVrk2Uw5Q0YtAmAlMQhQTimORVFTP7VshR1P5v4hhn4fX/2YMt
	gQXRs3yb8v1D0gLhUMkbGIDRN+giO4tHiypO8Sj7iosesf8mYEBXpY8G2i+/ywQZhcG4
	p8EXSkBWBcj3wFXRMJvz1pFFgnbMKUETINLU/d4Iev9Rl8Wz5aYlYdHSj995GCR/fpgu
	p3SET1oxilFGz2HEDbmNRBOOSMJWfDWO5PJl22hGxabbR0QbyYPkssvg+Hkwzpikflon
	Wm9ZfrUL0lQsPaWaVtA/MRFaeZqo5UPypRiHfJFAsRRUscxsvTPMh4AKGwqdz3sqiCXO
	oF1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=8rFUkTl/t/PLGfS0NHkOjXvuua/JM+CvK53jl37YEGo=;
	b=pqXW4aem2Qt5NTRFq7VRHwDyLQL/aULOB73qNrzPHwXirK6s45eOdnSOC41Cn14uA+
	7gVlvcXIXZT46uY1rCg3j7vSf4fioeEgyqHaP5sFTOl+vqw+Uio2GLXO9ep9a7f+Ovjr
	PTYCV6hIBYh4T+c/ctgSgtIRUmlt8ZnZP6iSEZnXy1LykM1rbrBh1JhDAaOF7BuSxhkV
	MFXk65qIj6HSSZYc4hkWQbUIbl8Wp+9UwFsKOQxbPFywhTFyfR/7rMKf+MraRxJkL3Qo
	UMnN93smjuPEv0zyp9dRYcwFbbd+FLtREZUC5e6mkjAfNnJ1ZXvfEqPfg/lJYQTGu/Nm
	zOzA==
X-Gm-Message-State: AJcUukexA8NaENOEoEzSPpXBHzu1KBrx5JEHELWvgva3UhFaaDuH2j0t
	weTn526z/wMkgrRRAVwUs/drFP8lwLoRU/6MJsVVmLeV
X-Google-Smtp-Source: ALg8bN6fO6z6FOo/JnDVcjB2NjHy8maqngA2FaZJvRQjLTeYIWBjFU3/orhrKd2ANa/fFmpKrqRfDDEDHYNxC8qYGQY=
X-Received: by 2002:ab0:a8c:: with SMTP id d12mr2897653uak.67.1547069656589;
	Wed, 09 Jan 2019 13:34:16 -0800 (PST)
MIME-Version: 1.0
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Wed, 9 Jan 2019 22:34:05 +0100
Message-ID: <CAKRytNzSRPTnjXMO8Gajv5b20XtY++=jskWFWLTdMULSh++53w@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Is it possible to upgrade Nodejs from 8 to 10 LTS?
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
X-List-Received-Date: Wed, 09 Jan 2019 21:34:18 -0000
Content-Type: multipart/alternative; boundary="00000000000052ebe3057f0d3909"

--00000000000052ebe3057f0d3909
Content-Type: text/plain; charset="UTF-8"

As explained here https://github.com/nodejs/Release, NodeJS 10 is the
current active LTS and NodeJS 8 is right now in "Maintenance" (from January
2019).

I saw that in master branch, Node has been updated from 8.12 to 8.14. Is
there an official scheduling to release NodeJS 10 in open-embedded, for
instance with yocto 2.7?

I tried to do a quick experiment trying to update it by myself, however it
throw this error: "*out/Release/torque: Syntax error: newline unexpected"*

Log is:
*(... many warnings)*
/home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/nodejs/10.15.0-r0/node-v10.15.0/out/Release/torque:
10:
/home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/nodejs/10.15.0-r0/*node-v10.15.0/out/Release/torque:
Syntax error: newline unexpected*
| deps/v8/gypfiles/v8_torque.host.mk:16: recipe for target
'474ee9f3a421e9e2d705d617ba14be9f67e824da.intermediate' failed
| make[1]: *** [474ee9f3a421e9e2d705d617ba14be9f67e824da.intermediate]
Error 2
| rm 19661344c85a670a13ee39e428de69a9b21ecba1.intermediate
474ee9f3a421e9e2d705d617ba14be9f67e824da.intermediate
| Makefile:99: recipe for target 'node' failed
| make: *** [node] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/nodejs/10.15.0-r0/temp/log.do_compile.35962)


Thank you

--00000000000052ebe3057f0d3909
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">As explained here <a href=3D"https://github.com/nodejs/Rel=
ease">https://github.com/nodejs/Release</a>, NodeJS 10 is the current activ=
e LTS and NodeJS 8 is right now in &quot;Maintenance&quot; (from January 20=
19).<div><div><br></div><div>I saw that in master branch, Node has been upd=
ated from 8.12 to 8.14. Is there an official scheduling to release NodeJS 1=
0 in open-embedded, for instance with yocto 2.7?</div></div><div><br></div>=
<div>I tried to do a quick experiment trying to update it by myself, howeve=
r it throw this error: &quot;<b>out/Release/torque: Syntax error: newline u=
nexpected&quot;</b></div><div><br></div><div>Log is:</div><div><b>(... many=
 warnings)</b></div><div><div>/home/ks89/git/poky/build/tmp/work/cortexa7t2=
hf-neon-poky-linux-gnueabi/nodejs/10.15.0-r0/node-v10.15.0/out/Release/torq=
ue: 10: /home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnu=
eabi/nodejs/10.15.0-r0/<b>node-v10.15.0/out/Release/torque: Syntax error: n=
ewline unexpected</b></div><div>| deps/v8/gypfiles/<a href=3D"http://v8_tor=
que.host.mk:16">v8_torque.host.mk:16</a>: recipe for target &#39;474ee9f3a4=
21e9e2d705d617ba14be9f67e824da.intermediate&#39; failed</div><div>| make[1]=
: *** [474ee9f3a421e9e2d705d617ba14be9f67e824da.intermediate] Error 2</div>=
<div>| rm 19661344c85a670a13ee39e428de69a9b21ecba1.intermediate 474ee9f3a42=
1e9e2d705d617ba14be9f67e824da.intermediate</div><div>| Makefile:99: recipe =
for target &#39;node&#39; failed</div><div>| make: *** [node] Error 2</div>=
<div>| ERROR: oe_runmake failed</div><div>| WARNING: exit code 1 from a she=
ll command.</div><div>| ERROR: Function failed: do_compile (log file is loc=
ated at /home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnu=
eabi/nodejs/10.15.0-r0/temp/log.do_compile.35962)</div></div><div><br></div=
><div><br></div><div>Thank you</div></div>

--00000000000052ebe3057f0d3909--
