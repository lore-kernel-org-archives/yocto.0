Return-Path: <unlandj2012@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F13C1E00C5F; Tue,  4 Dec 2018 08:28:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (unlandj2012[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.194 listed in list.dnswl.org]
Received: from mail-it1-f194.google.com (mail-it1-f194.google.com
	[209.85.166.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFAABE0095C
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2018 08:28:54 -0800 (PST)
Received: by mail-it1-f194.google.com with SMTP id i7so16337724iti.2
	for <yocto@yoctoproject.org>; Tue, 04 Dec 2018 08:28:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=dGNoqPqi5daUzfBSi+xbOpA2CLEoLxRl97K0z82bCsk=;
	b=swllN6y2Zbo5VBa/NdxouikVflh6EpJCNgku8oepcb2GaTmAGmXRhoIKIvCnd3NQHP
	IGKETN0IBIqDM+RY6WyPCZ0v6HlaxAxGlxiWC9iYacUFLf1auS+bp5caLUuzc0+E6Jrp
	OPC2NxM+hD3bMBHKcFyaCUm11OzJ6wt+b/o7FdgVZuWoPYV6ftyJ/S2ZGwViGDMFgJSo
	UdnX2Jzqi2uSzh0pEOp/vDgFzZePjILHqZiccFI7yUWueCdBZtTROrpsPsnYMCj1f5Re
	3DqCcQD/TrOHLKeTl5SQN71Iyv1HgySi8M5/Uzmk0A+tg8T2lf+3PEoz322VMqdq+1s/
	8rHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=dGNoqPqi5daUzfBSi+xbOpA2CLEoLxRl97K0z82bCsk=;
	b=kUIMUSyn7VbdJOISZgngfOheuxoCMgTeopwlfMxN8pbzFcpbB0y18sCsr0GepyFUrp
	4E3d1SCxiRmvbnbw2POcnFp07sAPr/485Dlh8UpW+sUvVG1nqsiPRRqEYPJfWaojOYbX
	fbmK/XPak+fSj8fPS/mOYVpmzSF9bgTTNCkdveWYHHfHh7P8YTYMkC6hmkftNJFJHz8F
	kh0k2U9RljftN9ahAubA6g/KYk9JazJ99CHx8dP13kG4PQ3JvThOx8rNQOmCtjjY+IjZ
	EhcgyZHvll8ScG7suDwepZ5BY4uomclsRymT8FYoLVLPWIrGnXrmHsQA91F8UZq9RpkB
	RMtA==
X-Gm-Message-State: AA+aEWbzZsTo9BK/rRfKEWQ7YGWtAbuep+lkbKmYOA9CZHB6uNqic1AU
	H+8/XkGFkPMTwbDh3NxORqHeS38m+i8X/LbaAYsPCsf0
X-Google-Smtp-Source: AFSGD/XKvybs0HQUv4nhsnURilE5acfBuinNzyHm9SYDwo53OOFDEnlY+qrEne0wH0ADjwaYWtS3/5yPAB8qcJYBmQI=
X-Received: by 2002:a24:76d0:: with SMTP id
	z199mr11386482itb.165.1543940934104; 
	Tue, 04 Dec 2018 08:28:54 -0800 (PST)
MIME-Version: 1.0
From: John Unland <unlandj2012@gmail.com>
Date: Tue, 4 Dec 2018 10:28:42 -0600
Message-ID: <CAODQEo1qPsWW1apiEwzgey8cJitsbODDdg2VK4Bmi3s8wLV83A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Using ICECC to build Thud issue
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
X-List-Received-Date: Tue, 04 Dec 2018 16:28:57 -0000
Content-Type: multipart/alternative; boundary="000000000000ee80ad057c34c2ef"

--000000000000ee80ad057c34c2ef
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I've been playing around with the icecc.bbclass and a small 2 node icecream
cluster. At the moment I'm able to compile core-image-minimal using Rocko
however when building on Thud I get a error (See Github gist for error and
local.conf config):

https://gist.github.com/junland/d932bd63ca2c871b99e64eda543ca2fe

My build OS is Ubuntu 18.04 (Workstation) and CentOS 7 (Second build
server), also I've gotten the same error on a Debian 9 and Oracle Linux VM
so I highly doubt it's something that has todo with the OS. I'd also like
to add what the workflow I'm using:

(As regular user)
1. $> git clone -b thud git://git.yoctoproject.org/poky.git

2. $> source oe-init-build-env

3. (Edit local.conf and place "PARALLEL_MAKE = "-j 10"" and "INHERIT +=
"icecc"" at the end of the config file)

4. $> source oe-init-build-env

5. $> bitbake core-image-minimal

Is there something I'm missing here? I've read the section of the manual
that explains on how to use icecream but it hasn't really solved my
problem. Any help would be great!

Thanks!

--000000000000ee80ad057c34c2ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello everyone, <br><br>I&#39;ve been pla=
ying around with the icecc.bbclass and a small 2 node icecream cluster. At =
the moment I&#39;m able to compile core-image-minimal using Rocko however w=
hen building on Thud I get a error (See Github gist for error and local.con=
f config):<br><br><a href=3D"https://gist.github.com/junland/d932bd63ca2c87=
1b99e64eda543ca2fe">https://gist.github.com/junland/d932bd63ca2c871b99e64ed=
a543ca2fe</a><br><br>My build OS is Ubuntu 18.04 (Workstation) and CentOS 7=
 (Second build server), also I&#39;ve gotten the same error on a Debian 9 a=
nd Oracle Linux VM so I highly doubt it&#39;s something that has todo with =
the OS. I&#39;d also like to add what the workflow I&#39;m using:<br><br>(A=
s regular user)<br>1. $&gt; git clone -b thud git://<a href=3D"http://git.y=
octoproject.org/poky.git">git.yoctoproject.org/poky.git</a><br><br>2. $&gt;=
 source oe-init-build-env<br><br>3. (Edit local.conf and place &quot;PARALL=
EL_MAKE =3D &quot;-j 10&quot;&quot; and &quot;INHERIT +=3D &quot;icecc&quot=
;&quot; at the end of the config file)<br><br>4. $&gt; source oe-init-build=
-env<br><br>5. $&gt; bitbake core-image-minimal<br><br>Is there something I=
&#39;m missing here? I&#39;ve read the section of the manual that explains =
on how to use icecream but it hasn&#39;t really solved my problem. Any help=
 would be great!<br><br>Thanks!<br></div></div>

--000000000000ee80ad057c34c2ef--
