Return-Path: <amittomer25@gmail.com>
Received: from mail-wg0-f43.google.com (mail-wg0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1962DE015DF;
	Wed, 25 Sep 2013 03:36:43 -0700 (PDT)
Received: by mail-wg0-f43.google.com with SMTP id z12so5987467wgg.22
	for <multiple recipients>; Wed, 25 Sep 2013 03:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=VtyLVoRnYSF9RXypEIZekzBgT02b5zNSWpIFuZIjJLg=;
	b=JRF7ZqmqUV5nhlyzfy6WADlaayQ+wqI0aDiMwtM8//TmSRtvJIgAIDZCwYmNIHXSvD
	99xbr1WFOlz0tNpFQQx8co8Y7BMpp0H6LTomF9uRVB8xU4ePj2lsQAA4VWTVZCcFmzdL
	cVjGo515mSIMjLcRjKLAYn46Ii6htJ66VdQcR7UR4v8pFglfZTo9bYQ5t6elkH3ocno7
	Sb2tyF6tfiIChq6CV4chMEUxoBSqyeW4BbbZmLsEHIyPcmWhatMKspIxyuy1n6YA4g5+
	i8zYup8xpKb3qPwJXY14KqQXIw4PFyOcN4E8ia/eQT15oI3/dD7L3iCc5/Mw7goBz6+k
	Tgfg==
MIME-Version: 1.0
X-Received: by 10.194.71.72 with SMTP id s8mr1012272wju.52.1380105402097; Wed,
	25 Sep 2013 03:36:42 -0700 (PDT)
Received: by 10.227.196.7 with HTTP; Wed, 25 Sep 2013 03:36:42 -0700 (PDT)
Date: Wed, 25 Sep 2013 16:06:42 +0530
Message-ID: <CABHD4K_EEiR4UPOcJM=vXWud+uk44=hZW38-D-RL+T6auiBJDg@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: yocto-request@yoctoproject.org, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How env.sh sets up the build environment path
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
X-List-Received-Date: Wed, 25 Sep 2013 10:36:44 -0000
Content-Type: multipart/alternative; boundary=047d7bd91a043ea88f04e732d433

--047d7bd91a043ea88f04e732d433
Content-Type: text/plain; charset=ISO-8859-1

I am new to Open Embedded and have a requirement where have to set new
build path
while running env.sh script

Now when I do ./env.sh build-xyz-abd

I do get the Directory with name "build-xyz-abd"

which will having local.conf at path build-xyz-abd/conf/local.conf

Now, how do I change build-xyz-abd to build-abd.

What I tried is ,run "./env.sh build-abd"

After that I got the build-abd folder having defualt local.conf file.

But "bitbake image-name"is faling now.

I tried copying "build-xyz-abd/conf/local.conf" to build-abd/conf/local.conf

Do I need to copy the old bblayer file as well??

But still facing the same issue.

Could anybody tell me how can I achieve this??

I

--047d7bd91a043ea88f04e732d433
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am new to Open Embedded and have a requirement where hav=
e to set new build path<div style>while running env.sh script</div><div sty=
le><br></div><div style>Now when I do ./env.sh build-xyz-abd</div><div styl=
e>
<br></div><div style>I do get the Directory with name &quot;build-xyz-abd&q=
uot;</div><div style><br></div><div style>which will having local.conf at p=
ath build-xyz-abd/conf/local.conf</div><div style><br></div><div style>
Now, how do I change=A0build-xyz-abd to=A0build-abd.</div><div style><br></=
div><div style>What I tried is ,run &quot;./env.sh build-abd&quot;</div><di=
v style><br></div><div style>After that I got the build-abd folder having d=
efualt local.conf file.</div>
<div style><br></div><div style>But &quot;bitbake image-name&quot;is faling=
 now.</div><div style><br></div><div style>I tried copying &quot;build-xyz-=
abd/conf/local.conf&quot; to=A0build-abd/conf/local.conf</div><div style>
<br></div><div style>Do I need to copy the old bblayer file as well??</div>=
<div style><br></div><div style>But still facing the same issue.</div><div =
style><br></div><div style>Could anybody tell me how can I achieve this??</=
div>
<div style><br></div><div style>I=A0</div></div>

--047d7bd91a043ea88f04e732d433--
