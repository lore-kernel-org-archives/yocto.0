Return-Path: <b.hutchman@gmail.com>
Received: from mail-oa0-f41.google.com (mail-oa0-f41.google.com
	[209.85.219.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23CF5E00852
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2014 11:35:07 -0800 (PST)
Received: by mail-oa0-f41.google.com with SMTP id j17so2665181oag.14
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2014 11:35:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=jadyxPWEyNEbxtIhsQPm+cSjq5+28PMfp94rFYRKBRA=;
	b=BGnRnvLbIYHjCttfeyKYThbYQLYGV9fs4/tbt3nJaSgDtMGfI9FCHxaWkz/Kr1Q7HY
	qEEU8pHuhzaaz3wqXPUUtObuDoA2IfuW6QHHzSbPwRL65p0BlF1uB5aBStJhTUoZtxwm
	m/ZJ+r7N77r8HBTdZmjwhCNBnnNWkUr5xZVLZ871ZZxiIXX6xEy8y0cRSFc+IMK6+cXm
	rY2BYHw7E9NS4JVI6Xi032MWoKKOjfb5aC45VsND6+4gYsa4D5W+4ZwqOot4IEYayjTk
	Jes6/G0NdF71ENnYtWx3/BdL2TLm5XiZRgz/YuwzfYHFuoDiujfC+2npJac026rXVXeg
	o0Hw==
MIME-Version: 1.0
X-Received: by 10.182.40.201 with SMTP id z9mr8048315obk.45.1390505706947;
	Thu, 23 Jan 2014 11:35:06 -0800 (PST)
Received: by 10.60.94.114 with HTTP; Thu, 23 Jan 2014 11:35:06 -0800 (PST)
Date: Thu, 23 Jan 2014 14:35:06 -0500
Message-ID: <CAFZh4h-zi=pDLr5JYgFeEfU72+qMRz2FJZ8iDt-Q3f=P+wVgKA@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to get a list of packages (with versions) used to create an image?
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
X-List-Received-Date: Thu, 23 Jan 2014 19:35:14 -0000
Content-Type: multipart/alternative; boundary=001a11c33b02b88ba604f0a8565a

--001a11c33b02b88ba604f0a8565a
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I've seen the bitbake -g command that lists the packages in an image:

bitbake -g <*image>* && cat pn-depends.dot | grep -v -e '-native' | grep -v
digraph | grep -v -e '-image' | awk '{print $1}' | sort | uniq

... but for documentation I need to generate this list with package version
information as well.

I've been just running opkg list-installed on the target but I'd like to
know how to do this kind of thing without the target and I'm striking out
in all the searches I've been doing.

Regards,

Brian

--001a11c33b02b88ba604f0a8565a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br><br></div>I&#39;ve seen the bitbake -g co=
mmand that lists the packages in an image:<br><br>bitbake -g &lt;<em>image&=
gt;</em> &amp;&amp; cat pn-depends.dot | grep -v -e &#39;-native&#39; | gre=
p -v digraph | grep -v -e &#39;-image&#39; | awk &#39;{print $1}&#39; | sor=
t | uniq<br>
<br>... but for documentation I need to generate this list with package ver=
sion information as well.<br><br></div>I&#39;ve been just running opkg list=
-installed on the target but I&#39;d like to know how to do this kind of th=
ing without the target and I&#39;m striking out in all the searches I&#39;v=
e been doing.<br>
<br>Regards,<br><br>Brian<br><br></div>

--001a11c33b02b88ba604f0a8565a--
