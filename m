Return-Path: <ian_welch@trimble.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E98EE009A0; Fri,  2 Jun 2017 13:58:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.49 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7AB2E0082A
	for <yocto@yoctoproject.org>; Fri,  2 Jun 2017 13:58:05 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id s3so15447138oia.0
	for <yocto@yoctoproject.org>; Fri, 02 Jun 2017 13:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=trimble-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=EYM98+/WbqOw7Yl8b/z1tlTSErWAM8PtMpBJMkBxKkU=;
	b=QJdH76FVL8zes+e0WI1QiOXJNWUyuX49c+xw0WwQKmP/02NxvGTsXiJp2z2n2wz51W
	+DbVHG6Mh9P+nzkP7PGT1y8JpXTfjtF/n8Y4x6Ij27Rh6JxC7rjHbL/T9bdvGo3ZKHyh
	bEdyJWbcAlcAHwonCPtH42hlczr/WJSrcRF6jtfqkske9KM8iBIHKsjTUqKTCZsvnhL/
	FvgXCp9x5O8vI52VI6soMCrDjwEA/toeE9uoH8kpYfXFb+kee5ycRN9Q3OUs4p8TudB6
	iIwJf94wJQYbjnjH9L2N3nf9wYiHcIIYtbc1WO7nQ6YL6jgT2H3hDCv/J2kpLzYqF1dP
	TPdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=EYM98+/WbqOw7Yl8b/z1tlTSErWAM8PtMpBJMkBxKkU=;
	b=MyPZelq/Jkx1G6AZgt/0AZ9NHfoSw1nlZgv1uS/cIGF5E7oRPnWzofvF+ZZPyd2jbL
	7jQXVi/SmkZyUV2egnRpNNUDtcXo6DDOHDDTYIQpatDgwacsvHe7/qQCxC18QiMO6hbb
	b0kxpFY6D3l12pgHimWnTe1p+oecI9VlcjMmX04YiHtxaD26iRRWxXUd+zliScSQP7n4
	cgjVDwShlFXJnQJIg6Vc8p7fdHizTyVLLqYQMyYkg0QCtmskheUP9sbWciN0qAI++kN3
	O/tT9OrrhqTtvQYB/lSjRc3i/cfxjbqyUeZcVHaxehjmL+v2wtQYcnzHrGz9r8GHsXIq
	/2xw==
X-Gm-Message-State: AKS2vOxC4y/uD83PknToHZVikm+oIqn7KSnpMKPiOsmgize4l6AQiYVT
	+xDUXvHHYT+hUiLvmMPIzJPEeHqsZ0M3z2p2xg==
X-Received: by 10.157.17.39 with SMTP id g36mr5571461ote.75.1496437084602;
	Fri, 02 Jun 2017 13:58:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.91.84 with HTTP; Fri, 2 Jun 2017 13:57:44 -0700 (PDT)
From: Ian Welch <ian_welch@trimble.com>
Date: Fri, 2 Jun 2017 14:57:44 -0600
Message-ID: <CACgq_DpBjavUgXrG9XazuGT8a7td2EyaosQCaqjcwXxkdh5pLw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: File permissions on package_ipk.bbclass
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
X-List-Received-Date: Fri, 02 Jun 2017 20:58:09 -0000
Content-Type: multipart/alternative; boundary="001a114642e0db89d305510068fe"

--001a114642e0db89d305510068fe
Content-Type: text/plain; charset="UTF-8"

Hello,
     We are using the *package_ipk.bbclass *to create packages for opkg
that will be installed on our embedded hardware (target). We are also using
Jenkins as a CI server to run bitbake. We have discovered that when we
install packages built on Jenkins we get all kinds of file permissions
errors after installing the ipks on our target system. I have tracked the
issue down to bitbake being run by a user called "jenkins" on our Jenkins
system. The permissions of the files are all "jenkins:jenkins" prior to the
do_package task running which results in these permissions getting packaged
into the .ipk files.

Is there a way to change the ownership of the files prior to being
packaged? I'm thinking of something like a package_ipk.bbappend file or
environment variable?

Cheers,

-- 

Ian Welch
Trimble Navigation
10368 Westmoor Drive | Westminster, CO 80021

--001a114642e0db89d305510068fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div>=C2=A0 =C2=A0 =C2=A0We are using the=C2=A0<stro=
ng class=3D"gmail-file-title-name" style=3D"box-sizing:border-box;color:rgb=
a(0,0,0,0.85);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&q=
uot;,Roboto,Oxygen-Sans,Ubuntu,Cantarell,&quot;Helvetica Neue&quot;,sans-se=
rif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI=
 Symbol&quot;;font-size:14px;white-space:nowrap;background-color:rgb(250,25=
0,250)">package_ipk.bbclass=C2=A0</strong>to create packages for opkg that =
will be installed on our embedded hardware (target). We are also using Jenk=
ins as a CI server to run bitbake. We have discovered that when we install =
packages built on Jenkins we get all kinds of file permissions errors after=
 installing the ipks on our target system. I have tracked the issue down to=
 bitbake being run by a user called &quot;jenkins&quot; on our Jenkins syst=
em. The permissions of the files are all &quot;jenkins:jenkins&quot; prior =
to the do_package task running which results in these permissions getting p=
ackaged into the .ipk files.</div><div><br></div><div>Is there a way to cha=
nge the ownership of the files prior to being packaged? I&#39;m thinking of=
 something like a package_ipk.bbappend file or environment variable?</div><=
div><br></div><div>Cheers,</div><div><div><br></div>-- <br><div class=3D"gm=
ail_signature"><div dir=3D"ltr"><br><span style=3D"font-family:sans-serif;f=
ont-size:13px;line-height:18.5714px;font-weight:bold;color:rgb(54,53,69)">I=
an Welch<br></span><span style=3D"font-family:sans-serif;font-size:13px;lin=
e-height:18.5714px;color:rgb(54,53,69)">Trimble Navigation<br>10368 Westmoo=
r Drive=C2=A0|=C2=A0</span><span style=3D"font-family:sans-serif;font-size:=
13px;line-height:18.5714px;color:rgb(54,53,69)">Westminster, CO 80021<br></=
span><br></div></div>
</div></div>

--001a114642e0db89d305510068fe--
