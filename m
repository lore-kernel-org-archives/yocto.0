Return-Path: <mulhern@gmail.com>
Received: from mail-oa0-f46.google.com (mail-oa0-f46.google.com
	[209.85.219.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80623E013A2
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 08:30:42 -0700 (PDT)
Received: by mail-oa0-f46.google.com with SMTP id h1so1320845oag.19
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 08:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=LWRgGOsZjPqrYisY5BcT4Fg2wsX+OJMUICC6dd3PxNs=;
	b=IUmNBsRVrC8vpE+NqJt3J4iTWaHzWzPiwRTwcc6N8HzZ0ndwj3mbm2Vs6VRlxcrZ/u
	GDZgKqjxUkJTZLx42Kq6pXpMqdB3WDU4QVqR8UTv4B6D6p1LL1sCE2xhbtvAPJidZ/CD
	7enI5Qu9Khvj99lFoNrTaCOBmQ/7aTYe/OK1ap/NiQx1jAh7M8rLWd5SlDv2VEn4nuru
	rVmnMOH0q/bORj9TiX6itj/Jwc2tK+FAk2Z4H9FBqL+NUt4oTovP+xGvr7huPEgNlWSm
	/ziAlmSL1JdFab88vuKN1TopSkIWdav6lH7GVK8YfxuH60nunUbWm3tNd801/YdEPk/l
	q/UQ==
MIME-Version: 1.0
X-Received: by 10.182.215.133 with SMTP id oi5mr31120166obc.83.1374679841903; 
	Wed, 24 Jul 2013 08:30:41 -0700 (PDT)
Received: by 10.76.154.97 with HTTP; Wed, 24 Jul 2013 08:30:41 -0700 (PDT)
Date: Wed, 24 Jul 2013 11:30:41 -0400
Message-ID: <CADM5y7v6DT9Ls=UZNRc_uYPdrgh2AtrY_HMRPbEss=CYxOWxoQ@mail.gmail.com>
From: mulhern <mulhern@gmail.com>
To: yocto@yoctoproject.org
Subject: Discovering available Perl modules OR writing recipes for your own
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
X-List-Received-Date: Wed, 24 Jul 2013 15:30:43 -0000
Content-Type: multipart/alternative; boundary=001a11c25434a8177504e24397f7

--001a11c25434a8177504e24397f7
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I'm working on a recipe for pullledpork, which is a Perl app which grabs
and combines Snort rules from various sites.

My questions all revolve around pulledpork's various module dependencies.

pulledpork tries to use the module Crypt::SSLeay and in my current
configuration it can't find it. It is very easy to write a little recipes
that provides this module and forge ahead.

But I'm not sure that that is the correct thing to do...especially as it
looks like I'll have to do the same thing for another ten or so tiny
modules if I take that approach.

First, is there some way that I can find out whether that or any particular
Perl module is provided by some recipe somewhere? My plan would be to
RDEPEND on every available Perl module, forcing them all to be installed in
the right place, run the pulledpork script, do the right think to provide
any modules still missing until the script can actually complete, and then
remove from RDEPENDS all previously included modules that don't show up a
values in %INC. So far, so good, but I don't know how to even locate all
the Perl modules that are already available.

Second, if the modules really are not available is there a better way to
package them up than writing individual recipes for each and every missing
module?

Third, are there naming conventions that should be followed? For example
there is a recipe for liburi-perl that provides the very simply named Perl
module URI.

Thanks!

- mulhern

--001a11c25434a8177504e24397f7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;m working on a recipe for=
 pullledpork, which is a Perl app which grabs and combines Snort rules from=
 various sites.</div><div><br></div><div>My questions all revolve around pu=
lledpork&#39;s various module dependencies.</div>
<div><br></div><div>pulledpork tries to use the module Crypt::SSLeay and in=
 my current configuration it can&#39;t find it. It is very easy to write a =
little recipes that provides this module and forge ahead.</div><div><br>
</div><div>But I&#39;m not sure that that is the correct thing to do...espe=
cially as it looks like I&#39;ll have to do the same thing for another ten =
or so tiny modules if I take that approach.</div><div><br></div><div>First,=
 is there some way that I can find out whether that or any particular Perl =
module is provided by some recipe somewhere? My plan would be to RDEPEND on=
 every available Perl module, forcing them all to be installed in the right=
 place, run the pulledpork script, do the right think to provide any module=
s still missing until the script can actually complete, and then remove fro=
m RDEPENDS all previously included modules that don&#39;t show up a values =
in %INC. So far, so good, but I don&#39;t know how to even locate all the P=
erl modules that are already available.</div>
<div><br></div><div>Second, if the modules really are not available is ther=
e a better way to package them up than writing individual recipes for each =
and every missing module?</div><div><br></div><div>Third, are there naming =
conventions that should be followed? For example there is a recipe for libu=
ri-perl that provides the very simply named Perl module URI.</div>
<div><br></div><div>Thanks!</div><div><br></div><div>- mulhern</div><div><b=
r></div><div><br></div></div>

--001a11c25434a8177504e24397f7--
