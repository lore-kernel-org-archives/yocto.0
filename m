Return-Path: <ccoutand@widenorth.no>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11B7FE0098A; Mon, 20 Apr 2015 04:15:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-la0-f44.google.com (mail-la0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AEA3E00830
	for <yocto@yoctoproject.org>; Mon, 20 Apr 2015 04:15:08 -0700 (PDT)
Received: by laat2 with SMTP id t2so124006715laa.1
	for <yocto@yoctoproject.org>; Mon, 20 Apr 2015 04:15:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=h4zf5k69KOupfRqUyONr0kfByLel8T1lpez2JdsoQEw=;
	b=PZqjeZOj6MCXzVx+5JwTyPdhLkvWQ0kvvJeBvjcnIHGMqmIELepHOu/bzIL8KL7Gvb
	BMrP48VxVPCvmYbF+lwbUNwTPZ82tI/vIhN2+ifyOOjukZzS6GK9JzQ4TI6ri3TefKm4
	2z3ts18ic6sBqxnDKPB60KHAOtPbF8C0Yb/+GFDbZQ9MxPzG5yNfBxN/pIVku6Yq4i5t
	kFdMBsShw5KvrPJepJha/cf1mmQXtHoRiVYweUjeT8qLmQzqOPpr8DqNiN6NEWsZSSSw
	7dcmLLVcWNBDwD8j4UjsvrzVVVbWmJoLbNyq68xikXRPgOMIL3NF60kzKsmxhoUWKrxO
	bkCA==
X-Gm-Message-State: ALoCoQkZyzK+um/QG89s5pJhhXz6L+upQvMUptyIxzEebjQ/9wkCe34ayuUNaBXae47PLQSrqWf9
MIME-Version: 1.0
X-Received: by 10.152.45.97 with SMTP id l1mr15426337lam.55.1429528506651;
	Mon, 20 Apr 2015 04:15:06 -0700 (PDT)
Received: by 10.25.205.72 with HTTP; Mon, 20 Apr 2015 04:15:06 -0700 (PDT)
Date: Mon, 20 Apr 2015 13:15:06 +0200
Message-ID: <CAPTXVA0nh8rpnsbrHnWTqmOtvesE=VyczD6PjDMqHbuv+DBdkQ@mail.gmail.com>
From: Christophe Coutand <ccoutand@widenorth.no>
To: yocto@yoctoproject.org
Subject: How to add openmp to the target image
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
X-List-Received-Date: Mon, 20 Apr 2015 11:15:14 -0000
Content-Type: multipart/alternative; boundary=001a11c1b02ad5e9d20514260a1a

--001a11c1b02ad5e9d20514260a1a
Content-Type: text/plain; charset=UTF-8

Hi,

Is there a way to include the openmp library on the target image? when
building the full target image for a freescale processor, I get gcc etc...
installed on the target filesystem but not libgomp. It is however correctly
deployed when installing the SDK on the host machine.

Thanks for any input.

-- 

Regards
Christophe
 <http://www.widenorth.no/>

--001a11c1b02ad5e9d20514260a1a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br><br></div>Is there a way to include the openmp=
 library on the target image? when building the full target image for a fre=
escale processor, I get gcc etc... installed on the target filesystem but n=
ot libgomp. It is however correctly deployed when installing the SDK on the=
 host machine.<span style=3D"font-size:9pt;font-family:&quot;MS Shell Dlg 2=
&quot;,&quot;sans-serif&quot;;color:black"></span><div><div><div><br></div>=
<div>Thanks for any input.<br clear=3D"all"></div><div><div><br>-- <br><div=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div=
><div><div><div><br></div><font face=3D"verdana,sans-serif">Regards<br></fo=
nt></div><font face=3D"verdana,sans-serif">Christophe<br></font></div><a hr=
ef=3D"http://www.widenorth.no/" style=3D"font-size:12.8px" target=3D"_blank=
"><span style=3D"color:blue" lang=3D"NO-BOK"><b><font face=3D"verdana, sans=
-serif"></font></b></span></a></div></div></div></div></div></div>
</div></div></div></div></div>

--001a11c1b02ad5e9d20514260a1a--
