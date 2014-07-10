Return-Path: <gnichimed@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DF49E0056A; Thu, 10 Jul 2014 03:26:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gnichimed[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f54.google.com (mail-qg0-f54.google.com
	[209.85.192.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59AE4E00559
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 03:26:33 -0700 (PDT)
Received: by mail-qg0-f54.google.com with SMTP id q107so7441780qgd.13
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 03:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=1w5I/1oth62jE0lTC8UfS1LxJcIF2ItSKmrqeSBKEZE=;
	b=mPD7eaqH4hTjDQHkrz/U/8YFdu4gXCZL5l8QFvYHYea3QUTywDezCUZcXrxZR+UIo1
	UFAX2IYI6l4/MftkUHHTy0zyh7qHZkJNBxo+xujxtBzFtYU5Qa8D3a4+1j/JtVpKX7mG
	bzm1Js6bDhTiKOCUb84By1iRAatqBJocjJHuD0y/0lBaokdiX33VqEGrvpPt80uBFQhw
	lzdZkfjsDl1RWo8p8G/rskPhVIw4nbImPh8j8Sr9rtv4KivFwFVGPuVOzgX+GGHF1S0B
	VRyNf9qG02XEnG/wPJSQTRhhi75LILPoDqGV6LSqWAAIyrdIGGVHqoxe0DRBDeyz/83P
	DiEw==
MIME-Version: 1.0
X-Received: by 10.224.42.196 with SMTP id t4mr76704606qae.48.1404987992940;
	Thu, 10 Jul 2014 03:26:32 -0700 (PDT)
Received: by 10.224.209.1 with HTTP; Thu, 10 Jul 2014 03:26:32 -0700 (PDT)
Date: Thu, 10 Jul 2014 11:26:32 +0100
Message-ID: <CAGeG0kYzvfTkHbGHKQoDnGNc=s_qzsS5H_C16+GHKuMMRNfh-g@mail.gmail.com>
From: Gnichi Mohamed <gnichimed@gmail.com>
To: yocto@yoctoproject.org
Subject: error while menuconfig
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
X-List-Received-Date: Thu, 10 Jul 2014 10:26:35 -0000
Content-Type: multipart/alternative; boundary=089e0158b67c3ba4f904fdd442b9

--089e0158b67c3ba4f904fdd442b9
Content-Type: text/plain; charset=UTF-8

Hello guys

I am new to this world and i am enjoying it for the past week.
I have the imx233 olinuxino maxi and decider to make a very tiny system for
it so i choose yocto. The other reason is that i am familiar with gentoo
and i thought maybe my experience with gentoo could help.
Well i am on my gentoo and i successfully built core-image-minimal with
some additional packages and i want to configure and recompile the kernel.
so i did
bitbake -c menuconfig linux-fslc
but some exception about python and other things that i couldn't follow.
Here is the exceptions http://pastebin.com/CBcLX1j1
I suspect that my terminal is not doing good as i see
File: '/usr/lib64/python2.7/subprocess.py', lineno: 1326, function:
_execute_child
     1322:                except OSError as e:
     1323:                    if e.errno != errno.ECHILD:
     1324:                        raise
     1325:                child_exception = pickle.loads(data)
 *** 1326:                raise child_exception
     1327:
     1328:
     1329:        def _handle_exitstatus(self, sts,
_WIFSIGNALED=os.WIFSIGNALED,
     1330:                _WTERMSIG=os.WTERMSIG, _WIFEXITED=os.WIFEXITED,
Exception: OSError: [Errno 13] Permission denied


Any kind of suggestions are appreciated
Cordially

--089e0158b67c3ba4f904fdd442b9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div id=3D":1dc" class=3D""><div id=3D":1db" class=3D"" st=
yle=3D"overflow:hidden"><div dir=3D"ltr"><div><div><div><div><div><div><div=
><div>Hello guys<br><br></div>I am new to this world and i am enjoying it f=
or the past week.<br>
</div>I
 have the imx233 olinuxino maxi and decider to make a very tiny system=20
for it so i choose yocto. The other reason is that i am familiar with=20
gentoo and i thought maybe my experience with gentoo could help.<br>
</div>Well i am on my gentoo and i successfully built core-image-minimal
 with some additional packages and i want to configure and recompile the
 kernel. so i did<br>bitbake -c menuconfig linux-fslc<br></div>but some exc=
eption about python and other things that i couldn&#39;t follow. Here is th=
e exceptions <a href=3D"http://pastebin.com/CBcLX1j1" target=3D"_blank">htt=
p://pastebin.com/CBcLX1j1</a><br>
</div><div>I suspect that my terminal is not doing good as i see<br></div><=
div>File: &#39;/usr/lib64/python2.7/subprocess.py&#39;, lineno: 1326, funct=
ion: _execute_child<br>=C2=A0=C2=A0=C2=A0=C2=A0 1322:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 excep=
t OSError as e:<br>
=C2=A0=C2=A0=C2=A0=C2=A0 1323:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if e.=
errno !=3D errno.ECHILD:<br>=C2=A0=C2=A0=C2=A0=C2=A0 1324:=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise<br>=C2=A0=C2=A0=C2=
=A0=C2=A0 1325:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 child_exception =3D pickle.loads(data)<br>=
=C2=A0*** 1326:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise child_exception<br>
=C2=A0=C2=A0=C2=A0=C2=A0 1327:<br>=C2=A0=C2=A0=C2=A0=C2=A0 1328:<br>=C2=A0=
=C2=A0=C2=A0=C2=A0 1329:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 def _han=
dle_exitstatus(self, sts, _WIFSIGNALED=3Dos.WIFSIGNALED,<br>=C2=A0=C2=A0=C2=
=A0=C2=A0 1330:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _WTERMSIG=3Dos.WTERMSIG, _WIFEXITED=3Dos.WIF=
EXITED,<br>Exception: OSError: [Errno 13] Permission denied<br>
<br><br></div></div></div>Any kind of suggestions are appreciated<br></div>=
Cordially</div></div></div><br>
	 =20

	  </div>

--089e0158b67c3ba4f904fdd442b9--
