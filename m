Return-Path: <ryanelkholy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89B4DE00F25; Fri, 22 Apr 2016 18:07:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ryanelkholy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D654E00D1C
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 18:07:47 -0700 (PDT)
Received: by mail-ig0-f171.google.com with SMTP id f1so31297401igr.1
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 18:07:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc;
	bh=6VnzMzpSQFfArYAPCtWgEGhZ+5p6aV326pn1gNSmbpU=;
	b=GsS/KsPJUFGro6rxUgJ/zp224C0vXEQvqPt4Q/PskOnDi0X7u0127F9RG+uSGIfGTc
	QPydmDK685ZarrALNzI/P0x8f5NgsCt5OXztCG+tpIfPTxvgRJQ9kAMazrzLvNX+A3zr
	f+RxLg3advNa4MoIjClsmyghos/5CzD81KwiFBLtoglmAKFbo5Kuv/jx4YXK59an79ig
	0nARIW5aroacqyMx3/rmO0JSFW3Hs1mUJf80NrKaGHT7/99/JdunZg3I9xTls4XVIEK3
	E7+LVq9dwBkOVQ5ZO4YncC11KwuhTno9356nEefJ8hWA+p2voHOzcbHOKKW/fDt4i8Mg
	M8sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc;
	bh=6VnzMzpSQFfArYAPCtWgEGhZ+5p6aV326pn1gNSmbpU=;
	b=GI1iHY4osxK8Eh+k1c5xmjrRCqWKtdLJ3+/7HFaGlJ/Sz/HQeG6WDVEkr9Xn3vKGGq
	3iF7WfWhty6HCu7lgFyXVpuJL389zf2uR7DSE4pwVauq2YXkUDVMREoVzhdxKeH0eink
	iYzwl3yNonlLXRVW3NsBxvNce6bYByp/Q8twXks8HAnXR47x2qzhAQ2s1Rdwubc9MfiI
	lQY7wOqhUze+5iB/WFuAPKT9LknAv+NuatAdmuagD2qqTWSqRtsLf4ntyAs3+O96Hq8f
	X80Q9MUzocGHDc++Z34WxIGrrXlxv8v6IiAY8VoWmjt5AyZmERNw8thvnrAsVKDmfDPA
	gIUA==
X-Gm-Message-State: AOPr4FXeI2UWgTyz4bN9l3DSSCNtFxb5mHQ80SEVT7eJtleZ+6YgjWtuo07WtfyFb9DG+EDZQUTMvD4bwQLMgw==
MIME-Version: 1.0
X-Received: by 10.50.29.51 with SMTP id g19mr210385igh.42.1461373666994; Fri,
	22 Apr 2016 18:07:46 -0700 (PDT)
Received: by 10.64.78.105 with HTTP; Fri, 22 Apr 2016 18:07:46 -0700 (PDT)
Date: Fri, 22 Apr 2016 21:07:46 -0400
Message-ID: <CAMZfsd6f7-s4pVyiNPs2sVmi+EC6yMyjCJeYTPobm0f6ffE2_w@mail.gmail.com>
From: "Ryan Elkholy, PhD, PE" <ryanelkholy@gmail.com>
To: openembedded-devel@lists.openembedded.org
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: [meta-qt5] EGL Error : Could not create the egl surface: error = 0x300b
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
X-List-Received-Date: Sat, 23 Apr 2016 01:07:49 -0000
Content-Type: multipart/alternative; boundary=e89a8f8399b74e33cb05311c9201

--e89a8f8399b74e33cb05311c9201
Content-Type: text/plain; charset=UTF-8

Hello,

I am am trying to make a build that includes meta-qt5 without x11 or
wayland on the Minnowboard Turbot (x86-64). I was successful in building my
image but the problem occurred when testing my basic qt app on the image.
When trying to run the app I get the following error:

EGL Error : Could not create the egl surface: error = 0x300

I have been trying to find a solution for this for weeks with no luck. I am
able tu run my application when including x11, but I am trying to avoid it.
Does anyone know any solution for this? Any insight will be helpful because
I have been stumped for weeks. If nobody knows of a solution is it possible
to dig deeper into this error and see what is causing it? If so, how?

Thanks

--e89a8f8399b74e33cb05311c9201
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello,<br><br></div>I am am trying to make =
a build that includes meta-qt5 without x11 or wayland on the Minnowboard Tu=
rbot (x86-64). I was successful in building my image but the problem occurr=
ed when testing my basic qt app on the image. When trying to run the app I =
get the following error:<br><br>EGL Error : Could not create the egl surfac=
e: error =3D 0x300<br><br></div>I have been trying to find a solution for t=
his for weeks with no luck. I am able tu run my application when including =
x11, but I am trying to avoid it. Does anyone know any solution for this? A=
ny insight will be helpful because I have been stumped for weeks. If nobody=
 knows of a solution is it possible to dig deeper into this error and see w=
hat is causing it? If so, how?<br><br></div>Thanks<br></div>

--e89a8f8399b74e33cb05311c9201--
