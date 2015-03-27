Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CABAE00922; Fri, 27 Mar 2015 12:28:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC2D1E00906
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 12:28:01 -0700 (PDT)
Received: by qgh3 with SMTP id 3so126968328qgh.2
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 12:28:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=8oIKbJPtMZJyS2+ElL9JywOlaWG/t8wHQk/xLmzp3/w=;
	b=dHJqW9U8K6jblkb4D+U7TAtVnfh71Q1Cg8O5D8OSbqtSZ6h3QfQVfSqQ18THzOec9v
	iKbNn3S/sVuL9P6Vc1O1C+ats5ZvlP+NOUwsd0l6+izwa1dA0EW6JAZI6FIekvLkAeYp
	JPSxHFfF1UCCzqWkJKazttAy7vwrJv2HyBupWzDhMwSoCS35GnBNJixyKBULb4Zvo3/c
	JojOO6TNmG9gnmFIP1yBP3eEwxfK+O0mGTe3xCzYUdxuROPS6Ck3garIKgMna23hkdH4
	iLXorMV1LMwjroKWNjiAGfxq9tob0JxZdfI5yx6DRGKpx9QBzyjOFWjMEaxUAJKfWnPH
	RTLA==
X-Gm-Message-State: ALoCoQkFdUA0NDENJ3fzO6QuVUkz5NnqoycQfh+QJr+TwWMLxelm95qdsxNAwJqo6VxioG4TV1tM
X-Received: by 10.55.21.152 with SMTP id 24mr43400021qkv.40.1427484481195;
	Fri, 27 Mar 2015 12:28:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Fri, 27 Mar 2015 12:27:41 -0700 (PDT)
In-Reply-To: <5515A7D8.1000900@mlbassoc.com>
References: <5515A7D8.1000900@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 27 Mar 2015 19:27:41 +0000
Message-ID: <CAJTo0LYp=xyfOPUbVM_F7JYxYGgfX+hu=BkVE5PH0LSv20POgQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Dependencies gone wild
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
X-List-Received-Date: Fri, 27 Mar 2015 19:28:05 -0000
Content-Type: multipart/alternative; boundary=001a1147a9b86ca86c05124a21de

--001a1147a9b86ca86c05124a21de
Content-Type: text/plain; charset=UTF-8

On 27 March 2015 at 18:56, Gary Thomas <gary@mlbassoc.com> wrote:

> What are these all about and why do I have them if I'm not
> running systemd?
>

Bitbake wasn't tracking those variables correctly, and now it is.  You
could argue that PACKAGEVARS should be extended in the class that sets the
variable, and patches welcome for that if it would work I guess.

Ross

--001a1147a9b86ca86c05124a21de
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 27 March 2015 at 18:56, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div id=3D":1yg" class=3D"a3s" styl=
e=3D"overflow:hidden">What are these all about and why do I have them if I&=
#39;m not<br>
running systemd?</div></blockquote><div><br></div><div>Bitbake wasn&#39;t t=
racking those variables correctly, and now it is.=C2=A0 You could argue tha=
t PACKAGEVARS should be extended in the class that sets the variable, and p=
atches welcome for that if it would work I guess.</div><div><br></div><div>=
Ross=C2=A0</div></div></div></div>

--001a1147a9b86ca86c05124a21de--
