Return-Path: <yoctomailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FCBFE009FD; Thu,  6 Aug 2015 13:32:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yoctomailinglist[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA6D6E00767
	for <yocto@yoctoproject.org>; Thu,  6 Aug 2015 13:32:40 -0700 (PDT)
Received: by qkbm65 with SMTP id m65so30633234qkb.2
	for <yocto@yoctoproject.org>; Thu, 06 Aug 2015 13:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=kM9mGXMfbxDYeO1AgG1z9KISwy5oh+Mtyo962EpCLGA=;
	b=uBem6zFKNbLLvxDPRE9yqHW3xT0ukarhimfrd8vvE32ItAGUktnruo1tyiH1upGjjz
	J9ik/NMXLwiwhPRHsAVpYs3XnA4OhOssgBJAjhAusa1jO9XnGCJ9z19EJNjrT2VG+UZL
	KZnAf7mr5yhlVb1aWD5ZGFsn+hNeY1vllvWe/T72w6kwkzF2f4mlbwvlroNsgvNrnEph
	AEJtbpjj+iWDIgvI6OEYfnSsv5GH5E7R04VhV58XPzEtKx+BCzpaTd2Z8HToMgEVuAOd
	oxXEy+pGnADfrQazwVRpdWovwXTk3JnwCAPdMZ7PIhFlAobtjrhUqFaNcEgNDnSj7ecD
	/BMw==
MIME-Version: 1.0
X-Received: by 10.55.26.36 with SMTP id a36mr6458807qka.45.1438893160402; Thu,
	06 Aug 2015 13:32:40 -0700 (PDT)
Received: by 10.140.39.148 with HTTP; Thu, 6 Aug 2015 13:32:40 -0700 (PDT)
Date: Thu, 6 Aug 2015 22:32:40 +0200
Message-ID: <CACTu1Lgz=8KYMHYoxxuYtemkCLGtFNQBGC5JVk8cm2WseJBh-w@mail.gmail.com>
From: yocto yocto <yoctomailinglist@gmail.com>
To: yocto@yoctoproject.org
Subject: do_install_append_class-target(): Files are not being installed on the system
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
X-List-Received-Date: Thu, 06 Aug 2015 20:32:43 -0000
Content-Type: multipart/alternative; boundary=001a114729a0b21716051caa6b93

--001a114729a0b21716051caa6b93
Content-Type: text/plain; charset=UTF-8

Good day,

I am writing a recipe using "inherit autotools". I am using
"do_install_append_class-target()" to install all files on the system. The
folder

build/tmp/work/core2-32-poky-linux/my-recipe/x.y.z-r0/image

contains all files respectively the desired folder structure. However,
after flashing my image all folders and files are not there. What might be
the problem?

--001a114729a0b21716051caa6b93
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Good day,<br><br></div>I am writing a recip=
e using &quot;inherit autotools&quot;. I am using &quot;do_install_append_c=
lass-target()&quot; to install all files on the system. The folder<br><br><=
/div>build/tmp/work/core2-32-poky-linux/my-recipe/x.y.z-r0/image<br><br></d=
iv>contains all files respectively the desired folder structure. However, a=
fter flashing my image all folders and files are not there. What might be t=
he problem?<br><br><br><div><br></div></div>

--001a114729a0b21716051caa6b93--
