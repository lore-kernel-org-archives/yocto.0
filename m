Return-Path: <steven.muellener@sius.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 505A6E00B9A; Thu, 10 Sep 2015 02:12:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-vk0-f51.google.com (mail-vk0-f51.google.com
	[209.85.213.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93298E00B67
	for <yocto@yoctoproject.org>; Thu, 10 Sep 2015 02:12:25 -0700 (PDT)
Received: by vkgd64 with SMTP id d64so5988283vkg.0
	for <yocto@yoctoproject.org>; Thu, 10 Sep 2015 02:12:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=V9P77DYq9vAH1J5YtZ8gLs89ERtTGNQI9HweGLcsaUM=;
	b=LC1wXXpOgGj+ftxmVUlq2JuCtN10TePSTEbnXfXjrVfvgb2DH265yz0rDWeflRwOk5
	Z7k0nIuwtJulR7UpVdA3FI7kE/symJhClhtiEhxSXlPAPvea9OZL/a5YOPNitQpQyNDm
	ZEzEPE/Wc3CsEcWU9OL+Vq/fp537I+cgcirfc4HpYDV3mEwuIeIPndxVShDJzIV8/KKz
	S+gyZSjk9U77qJrFTDhxbjcshkcRIRpngOq0Zn5/yySAwnvGsvfQQ0TvAYXBP6aWEOPh
	CMxr6i4pKTIwNPIcR2QafWMrpfoU8pg0Wkaa7jcuAB63Go47PtlNhzOmsSVwu2NQhqGl
	IcjQ==
X-Gm-Message-State: ALoCoQmAhwRbGmjcoHrcn5QBP4y4DQg+0tqFeRqrZQDipeeU8/AGB9AUKATNRodEqkQ9WPQy/J0u
MIME-Version: 1.0
X-Received: by 10.31.16.202 with SMTP id 71mr985597vkq.125.1441876345166; Thu,
	10 Sep 2015 02:12:25 -0700 (PDT)
Received: by 10.31.154.138 with HTTP; Thu, 10 Sep 2015 02:12:25 -0700 (PDT)
Date: Thu, 10 Sep 2015 11:12:25 +0200
Message-ID: <CAAstOJQ0jCTpJRCMHDfthGtouJ5KzViNDEzEgH0Ee9iYh0dVGw@mail.gmail.com>
From: =?UTF-8?Q?M=C3=BCllener=2C_Steven?= <steven.muellener@sius.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 18 Sep 2015 10:22:27 -0700
Subject: Eclipse Yocto Plugin: Preference Profile "Save As..."-Button not working
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
X-List-Received-Date: Thu, 10 Sep 2015 09:12:31 -0000
Content-Type: multipart/alternative; boundary=001a114364fc5d6246051f60ff0e

--001a114364fc5d6246051f60ff0e
Content-Type: text/plain; charset=UTF-8

I have the problem that my Eclipse Yocto Plugin Preferences can not be
saved and seem to be lost after closing the Preferences Window. It seems
like other people have the same problem as well

e.g. http://community.phytec.com/forum/topic/Yocto-Projects-in-Eclipse.htm

I tried many combinations of Eclipse versions (Kepler, Luna, Mars) with
their corresponding Yocto Plugin releases without any luck.

I also changed the permissions for the entire folder <Eclipse installation
folder> as well as the <Eclipse workspace folder> recursively to rwx for
everyone without any success. Also running Eclipse as root did not help.

What could be the problem here?

Thank you

--001a114364fc5d6246051f60ff0e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have the problem that my Eclipse Yocto Plugin Prefe=
rences can not be saved and seem to be lost after closing the Preferences W=
indow. It seems like other people have the same problem as well<br></div><d=
iv><br></div><div>e.g. <a href=3D"http://community.phytec.com/forum/topic/Y=
octo-Projects-in-Eclipse.htm">http://community.phytec.com/forum/topic/Yocto=
-Projects-in-Eclipse.htm</a></div><div><br></div><div>I tried many combinat=
ions of Eclipse versions (Kepler, Luna, Mars) with their corresponding Yoct=
o Plugin releases without any luck.</div><div><br></div><div>I also changed=
 the permissions for the entire folder &lt;Eclipse installation folder&gt; =
as well as the &lt;Eclipse workspace folder&gt; recursively to rwx for ever=
yone without any success. Also running Eclipse as root did not help.</div><=
div><br></div><div>What could be the problem here?=C2=A0</div><div><br></di=
v><div>Thank you</div><div><br></div><div><br></div><div><br></div></div>

--001a114364fc5d6246051f60ff0e--
