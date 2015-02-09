Return-Path: <gmshastri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AE1AE008CD; Sun,  8 Feb 2015 21:46:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gmshastri[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30CC0E008CD
	for <yocto@yoctoproject.org>; Sun,  8 Feb 2015 21:46:36 -0800 (PST)
Received: by mail-ob0-f177.google.com with SMTP id wp18so22650963obc.8
	for <yocto@yoctoproject.org>; Sun, 08 Feb 2015 21:46:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=cy8bpUJK3WNvUt1Jc93j88//CI22ZHkf8f5kVfz/udw=;
	b=kVyIGpTfTHJJj7+2CWZ3ONwzad0UoQz/OKu6eZBA5+lInXP0GrBkFQEV61mymldh8W
	DBjwjbVqijZSFdM8QtK678cnS9no87YfPKc8Gb+sI/V0YV0pwNqzRXYeumzXOCGYzvSc
	XAlRjQDcR4rd4PuTBQbTr4WD3+d1gd8xSLwwz8QwrCeQhRq604wAPiCf2QLkE46nQsY0
	AkXl65mZz+elYrU89n+L6izIztWZ+b8CVugl4RX0+s+5PvqUGztNKyifcWpMkQgRZikP
	BkWbsSrSvo49nFjecp761vpdLbXl/vvagAPVEaef+3k8MINGFhG1ANQb4fmG/JGF7zIR
	1J+Q==
MIME-Version: 1.0
X-Received: by 10.60.50.234 with SMTP id f10mr10424272oeo.23.1423460796276;
	Sun, 08 Feb 2015 21:46:36 -0800 (PST)
Received: by 10.202.104.144 with HTTP; Sun, 8 Feb 2015 21:46:36 -0800 (PST)
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3A34824C@AZ-FFEXMB01.global.avaya.com>
References: <F38A866CD026F746A3BF0928A84397BE3A34824C@AZ-FFEXMB01.global.avaya.com>
Date: Mon, 9 Feb 2015 11:16:36 +0530
Message-ID: <CAE_REAtCsPyDziDFFto0U4cxzfpF6zmJra1OUZe03bwE+jLZnQ@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Custom recipe to have pre and post install action
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
X-List-Received-Date: Mon, 09 Feb 2015 05:46:38 -0000
Content-Type: multipart/alternative; boundary=001a11c303da1d25b8050ea14b53

--001a11c303da1d25b8050ea14b53
Content-Type: text/plain; charset=UTF-8

As I already mention in other thread,

You can refer any of the existing recipe. For eg,
http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-connectivity/dhcp/dhcp.inc

You can see how post scripts are used.

//Gaurang Shastri

On Sun, Feb 8, 2015 at 11:41 PM, Bipnesh, Abhinav (Abhinav) <
abhinavbipnesh@avaya.com> wrote:

> Hi All,
>
> I am trying to write an recipe which need to have pre and post install
> action. The one define in RPM using %pre and %post.
>
> Basically the application run as service on the platform. So we need to
> make sure that if its an upgrade then we need to stop the service.
> If its a fresh install or an upgrade so post install we need to start the
> service.
> As we have script which can be placed in /etc/init.d and then we can have
> it running using the pre and post install action. But I am not able to find
> how to do it.
>
> I do get the reference about INITSCRIPT_PACKAGES and INITSCRIPT_PARAMS but
> it seems they can be used for make it process running at the system coming
> up and going down.
>
> Any thoughts how to achieve the same.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c303da1d25b8050ea14b53
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>As I already mention in other thread,<br><br>You can =
refer any of the existing recipe. For eg,<br><a href=3D"http://cgit.openemb=
edded.org/openembedded-core/tree/meta/recipes-connectivity/dhcp/dhcp.inc" t=
arget=3D"_blank">http://cgit.openembedded.org/openembedded-core/tree/meta/r=
ecipes-connectivity/dhcp/dhcp.inc</a><br><br>You can see how post scripts a=
re used.<br><br></div>//Gaurang Shastri<br></div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">On Sun, Feb 8, 2015 at 11:41 PM, Bipnesh, A=
bhinav (Abhinav) <span dir=3D"ltr">&lt;<a href=3D"mailto:abhinavbipnesh@ava=
ya.com" target=3D"_blank">abhinavbipnesh@avaya.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">Hi All,<br>
<br>
I am trying to write an recipe which need to have pre and post install acti=
on. The one define in RPM using %pre and %post.<br>
<br>
Basically the application run as service on the platform. So we need to mak=
e sure that if its an upgrade then we need to stop the service.<br>
If its a fresh install or an upgrade so post install we need to start the s=
ervice.<br>
As we have script which can be placed in /etc/init.d and then we can have i=
t running using the pre and post install action. But I am not able to find =
how to do it.<br>
<br>
I do get the reference about INITSCRIPT_PACKAGES and INITSCRIPT_PARAMS but =
it seems they can be used for make it process running at the system coming =
up and going down.<br>
<br>
Any thoughts how to achieve the same.<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a11c303da1d25b8050ea14b53--
